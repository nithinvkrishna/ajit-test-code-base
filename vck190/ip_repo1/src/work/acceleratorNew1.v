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

//ACCELERATOR FOR AJIT
module accelerator( 	
	
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
    parameter RESPONSE = 2'b11;   
    
    parameter ACB_IDLE = 3'b000;
    parameter INIT_MEM_ACCESS = 3'b001;
    parameter FINISH_MEM_ACCESS  = 3'b010;
    //parameter  ACB_WRITE = 3'b011;
    
    reg [1:0]ACB_state,ACB_Nextstate;
    reg [109:0]acb_request_data;
    reg [64:0]acb_response;
    
    reg [1:0]state,nextstate;
    reg [3:0]config_reg_addr;
    reg [31:0]registers[0:15];
        
   reg [31:0] reg_value;
   reg [73:0] afb_data;
    
   wire start_worker,config_complete;
   //reg write_complete;
   wire job_done,ready,valid,AgreaterthanB,AlessthanB,AequaltoB;
   wire [31:0] acc_result,mem_address32;
   wire [109:0]acb_write_data64;
   
   
   assign config_complete = (acb_response == 65'd0)?1'b0:1'b1;
   assign ACCELERATOR_INTERRUPT = 1'b0;
   assign read_or_writebar=registers[0][1];
   assign mem_address32=(read_or_writebar==1)?registers[1]:registers[2];
   assign acb_write_data64 =(read_or_writebar==1)?64'd0:acc_result;
   assign fpu_command = registers[0][5:2];
   assign operand_a = acb_response[31:0];
   assign operand_b = acb_response[63:32];  
    always@(*)begin
    	//write_data64 = 
    	acb_request_data={{1'b0},read_or_writebar,{8'hff},mem_address32,acb_write_data64};
    end
    //call FPU instance
    fpu_top1 fpu_instance (
        .clk(clk),
        .rst(rst),
     	.i_cmd(fpu_command),
        .i_din1(operand_a),
        .i_din2(operand_b),
        .i_dval(config_complete),     
        .result(acc_result),
        .rdy(ready),
        .valid(job_done),
        .AgreaterthanB(AgreaterthanB),
        .AlessthanB(AlessthanB),
        .AequaltoB(AequaltoB) 
);
    
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
    	begin
    		AFB_ACCELERATOR_REQUEST_pipe_write_ack = 0;
    		AFB_ACCELERATOR_RESPONSE_pipe_read_ack = 0;
    	end
    	else begin
    		if (state == WAIT_COMMAND)
    			AFB_ACCELERATOR_REQUEST_pipe_write_ack = 1;
    		else
    			AFB_ACCELERATOR_REQUEST_pipe_write_ack = 0;
    		if (state == RESPONSE)
    			AFB_ACCELERATOR_RESPONSE_pipe_read_ack = 1;
    		else
    			AFB_ACCELERATOR_RESPONSE_pipe_read_ack = 0;
    	end
    end

    always@(*) begin
    	if (reset) begin
    		config_reg_addr = 4'd0;
    		//afb_data = 73'd0;
    		//reg_value = 32'd0;
    	end
    	else  begin
    	case (state)
    	INIT : begin
    		if (config_reg_addr<15) begin
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
    		
    		if (AFB_ACCELERATOR_REQUEST_pipe_write_req ) begin
    			nextstate = REGISTER_ACCESS;
    			afb_data = AFB_ACCELERATOR_REQUEST_pipe_write_data;    			
    		end
    		else 
    			nextstate = WAIT_COMMAND;		
    	     end//end for WAIT_COMMAND state
    	     
    	REGISTER_ACCESS: begin
    		config_reg_addr = afb_data[37:34];
    		if (afb_data[72]==1'b0) 
    		begin //write registers
    			registers[config_reg_addr]=afb_data[31:0];    			
    		end
    		else begin
    			reg_value = registers[config_reg_addr];    			
    		end    			
    			nextstate = RESPONSE;
    	     end//end for REGISTER_ACCESS state
    	RESPONSE: begin
    		
    		if (AFB_ACCELERATOR_RESPONSE_pipe_read_req ) 
    		begin
    			AFB_ACCELERATOR_RESPONSE_pipe_read_data[32:0] = {1'b0,reg_value};    			
    			nextstate=WAIT_COMMAND;
    		end
    		else
    			nextstate = RESPONSE;
    		
    	end     
    	
    	endcase     	   
    	end//END FOR ELSE RESET
    end//END FOR always begin
    
    assign start_worker = registers[0][0];
    /*{{2'b01},{8'hff},read_mem_address32,64'd0
    OPERAND_ASSIGNMENT: begin
    		operand_a = acb_response [31:0];
    		operand_b = acb_response [63:32];
    		config_complete =1'b1;
    		if (job_done)
    		ACB_Nextstate = ACB_WRITE;	
    	end*/
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
    if (reset) begin
    	ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack =1'b0;
    	ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_ack=1'b0;
    	acb_response =65'd0;
    end
    else begin
    	case(ACB_state)
    	ACB_IDLE: begin
    		ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack =1'b0;
    		ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_ack=1'b0;
    		if (start_worker) begin
    			ACB_Nextstate = INIT_MEM_ACCESS;
    			//start_worker = 1'b0;
    		end
    		else
    			ACB_Nextstate = ACB_IDLE;
    	end
    	
    	INIT_MEM_ACCESS: begin
    		ACB_ACCELERATOR_MEM_REQUEST_pipe_read_data = acb_request_data;
    		ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack =1'b1;
    		if (ACB_ACCELERATOR_MEM_REQUEST_pipe_read_req )
    		begin
    			//acb_response = ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data;
    			//operand_register = ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data[63:0];
    			ACB_Nextstate = FINISH_MEM_ACCESS;	
    		end
    		else
    			ACB_Nextstate = INIT_MEM_ACCESS;
    		
    	end
    	
    	FINISH_MEM_ACCESS: begin
    		ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_ack =1'b1;
    		if (ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_req )
    		begin
    			acb_response = ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data;
    			ACB_Nextstate = ACB_IDLE;    				
    		end
    		else
    			ACB_Nextstate = FINISH_MEM_ACCESS;
    		end	
    	default: ACB_Nextstate = ACB_IDLE;
    	endcase
    end//end else begin
    end//end always@*
  
  
  
   //--------------------------------------------------------------------------------------------------------------------------------------
endmodule
	

    
   
