module mux4(input a, input b, input c, input d, input s1, input s0, output y);
    assign y = (~s1 & ~s0 & a) |
               (~s1 &  s0 & b) |
               ( s1 & ~s0 & c) |
               ( s1 &  s0 & d);
endmodule
