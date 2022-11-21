class A; 
int j = 15; 
endclass 

class B; 
int i = 10; 
A a = new; 
endclass

module main; 
B b1, b2; 
initial 
begin b1 = new; 
b2 = new b1; 
//Shallow copy of object b1 copies first level of properties to b2 
b2.i = 20; 
b2.a.j = 30; //Assigns 30 to variable “j” shared by both b1 & b2 
$display("b1.i = %0d",b1.i); 
$display("b2.i = %0d",b2.i); 
$display("b1.a.j = %0d",b1.a.j); 
$display("b2.a.j = %0d",b2.a.j); 
end
endmodule
