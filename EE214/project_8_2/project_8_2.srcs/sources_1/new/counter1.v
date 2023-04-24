`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2023 09:14:57 PM
// Design Name: 
// Module Name: counter1
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


module counter1(
    input clk, rst,
    output reg [27:0] counterout
    );
    
 always @ (posedge(clk), posedge(rst))
 begin
     if (rst) counterout <= 0;
     else if (clk) counterout <= counterout + 1;
end
endmodule