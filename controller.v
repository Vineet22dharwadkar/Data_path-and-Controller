`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2025 11:12:46 PM
// Design Name: 
// Module Name: controller
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


module controller(LdA,LdB,LdP,clrP,decB,done,clk,eqz,start);
input clk,eqz,start;
output reg LdA,LdB,LdP,clrP,decB,done;
reg [2:0]state;
parameter s0=3'b000, s1=3'b001, s2=3'b010, s3=3'b011, s4=3'b100;
initial state = s0;
always @(posedge clk)
begin
case(state)
s0: if(start) state <= s1;
s1: state <= s2;
s2: state <= s3;
s3: if(eqz) state <= s4;
s4: state <= s4;
default: state <= s0;
endcase
end
initial state = s0;
always @(state)
begin
case(state)
s0: begin  LdA=0; LdB=0; LdP=0; clrP=0;decB=0;done=0; end
s1: begin  LdA=1; LdB=0; LdP=0; clrP=0;decB=0;done=0;end
s2: begin  LdA=0; LdB=1; LdP=0; clrP=1;decB=0;done=0;end
s3: begin  LdA=0; LdB=0; LdP=1; clrP=0;decB=1;done=0; end
s4: begin  LdA=0; LdB=0; LdP=0; clrP=0;decB=0;done=1; end  //done =1 becz last state and deactivate all the signals 
default: begin #1 LdA=0; LdB=0; LdP=0; clrP=0;decB=0;done=0; end
endcase
end
endmodule
