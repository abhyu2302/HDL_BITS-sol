/*
In a combinational always block, use blocking assignments. In a clocked always block, use non-blocking assignments. 
A full understanding of why is not particularly useful for hardware design and requires a good understanding of how 
Verilog simulators keep track of events. Not following this rule results in extremely hard to find errors that are both 
non-deterministic and differ between simulation and synthesized hardware.
*/

module top_module(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );
	assign out_assign = a^b;
    
  always@(*)begin //combinational always block
        out_always_comb = a^b;
    end
  always@(posedge clk)begin //clocked always block
        out_always_ff <= a^b;
    end
endmodule
