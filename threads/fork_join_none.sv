module test();
  initial
    begin   // Parent Thread
      #10;
      fork
        begin // thread 1
          #20;
        end
        begin // thread 2
          #30;
        end
        begin // thread 3
          #40;
        end
      join_none
      $display("The exit time is t = %t", $time);    
    end
endmodule

// The display will show 10 as the simulation time since all the blocks ie. parent and the child blocks are executed in parallel
