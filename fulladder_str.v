module fulladder_str(
	input a, b, cin,
	output sum, carry
);

wire s1, c1, c2;

half_adder ha1(a, b, s1, c1);
half_adder ha2(s1, cin, sum, c2);

assign carry = c1 | c2;

endmodule
