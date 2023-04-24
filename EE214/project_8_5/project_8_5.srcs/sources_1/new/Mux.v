`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2023 07:10:59 PM
// Design Name: 
// Module Name: Mux
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


module Mux(

input [3:0] I0, I1, I2, I3,
input[1:0] sel,
output reg[3:0] Y

    );
    
    always@(*) begin
    case(sel)
    4'b00: Y<=I0;
    4'b01: Y<=I1;
    4'b10: Y<=I2;
    4'b11: Y<=I3;
    endcase
    end
    
endmodule
