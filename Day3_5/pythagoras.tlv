\m4_TLV_version 1d: tl-x.org
\SV
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   `include"sqrt32.v"
   //pythagoras THEOREM
   $reset = *reset;
 
   $a_square[31:0] = $a_val[3:0] * $a_val;
   $b_square[31:0] = $b_val[3:0] * $a_val;
   $c_square[31:0] = $a_square + $b_square;
   $c_value[31:0] = sqrt($c_square);
   
  
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule

