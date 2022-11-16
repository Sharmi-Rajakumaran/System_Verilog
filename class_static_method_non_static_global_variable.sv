class base;
        int i;
        static function get();
                static int a;
                a++;
                $display(a);
        endfunction
endclass

base b1_h, b2_h;

module test();

initial
        begin

        b1_h.get();
        b1_h.get();
        b2_h.get();

        end
endmodule

// In this program, the function does not have a static method hence all the variables by default are created dynamically.

/* Result of the above code

#           1
#           2
#           3

*/
