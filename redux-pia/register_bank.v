module register_bank (
		      input [1:0]  ra,
		      input [1:0]  rb,
		      input [1:0]  rw,
		      input	   we,
		      input	   acc,
		      input [7:0]  d,
		      output [7:0] a,
		      output [7:0] b
		      );
   reg [7:0] registers[0:3];

   assign a = registers[ra];
   assign b = registers[rb];

   always @(*) begin
      if (we) registers[rw] = acc ? registers[rw] + d : d;
   end
endmodule // register_bank
