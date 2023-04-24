`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2023 09:57:34 PM
// Design Name: 
// Module Name: adder
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


module adder(
input [7:0] A, B, 
    output reg [1:0] led,
    output [8:0] sum    
);

assign sum = A + B;

always @ (sum) begin
    if (sum[7] == 1) led[0] <= 1'b1;   
    if (sum[8] == 1) led[1] <= 1'b1;  
end


endmodule
