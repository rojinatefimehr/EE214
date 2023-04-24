`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2023 10:43:55 PM
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
   input [6:0] sw,
   input [1:0] btn,
   output  [6:0] seg_cat,
   output  [3:0] seg_an
    
);
assign seg_an[3:2]=3;

assign seg_an[0]=btn[0];
assign seg_an[1]=~btn[0];

wire [3:0] sdata;

mux input_mux (
    .btn(btn),
 .sw(sw),
 .Y(sdata)
);

seven output_seg (
    .sw(sdata),
    . seg_cat( seg_cat)
);






endmodule
