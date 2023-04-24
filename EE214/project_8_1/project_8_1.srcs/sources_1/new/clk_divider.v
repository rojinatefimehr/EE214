`timescale 1ns / 1ps
module clk_divider(
    input clk,
    input rst,
    output led
    );

wire [26:0] din;
wire [26:0] clkdiv;

dff dff_inst0 (
    .C(clk),
    .CLR(rst),
    .D(din[0]),
    .Q(clkdiv[0])
);

genvar i;
generate
for (i = 1; i < 27; i=i+1)
begin : dff_gen_label
    dff dff_inst0 (
        .C(clkdiv[i-1]),
        .CLR(rst),
        .D(din[i]),
        .Q(clkdiv[i])
    );
    end
endgenerate

assign din = ~clkdiv;

assign led = clkdiv[26];

endmodule