`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2025 03:04:49 PM
// Design Name: 
// Module Name: Counter3_TFlipFlop
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


module Counter3_TFlipFlop(clk,rstn,en,q);
input wire clk;
input wire rstn;
input wire en;
output wire [2:0] q;
wire t0 = en;
wire t1 = en & q[0];
wire t2 = en & q[0] & q[1];

TFlipFlopCounter u0 (.clk(clk),.rstn(rstn),.t(t0),.q(q[0]));
TFlipFlopCounter u1 (.clk(clk),.rstn(rstn),.t(t1),.q(q[1]));
TFlipFlopCounter u2 (.clk(clk),.rstn(rstn),.t(t2),.q(q[2]));
endmodule
