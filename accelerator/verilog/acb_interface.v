module acb_interface( 	
	
    input clk,// : in std_logic;
    input reset,// : in std_logic;
    input job_done,
    input [31:0]mem_address,acc_result,
    output reg [109:0]ACB_ACCELERATOR_MEM_REQUEST_pipe_read_data,//mem_access_request_data
    input ACB_ACCELERATOR_MEM_REQUEST_pipe_read_req,//memory ready to be read (ready)
    output reg ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack,//Accelerator_MEM_REQUEST_pipe_write_req() accelerator valid
    
    input [64:0]ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data,//reveive_data_from_memory
    input ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_req,
    output reg ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_ack,//Accelerator_MEM_REQUEST_pipe_read_req
    output reg [31:0]operand_a,operand_b
   
    
     );
    parameter ACB_IDLE = 3'b000;
    parameter ACB_READ = 3'b001;
    parameter OPERAND_ASSIGNMENT  = 3'b010;
    parameter  ACB_WRITE = 3'b011;
    
    reg [1:0]ACB_state,ACB_Nextstate;
    //reg [109:0]acb_data;
    reg [63:0]acb_response;
    
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
    end
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
    		ACB_ACCELERATOR_MEM_REQUEST_pipe_read_data = {{2'b01},{8'hff},read_mem_address32,64'd0};
    		ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack =1'b1;
    		if (ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_req )
    		begin
    			acb_response = ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data;
    			//operand_register = ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data[63:0];
    			ACB_Nextstate = OPERAND_ASSIGNMENT;	
    		end
    		else
    			ACB_Nextstate = ACB_READ;
    		
    	end
    	OPERAND_ASSIGNMENT: begin
    		operand_a = acb_response [31:0];
    		operand_b = acb_response [63:32];
    		if (job_done)
    		ACB_Nextstate = ACB_WRITE;	
    	end
    	ACB_WRITE: begin
    		ACB_ACCELERATOR_MEM_REQUEST_pipe_read_data = {{2'b00},{8'hff},write_mem_address32,acc_result};
    		ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack =1'b1;
    		if (ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_req )
    		begin
    			write_complete = 1'b1;
    			ACB_Nextstate = ACB_IDLE;	
    		end
    		else
    			ACB_Nextstate = ACB_WRITE;
    	default: ACB_Nextstate = ACB_IDLE;
    	endcase
    end//end else begin
    end//end always@*
   //-------------------------------------
   endmodule//--------------------
