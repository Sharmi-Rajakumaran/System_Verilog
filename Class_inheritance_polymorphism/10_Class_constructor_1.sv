class trans;  // parent class
        int i;
        function new();
                i = 10;
        endfunction
endclass

class ex_trans1 extends trans;  // child class
        int i;
        function new(int i);
                super.new(i);
                this.i = i;
        endfunction
endclass
        ex_trans1 e_h;

module abc();
initial
begin
        e_h = new(10);
        $display("%p", e_h);
end
endmodule

// Since e_h is the handle of the extended class, for e_h we create an object of the child class. The function new of the parent class does not accept any argument. But since the child is passing the argument to the parent class, when we try to access the parent class using new constructor and keyword super. This simulation produces an error.


/* 
Simulation Result:

** Error: ../tb/assignment3_10.sv(11): Number of actuals and formals does not match in function call.
-- Compiling module abc
** Error: ../tb/assignment3_10.sv(20): (qverilog-2730) Undefined variable: 'e_h'.
End time: 15:56:27 on Nov 17,2022, Elapsed time: 0:00:00
Errors: 2, Warnings: 0

*/
