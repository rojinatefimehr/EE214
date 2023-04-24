`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2023 06:08:25 PM
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
 input clk, rst,
    input [7:0] sw,
    output [3:0] seg_an,
    output [6:0] seg_cat
);
wire clkOut;
wire cout;
wire [3:0] muxConnect;
wire [7:0] sdata;
wire[15:0] qdata;

clkdiv clkdiv(
.clk(clk), 

.rst(rst),
 .terminalcount(50000), 
 .clk_div(clkOut)
 );
cla_adder claAdder(
.op1(sw[3:0]), 
.op2(sw[7:4]), 
.sum(sdata)
);
bin2bcd bcdConvert(
.bin(sdata), 
.bcd(qdata)
);
counter counter(
.clk(clkOut), 
.rst(rst), 
.counterout(cout)
);
decoder decoder(
.IN(cout), 
.anods(seg_an)
);
mux_4_1 mux(
.I0(qdata[3:0]),
 .I1(qdata[7:4]), 
 .I2(qdata[11:8]), 
 .I3(qdata[15:12]), 
 .sel(cout), 
 .Y(muxConnect));
sevsegdecoder segDecoder(
.I(muxConnect), 
.segs(seg_cat)
);
endmodule