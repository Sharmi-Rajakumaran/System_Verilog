class AB #(type T = int, int width=8);
        T i;

        bit[width - 1 : 0] b;
endclass

AB #(int, 8)a_h1;       // a_h1 takes the   data type of T is int and width is 8
AB #(real, 16)a_h2;     // a_h2 the variable T takes the real data type with wid
th 16
AB a_h3;        //a_h3 takes the default data type


// Only a_h1 and a_h3 are compatible because they have the same data type and th
e same value for width. Therefore ah1 can be assigned to ah3 and ah3 to ah1 but 
ah2 cant be assigned to ah3 or ah1 since the data type is not compatible
~                                                                               
~                                                                               
~        
