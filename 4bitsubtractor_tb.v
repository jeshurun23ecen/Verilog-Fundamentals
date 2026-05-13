module test;

reg [3:0] a, b;
wire [3:0] diff;
wire borrow;

subtractor_4bit uut(a, b, diff, borrow);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, test);

    a = 4'b0000; b = 4'b0000;
    #10;

    a = 4'b0101; b = 4'b0011;
    #10;

    a = 4'b0011; b = 4'b0101;
    #10;

    a = 4'b0000; b = 4'b0001;
    #10;

    a = 4'b1000; b = 4'b0010;
    #10;

    $finish;
end

endmodule
