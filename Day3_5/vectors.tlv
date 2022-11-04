\m4_TLV_version 1d: tl-x.org
\SV

\TLV
   //vectors
   $reset = *reset;
   $out1[6:0] = $in1[5:0] + $in2[5:0];
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule

