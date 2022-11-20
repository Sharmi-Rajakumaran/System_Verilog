class transaction;
  rand bit[3:0] addr;
  constraint adc{addr inside{3,7, [11:15]};}
endclass: transaction

transaction trans_h = new;

initial
  begin
    int success;
    success = trans_h.randomize();
    $display("Address is %d", trans_h.addr);
  end

//constraint constraint_identifier{variable inside{set of legal values};}
