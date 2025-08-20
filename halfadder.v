module halfadder(a,b,out,cout);
  input a,b;
  output out,cout;

  assign {cout,sum} = a+b;

endmodule

/* alternate code for the same thing: 
module halfadder(a,b,out,cout);
  input a,b;
  output out,cout;

  assign sum= a^b;
  assign cout = a&b;

endmodule
*/ 

