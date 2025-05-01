`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2025 10:48:49 PM
// Design Name: 
// Module Name: PIPO1
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


module PIPO1(dout,din,Ld,clk);
input [15:0] din;
input Ld , clk;
output reg [15:0] dout;
always @(posedge clk)
if(Ld)
dout <= din;
endmodule
