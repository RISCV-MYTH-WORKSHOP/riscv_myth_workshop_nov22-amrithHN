\m4_TLV_version 1d: tl-x.org
\SV
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   //Calculator labs solutions here
   
   |calc
      @1
         $reset = *reset;
         $cnt = $reset ? 0 : >>1$cnt + 1 ;
         $valid = $cnt;
         
         $op[1:0] = $rand1[1:0];
         $val1[31:0] = $reset ? 32'b0 : >>2$out;
         $val2[31:0] = $rand3[3:0];
   
         $sum[31:0] = $val1 + $val2;
         $diff[31:0] = $val1 - $val2;
         $prod[31:0] = $val1 * $val2;
         $quot[31:0] = $val1 / $val2;
      
      @2
         $out[31:0] = $reset | (~$valid) ? 32'b0 :
                   ($op == 2'b00) ? $sum :
                      ($op == 2'b01) ? $diff :
                         ($op == 2'b10) ? $prod : $quot;
   
   
         
   //...

   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV

   endmodule

