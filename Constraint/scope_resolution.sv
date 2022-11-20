module test();
  int a,b;
  bit success;
  
  initial
    begin
      
      success = std :: randomize(a,b) with {a > 10; a < 20; b < 100; b> 50;};
      $display("a = %0d, b = %0d", a,b);
    end
endmodule: test
