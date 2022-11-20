class trans;
  rand bit [3:0] addr;
  static constraint valid_addr{addr > 8;}
  
endclass: trans


module static_constr;
  initial
    begin
      trans t1_h, t2_h;
      t1_h = new();
      t2_h = new();
      
      assert(t1_h.randomize());   // addr > 8
      
      t2_h.addr_range.constraint_mode(0);
      
      assert(t1_h.randomize());   // addr inside {[0:15]}
      assert(t2_h.randomize());   // addr inside {[0:15]}
      
      // Static constraint - if it is disabled in a particular object the constraint is disabled for all objects since it is a static constraint it is common to all objects
      
    end
endmodule: trans
