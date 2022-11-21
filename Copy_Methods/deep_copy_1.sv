class sub; // sub class
  int obj;
  
  function sub copy();
    copy = new();
    copy.obj = this.obj;
   
endclass: sub
    
 class trans;  // main transaction class
   int data;
   sub sub_h = new(); // object of sub class with handle sub_h in the main class
   
   function trans copy();
     copy = new();
     
     function trans copy();
       copy = new();
       copy.data = this.data;
       copy.sub_h = this.sub_h.copy;
     endfunction: copy
    
  endclass: trans
     
     module test();
       trans t_h1, t_h2;
       initial
         begin
           t_h1 = new();
           t_h1.data = 4;
           t_h1.sub_h.obj = 5;
           t_h2 = t_h1.copy; // First memory is allocated, then copy method is executed
           
     endmodule: test
      
    
    
 /*
    Step1 : create a function copy of class type (ie the function itself will return the class object)
    step2: take class object and put it in the new memory copy.properties
