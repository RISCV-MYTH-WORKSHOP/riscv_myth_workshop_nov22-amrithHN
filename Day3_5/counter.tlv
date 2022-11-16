\m4_TLV_version 1d: tl-x.org
\SV

\TLV
   $reset = *reset;
   
   $num[31:0] = $reset ? 0 : >>1$num + 1 ;
   //...

   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule

