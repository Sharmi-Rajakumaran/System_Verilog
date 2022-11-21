module test();
  initial
    begin // Parent thread
      #10;
      
      fork 
        begin // Thread 1
          #20;
        end
        
        begin // Thread 2
          #50;  
        end
        
        begin // Thread 3
          #30;
        end
      join_any
      $display("exit is at time t = %t", $time);
    end
endmodule

// The parent thread is executed as soon as any of the child thread completes the execution
// the total delay is equal to the minimum delay of the threads + parent thread delay
