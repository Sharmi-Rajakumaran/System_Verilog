  1 class base;
  2         int i;
  3 
  4         static function get();
  5                 int a;
  6                 a++;
  7                 i++;
  8                 $display(a);
  9                 $display(i);
 10         endfunction
 11 endclass
 12 
 13 base b1_h, b2_h;
 14 
 15 module test();
 16 
 17 initial
 18     
 19         begin
 20 
 21         b1_h.get();
 22         b1_h.get();
 23         b2_h.get();
 24 
 25         end
 26 
 27 endmodule
