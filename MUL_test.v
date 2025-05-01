`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2025 11:20:15 AM
// Design Name: 
// Module Name: MUL_test
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


module MUL_test();
  reg [15:0] data_in;
  reg clk, start;
  wire done, eqz;

  wire LdA, LdB, LdP, clrP, decB;

  MUL_datapath DP(
    .eqz(eqz), .LdA(LdA), .LdB(LdB), .LdP(LdP),
    .clrP(clrP), .decB(decB), .data_in(data_in), .clk(clk)
  );

  controller CON(
    .LdA(LdA), .LdB(LdB), .LdP(LdP), .clrP(clrP),
    .decB(decB), .done(done), .clk(clk), .eqz(eqz), .start(start)
  );

  initial begin
    clk = 0;
    start = 1'b0;
    #5 start = 1'b1;
  end
  always #5 clk = ~clk;
  initial begin
    data_in = 16'd17;  // A
    #50 data_in = 16'd5;  // B
  end

  initial begin
    $monitor("Time = %0t | Y = %0d | Done = %b", $time, DP.Y, done);
    #500 $finish;
  end
endmodule
