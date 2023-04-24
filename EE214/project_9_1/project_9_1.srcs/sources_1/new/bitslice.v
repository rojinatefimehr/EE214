`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2023 09:45:45 PM
// Design Name: 
// Module Name: bitslice
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


module bitslice(


  input A,
    input B,
    input Cin,
    output G,
    output P,
    output S
);

assign G = A && B;
assign P = A ^ B;
assign S = P ^ Cin;



 endmodule