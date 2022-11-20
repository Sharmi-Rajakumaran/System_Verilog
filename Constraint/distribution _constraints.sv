// constraint constraint_identifier {variable dist{set of legal values and weights};}

class transaction;
  rand int Vlantag;
  constraint tag{Vlantag dist{7: = 5, [11:20]:= 3, [26:30] :/5};} // Here 7 is assigned the value of 5, 11 to 20 range each element gets value 3. Hence total Weight 30
  // FRom 26 to 30 the weight 5 is distributed so each element gets weight 1 and total weight is 5
endclass: transaction

transaction trans_h = new;

initial
  begin
    int success;
    success = trans_h.randomize();
    $display("Tag is %d", trans_h.Vlantag);
  end
