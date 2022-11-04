\m4_TLV_version 1d: tl-x.org
\SV

\TLV

   
//   |fib
//      @1
//         $num[31:0] = *reset ? 1 : (>>1$num + >>2$num);
   |comp
      @1
         $err1 = $bad_input | $illegal_op ;
   
      @3
         $err2 = $err1 | $over_flow ;
         
      @6
         $err3 = $err2 | $div_by_zero ;
   
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule

