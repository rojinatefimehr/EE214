`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2023 08:12:38 PM
// Design Name: 
// Module Name: Encoder_4_2_tb
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


module Encoder_4_2_tb;


reg [3:0] I;
reg  Ein;

wire [1:0] Y;
	wire GS;
	wire Eout;
	Encoder_4_2  CUT(
	.I(I),
    .Ein(Ein),
    .Y(Y),
    .GS(GS),
    .Eout(Eout)
    );
    integer k;
initial begin
Ein=1;
 for(k=0; k < 16; k=k+1) begin
        I = k;
        #10;
           end
    $finish;
end
        




endmodule
