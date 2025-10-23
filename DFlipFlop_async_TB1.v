`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2025 01:44:51 PM
// Design Name: 
// Module Name: DFlipFlop_async_TB1
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


module DFlipFlop_async_TB1();
    reg clk;
    reg d;
    reg rstn;
 
    DFlipFlop_async DUT(.d(d),.rstn(rstn),.clk(clk),.q(q));
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
    @(posedge clk);
    d = 1;
    rstn = 1;//q=1
    #15;
    rstn=0;
    @(negedge rstn);
    d = 1;
    rstn = 0;//q=0
    end 
endmodule
