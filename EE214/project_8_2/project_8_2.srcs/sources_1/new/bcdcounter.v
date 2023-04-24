`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2023 09:19:36 PM
// Design Name: 
// Module Name: bcdcounter
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


module bcdcounter (
    input clk, rst,
    output reg [3:0] bcd_digit
    );

always @ (posedge(clk), posedge(rst))
begin
    if (rst) bcd_digit <= 0;
    else if (bcd_digit == 4'b1001) bcd_digit <= 0;
    else bcd_digit <= bcd_digit + 1;
end
endmodule