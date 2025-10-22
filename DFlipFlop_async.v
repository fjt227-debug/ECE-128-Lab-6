`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2025 06:34:15 PM
// Design Name: 
// Module Name: DFlipFlop_async
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


module DFlipFlop_async(d,rstn,clk,q);
input d, rstn, clk;
output reg q;

    always @ (posedge clk or negedge rstn)
        if (!rstn)
            q <= 0;
        else
            q <= d;

endmodule
