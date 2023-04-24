`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2023 06:38:22 PM
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

     input [7:0] sw,
    input [2:0] en,
    input clk, rst, sub,
    output [1:0] led,
    output [3:0] seg_an,
    output [6:0] seg_cat
);

wire [7:0] a, b;
wire [7:0] sdata;
wire [8:0] wSum;
wire [15:0] newBCD;
wire clkout;
wire cout;
wire [3:0] muxConnect;

register input_reg(
.D(sw), 
.en(en[1:0]),
 .rst(rst), 
 .clk(clk), 
 .op1(a), 
 .op2(b)
 );
inverter inverter(
.sub(en[2]), 
.bits(b), 
.o(sdata)

);
adder adder(

.A(a),
 .B(sdata),
  .led(led[1:0]),
   .sum(wSum)
   );
bin2bcd BCD(
.bin(wSum[7:0]),
 .bcd(newBCD)
 );
clkdiv newClk(
.clk(clk),
 .rst(rst), 
 .terminalcount(500000), 
 .clk_div(clkout)
 );
counter counter(
.clk(clkout), 
.counterout(cout)
);
mux mux(
.I0(newBCD[3:0]), 
.I1(newBCD[7:4]), 
.I2(newBCD[11:8]),
 .I3(newBCD[15:12]), 
    .sel(cout), 
    .muxY(muxConnect)
    );
anod_decoder anodes(
.IN(cout),
 .anods(seg_an)
 );
segdecoder segdecoder(
.IN(muxConnect), 
.segs(seg_cat)
);


endmodule
