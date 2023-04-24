`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2023 11:40:50 AM
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
    output [6:0] seg_cat, [3:0] seg_an
    );
    
reg [7:0] num1, num2;
reg signed [7:0] neg;
wire [15:0] result;

always @ (posedge(clk)) begin
    if (btn[0]) num1 <= sw;
    if (btn[1]) num2 <= sw;
end

always @(btn[2]) begin
    if(btn[2]) neg = -num1;
    else neg = num1;
end

assign result = neg + num2;

wire [15:0] bcd;

bin2BCD bin2bcd(
.bin(result),
 .bcd(bcd)
 );


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
