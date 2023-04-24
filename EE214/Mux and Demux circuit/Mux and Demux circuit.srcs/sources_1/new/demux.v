`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2023 06:59:15 PM
// Design Name: 
// Module Name: demux
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

module demux(
    input EN,
    input [2:0] I,
    output reg [7:0] led
);



always @ (*)
    if (EN) begin
      case (I)
        3'b000: led = 8'b00000001;
        3'b001: led = 8'b00000010;
        3'b010: led = 8'b00000100;
        3'b011: led = 8'b00001000;
        3'b100: led = 8'b00010000;
        3'b101: led = 8'b00100000;
        3'b110: led = 8'b01000000;
        3'b111: led = 8'b10000000;
      endcase
    end
    else begin
      led = 8'b00000000;
    end

endmodule