`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2025 03:11:13 PM
// Design Name: 
// Module Name: Counter3_TB
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


module Counter3_TB();
reg clk;
reg rstn;
reg en;
wire [2:0] q;

Counter3_TFlipFlop DUT (.clk(clk),.rstn(rstn),.en(en),.q(q));
initial clk = 1'b0;
always #5 clk = ~clk;
initial begin
    rstn = 1'b0;
    en = 1'b0;
    repeat (2) @(posedge clk);
    
    rstn = 1'b1;
    @(posedge clk);
    
    en = 1'b0;
    repeat (3) @(posedge clk);
    
    en = 1'b1;
    repeat (12)@(posedge clk);
    
    en = 1'b0; 
    repeat(3) @(posedge clk);
    
    en = 1'b1;
    repeat(6) @(posedge clk);
    
    $finish;
    end
endmodule
