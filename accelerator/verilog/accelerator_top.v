module accelerator (
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
    output reg AFB_ACCELERATOR_RESPONSE_pipe_read_ack   
   
    output reg [109:0]ACB_ACCELERATOR_MEM_REQUEST_pipe_read_data,//mem_access_request_data
    input ACB_ACCELERATOR_MEM_REQUEST_pipe_read_req,//memory ready to be read (ready)
    output reg ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack,//Accelerator_MEM_REQUEST_pipe_write_req() accelerator valid
    
    input [64:0]ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data,//reveive_data_from_memory
    input ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_req,
    output reg ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_ack,//Accelerator_MEM_REQUEST_pipe_read_req
    output ACCELERATOR_INTERRUPT);
    
   afb_interface afb_interface_inst( 	
	
    	.clk(clk),// : in std_logic;
    	.reset(reset),// : in std_logic;
             
    //ACCELERATOR<-->AJIT_CORE INTERFACE SIGNALS
    //ports for writing to accelerator    
    	.AFB_ACCELERATOR_REQUEST_pipe_write_req(AFB_ACCELERATOR_REQUEST_pipe_write_req), 
    	.AFB_ACCELERATOR_REQUEST_pipe_write_ack(AFB_ACCELERATOR_REQUEST_pipe_write_ack),
    	.AFB_ACCELERATOR_REQUEST_pipe_write_data(AFB_ACCELERATOR_REQUEST_pipe_write_data),
    
    //ports for reading from accelerator
    	.AFB_ACCELERATOR_RESPONSE_pipe_read_data(AFB_ACCELERATOR_RESPONSE_pipe_read_data),
    	.AFB_ACCELERATOR_RESPONSE_pipe_read_req(AFB_ACCELERATOR_RESPONSE_pipe_read_req),
    	.AFB_ACCELERATOR_RESPONSE_pipe_read_ack(AFB_ACCELERATOR_RESPONSE_pipe_read_ack)    
    
     );
     
     acb_interface acb_interface_inst( 	
	
    	.clk(clk),// : in std_logic;
    	.reset(reset),// : in std_logic;
             
    //ACCELERATOR<-->AJIT_CORE INTERFACE SIGNALS
    //ports for writing to accelerator    
    	.ACB_ACCELERATOR_MEM_REQUEST_pipe_read_data(ACB_ACCELERATOR_MEM_REQUEST_pipe_read_data), 
    	.ACB_ACCELERATOR_MEM_REQUEST_pipe_read_req(ACB_ACCELERATOR_MEM_REQUEST_pipe_read_req),
    	.ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack(ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack),
    
    //ports for reading from accelerator
    	.ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data(ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data),
    	.ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_req(ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_req),
    	.ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_ack(ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_ack)    
    
     );
     
      assign ACCELERATOR_INTERRUPT = 1'b0;
   
