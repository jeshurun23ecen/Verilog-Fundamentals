module fulladder_gate(
	input a, b, cin,
	output sum, carry
);

wire xor_ab;
wire ab, bc, ac;

//sum
xor (xor_ab, a, b);
xor (sum, xor_ab, cin);

//carry
and (ab, a, b);
and (bc, b, cin);
and (ac, a, cin);

or (carry, ab, bc, ac);

endmodule
