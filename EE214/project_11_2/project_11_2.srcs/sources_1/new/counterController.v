`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2023 06:32:59 PM
// Design Name: 
// Module Name: counterController
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


module counterController(

     input tick, 
    input inc,
    input rst,
    output reg [3:0] I0,
    
    
    output reg [3:0] I1,
    output reg [3:0] I2,
    output reg [3:0] I3
    );


always @ (posedge(tick), posedge(rst), posedge(inc))
begin
    if (rst) I0 = 0; else
    
  if (inc) I0 <= I0 + 1;
    else 
    if ( I0 == 4'b1001) I0 <= 0;
    else I0 <= I0 + 1;
end

always @ (posedge(tick), posedge(rst))
begin
    if (rst) I1 = 0;
    
    else
     if (I1 == 4'b1001) I1 <= 0;
    else if (I0 == 4'b1001) I1 <= I1 + 1;
    else I1 <= I1;
end

always @ (posedge(tick), posedge(rst))
begin
    if (rst) I2 = 0;
    else
     if (I2 == 4'b1001) I2 <= 0;
    else
     if (I1 == 4'b1001) I2 <= I2 + 1;
    else I2 <= I2;
end

always @ (posedge(tick), posedge(rst))
begin
    if (rst) I3 = 0;
    else 
    if (I3 == 4'b1001) I3 <= 0;
    else
     if (I2 == 4'b1001) I3 <= I3 + 1;
    else I3 <= I3;
end


endmodule

