class transaction;
  
  rand bit [15:0] pktlength;
  constraint undersize {pktlength <=16'd64;}
endclass: transaction

transaction trans_h = new;

initial
   begin
     int success;
     for (int i = 0; i < 16; i++)
       begin
         success = trans_h.randomize();
         $display("pktlength transaction is %b", trans_h.pktlength);
       end
   end
