`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NINE LABS
// Engineer: VIMALESH CHAURASIYA 
// 
// Create Date: 15/05/2024 10:20:50 AM
// Design Name: FPU SUBSTRACTION
// Module Name: fpu_sp_SUB
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


module fpu_sp_sub(
      output reg [31:0]  Out,
      input [31:0] A,
      input [31:0] BS,
      input clk, rst , 
      input  dval
      
    );
    
//      reg       [31:0] s_output_z;
//      reg       [1:0] state;
//  parameter WAIT_REQ     = 4'd0,
//            RUN          = 4'd1,
//            RET_WAIT     = 4'd2;
//       reg [31:0] A;
       reg [31:0] B;
//       reg [31:0] B;
       reg [23:0] A_man,B_man;
       reg [24:0] man_final;
       reg [5:0] add1; 
       reg [5:0]norm;
       reg sign;
       reg [7:0] exp_final;
       reg [7:0] exp_diff,xA,xB;
       reg  [23:0] mA,mB;
       reg  check,ismsame;
       reg [4:0] i;
        
       always@(posedge clk)
       begin
       
       if(rst) begin
       Out = 32'd0;
//         A= 32'd0;
         B = 32'd0;
       A_man = 24'd0;
       B_man = 24'd0;
       man_final = 25'd0;
       add1=6'd0 ; 
       norm=6'd0;
       sign = 1'b0;
       exp_final =8'd0;
       exp_diff =8'd0;
       xA =8'd0;
       xB =8'd0;
       mA = 24'd0;
       mB = 24'd0;
       check = 1'b0;
       ismsame= 1'b0;
       i = 5'd0;
//       state  <= WAIT_REQ;
//       rdy    <= 1'b0;
//        valid <= 1'b0;
       end
       
       
        else if(dval == 1)                                                                                                              
        begin
//        case(state)
//          WAIT_REQ:
////          begin
////           if(rdy == 1'b1)
     
//          begin
//            rdy   <= 1'b0;
//            if (dval) begin
//              A <= din1;
//              BS <= din2;
//              state <= RUN;
//              valid <= 1'b0;
//            end
//          end
////      end
//        RUN: begin 
         B[31] = ~BS[31];
        B[30:0] = BS[30:0]; 
        norm=6'd0;       
         mA = {1'b1,A[22:0]};
         mB = {1'b1,B[22:0]};
         xA = A[30:23];
         xB = B[30:23];
               
       exp_diff = (xA > xB)? (xA- xB) : (xB - xA);
       check = ( mA > mB ) ? 1'b1:1'b0;
       ismsame = (mA == mB);


        if(A[31] == 0 && B[31] == 0)
        begin  
                 sign =0;   
                    if ((A[30:23] > B[30:23]))
                    begin 
                        A_man = mA;       
                        B_man =  mB >> exp_diff;   
                        exp_final = xA;
                    end      
                    else       
                    begin
                            B_man = mB;
                            A_man =  mA >> exp_diff;
                            exp_final = xB;                                    
                end
            
                    man_final = A_man + B_man ;         
                   
                  if(man_final[24]) 
                  begin
                 add1 = 1;
            man_final =  man_final >> 1;
                  end
                 else
            add1 = 0;
        end
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////    
        else if (A[31] == 1 && B[31] == 0)
        begin
          
        
            if(A[30:23] == B[30:23]) ////////////////////////////////////////
            begin
                A_man = mA;
                B_man = mB;
                exp_final = xA;                
                if( check )
                begin
                    sign = 1;
                    man_final = A_man - B_man;
                end
                else if(ismsame)
                begin
                     sign = 0;///////////////////////////////////////////
                     man_final = 23'b0;
                     exp_final = 0;
                 end  
                 else
                 begin
                      sign = 0;///////////////////////////////////////////
                      man_final = B_man - A_man;
                  end
              end
          
              else if ((A[30:23] > B[30:23])) ////////////////////////////////////////
              begin 
                   A_man = mA;       
                   B_man =  mB >> exp_diff;   
                   exp_final = xA;
                   sign = 1;
                   if(A_man > B_man)
                        man_final = A_man - B_man ;
                   else
                        man_final = B_man - A_man ;
                 
              end       
              
                else if(A[30:23]<B[30:23]) /////////////////////////////////////////////         
                  begin
                B_man = mB;
                   A_man =  mA >> exp_diff;
                   exp_final = xB;
                   sign = 0;
                   if(A_man > B_man)
                   man_final = A_man - B_man ;
                   else
                   man_final = B_man - A_man ;
                   
                   end
// Normalization
      
      
       if(man_final[24]) 
                   begin
                    add1 = 1 ;
                   man_final =  man_final >> 1;
                   end
                else
                   add1 = 0;
                   
  if(man_final[24] == 0 && man_final[23] == 0)
      begin      
            for(i = 0; i < 23 ; i = i+1)    
                begin
                    if(man_final[i] == 1)
                     begin   
                        norm = (23 - i);                       
                    end
                end                    
    man_final = man_final << norm;  
      end                                                                                                                                                                                                          
  end                                  
                                                                                                                                                                                                                                                                 
                
 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////       
                 
    else if (A[31] == 0 && B[31] == 1)
        
          begin  
          
                if(A[30:23] == B[30:23])
                    begin
                    A_man = mA;
                    B_man = mB;
                    exp_final = xA;    
                        if( check )
                            begin
                           sign = 0;
                            man_final = A_man - B_man;
                            end
                         else if(ismsame)
                            begin
                            sign = 0;
                            man_final = 23'b0;
                            exp_final = 0;
                            end  
                        else
                            begin
                            sign = 1;
                            man_final = B_man - A_man;
                            end
                    end
          
               else if ((A[30:23] > B[30:23]))
                   begin 
                   A_man = mA;       
                   B_man =  mB >> exp_diff;   
                   exp_final = xA;
                   sign = 0;
                   if(A_man > B_man)
                   man_final = A_man - B_man ;
                   else
                   man_final = B_man - A_man ;
                  
                   end      
              
                else if(A[30:23]<B[30:23])      
                   begin
                   B_man = mB;
                   A_man =  mA >> exp_diff;
                   exp_final = xB;
                   sign = 1;
                   if(A_man > B_man)
                   man_final = A_man - B_man ;
                   else
                   man_final = B_man - A_man ;
                   
                   end
            
                                                                      
               if(man_final[24]) 
                   begin
                    add1 = 1;
                   man_final =  man_final >> 1;
                   end
                else
                   add1 = 0;
                   
               if(man_final[24] == 0 && man_final[23] == 0)
               begin
               for(i = 0; i < 23 ; i = i+1)    
                               begin
                                   if(man_final[i] == 1)
                                    begin   
                                       norm = (23- i);
                                       
                                   end
                               end                    
                   man_final = man_final << norm;             
               end           
        end
 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////    
     
//     else if(A[31] == 1 && B[31] == 1)
//        begin  
//        sign = 1;
//         if((A[30:23] == B[30:23]) && (ismsame))
//           begin
           
//           man_final = 23'b0;
//           exp_final = 0;
//           end             
//        else begin   
//          if ((A[30:23] > B[30:23]))
//            begin 
//            A_man <= mA;       
//            B_man <=  mB >> exp_diff;   
//            exp_final = xA;
//            end      
       
//         else       
//            begin
//            B_man <= mB;
//            A_man <=  mA >> exp_diff;
//            exp_final = xB;
//            end
            
//         man_final = A_man + B_man ;
         
           
//        if(man_final[24]) 
//            begin
//             add1 = 1;
//            man_final =  man_final >> 1;
//            end
//         else
//            add1 = 0;
//        end       
//        end  


        else if(A[31] == 1 && B[31] == 1)
        begin  
                 sign =1;   
                    if ((A[30:23] > B[30:23]))
                    begin 
                        A_man = mA;       
                        B_man =  mB >> exp_diff;   
                        exp_final = xA;
                    end      
                    else       
                    begin
                            B_man = mB;
                            A_man =  mA >> exp_diff;
                            exp_final = xB;       
                    end
            
                    man_final = A_man + B_man ;         
                   
                  if(man_final[24]) 
                  begin
                 add1 = 1;
            man_final =  man_final >> 1;
                  end
                 else
            add1 = 0;
             
          end
           
           Out[22:0] = man_final[22:0];
           Out[30:23] = exp_final - norm + add1;
           Out[31] = sign;
           
//            state <= RET_WAIT;
//            valid <= 1'b1;
           
//         end
         
                
         
         
//            RET_WAIT:
//            begin
//            valid <= 1'b0;
//            rdy        <= 1;
//            Out     <= 32'd0;
//            state      <= WAIT_REQ;
//          end
          
//        endcase
        end 
        
                else 
            Out = 32'd0;
        
        end   
   
        endmodule
  


