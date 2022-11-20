class transaction;
  rand int Vlantag;
  bit mode;
  constraint tag{if (mode == 1'b1)
                    Vlantag < 96;
                 else if (mode ==1'b0)
                   Vlantag < 1248;}
endclass: transaction

transaction trans_h = new;

initial
  begin
    int success;
    trans_h.mode = 1'b1;
    success = trans_h.randomize();
    $display("Tag is %d", trans_h.Vlantag);
  end
