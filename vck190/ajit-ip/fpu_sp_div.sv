`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NINE LABS
// Engineer: VIMALESH CHAURASIYA 
// 
// Create Date: 15/05/2024 10:20:50 AM
// Design Name: FPU DIVISION
// Module Name: fpu_sp_DIV
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

module fpu_sp_div(
        input            clk,
        input           rst,
        input   [31:0]   din1,
        input   [31:0]   din2,
        input           dval,
        output reg [31:0]   result
    );


  reg       [3:0] state;
  parameter WAIT_REQ      = 4'd0,
            UNPACK        = 4'd1,
            SPECIAL_CASES = 4'd2,
            NORMALISE_A   = 4'd3,
            NORMALISE_B   = 4'd4,
            DIVIDE_0      = 4'd5,
            DIVIDE_1      = 4'd6,
            DIVIDE_2      = 4'd7,
            DIVIDE_3      = 4'd8,
            NORMALISE_1   = 4'd9,
            NORMALISE_2   = 4'd10,
            ROUND         = 4'd11,
            PACK          = 4'd12,
            OUT_RDY       = 4'd13;

  reg       [31:0] a, b, z;
  reg       [23:0] a_m, b_m, z_m;
  reg       [9:0] a_e, b_e, z_e;
  reg       a_s, b_s, z_s;
  reg       guard, round_bit, sticky;
  reg       [50:0] quotient, divisor, dividend, remainder;
  reg       [5:0] count;

  always @( posedge clk)
  begin
    if (rst == 1) begin
      state         <= WAIT_REQ;
   //   rdy           <= '0;
        result <= 31'd0;
        count = 6'd0;

    end else begin
    case(state)
         WAIT_REQ:
         begin
     //      rdy   <= '0;
           if (dval) begin
             a <= din1;
             b <= din2;
             state <= UNPACK;
           end
         end

      UNPACK:
      begin
        a_m <= a[22 : 0];
        b_m <= b[22 : 0];
        a_e <= a[30 : 23] - 127;
        b_e <= b[30 : 23] - 127;
        a_s <= a[31];
        b_s <= b[31];
        state <= SPECIAL_CASES;
      end

      SPECIAL_CASES:
      begin
        //if a is NaN or b is NaN return NaN 
        if ((a_e == 128 && a_m != 0) || (b_e == 128 && b_m != 0)) begin
          z[31] <= 1;
          z[30:23] <= 255;
          z[22] <= 1;
          z[21:0] <= 0;
          state <= OUT_RDY;
          //if a is inf and b is inf return NaN 
        end else if ((a_e == 128) && (b_e == 128)) begin
          z[31] <= 1;
          z[30:23] <= 255;
          z[22] <= 1;
          z[21:0] <= 0;
          state <= OUT_RDY;
        //if a is inf return inf
        end else if (a_e == 128) begin
          z[31] <= a_s ^ b_s;
          z[30:23] <= 255;
          z[22:0] <= 0;
          state <= OUT_RDY;
           //if b is zero return NaN
          if ($signed(b_e == -127) && (b_m == 0)) begin
            z[31] <= 1;
            z[30:23] <= 255;
            z[22] <= 1;
            z[21:0] <= 0;
            state <= OUT_RDY;
          end
        //if b is inf return zero
        end else if (b_e == 128) begin
          z[31] <= a_s ^ b_s;
          z[30:23] <= 0;
          z[22:0] <= 0;
          state <= OUT_RDY;
        //if a is zero return zero
        end else if (($signed(a_e) == -127) && (a_m == 0)) begin
          z[31] <= a_s ^ b_s;
          z[30:23] <= 0;
          z[22:0] <= 0;
          state <= OUT_RDY;
           //if b is zero return NaN
          if (($signed(b_e) == -127) && (b_m == 0)) begin
            z[31] <= 1;
            z[30:23] <= 255;
            z[22] <= 1;
            z[21:0] <= 0;
            state <= OUT_RDY;
          end
        //if b is zero return inf
        end else if (($signed(b_e) == -127) && (b_m == 0)) begin
          z[31] <= a_s ^ b_s;
          z[30:23] <= 255;
          z[22:0] <= 0;
          state <= OUT_RDY;
        end else begin
          //Denormalised Number
          if ($signed(a_e) == -127) begin
            a_e <= -126;
          end else begin
            a_m[23] <= 1;
          end
          //Denormalised Number
          if ($signed(b_e) == -127) begin
            b_e <= -126;
          end else begin
            b_m[23] <= 1;
          end
          state <= NORMALISE_A;
        end
      end

      NORMALISE_A:
      begin
        if (a_m[23]) begin
          state <= NORMALISE_B;
        end else begin
          a_m <= a_m << 1;
          a_e <= a_e - 1;
        end
      end

      NORMALISE_B:
      begin
        if (b_m[23]) begin
          state <= DIVIDE_0;
        end else begin
          b_m <= b_m << 1;
          b_e <= b_e - 1;
        end
      end


  DIVIDE_0:
      begin
        z_s <= a_s ^ b_s;
        z_e <= a_e - b_e;
        quotient = 0;
        remainder = 0;
        count = 0;
        dividend = a_m << 27;
        divisor <= b_m;
        state <= DIVIDE_1;
      end

      DIVIDE_1:
      begin
        quotient = quotient << 1;
        remainder = remainder << 1;
        remainder[0] = dividend[50];
        dividend = dividend << 1;
        state <= DIVIDE_2;
      end
    

      DIVIDE_2:
      begin
        if (remainder >= divisor) begin
          quotient[0] = 1;
          remainder = remainder - divisor;
         
        end

        if (count == 49) begin
          state <= DIVIDE_3;
        end else begin
           //  state <= DIVIDE_1; 
            count = count + 1;         
        quotient = quotient << 1;
        remainder = remainder << 1;
        remainder[0] = dividend[50];
        dividend = dividend << 1;
        state <= DIVIDE_2;

               end
      end

      DIVIDE_3:
      begin
        z_m <= quotient[26:3];
        guard <= quotient[2];
        round_bit <= quotient[1];
        sticky <= quotient[0] | (remainder != 0);
        state <= NORMALISE_1;
      end

      NORMALISE_1:
      begin
        if (z_m[23] == 0 && $signed(z_e) > -126) begin
        //        if (z_m[23] == 0 ) begin
          z_e <= z_e - 1;
          z_m <= z_m << 1;
          z_m[0] <= guard;
          guard <= round_bit;
          round_bit <= 0;
        end else begin
          state <= NORMALISE_2;
        end
      end

      NORMALISE_2:
      begin
        if($signed(z_e) < -151) begin    //alway take value greater than -151
            state <= ROUND;
            z[31] <= a_s ^ b_s;
             z[30:23] <= 0;                           //my_addition
             z[22:0] <= 0;
              state <= OUT_RDY;
             end
            
        if ($signed(z_e) < -126) begin
          z_e <= z_e + 1;
          z_m <= z_m >> 1;
          guard <= z_m[0];
          round_bit <= guard;
          sticky <= sticky | round_bit;
        end else begin
          state <= ROUND;
        end
      end

      ROUND:
      begin
        if (guard && (round_bit | sticky | z_m[0])) begin
          z_m <= z_m + 1;
          if (z_m == 24'hffffff) begin
            z_e <=z_e + 1;
          end
        end
        state <= PACK;
      end

      PACK:
      begin
        z[22 : 0] <= z_m[22:0];
        z[30 : 23] <= z_e[7:0] + 127;
        z[31] <= z_s;
        if ($signed(z_e) == -126 && z_m[23] == 0) begin
          z[30 : 23] <= 0;
        end
        //if overflow occurs, return inf
        if ($signed(z_e) > 127) begin
          z[22 : 0] <= 0;
          z[30 : 23] <= 255;
          z[31] <= z_s;
        end
        state <= OUT_RDY;
      end
       OUT_RDY:
       begin
       //   rdy        <= 1;
          result     <= z;
          state      <= WAIT_REQ;
          count = 6'd0;

       end

    endcase
   end
end

endmodule

/*

module fpu_sp_div(
        input            clk,
        input            rst,
        input   [31:0]   din1,
        input   [31:0]   din2,
        input            dval,
        output reg  [31:0]   result
     //   output logic          rdy
);


  reg       [3:0] state;
  parameter WAIT_REQ      = 4'd0,
            UNPACK        = 4'd1,
            SPECIAL_CASES = 4'd2,
            NORMALISE_A   = 4'd3,
            NORMALISE_B   = 4'd4,
            DIVIDE_0      = 4'd5,
            DIVIDE_1      = 4'd6,
            DIVIDE_2      = 4'd7,
            DIVIDE_3      = 4'd8,
            NORMALISE_1   = 4'd9,
            NORMALISE_2   = 4'd10,
            ROUND         = 4'd11,
            PACK          = 4'd12,
            OUT_RDY       = 4'd13;

  reg       [31:0] a, b, z;
  reg       [23:0] a_m, b_m, z_m;
  reg       [9:0] a_e, b_e, z_e;
  reg       a_s, b_s, z_s;
  reg       guard, round_bit, sticky;
  reg       [50:0] quotient, divisor, dividend, remainder;
  reg       [5:0] count;

  always @( posedge clk)
  begin
    if (rst == 1) begin
      state         <= WAIT_REQ;
   //   rdy           <= '0;
        result <= 31'd0;
        count <= 6'd0;

    end else begin
    case(state)
         WAIT_REQ:
         begin
     //      rdy   <= '0;
           if (dval) begin
             a <= din1;
             b <= din2;
             state <= UNPACK;
           end
         end

      UNPACK:
      begin
        a_m <= a[22 : 0];
        b_m <= b[22 : 0];
        a_e <= a[30 : 23] - 127;
        b_e <= b[30 : 23] - 127;
        a_s <= a[31];
        b_s <= b[31];
        state <= SPECIAL_CASES;
      end

      SPECIAL_CASES:
      begin
        //if a is NaN or b is NaN return NaN 
        if ((a_e == 128 && a_m != 0) || (b_e == 128 && b_m != 0)) begin
          z[31] <= 1;
          z[30:23] <= 255;
          z[22] <= 1;
          z[21:0] <= 0;
          state <= OUT_RDY;
          //if a is inf and b is inf return NaN 
        end else if ((a_e == 128) && (b_e == 128)) begin
          z[31] <= 1;
          z[30:23] <= 255;
          z[22] <= 1;
          z[21:0] <= 0;
          state <= OUT_RDY;
        //if a is inf return inf
        end else if (a_e == 128) begin
          z[31] <= a_s ^ b_s;
          z[30:23] <= 255;
          z[22:0] <= 0;
          state <= OUT_RDY;
           //if b is zero return NaN
          if ($signed(b_e == -127) && (b_m == 0)) begin
            z[31] <= 1;
            z[30:23] <= 255;
            z[22] <= 1;
            z[21:0] <= 0;
            state <= OUT_RDY;
          end
        //if b is inf return zero
        end else if (b_e == 128) begin
          z[31] <= a_s ^ b_s;
          z[30:23] <= 0;
          z[22:0] <= 0;
          state <= OUT_RDY;
        //if a is zero return zero
        end else if (($signed(a_e) == -127) && (a_m == 0)) begin
          z[31] <= a_s ^ b_s;
          z[30:23] <= 0;
          z[22:0] <= 0;
          state <= OUT_RDY;
           //if b is zero return NaN
          if (($signed(b_e) == -127) && (b_m == 0)) begin
            z[31] <= 1;
            z[30:23] <= 255;
            z[22] <= 1;
            z[21:0] <= 0;
            state <= OUT_RDY;
          end
        //if b is zero return inf
        end else if (($signed(b_e) == -127) && (b_m == 0)) begin
          z[31] <= a_s ^ b_s;
          z[30:23] <= 255;
          z[22:0] <= 0;
          state <= OUT_RDY;
        end else begin
          //Denormalised Number
          if ($signed(a_e) == -127) begin
            a_e <= -126;
          end else begin
            a_m[23] <= 1;
          end
          //Denormalised Number
          if ($signed(b_e) == -127) begin
            b_e <= -126;
          end else begin
            b_m[23] <= 1;
          end
          state <= NORMALISE_A;
        end
      end

      NORMALISE_A:
      begin
        if (a_m[23]) begin
          state <= NORMALISE_B;
        end else begin
          a_m <= a_m << 1;
          a_e <= a_e - 1;
        end
      end

      NORMALISE_B:
      begin
        if (b_m[23]) begin
          state <= DIVIDE_0;
        end else begin
          b_m <= b_m << 1;
          b_e <= b_e - 1;
        end
      end


  DIVIDE_0:
      begin
        z_s <= a_s ^ b_s;
        z_e <= a_e - b_e;
        quotient <= 0;
        remainder <= 0;
        count <= 0;
        dividend <= a_m << 27;
        divisor <= b_m;
        state <= DIVIDE_1;
      end

      DIVIDE_1:
      begin
        quotient <= quotient << 1;
        remainder <= remainder << 1;
        remainder[0] <= dividend[50];
        dividend <= dividend << 1;
        state <= DIVIDE_2;
      end
    

      DIVIDE_2:
      begin
        if (remainder >= divisor) begin
          quotient[0] <= 1;
          remainder <= remainder - divisor;
         
        end

        if (count == 49) begin
          state <= DIVIDE_3;
        end else begin
           //  state <= DIVIDE_1; 
            count <= count + 1;         
        quotient <= quotient << 1;
        remainder <= remainder << 1;
        remainder[0] <= dividend[50];
        dividend <= dividend << 1;
        state <= DIVIDE_2;

               end
      end

      DIVIDE_3:
      begin
        z_m <= quotient[26:3];
        guard <= quotient[2];
        round_bit <= quotient[1];
        sticky <= quotient[0] | (remainder != 0);
        state <= NORMALISE_1;
      end

      NORMALISE_1:
      begin
        if (z_m[23] == 0 && $signed(z_e) > -126) begin
        //        if (z_m[23] == 0 ) begin
          z_e <= z_e - 1;
          z_m <= z_m << 1;
          z_m[0] <= guard;
          guard <= round_bit;
          round_bit <= 0;
        end else begin
          state <= NORMALISE_2;
        end
      end

      NORMALISE_2:
      begin
        if($signed(z_e) < -151) begin    //alway take value greater than -151
            state <= ROUND;
            z[31] <= a_s ^ b_s;
             z[30:23] <= 0;                           //my_addition
             z[22:0] <= 0;
              state <= OUT_RDY;
             end
            
        if ($signed(z_e) < -126) begin
          z_e <= z_e + 1;
          z_m <= z_m >> 1;
          guard <= z_m[0];
          round_bit <= guard;
          sticky <= sticky | round_bit;
        end else begin
          state <= ROUND;
        end
      end

      ROUND:
      begin
        if (guard && (round_bit | sticky | z_m[0])) begin
          z_m <= z_m + 1;
          if (z_m == 24'hffffff) begin
            z_e <=z_e + 1;
          end
        end
        state <= PACK;
      end

      PACK:
      begin
        z[22 : 0] <= z_m[22:0];
        z[30 : 23] <= z_e[7:0] + 127;
        z[31] <= z_s;
        if ($signed(z_e) == -126 && z_m[23] == 0) begin
          z[30 : 23] <= 0;
        end
        //if overflow occurs, return inf
        if ($signed(z_e) > 127) begin
          z[22 : 0] <= 0;
          z[30 : 23] <= 255;
          z[31] <= z_s;
        end
        state <= OUT_RDY;
      end
       OUT_RDY:
       begin
       //   rdy        <= 1;
          result     <= z;
          state      <= WAIT_REQ;
          count <= 6'd0;

       end

    endcase
   end
end

endmodule
*/
