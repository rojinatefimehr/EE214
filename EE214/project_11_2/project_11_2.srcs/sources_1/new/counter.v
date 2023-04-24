`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2023 06:40:04 PM
// Design Name: 
// Module Name: counter
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


module counter(

input clk, rst, enabeled,
    output reg out
    );

reg [16:0] counterout;

always @(posedge clk)
begin
    if(enabeled)
    begin
        if (clk) counterout <= counterout + 1;
    end
    out = counterout[16];
end


endmodule

