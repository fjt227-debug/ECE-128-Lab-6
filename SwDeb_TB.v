module SwDeb_TB();
reg raw;
reg clk;
wire clean;

SwitchDebouncer uut(.raw(raw),.clk(clk),.clean(clean));
initial begin
clk = 0;
forever #10 clk = ~clk;
end 
initial begin
raw = 0;
#40;
raw = 1;
#60;
raw = 0;
#40;
raw = 1;
#40;
raw = 0;
#20;
raw = 1;
#200;
raw = 0;
#200;

end
endmodule
