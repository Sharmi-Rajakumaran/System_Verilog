class trans;
  rand bit [3:0]addr;
  constraint addr_range{soft addr > 15;}
endclass: trans

module test;
  initial
    begin
      trans t_h; // handle for the class created
      t_h = new(); // object created
      
      repeat(2)
        begin
          t_h.randomize() with {addr < 15;};
          $display("\t addr = %0d", t_h.addr);
        end
    end
endmodule: test

// Even though both the constraints are contradictry since the constraint is defined as soft constraint using the keyword soft
// the randomization will be successful
