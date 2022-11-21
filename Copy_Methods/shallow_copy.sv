class sub_class;
  int obj;
endclass: sub_class

class transaction;
  int data;
  sub_class sub_h = new();
endclass: transaction

module test;
  transaction trans_h1, trans_h2;
  
  initial
    begin
      trans_h1 = new;
      trans_h1.data = 4;
      trans_h1.sub_h.obj = 5;
      $display ("The value of obj of subclass is %d", trans_h1.sub_h.obj);
      trans_h2 = new trans_h1;  // Shallow copy
      $display ("The value of obj of subclass is %d", trans_h2.sub_h.obj);
    end 
endmodule: test

// The lower level objects of the class are not copied in shallow copy
// properties can be copied but if the class contains a class object it is not copied
