`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2023 08:07:20 PM
// Design Name: 
// Module Name: mux_8_1
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


module mux_8_1( 
 input [7:0] sw,
    input [2:0] btn,
    output led
 
    );
    
    reg tmp;

always @(sw, btn) begin
    case (btn)
        3'b000: tmp <= sw[0];
        3'b001: tmp <= sw[1];
        3'b010: tmp <= sw[2];
        3'b011: tmp <= sw[3];
        3'b100: tmp <= sw[4];
        3'b101: tmp <= sw[5];
        3'b110: tmp <= sw[6];
        3'b111: tmp <= sw[7];
        default: tmp <= 2'b00;
    endcase
end
assign led = tmp;
endmodule