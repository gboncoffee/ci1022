module ula(
	   input [7:0]  a,
	   input [7:0]  b,
	   input [3:0]   func,
	   output [7:0] r
	   );
   assign r =
	     (func == 4'd0) ? a + b  :
	     (func == 4'd1) ? a - b  :
	     (func == 4'd2) ? (a == 0 ? 1 : 0) :
	     (func == 4'd3) ? a & b :
	     (func == 4'd4) ? a | b  :
	     (func == 4'd5) ? a ^ b :
	     (func == 4'd6) ? a << b  :
	     (func == 4'd7) ? a >> b  :
	     (func == 4'd8) ? a * b :
	     (func == 4'd9) ? {b[3:0], a[3:0]} :
             a + b;
endmodule
