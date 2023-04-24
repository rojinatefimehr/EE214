`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2023 08:43:47 PM
// Design Name: 
// Module Name: tb
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

module tb;

    // Inputs
    reg clk;
    reg rst;

    // Outputs
    wire led;

    // Instantiate the Unit Under Test (UUT)
    clk_divider uut (
        .clk(clk),
        .rst(rst),
        .led(led)
    );

    always
        #5 clk = ~clk;

    initial begin
        // Initialize Inputs
        clk = 0;
        rst = 1;

        #10 rst = 0;

        // Wait 100 ns for global reset to finish
        #100;

    end

endmodule