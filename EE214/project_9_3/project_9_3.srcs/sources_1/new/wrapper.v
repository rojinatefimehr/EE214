`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2023 05:21:09 PM
// Design Name: 
// Module Name: wrapper
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


module wrapper(

 input clk, [7:0] sw, [2:0] btn,
    output [6:0] seg_cat, [3:0] seg_an, [2:0]led
    );
    
reg [7:0] num1, num2, op3;
reg signed [7:0] neg;
wire [15:0] result;

always @ (posedge(clk)) begin
    if (btn[0]) num1 <= sw;
    if (btn[1]) num2 <= sw;
    if (btn[2]) op3 <= sw;
end


assign result = num1 * num2;

wire [15:0] bcd;

bin2BCD bin2bcd(
.bin(result),
 .bcd(bcd)
 );

assign led[0] = (result > op3) ? 1 : 0;
assign led[1] = (result == op3) ? 1 : 0;
assign led[2] = (result < op3) ? 1 : 0;

ssegController sseg(
.I0(bcd[3:0]), 
.I1(bcd[7:4]), 
.I2(bcd[11:8]), 
.I3(bcd[15:12]), 
.clk(clk), 
.seg_an(seg_an), 
.seg_cat(seg_cat)
);

endmodule
