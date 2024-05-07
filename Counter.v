`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 06:48:32 PM
// Design Name: 
// Module Name: Counter
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

module BinaryCounter #(parameter x = 5, parameter n = 5) (input clk, reset, en, output [n-1:0]count);

reg [n-1:0] count;
always @(posedge clk, posedge reset) begin
 if (reset == 1)
    count <= #(x)'d0; 
 else if(en == 1)
    count <= count + 1; 
 else
    count <= count;
end
endmodule