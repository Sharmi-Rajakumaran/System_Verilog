class transaction;
  rand bit[3:0] addr;
  bit [3:0] addr_previous[] = {1,2,3,5,8,10,11,15}; // All the constraint values are stored in the dynamic array
  constraint adc{addr inside {addr_revious};} // The constraint limit is specifid in terms of array
endclass: transaction

transaction trans_h = new;

initial
  begin
    int success;
    success = trans_h.randomize();
    $display("Address is %d", trans_h.addr);
  end
  
  
