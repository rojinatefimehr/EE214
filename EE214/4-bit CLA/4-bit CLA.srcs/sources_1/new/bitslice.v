`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2023 08:43:49 PM
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

   input A, B,
    input CIN,
    output G, P, S  
);

assign G = A & B;
assign P = A ^ B; 
assign S = P ^ CIN;

endmodule