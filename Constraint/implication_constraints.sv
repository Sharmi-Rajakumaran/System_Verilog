class transaction;
  rand int Vlantag;
  bit mode;
  constraint tag{mode == 1'b1 -> Vlantag < 96;
                mode == 1'b0 -> Vlantag < 1248;}
  
  // The above statement means that when mode is 1 Vlantag is less than 96 and when mode is 0 then Vlantag is less than 1248
  
endclass: transaction

transaction trans_h = new;

initial
  begin
    int success;
    trans_h.mode = 1'b1;
    success = trans_h.randomize();
    $display("Tag is %d", trans_h.Vlantag);
  end
