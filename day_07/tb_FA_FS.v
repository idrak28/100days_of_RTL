module tb_FA_FS;
  reg [3:0]a;
  reg [3:0]b;
reg cin; reg choice;
  wire [3:0]result;
wire cout;
  full_subtractor_adder dut(.a(a),.b(b),.cin(cin),.choice(choice),.result(result),.cout(cout));
initial begin 
a=0;
b=0;
cin=0;
choice=0;
#1;
end
always begin
#1;
a=$random;
b=$random;
cin=$random;
choice=$random;
end

initial begin
#20  

  $finish();
end
initial begin
$dumpfile("dump.vcd"); $dumpvars;
end


endmodule