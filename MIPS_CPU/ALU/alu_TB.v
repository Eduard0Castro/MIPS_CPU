`timescale 1ns/10ps
module alu_TB();
reg[31:0] a;
reg[31:0] b;
reg[1:0] load;
wire[31:0] out;
wire zeroflag;
integer i;

alu DUT(
	.a(a),
	.b(b),
	.load(load),
	.out(out),
	.zeroflag(zeroflag)
);

initial 
	begin
		a = 32'h0000FFFF;
		b = 32'h0000FFFF;
		load = 2'b00;
	
		for(i = 1; i < 4; i = i + 1)
			#100 load <= i;
		
		#100 $stop;
	end	
endmodule
