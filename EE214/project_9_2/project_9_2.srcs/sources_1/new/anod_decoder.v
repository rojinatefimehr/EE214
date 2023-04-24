`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2023 06:37:35 PM
// Design Name: 
// Module Name: anod_decoder
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


module anod_decoder(

 input [1:0] IN, 
    output reg [3:0] anods
);

always @ (IN) begin
    case (IN)
    2'b00: anods <= 4'b1110;
    2'b01: anods <= 4'b1101;
    2'b10: anods <= 4'b1011;
    2'b11: anods <= 4'b0111;
    endcase
end

endmodule