`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2023 09:53:15 PM
// Design Name: 
// Module Name: d_latch
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


module d_latch(

input D, G,

output Q, Qn

);

wire R, R1;

wire Q_int, Qn_int;


assign R1= ~(D &  G);
assign R=~(~D & G);


assign Q_int=~(R1 & Qn_int);
assign  Qn_int=~ (R & Q_int);

assign Q= Q_int;
assign Qn=Qn_int;







endmodule
