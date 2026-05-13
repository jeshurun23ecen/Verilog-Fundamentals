module test;
reg a, b, sel;
wire y;

mux_bhv uut(a, b, sel, y);

initial begin
	$dumpfile("wave.vcd");
	$dumpvars(0, test);
	a = 0; b = 1; sel = 0;
	#10 a = 0; b = 1; sel = 1;
	#10 a = 1; b = 0; sel = 0;
	#10 a = 1; b = 0; sel = 1;

	#10 $finish;
end
endmodule
