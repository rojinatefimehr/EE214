`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2023 12:00:36 PM
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
    input [7:0] I,
    input [2:0] S,
    output reg Y
);

always @(*)
begin
    case(S)
     3'd0: Y = I[0];
     3'd1: Y = I[1];
    3'd2: Y = I[2];
    3'd3: Y = I[3];
     3'd4: Y = I[4];
     3'd5: Y = I[5];
      3'd6: Y = I[6];
      3'd7: Y = I[7];
    endcase
end
endmodule