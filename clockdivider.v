`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2025 03:33:09 PM
// Design Name: 
// Module Name: clockdivider
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


module clockdivider(clock_in,clock_out);
input clock_in;
output reg clock_out;

reg[1:0] counter=2'd0;

always @(posedge clock_in)
begin 
    counter <= counter + 1;
    if(counter==2'b01)begin
        clock_out<=~clock_out;
        counter<=0;
    end
end
endmodule
