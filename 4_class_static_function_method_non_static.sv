class base;
        int i;
        static function get();
                int a;
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


/// In the above code, no properties are static
/* Reusult of the above code
#           1
#           1
#           1
*/
