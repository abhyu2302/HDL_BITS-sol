module top_module (
    input [7:0] in,
    output [31:0] out );

    // assign out = { replicate-sign-bit , the-input };
  assign out = {{24{in[7]}}, in[7:0]};
  //assign out = {{25{in[7]}}, in[6:0]}; //alternate way of writing the same thing
  
endmodule
