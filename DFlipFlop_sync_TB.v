`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2025 01:29:27 PM
// Design Name: 
// Module Name: DFlipFlop_sync_TB
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


module DFlipFlop_sync_TB();
    reg clk;
    reg d;
    reg rstn;
    reg [2:0] delay;
    integer i;
    DFlipFlop_sync DUT(.d(d),.rstn(rstn),.clk(clk),.q(q));
    
    always #10 clk = ~clk;
    
    initial begin
    clk <= 0;
    d <= 0;
    rstn <= 0;
    #15 d <= 1;
    #10 rstn <= 1;
    for (i = 0; i < 5; i=i+1)
        begin
        delay = $random;
        #(delay) d <= i;
        end
     end
endmodule
