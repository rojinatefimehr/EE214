`timescale 1ns/1ps
module led_sw(
    output [3:0]  seg_an,
    output [7:0]  seg_cat,
    input [7:0]sw,
    input [3:0] btn
    
);

assign seg_cat = ~sw;
assign seg_an= ~btn;


endmodule