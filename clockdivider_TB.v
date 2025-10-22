`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2025 04:13:36 PM
// Design Name: 
// Module Name: clockdivider_TB
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


module clockdivider_TB();
reg clock_in;
wire clock_out;

clockdivider DUT(.clock_in(clock_in),.clock_out(clock_out));
initial 
begin

    clock_in = 0;

    forever #10 clock_in=~clock_in;
    
end
initial begin
    #(2000);
    $finish;
    end
endmodule
