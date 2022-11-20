class transaction;
  rand bit [15:0]pktlength;
  constraint oversize{pktlength >= 16'h ff00;}
endclass: transaction

class trans_ext extends transaction;
  constraint undersize {pktlength <=16'h ff50;}
endclass: trans_ext

trans_ext tex_h = new; // Extended class object contains the properties of both the base class and extended class

initial
  begin
    assert(tex_h. randomize()); // If the assertion passes , the simulation continues else stops
    $display("pktlength for green is %b", tex_h.pktlength);
  end
