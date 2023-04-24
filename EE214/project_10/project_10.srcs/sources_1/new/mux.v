`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2023 08:08:38 PM
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
    input [1:0] select,
    output reg [3:0] out
);

always @ (*) begin
    case(select)
    4'b00: out <= I0;
    4'b01: out <= I1;
    4'b10: out <= I2;
    4'b11: out <= I3;
    endcase
end
endmodule
