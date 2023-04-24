`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2023 07:52:28 PM
// Design Name: 
// Module Name: Decoder2_4
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


module Decoder2_4(


 
    input [1:0] I,
    output reg [3:0] Y
    );
    always @(*) begin
        case(I)
        2'b00: Y = 4'b1110;
        2'b01: Y = 4'b1101;
        2'b10: Y = 4'b1011;
        2'b11: Y = 4'b0111;
        
        endcase
       
    end
endmodule