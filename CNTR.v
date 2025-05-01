`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2025 11:05:49 PM
// Design Name: 
// Module Name: CNTR
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


module CNTR(dout,din,Ld,dec,clk);
input [15:0] din;
input Ld,dec,clk;
output reg[15:0]dout;
always @(posedge clk)
if(Ld)
dout <= din;
else if(dec)
dout <= dout -1;
endmodule
