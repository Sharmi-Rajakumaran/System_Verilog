module test;

initial
 begin
       int k,m;

  account_c acnt_h = new;
    acnt_h.deposit(5000);
    k = acnt_h.summary();

  $display("Balance is %d", k);
  $display("Balance is %d", acnt_h.summary());
  $display("Balance is %d", acnt_h.balance);

   acnt_h.deposit(10000);
   m = acnt_h.summary();

  $display("Balance is %d", m);
  $display("Balance is %d", acnt_h.summary());
  $display("Balance is %d", acnt_h.balance);
end
endmodule

/*
     Result for the above code
# Balance is        5000
# Balance is        5000
# Balance is        5000
# Balance is       15000
# Balance is       15000
# Balance is       15000
*/
