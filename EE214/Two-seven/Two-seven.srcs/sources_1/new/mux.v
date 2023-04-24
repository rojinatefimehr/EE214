`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2023 10:39:23 PM
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
input btn,
input[7:0] sw,
output reg [3:0] Y
    );
    
    always @(*)
    begin
    case(btn)
    
     1'b0: Y = sw[3:0];
      1'b1: Y = sw[7:4];
     
    endcase
    end
    
endmodule





