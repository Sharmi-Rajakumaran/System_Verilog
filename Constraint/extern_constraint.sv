class packet;
  rand bit[3:0]addr;
  constraint valid_addr; // within class we just have to define the constraint name
endclass: packet

constraint packet :: valid_addr{addr<10;} // outside the class the constraint definition is made hence called extern constraints
// It says that the valid_addr property of class packet is randomized with addr <10
// It is similar to the methods
// :: is the scope resolution operator

module test;
  initial 
    begin
      packet pkt;
      pkt = new();
      
      repeat (2)
        begin
          assert(pkt.randomize() with {addr < 5 ;});
          $display("\t addr = %d", pkt.addr);
        end
    end
endmodule: test
