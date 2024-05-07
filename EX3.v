`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 07:26:30 PM
// Design Name: 
// Module Name: EX3
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


module EX3();
reg clk, reset;
reg [7:0] w_data;
EX2 tb(.clk(clk), .reset(reset), .W_data(w_data));
initial begin
    clk = 0;
    forever #10 clk=~clk;
end
initial begin
 reset = 1;
 #20
 reset = 0;
 
end
endmodule
