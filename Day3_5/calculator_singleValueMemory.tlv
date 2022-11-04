\m4_TLV_version 1d: tl-x.org
\SV
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)

\TLV
   //Calculator with Single-Value Memory
   
   |calc
      @1
         $valid = $reset ? 0 : >>1$valid + 1 ;
         $valid_or_reset = $valid || $reset;
      ?$valid_or_reset
         @1
            $reset = *reset;
            
            $op[2:0] = $rand1[3:0];
            $val1[31:0] = $reset ? 32'b0 : >>2$out;
            $val2[31:0] = $rand3[3:0];

            $sum[31:0] = $val1 + $val2;
            $diff[31:0] = $val1 - $val2;
            $prod[31:0] = $val1 * $val2;
            $quot[31:0] = $val1 / $val2;

         @2               
            $out[31:0] = $reset | (~$valid) ? 32'b0 :
                      ($op == 3'b000) ? $sum :
                         ($op == 3'b001) ? $diff :
                            ($op == 3'b010) ? $prod :
                               ($op == 3'b011) ? $quot :
                                  ($op == 3'b100) ? $mem :
                                     ($op == 3'b101) ? $RETAIN :
                                        0;
   
      @2
          $mem[31:0] = $reset ? 32'b0 :
                          $op == 3'b101 ? >>2$ut :
                             $mem ;
         
   //...

   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule

