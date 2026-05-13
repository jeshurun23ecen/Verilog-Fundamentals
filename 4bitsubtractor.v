module subtractor_4bit(
    input [3:0] a, b,
    output [3:0] diff,
    output borrow
);

wire [3:0] binv;
wire cout;

assign binv = ~b;

ripple_carry_adder_4bit uut(a, binv, 1'b1, diff, cout);

assign borrow = ~cout;

endmodule
