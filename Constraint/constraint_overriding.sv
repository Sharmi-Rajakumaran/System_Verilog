class transaction;
  rand bit[15:0] pktlength;
  constraint oversize{pktlength >=16'hff00;}
endclass: transaction

class trans extends transaction;
  constraint oversize{pktlength <= 16'hff50;}
endclass: trans_ext

trans_ext tex_h = new;

initial
  begin
    int success;
    success = tex_h.randomize();
    $display ("pktlength for green is %b", tex_h.pktlength);
  end


// This program explains the concept of overriding in constraints
// In case of overriding the base class and extended class will have the same constraint name
// The randomization will consider only the extended class constraint
