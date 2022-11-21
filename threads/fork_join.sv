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
