`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2023 07:05:19 PM
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
    input [7:0] sw,
    output  RED,
    output [7:0] led
);

wire sdata;
wire [2:0] B;




mux input_mux (
    .sw(sw),
    .S(B),
    .Y(sdata)
);

demux output_demux (
    .EN(sdata),
    .I(B),
    .led(led)
);

clock input_clock(
  .clk(clk),
  .B(B)
);
assign RED=sdata;
endmodule