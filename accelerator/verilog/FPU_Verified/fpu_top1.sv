`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NINE LABS
// Engineer: VIMALESH CHAURASIYA 
// 
// Create Date: 15/05/2024 10:20:50 AM
// Design Name: FPU TOP
// Module Name: fpu_top1
// Project Name: FPU
// Target Devices: 
// Tool Versions: VCS 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module fpu_top1(
        input            clk,
        input            rst,
     	input   [3:0]    i_cmd,
        input   [31:0]   i_din1,
        input   [31:0]   i_din2,
        input            i_dval,     
        output reg [31:0]   result,
        output  reg         rdy,
        output  reg         valid,
        output reg	            AgreaterthanB ,
        output   reg            AlessthanB ,
        output   reg            AequaltoB 
);

parameter CMD_FPU_SP_ADD  = 4'b0001; // Single Precision (32 bit) Adder 
parameter CMD_FPU_SP_SUB  = 4'b0010; // Single Precision (32 bit) substraction 
parameter CMD_FPU_SP_MUL  = 4'b0011; // Single Precision (32 bit) Multipler
parameter CMD_FPU_SP_COMP = 4'b0100; // Single Precision (32 bit) Comprator
parameter CMD_FPU_SP_DIV  = 4'b0101; // Single Precision (32 bit) Divider


//--------------------------------------------------
// Single Precision Adder Local decleration
// -------------------------------------------------
//wire        sp_add_rdy;
wire [31:0] sp_add_result;
 

//--------------------------------------------------
// Single Precision Adder Local decleration
// -------------------------------------------------
//wire        sp_sub_rdy;
wire [31:0] sp_sub_result;
 
//--------------------------------------------------
// Single Precision Multiplication Local decleration
// -------------------------------------------------
//wire        sp_mul_rdy;
wire [31:0] sp_mul_result;

////--------------------------------------------------
//// Single Precision Comprator Local decleration
//// -------------------------------------------------
//wire       sp_comp_rdy;
wire [31:0] sp_comp_result;
//wire       valid_comp;
reg       AgreaterB;
reg       AlessB;
reg       AequalB;

wire      AgreaterB1;
wire      AlessB1;
wire      AequalB1;

////--------------------------------------------------
//// Single Precision Division Local decleration
//// -------------------------------------------------
//wire       sp_div_rdy;
wire [31:0] sp_div_result;

///////////////////////////////////////////////////////////////////////////
reg  sp_add_dval ;
reg  sp_sub_dval ;
reg  sp_mul_dval ;
reg  sp_div_dval ;
reg  sp_comp_dval ;

///////////////////////////////////////////////////////////////////////
integer i;
      reg                  [1:0] state;
  parameter WAIT_REQ     = 2'd0,
            RUN1          = 2'd1,
            RUN          = 2'd2,
            RET_WAIT     = 2'd3; 
///////////////////////////////////////////////////////////////////////////////////////
reg  [31:0] din1;
reg  [31:0] din2;
reg  [3:0] cmd;
reg dval;

	

//////////////////////////////////////////////////////////////////////        
            
always@(posedge clk)
begin
if (rst) begin

       result = 32'd0;
           rdy <= 1'b0;
          valid <= 1'b0;
    AgreaterthanB = 1'b0;
       AlessthanB = 1'b0;
        AequaltoB = 1'b0;
             AgreaterB  = 1'b0;
           AlessB = 1'b0;
          AequalB  = 1'b0;
    state  <= WAIT_REQ;
        i = 0;
        dval <= 0;
        cmd <= 0;
               sp_sub_dval = 0;
         sp_add_dval = 0;
         sp_mul_dval =  0;
           sp_comp_dval =  0;
           sp_div_dval =  0;
end  

 else begin
 case(state)
 
   WAIT_REQ:
   begin
   

            result = 32'd0;
            rdy   <= 1'b0;
             valid <= 1'b0;
            if (i_dval) begin
              din1 <= i_din1;
              din2 <= i_din2;
              cmd <= i_cmd;
              state <= RUN1; 
              dval <= i_dval; 
//                  sp_sub_dval = 0;
//         sp_add_dval = 0;
//         sp_mul_dval =  0;
//           sp_comp_dval =  0;
//           sp_div_dval =  0;  
              i = 0;
            end
          end 

       RUN1: 
  begin
       
     if(dval == 1)   
     begin
      state  <= RUN; 
     if(cmd == CMD_FPU_SP_ADD)
      sp_add_dval =  1'b1;
     else if(cmd == CMD_FPU_SP_SUB)
       sp_sub_dval =  1'b1;
          else if(cmd == CMD_FPU_SP_MUL)
       sp_mul_dval =  1'b1;
           else if(cmd == CMD_FPU_SP_COMP)
       sp_comp_dval =  1'b1;
         else if(cmd == CMD_FPU_SP_DIV)
       sp_div_dval =  1'b1;
            else
            begin

        sp_sub_dval = 0;
         sp_add_dval = 0;
         sp_mul_dval =  0;
           sp_comp_dval =  0;
           sp_div_dval =  0;
            end
          
     end

   end        
     RUN:        
         begin
               i = i + 1;
    if (i == 15) 
     begin
    if (cmd == CMD_FPU_SP_ADD ||cmd == CMD_FPU_SP_SUB  || cmd == CMD_FPU_SP_COMP) 
     begin
	 valid <= 1;	
     result =  (cmd == CMD_FPU_SP_ADD) ? sp_add_result : 
               (cmd == CMD_FPU_SP_SUB) ? sp_sub_result : 
               (cmd == CMD_FPU_SP_COMP) ?  32'd0:                 
		        32'd0;
		        state  <= RET_WAIT ; 
      AgreaterB = AgreaterB1;
      AlessB = AlessB1;
      AequalB =  AequalB1;
	  AgreaterthanB =(cmd == CMD_FPU_SP_COMP) ? AgreaterB :  1'b0;
      AlessthanB =(cmd == CMD_FPU_SP_COMP) ?  AlessB :  1'b0;
      AequaltoB =(cmd == CMD_FPU_SP_COMP) ? AequalB :  1'b0;
		  i =0;      
	end	
	end

	
    else if (i == 60) 
	      begin
       if(cmd == CMD_FPU_SP_MUL)
      begin
           	 valid <= 1;
              result =  (cmd == CMD_FPU_SP_MUL) ? sp_mul_result : 
                  
		        32'd0;
          
                state  <= RET_WAIT ;  
                i = 0;
      end
      end 



   else if (i == 136)                  // 136 fix
	      begin
       if(cmd == CMD_FPU_SP_DIV )
      begin
           	 valid <= 1;
              result = (cmd == CMD_FPU_SP_DIV) ? sp_div_result :              
		        32'd0;
          
                state  <= RET_WAIT ;  
                i = 0;
      end
      end 
	 
             end

    RET_WAIT :
    begin 
       result = 32'd0;
        AgreaterthanB = 1'b0;
       AlessthanB = 1'b0;
        AequaltoB = 1'b0;
             AgreaterB  = 1'b0;
           AlessB = 1'b0;
          AequalB  = 1'b0;
     state  <= WAIT_REQ;
      rdy  <= 1'b1;
      valid <= 1'b0;
      dval <= 1'b0;
      cmd <= 1'b0;
               sp_sub_dval = 0;
         sp_add_dval = 0;
           sp_mul_dval =  0;
           sp_comp_dval =  0;
           sp_div_dval =  0;
    end

endcase
end
end
//// floating point adder
fpu_sp_add  u_sp_add (
        .clk               (clk             ),
        .rst             (rst           ),
        .A              (din1[31:0]      ),
        .B              (din2[31:0]      ),
        .dval              (sp_add_dval    ),
        .Out            (sp_add_result   )

      );
      
//// floating point subs 
fpu_sp_sub  u_sp_sub (
        .clk               (clk             ),
        .rst             (rst           ),
        .A              (din1[31:0]      ),
        .BS              (din2[31:0]      ),
        .dval              (sp_sub_dval    ),
        .Out            (sp_sub_result   )

      );

// floating point multipler
fpu_sp_mul  u_sp_mul (
        .clk               (clk             ),
        .rst             (rst          ),
        .din1              (din1[31:0]      ),
        .din2              (din2[31:0]      ),
        .dval              (sp_mul_dval     ),
        .result            (sp_mul_result   )

      );

////// floating point sp comprator

fpu_sp_comp  u_sp_comp (
        .clk               (clk             ),
        .rst               (rst          ),
        .A              (din1[31:0]      ),
        .B             (din2[31:0]      ),
        .dval              (sp_comp_dval    ),
        .AequalB           (AequalB1  ),
        .AgreaterB         (AgreaterB1    ),
        .AlessB            (AlessB1     )

      );
      
//// floating point divider
fpu_sp_div  u_sp_div (
        .clk               (clk             ),
        .rst             (rst           ),
        .din1             (din1[31:0]      ),
        .din2              (din2[31:0]      ),
        .dval              (sp_div_dval    ),
        .result           (sp_div_result   )

      );      

endmodule

