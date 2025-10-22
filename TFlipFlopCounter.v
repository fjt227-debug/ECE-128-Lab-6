`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2025 01:51:10 PM
// Design Name: 
// Module Name: TFlipFlopCounter
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


module TFlipFlopCounter(clk,rstn,t,q);
input clk,rstn,t;
output reg q;
always @ (posedge clk) 
    begin
    if (!rstn) 
        q<=0;
    else
        if(t) 
            q<=~q;
        else
            q<=q;
     end
endmodule
