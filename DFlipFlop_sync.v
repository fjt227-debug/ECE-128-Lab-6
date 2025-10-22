`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2025 06:33:54 PM
// Design Name: 
// Module Name: DFlipFlop_sync
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


module DFlipFlop_sync(d, rstn, clk, q);
input d, rstn, clk;
output reg q;

    always @ (posedge clk)
        if (!rstn)
            q <= 0;
        else
            q <= d;
endmodule
