module test;
reg a, b, c, d, s0, s1;
wire y;
 

mux4 uut(a, b, c, d, s1, s0, y);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, test);

    a = 0; b = 1; c = 0; d = 1;

    s1 = 0; s0 = 0;  // expect a
    #10 s1 = 0; s0 = 1;  // expect b
    #10 s1 = 1; s0 = 0;  // expect c
    #10 s1 = 1; s0 = 1;  // expect d

    #10 $finish;
end

endmodule
