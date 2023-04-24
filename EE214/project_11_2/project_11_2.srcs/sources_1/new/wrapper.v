`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2023 06:42:35 PM
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

  input clk,
    input rst,
    input a,
    input b,
    input inc,
    output [3:0] seg_an,
    output [6:0] seg_cat
    );

wire sdata, qdata;
wire [3:0] I0;
wire [3:0] I1;
wire [3:0] I2;
wire [3:0] I3;


reg enabeled;

always @(a,b)
begin
if(a)
 enabeled = 1'b1;
if(b)
    enabeled = 1'b0;
end

counter newclk(

.clk(clk), 
.rst(rst), 
.out(sdata), 
.enabeled(enabeled)
);

counterController count_input(
.tick(sdata),
 .rst(rst), 
 .I0(I0), 
 .I1(I1), 
 .I2(I2),
  .I3(I3),
   .inc(inc)
   );

ssegController seg_output(
.I0(I0), 
.I1(I1),
 .I2(I2), 
 .I3(I3), 
 .clk(clk), 
 .seg_an(seg_an), 
 .seg_cat(seg_cat)
 );


endmodule

