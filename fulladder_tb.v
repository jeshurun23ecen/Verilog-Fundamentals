module test;

reg a, b, cin;
wire sum, carry;

fulladder_str uut(a, b, cin, sum, carry);

initial begin
	$dumpfile("wave.vcd");
	$dumpvars(0, test);

	
	a=0; b=0; cin=0;
    #10 a=0; b=0; cin=1;
    #10 a=0; b=1; cin=0;
    #10 a=0; b=1; cin=1;
    #10 a=1; b=0; cin=0;
    #10 a=1; b=0; cin=1;
    #10 a=1; b=1; cin=0;
    #10 a=1; b=1; cin=1;

	#10 $finish;
end

endmodule
