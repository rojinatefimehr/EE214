`timescale 1ns / 1ps

module sw_led_tb;
reg [4:0] sw;
wire [1:0] led;
sw_led cut (.sw(sw),.led(led));

integer k;

// Apply input stimulus
initial
begin
    sw = 0;

    for (k=0; k<32; k=k+1)
        #20 sw = k;
        if (led[0] == ((sw[3]&~sw[1])| (sw[1]) | (sw[4]&sw[1]) | (sw[0]&sw[4])))
        $display("correct");
        else
         $display("Not correct");

    #20 $finish;
end


