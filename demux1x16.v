
module demux1x16(
    input d,
    input s3, s2, s1, s0,
    output [15:0] y
);

wire w0, w1, w2, w3;

//stage1

demux1x4 d0(d, s3, s2, w0, w1, w2, w3);

//stage2

demux1x4 d1(w0, s1, s0, y[0],  y[1],  y[2],  y[3]);

demux1x4 d2(w1, s1, s0, y[4],  y[5],  y[6],  y[7]);

demux1x4 d3(w2, s1, s0, y[8],  y[9],  y[10], y[11]);

demux1x4 d4(w3, s1, s0, y[12], y[13], y[14], y[15]);

endmodule
