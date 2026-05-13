module test;

reg [3:0] a, b;
reg cin;
wire [3:0] s;
wire cout;


ripple_carry_adder_4bit uut(a, b, cin, s, cout);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, test);

    cin = 0;
    a = 4'b0000; b = 4'b0000;
    #10;
    a = 4'b0001; b = 4'b0001;
    #10;
    a = 4'b0011; b = 4'b0101;
    #10;
    a = 4'b1111; b = 4'b0001;
    #10;

    $finish;
end

endmodule
