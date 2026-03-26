`timescale 1ns / 1ps

module register_bank_TB ();
   reg [1:0] ra = 0;
   reg [1:0] rb = 0;
   reg [1:0] rw = 0;
   reg	     we = 0;
   reg [7:0] d = 0;
   wire [7:0] a = 0;
   wire [7:0] b = 0;

   register_bank DUT (
		      .ra(ra),
		      .rb(rb),
		      .rw(rw),
		      .we(we),
		      .d(d),
		      .a(a),
		      .b(b)
		      );

   initial begin
      $dumpfile("register_bank_TB.vcd");
      $dumpvars(0, register_bank_TB);
   end

   initial begin
      we = 1;
      d = 69;

      $display("r0:");
      rw = 0;
      ra = 0;
      rb = 0;
      $write("    a: ");
      #10 if (a != 69) $display("ERRO!");
      else $display("OK.");
      $write("    b: ");
      if (b != 69) $display("ERRO!");
      else $display("OK.");

      $display("r1:");
      rw = 1;
      ra = 1;
      rb = 1;
      $write("    a: ");
      #10 if (a != 69) $display("ERRO!");
      else $display("OK.");
      $write("    b: ");
      if (b != 69) $display("ERRO!");
      else $display("OK.");

      $display("r2:");
      rw = 2;
      ra = 2;
      rb = 2;
      $write("    a: ");
      #10 if (a != 69) $display("ERRO!");
      else $display("OK.");
      $write("    b: ");
      if (b != 69) $display("ERRO!");
      else $display("OK.");

      $display("r3:");
      rw = 3;
      ra = 3;
      rb = 3;
      $write("    a: ");
      #10 if (a != 69) $display("ERRO!");
      else $display("OK.");
      $write("    b: ");
      if (b != 69) $display("ERRO!");
      else $display("OK.");

      $write("acc: ");
      rw = 0;
      ra = 0;
      d = 3;
      #10 if (a != 72) $display("ERRO!");
      else $display("OK.");
   end
endmodule // register_bank_TB
