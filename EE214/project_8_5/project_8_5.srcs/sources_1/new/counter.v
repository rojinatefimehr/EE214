`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2023 07:51:31 PM
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
    input clk,rst,
    output reg [1:0] counterout
    );
    
 always @ (posedge(clk), posedge(rst))
 begin
 if (rst) counterout<=0;
     counterout = counterout + 1;
end
endmodule
