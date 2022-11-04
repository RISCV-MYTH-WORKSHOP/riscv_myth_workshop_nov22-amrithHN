\m4_TLV_version 1d: tl-x.org
\SV

\TLV
   $reset = *reset;
   $out[4:0] = $sel ? $in1[4:0] : $in2[4:0];
   //...

   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
