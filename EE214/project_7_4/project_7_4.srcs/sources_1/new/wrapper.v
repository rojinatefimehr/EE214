`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2023 10:50:18 PM
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
    input [1:0] btn,
    output [7:0] led
);

wire [7:0] sdata;

Register input_register(
    .D(sw),
    .clk(btn[0]),
    .Q(sdata)
);



mux output_mux(
    .I0(sw),
    .I1(sdata),
    .sel(btn[1]),
    .led(led)
);


    
endmodule
