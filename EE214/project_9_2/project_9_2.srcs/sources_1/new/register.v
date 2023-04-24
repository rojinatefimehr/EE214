`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2023 09:52:05 PM
// Design Name: 
// Module Name: register
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


module register(


 input [7:0] D, 
    input [1:0] en, 
    input rst, clk,
    output reg [7:0] op1, op2
);

always @ (posedge(clk)) begin
    if (en[0]) op1 <= D;
    if (en[1]) op2 <= D;
end
endmodule