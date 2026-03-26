`timescale 1ns / 1ps

module ula_TB ();
   reg [7:0] a;
   reg [7:0] b;
   reg [3:0]  func;
   wire [7:0] r;

   ula DUT (
	    .a(a),
	    .b(b),
	    .func(func),
	    .r(r)
	    );

   initial begin
      $dumpfile("ula_TB.vcd");
      $dumpvars(0, ula_TB);
   end

   initial begin
      a = 69 - 12;
      b = 12;

      $write("add:  ");
      #10 func = 0;
      #10 if (r != 69) $display("ERRO!");
      else $display("OK.");

      $write("sub:  ");
      #10 a = 69 + 12;
      func = 1;
      #10 if (r != 69) $display("ERRO!");
      else $display("OK.");

      $write("not:  ");
      #10 a = 69;
      func = 2;
      #10 if (r != 0) $display("ERRO!");
      else $display("OK.");

      $write("and:  ");
      #10 a = 85;
      b = 77;
      func = 3;
      #10 if (r != 69) $display("ERRO!");
      else $display("OK.");

      $write("or:   ");
      #10 a = 65;
      b = 4;
      func = 4;
      #10 if (r != 69) $display("ERRO!");
      else $display("OK.");

      $write("xor:  ");
      #10 a = 12;
      b = 73;
      func = 5;
      #10 if (r != 69) $display("ERRO!");
      else $display("OK.");

      $write("slr:  ");
      #10 a = 1;
      b = 2;
      func = 6;
      #10 if (r != 4) $display("ERRO!");
      else $display("OK.");

      $write("srr:  ");
      #10 a = 4;
      b = 2;
      func = 7;
      #10 if (r != 1) $display("ERRO!");
      else $display("OK.");

      $write("mul:  ");
      #10 a = 23;
      b = 3;
      func = 8;
      #10 if (r != 69) $display("ERRO!");
      else $display("OK.");

      $write("ldui: ");
      #10 a = 5;
      b = 4;
      func = 9;
      #10 if (r != 69) $display(r);
      else $display("OK.");

      #10 $finish();
   end
endmodule
