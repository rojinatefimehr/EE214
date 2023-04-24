`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2023 08:46:21 PM
// Design Name: 
// Module Name: decoder
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


module decoder(

input IN,
    output reg [3:0] anods
);

always @ (IN) begin
    case (IN)
    1'b0: anods <= 4'b1110;
    1'b1: anods <= 4'b1101;
    //2'b10: anods <= 4'b1011;
    //2'b11: anods <= 4'b0111;
    endcase
end
endmodule