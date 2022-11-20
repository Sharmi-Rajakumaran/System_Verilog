module test;
  
  class packet;
    rand bit[3:0] s_addr;
    rand bit[3:0] e_addr;
    
    constraint valid_e_addr{e_addr == addr_calc(s_addr);}
    
    function bit [3:0] addr_calc(bit [3:0]s_addr);
      if(s_addr > 8)
        addr_calc = 0;
      else 
        addr_calc = s_addr + 2;
    endfunction: addr_calc
    
  endclass: packet
  
  initial
    begin
      packet pkt;
      pkt = new();
      
      repeat (3)
        begin
        assert(pkt.randmoize());
      $display("\t Start_addr = %0d, end_addr = %0d", pkt.s_addr, pkt.e_addr);
    end
      
  end
endmodule 
