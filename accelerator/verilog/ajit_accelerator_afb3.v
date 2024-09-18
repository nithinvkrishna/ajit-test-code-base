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
    parameter RESPONSE = 2'b11;   
    
   
    reg [1:0]state,nextstate;
    reg [3:0]config_reg_addr;
    reg [31:0]registers[0:15];
        
   reg [31:0]    reg_value;
   reg [73:0] afb_data;
    
   
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
    
  
   //--------------------------------------------------------------------------------------------------------------------------------------
endmodule
	

