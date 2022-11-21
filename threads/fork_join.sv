module test();
  initial
    begin   // Parent Thread
      #10;
      fork
        begin // Thread 1
          #20;
        end
        
        begin // Thread 2
          #40;
        end
        
        begin // thread 3
          #30;
        end
        
        $display("exit is at time t = %t", $time);
        endmodule

        
        // Fork join - executes all the child thread before the parent thread is executed
        // Total delay = max delay of the threads + parent thread delay
