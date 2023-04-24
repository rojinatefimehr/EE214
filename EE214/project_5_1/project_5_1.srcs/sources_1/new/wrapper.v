`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2023 12:32:49 PM
// Design Name: 
// Module Name: wrapper
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

module wrapper(
    input [7:0] sw,
    input RGB_led_A,
    output [7:0] led
);

wire sdata;

mux input_mux (
    .I(sw),
    .S(RGB_led_A),
    .Y(sdata)
);

demux output_demux (
    .EN(sdata),
    .I(RGB_led_A),
    .Y(led)
);

endmodule