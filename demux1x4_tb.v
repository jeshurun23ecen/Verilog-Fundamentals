module test;

reg d, s1, s0;
wire y0, y1, y2, y3;

demux1x4 uut(d, s1, s0, y0, y1, y2, y3);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, test);

    d = 1; s1 = 0; s0 = 0;
    #10;
    d = 1; s1 = 0; s0 = 1;
    #10;
    d = 1; s1 = 1; s0 = 0;
    #10;
    d = 1; s1 = 1; s0 = 1;
    #10;
    d = 0; s1 = 0; s0 = 0;
    #10;

    $finish;
end

endmodule
