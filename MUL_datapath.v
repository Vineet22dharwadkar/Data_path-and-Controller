`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2025 10:38:02 PM
// Design Name: 
// Module Name: MUL_datapath
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


module MUL_datapath(eqz,LdA,LdB,LdP,clrP,decB,data_in,clk);
input LdA,LdB,LdP,clrP,decB,clk;
input [15:0] data_in;
output eqz;
wire [15:0] X,Y,Z,Bout,Bus;
assign Bus = data_in;
PIPO1 A(X,Bus,LdA,clk);
PIPO2 P(Y,Z,LdP,clrP,clk);
CNTR B(Bout, Bus , LdB, decB ,clk);
ADD AD(Z,X,Y);
EQZ COMP(eqz,Bout);
endmodule
