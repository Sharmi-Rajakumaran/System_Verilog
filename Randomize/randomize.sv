module test();
    class transaction;
      rand bit[15:0] pktlength;
      randc bit[3:0] header;
    endclass: transaction
  
  transaction trans_h = new;
  
  initial
    begin
      int success;
      success = trans_h.randomize();
    end
endmodule: test

