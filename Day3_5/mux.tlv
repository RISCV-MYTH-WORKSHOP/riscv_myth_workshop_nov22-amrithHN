\m4_TLV_version 1d: tl-x.org
\SV

\TLV
   //Mux 
   $reset = *reset;
   $out = $sel ? $in1 : $in2;
   //...

   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV

   endmodule

