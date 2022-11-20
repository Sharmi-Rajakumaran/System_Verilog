class inline;
  rand bit[7:0]x,y,z;
  constraint c{z==x+y;}
endclass: inline

module test;
  inline in_h = new;
  
  initial 
    if(!in_h.randomize() with {x<y;}) // inline constraint will help us to append function while randomizing
      // the above statement will consider both the constraints and find a possible solution space
      $display("randomization failed"); 
endmodule: test
