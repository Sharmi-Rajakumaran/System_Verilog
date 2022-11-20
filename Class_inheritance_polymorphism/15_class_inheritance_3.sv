class trans;
   virtual task send();
      $display("In Class trans");
      endtask
endclass

class ex_trans1 extends trans;
  virtual task send();
      $display("In class ex-trans1");
  endtask
endclass

class ex_trans2 extends ex_trans1;
  task send();
        $display("In class ex_trans2");
  endtask
endclass

trans b_h;

ex_trans1 ex1_h;
ex_trans2 ex2_h;

module inheritance;

initial
 begin
   ex1_h = new();
   ex2_h = new();
   b_h = ex1_h;
   ex1_h = ex2_h;
   b_h.send();
 end
endmodule


/*
Simulation Result:

In class ex-trans1

*/
