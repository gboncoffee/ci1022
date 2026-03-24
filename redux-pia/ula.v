module ula(
	   input [31:0]  a,
	   input [31:0]  b,
	   input [4:0]   func,
	   output [31:0] r
	   );
   assign r =
	     (func == 5'd0) ? a + b  :
	     (func == 5'd1) ? a - b  :
	     (func == 5'd2) ? (a == 0 ? 1 : 0) :
	     (func == 5'd3) ? a & b :
	     (func == 5'd4) ? a | b  :
	     (func == 5'd5) ? a ^ b :
	     (func == 5'd6) ? a << b  :
	     (func == 5'd7) ? a >> b  :
             a + b;
endmodule
