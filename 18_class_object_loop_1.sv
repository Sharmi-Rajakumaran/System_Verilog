class AB; 
        int i = 1;
endclass

AB a1; 

module test();
    
        initial
                begin
                repeat(2)
                        begin
                                AB a1 = new();
                                a1 = new();
                                a1.i++;
                                a2.i++;
                                $display("disp1 --a1.i = %0d, a2.i = %0d", a1.i, a2.i);
                                a1.i++;
                                a2.i++;
                                $display("disp_2 --a1.i = %0d, a2.i = %0d", a1.i, a2.i);
                        end 
                end 
endmodule


/* Simulation Result

** Error (suppressible): ../tb/assignment3_20.sv(13): (qverilog-2244) Variable 'a1' is implicitly static. You must either explicitly declare it as static or automatic
or remove the initialization in the declaration of variable.
End time: 19:14:55 on Nov 17,2022, Elapsed time: 0:00:00
Errors: 1, Warnings: 0
make: *** [makefile:96: run_sim_21] Error 2

*/
