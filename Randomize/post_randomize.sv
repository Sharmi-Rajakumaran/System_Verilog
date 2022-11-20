class transaction;
  rand bit [0:7] data;
  rand bit [0:1] ch;
  
  function void post_randomize;
    $display("Data is %b", data);
    $display("Channel is %b", ch);
    
  endfunction: post_randomize
  
endclass: transaction

initial
  begin
    int success;
    transaction trans_h = new(); // object is created;
    success = trans_h.randomize();
  end
