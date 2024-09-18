`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/26/2024 12:26:22 PM
// Design Name: 
// Module Name: acc_ajit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module simple_mult(reset,a,b,result,done);
input [31:0]a,b;
input reset;
output reg [63:0]result;
output reg done;
always @ (*)
begin
    if (reset)
        result = 0;
    else
        result = a*b;
end
always@* begin
    if (reset)
    done = 0;
    else begin
        if (result!=64'd0)
        done = 1'b1;
        else
        done = 1'b0;
    end
end
endmodule

//ACCELERATOR FOR AJIT
module ajit_accelerator( 	
	
    input clk,// : in std_logic;
    input reset,// : in std_logic;
             
    //ACCELERATOR<-->AJIT_CORE INTERFACE SIGNALS
    //ports for writing to accelerator    
    input AFB_ACCELERATOR_REQUEST_pipe_write_req, 
    output reg AFB_ACCELERATOR_REQUEST_pipe_write_ack,
    input [73:0] AFB_ACCELERATOR_REQUEST_pipe_write_data,
    
    //ports for reading from accelerator
    output reg [32:0] AFB_ACCELERATOR_RESPONSE_pipe_read_data,
    input  AFB_ACCELERATOR_RESPONSE_pipe_read_req,
    output reg AFB_ACCELERATOR_RESPONSE_pipe_read_ack,
    
    output reg [109:0]ACB_ACCELERATOR_MEM_REQUEST_pipe_read_data,//mem_access_request_data
    input ACB_ACCELERATOR_MEM_REQUEST_pipe_read_req,//memory ready to be read (ready)
    output reg ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack,//Accelerator_MEM_REQUEST_pipe_write_req() accelerator valid
    
    input [64:0]ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data,//reveive_data_from_memory
    input ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_req,
    output reg ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_ack,//Accelerator_MEM_REQUEST_pipe_read_req
    output ACCELERATOR_INTERRUPT
   
    
     );
    
    parameter INIT = 2'b00;
    parameter WAIT_COMMAND = 2'b01;
    parameter REGISTER_ACCESS = 2'b10;    
    
    parameter ACB_IDLE = 3'b000;
    parameter ACB_READ = 3'b001;
    parameter WORK     = 3'b010;
    parameter ACB_WRITE = 3'b011;
    
    reg [1:0]ACB_state,ACB_Nextstate;
    reg [1:0]state,nextstate;
    reg [3:0]config_reg_addr;
    reg [31:0]registers[0:15];
    reg [63:0]operand_register;
    reg [31:0]operand_a,operand_b;
    
    reg access_complete, start_worker,write_result_complete;
    wire job_done;
    wire [63:0]acc_result;
    
    simple_mult worker_instance (reset,operand_a, operand_b, acc_result,job_done);
    assign ACCELERATOR_INTERRUPT = 1'b0;
    //-------------------------------------------------------------------------------
    // AFB_READ_WRITE_STATE_MACHINE
    //-------------------------------------------------------------------------------
    
    always@(posedge clk) begin
    	if (reset)
    		state = INIT;
    	else 
    		state = nextstate;
    end
    
    always@(*) begin
    	if (reset)
    		config_reg_addr = 4'd0;
    	else  begin
    	case (state)
    	INIT : begin
    		if (config_reg_addr<31) begin
	    		registers[config_reg_addr] = 32'd0;
    			config_reg_addr = config_reg_addr+1;
    			nextstate = INIT;
    		end
    		else    begin
    				nextstate = WAIT_COMMAND;
    				config_reg_addr = 0;
    		end    		
    	     end//end for INIT state
    	     
    	WAIT_COMMAND: begin
    		AFB_ACCELERATOR_REQUEST_pipe_write_ack = 1;
    		AFB_ACCELERATOR_RESPONSE_pipe_read_ack = 1;
    		access_complete = 1'b0;
    		if (AFB_ACCELERATOR_REQUEST_pipe_write_req || AFB_ACCELERATOR_RESPONSE_pipe_read_req )
    			nextstate = REGISTER_ACCESS;
    			//num_access = AFB_ACCELERATOR_REQUEST_pipe_write_data [38:34]
    		else 
    			nextstate = WAIT_COMMAND;		
    	     end//end for WAIT_COMMAND state
    	     
    	REGISTER_ACCESS: begin
    		config_reg_addr = AFB_ACCELERATOR_REQUEST_pipe_write_data [38:34];//the last two bits (LSBs) 
    										//of the address is always 00
    		if (AFB_ACCELERATOR_REQUEST_pipe_write_data[72]==1'b0) begin //write registers
    			registers[config_reg_addr]=AFB_ACCELERATOR_REQUEST_pipe_write_data [31:0];
    			AFB_ACCELERATOR_REQUEST_pipe_write_ack = 0;
    		end
    		else begin
    			AFB_ACCELERATOR_RESPONSE_pipe_read_data[31:0] = registers[config_reg_addr];
    			AFB_ACCELERATOR_RESPONSE_pipe_read_ack = 0; 
    		end
    			access_complete = 1'b1;
    			nextstate = WAIT_COMMAND;
    	     end//end for REGISTER_ACCESS state
    	default: nextstate = INIT;     
    	
    	endcase     	   
    	end//END FOR ELSE RESET
    end//END FOR always begin
    
    //---------------------------------------------------------------------------------------------------
    //MAIN ACCELERATOR WORKER
    //---------------------------------------------------------------------------------------------------
    //1. generate start_worker once the configuration is complete
    //2. get the operand address stored in the configuration register (registers[5'd1])
    //3. initiate memory read through ACB
    //4. store the received data to operand_register;
    //5. apply input to the worker logic
    //6. get the result
    //7. initiate memory write (result) through ACB
    //----------------------------------------------------------------------------------------------------
    reg [3:0]access_count;
    
    always@(posedge access_complete or posedge reset) 
    begin
    	if(reset) begin
    		access_count = 4'd0;
    		start_worker = 1'b0;
    	end
    	else begin 
    	access_count = access_count+1;
    	if (access_count==4'd3)
    		start_worker = 1'b1; 
    	end   
    end
   //------------------------------------------------------------------------------------------------------
    //ACB_READ, apply operands, ACB_write machine
   //------------------------------------------------------------------------------------------------------ 
    always@(posedge clk) begin
    	if (reset)
    		ACB_state = ACB_IDLE;
    	else
    		ACB_state = ACB_Nextstate;
    end
    
    always @(*)
    begin
    if (reset)
    	ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack =1'b0;
    else begin
    	case(ACB_state)
    	ACB_IDLE: begin
    		if (start_worker) begin
    			ACB_Nextstate = ACB_READ;
    			//start_worker = 1'b0;
    		end
    		else
    			ACB_Nextstate = ACB_IDLE;
    	end
    	ACB_READ: begin
    		ACB_ACCELERATOR_MEM_REQUEST_pipe_read_data = {{2'b01},{8'hff},{registers[5'd2]},{64'd0}};
    		ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack =1'b1;
    		if (ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_req && !ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data[64])
    		begin
    			operand_register = ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data[63:0];
    			ACB_Nextstate = WORK;	
    		end
    		else
    			ACB_Nextstate = ACB_READ;
    		
    	end
    	WORK: begin
    	      ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack =1'b0;
    	      operand_a = operand_register[31:0];
    	      operand_b = operand_register[63:0];
    	      if (job_done)
    	      	ACB_Nextstate = ACB_WRITE;
    	      else
    	      	ACB_Nextstate = WORK;		
    	end
    	ACB_WRITE: begin
    		ACB_ACCELERATOR_MEM_REQUEST_pipe_read_data = {{2'b00},{8'hff},{registers[5'd3]},acc_result};
    		ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack = 1'b1;
    		if (ACB_ACCELERATOR_MEM_REQUEST_pipe_read_req && !ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data[64])
    		begin
    			ACB_Nextstate = ACB_IDLE;
    			write_result_complete=1'b1;	
    		end
    		else
    			ACB_Nextstate = ACB_WRITE;
    	end
    	default: ACB_Nextstate = ACB_IDLE;
    	endcase
    end//end else begin
    end//end always@*
   //--------------------------------------------------------------------------------------------------------------------------------------
endmodule
	

