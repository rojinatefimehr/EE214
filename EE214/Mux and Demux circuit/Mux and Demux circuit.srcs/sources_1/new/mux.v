`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2023 06:47:08 PM
// Design Name: 
// Module Name: mux
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


module mux(
    input [7:0] sw,
    input [2:0] S,
    output reg Y
);

always @(*)
begin 
case (S)

 3'b000: Y = sw[0];
      3'b001: Y = sw[1];
      3'b010: Y = sw[2];
      3'b011: Y = sw[3];
      3'b100: Y = sw[4];
      3'b101: Y = sw[5];
      3'b110: Y = sw[6];
      3'b111: Y = sw[7];
    endcase


end


endmodule