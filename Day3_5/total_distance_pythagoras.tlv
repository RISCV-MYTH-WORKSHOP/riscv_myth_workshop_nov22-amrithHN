\m4_TLV_version 1d: tl-x.org
\SV
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   `include"sqrt32.v"
   //pythagoras THEOREM
   
 
   |calc
      @1
         $reset = *reset;
      ?$valid
         @1
            $a_square[31:0] =  $reset ? '0 : $a_val[3:0] * $a_val;
            $b_square[31:0] =  $reset ? '0 : $b_val[3:0] * $a_val;
         @2
            $c_square[31:0] = $a_square + $b_square;
         @3   
            $c_value[31:0] = $reset ? '0 : sqrt($c_square);
      
      @4
         $tot_dist[63:0] =
              $reset ? '0 :
              $valid ? >>1$tot_dist + $c_value : >>1$tot_dist;
   
   
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule

