module fulladder(a,b,cin,cout,sum);
  input a,b,cin;
  output sum,cout;
  wire sum1;
  wire cout1;

  halfadder ins1(.a(a),.b(b),.sum(sum1), .cout(cout1)); //used the halfadder modules to instantiate a fulladder
  halfadder ins2(.a(sum1),.b(cin),.sum(sum), .cout(cout)); //the sum output of ins1 will be the input a for ins2
  
endmodule

module halfadder(a,b,sum,cout);
  input a,b;
  output sum,cout;

  assign sum = a^b;
  assign cout = a&b;

endmodule
