`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2025 09:26:48 PM
// Design Name: 
// Module Name: SR_FlipFlop_TB
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


module SR_FlipFlop_TB();
reg S,R,CLK;
wire Q,QBar;

SR_FlipFlop DUT(.Q(Q),.QBar(QBar),.S(S),.R(R),.CLK(CLK));

initial 
    begin
    CLK=0;
    forever #10 CLK=~CLK;
    end
initial 
    begin
    S=1; R=0;
    #100; S=0; R=1;
    #100; S=0; R=0;
    #100; S=1; R=1;
    end
endmodule
