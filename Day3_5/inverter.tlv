\m4_TLV_version 1d: tl-x.org
\SV

\TLV
   //inverter
   $reset = *reset;
   $out = ! $in1;
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule

