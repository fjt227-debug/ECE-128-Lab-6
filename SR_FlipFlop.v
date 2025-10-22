`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2025 06:32:12 PM
// Design Name: 
// Module Name: SR_FlipFlop
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


module SR_FlipFlop(R,S,CLK,Q,QBar);

input R,S,CLK;
output Q,QBar;
wire S1,S2;
and A1(S1,R,CLK);
and A2(S2,S,CLK);
nor #1 N1(Q,S1,QBar);
nor #1 N2(QBar,S2,Q);

endmodule
