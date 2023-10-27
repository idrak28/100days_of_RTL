// Code your testbench here
// or browse Examples
module tb();
reg a,b,c,d,e,f,g,h,s0,s1,s2;
wire z;
mux8_1 dut(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.s0(s0),.s1(s1),.s2(s2),.z(z));
    initial 
	begin
		// Initialize Inputs
		a = 0;
		 b = 0;
		c = 0;
		d = 0;
		e = 0;
		f = 0;
		g = 0;
		h = 0;
		s0 = 0;
		s1 = 0;
		s2 = 0;
		#5;	
	end
	
	always
	begin
	#5 a=$random;
		b=$random;
		c=$random;
		d=$random;
		e=$random;
		f=$random;
		g=$random;
		h=$random;
		s0=$random;
		s1=$random;
		s2=$random;
      $display("s2=%b,s1=%b,s0=%b ,z=%b",s2,s1,s0,z);
	end

initial begin 
$dumpfile("dump.vcd"); 
$dumpvars;
end

initial begin 
#100
  $finish();
end

endmodule