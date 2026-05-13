module test;

reg d;
reg [3:0] s;

wire [15:0] y;

integer i;

demux1x16 uut
(
    d, s[3], s[2], s[1], s[0], y
);

initial begin

    $dumpfile("wave.vcd");
    $dumpvars(0, test);

    d = 1;

    for(i = 0; i < 16; i = i + 1)
    begin
        s = i;
        #10;
    end

    $finish;

end
endmodule
