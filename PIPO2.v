`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2025 10:54:06 PM
// Design Name: 
// Module Name: PIPO2
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


module PIPO2(dout,din,Ld,clr,clk);
input [15:0] din;
input Ld ,clr,clk;
output reg [15:0] dout;
always @(posedge clk)
if(clr)
dout <= 16'b0;
else if(Ld)
dout <= din;
endmodule
