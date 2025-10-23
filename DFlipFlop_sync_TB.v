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
   
    DFlipFlop_sync DUT(.d(d),.rstn(rstn),.clk(clk),.q(q));
    initial begin
    clk=0;
    forever #10 clk =~clk;
    end
 
    initial begin
    @(posedge clk);
    d = 1;
    rstn=1;
    @(posedge clk);
    d = 0;
    rstn=1;
    @(posedge clk);
    d = 1;
    rstn = 1;//q=1
    @(negedge clk);
    d = 1;
    rstn = 0;//q=0

    end 
endmodule
