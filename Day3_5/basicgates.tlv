

\m4_TLV_version 1d: tl-x.org
\SV

\TLV
   //Basic gates
   $out1 = $in1 & $in2;
   $out2 = $in1 | $in2;
   $out3 = !$in1;
   $out4 = $in1 ^ $in2;
   $out5 = ~($in1 & $in2);
   $out6 = ~($in1 | $in2);
   $out7 = ~($in1 ^ $in2);

\SV
   endmodule

