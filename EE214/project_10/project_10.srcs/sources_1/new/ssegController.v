`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2023 11:42:51 AM
// Design Name: 
// Module Name: ssegController
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


module ssegController(

    input [3:0] I0,
    input [3:0] I1,
    input [3:0] I2,
    input [3:0] I3,
    input clk,
    output [3:0] seg_an,
    output [6:0] seg_cat
);

wire [1:0] select;
dispClk dispClk(
.clk(clk),
 .out(select)
 );

wire [3:0] ssegout;

mux inputselect(
 .select(select),
.I0(I0), 
.I1(I1), 
.I2(I2),
 .I3(I3),
  .out(ssegout)
  );

ssegDecoder cathods(
.ssegin(ssegout), 
.sseg(seg_cat)
);

ssegAnodeDecoder anodes(
.select(select), 
.anode(seg_an)
);

endmodule
