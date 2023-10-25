module tb();
  reg [2:0] i;
  wire [7:0]y;
  decoder3_8 dut(.i(i),.y(y));
initial begin 
i=3'b000;
end

initial begin
		#10 i=3'b010;
		#10 i=3'b000;
		#10 i=3'b001;
		#10 i=3'b011;
		#10 i=3'b100;
		#10 i=3'b101;
		#10 i=3'b110;
		#10 i=3'b111;
  
	end
initial begin
  $monitor("%0t i : %0b  y:%0b",$time ,i,y);
end
initial begin 
$dumpfile("dump.vcd"); 
$dumpvars;
end


endmodule 