class base;
        static function static get();
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


/*
    Result for the above code
    
#           1
#           2
#           3
*/
