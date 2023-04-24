`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2023 08:47:05 PM
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1(

  input [3:0] I0, I1, I2, I3,
    input [1:0] sel,
    output reg [3:0] Y
);

always @(*) begin
    case (sel)
    2'b00: Y <= I0;
    2'b01: Y <= I1;
    2'b10: Y <= I2;
    2'b11: Y <= I3;
    endcase 
end 
endmodule
