`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NINE LABS
// Engineer: VIMALESH CHAURASIYA 
// 
// Create Date: 15/05/2024 10:20:50 AM
// Design Name: FPU COMPRATOR
// Module Name: fpu_sp_COMP
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


module fpu_sp_comp(input [31:0] A,
    input [31:0] B,
    input clk, rst,
    output reg AequalB,
    output reg AgreaterB,
    output reg AlessB,
    input dval);


always @(posedge clk) 
  begin
  if(rst) begin

     AequalB = 1'b0;
     AgreaterB = 1'b0; 
     AlessB = 1'b0; 

  end
  else if(dval == 1) begin
     
    if (A[31] == B[31]) begin
        if (A[31] == 1'b1) begin
            // A and B are both negative
            if (A > B) begin
                AgreaterB = 1'b0;
                AlessB = 1'b1;
                AequalB = 1'b0;
            end else if (A < B) begin
                AgreaterB = 1'b1;
                AlessB = 1'b0;
                AequalB = 1'b0;
            end else begin
                AgreaterB = 1'b0;
                AlessB = 1'b0;
                AequalB = 1'b1;
            end
        end else begin
            // A and B are both positive
            if (A > B) begin
                AgreaterB = 1'b1;
                AlessB = 1'b0;
                AequalB = 1'b0;
            end else if (A < B) begin
                AgreaterB = 1'b0;
                AlessB = 1'b1;
                AequalB = 1'b0;
            end else begin
                AgreaterB = 1'b0;
                AlessB = 1'b0;
                AequalB = 1'b1;
            end
        end
    end else begin
        // Signs are different
        if (A[31] == 1'b1) begin
            // A is negative, B is positive
            AgreaterB = 1'b0;
            AlessB = 1'b1;
            AequalB = 1'b0;
        end else begin
            // A is positive, B is negative
            AgreaterB = 1'b1;
            AlessB = 1'b0;
            AequalB = 1'b0;
        end
    end

      end
      else 
      begin
      
     AequalB = 1'b0;
     AgreaterB = 1'b0; 
     AlessB = 1'b0; 
      
      end
      
      end
endmodule


