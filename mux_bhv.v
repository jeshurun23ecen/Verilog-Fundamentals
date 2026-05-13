module mux_bhv(input a, input b, input sel, output reg y);

always @(*) begin
	if (sel == 0)
	   y = a;
	else
	   y = b;
end
endmodule
