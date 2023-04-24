`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2023 08:52:43 PM
// Design Name: 
// Module Name: dff
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


module dff(


input D,
input clk,
input rst,
output reg Q
    );
    
    always @ (posedge(clk), posedge(rst))
begin

if (rst==1)
Q<=1'b0;
else
Q<=D;
end
    
endmodule
