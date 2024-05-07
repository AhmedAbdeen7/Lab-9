`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 05:41:51 PM
// Design Name: 
// Module Name: ROM
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

module ROM (input [5:0] addr, output [25:0] data_out); 
reg [25:0] mem [0:63];
assign data_out = mem[addr];
initial begin
 mem[0]= 26'b00000001000011000001111100;
 mem[1]= 26'b00000010101011000000011100
;
 mem[2]= 26'b00000010001011000011000111
;
 mem[3]= 26'b00000001101010011100000000;
 mem[4]= 26'b00000010101110011000000000;
 mem[5]= 26'b10101011110010000000000000;
 
end
endmodule
