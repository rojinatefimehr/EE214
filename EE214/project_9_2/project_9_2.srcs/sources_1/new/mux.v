`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2023 06:34:41 PM
// Design Name: 
// Module Name: mux
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


module mux(
input [3:0] I0, I1, I2, I3,
    input [1:0] sel,
    output reg [3:0] muxY
);

always @ (*) begin
    case(sel)
        4'b00: muxY <= I0;
        4'b01: muxY <= I1;
        4'b10: muxY <= I2;
        4'b11: muxY <= I3; 
    endcase
end
endmodule
