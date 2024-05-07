`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 06:45:03 PM
// Design Name: 
// Module Name: EX2
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


module EX2(input clk, reset,  output W_data);
wire [1:0]count;
reg [25:0] data_out;
wire enable;
wire [7:0] A_data;
wire [7:0] B_data;
wire [7:0] Result;
reg [7:0] w_data;
wire Zflag;

BinaryCounter C(.clk(clk), .reset(reset), .en(enable), .count(count));
ROM R(.addr(count), .data_out(dataout));
regFile REG(.clk(clk), .rst(reset), .A_data(A_data), .B_data(B_data), .W_data(w_data), .A_addr(data_out[25: 22]), .B_addr(data_out[21:18]), .W_addr(data_out[17:14]), .wr(data_out[13]));
ALU A(.A(A_data), .B(B_data), .Result(Result), .ALUSel(data_out[10:8]), .ZFlag(Zflag));
always@(data_out[12])begin
    case(data_out[12])
    0: w_data = Result;
    1: w_data = data_out[7:0];
    endcase
    end
    assign W_data = w_data;

endmodule
