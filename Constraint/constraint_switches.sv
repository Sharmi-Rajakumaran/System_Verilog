class transaction;
  rand bit[15:0] pktlength;
  constraint undersize[pkt.length <=16'd64;]
endclass: transaction

transaction trans_h = new;

initial
  begin
    int success;
    if(trans_h.pktlength.rand_mode())  // Condition checked: Is the packet length is defined in rand or randc mode - If true the following loop is executed else no
      begin
        for (int i = 0; i < 16; i++)
          success = trans_h.randomize();
      end
    
    trans_h.undersize.constraint_mode(0);  // constraint mode disabled - hence the constraint defined in the transaction class is disabled
    success = trans_h.randmoize() with {pktlength > 64;}; // inline constraint
    trans_h. undersize. constraint_mode(1);  // constraint mode enabled - constraint defined in transaction class is activated
    success = trans_h.randomize(); // Randomization checked
  end

