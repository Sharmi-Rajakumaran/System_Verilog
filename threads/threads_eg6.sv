module threads();
  initial
    begin
      fork
        for(int H1_pointer =0; H1_pointer <2; H1_pointer++)
          begin
            #1 $display($time, "FIRST LOOP Value of H1 = %g", H1_pointer);
          end
        
        for(int D1_channel = 2; D1_channel >0; D1_channel --)
          begin
            #1 $display($time, "SECOND LOOP: Value of D1 = %g", D1_channel);
          end
      join_none
      disable fork;
      
      $display("@%g Outside of FORK_JOIN \n", $time);
      #3 $finish;
    end
endmodule
