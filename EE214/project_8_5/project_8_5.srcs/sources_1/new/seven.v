`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2023 07:42:40 PM
// Design Name: 
// Module Name: seven
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


module seven(

  input [3:0] ssegin,
    output reg [6:0] sseg
    );
always @(ssegin)
begin

      case (ssegin)
      4'b0000 : sseg = 7'b1000000;   // 0
      
          4'b0001 : sseg = 7'b1111001;   // 1
          4'b0010 : sseg = 7'b0100100;   // 2
          4'b0011 : sseg = 7'b0110000;   // 3
          4'b0100 : sseg = 7'b0011001;   // 4
          4'b0101 : sseg = 7'b0010010;   // 5
          4'b0110 : sseg = 7'b0000010;   // 6
          4'b0111 : sseg = 7'b1111000;   // 7
          4'b1000 : sseg = 7'b0000000;   // 8
          4'b1001 : sseg = 7'b0010000;   // 9
         
      endcase
      end
endmodule