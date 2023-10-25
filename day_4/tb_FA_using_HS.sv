// Code your testbench here
// or browse Examples
module fa_hs_tb;
reg a,b,c;
wire sum,carry;
  fa_hs dut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
initial begin
  for(int i=0; i<=8; i=i+1)
begin
#10; 
  {a,b,c} = i;
end
end
initial begin
  $monitor($time, " A = %b, B = %b, C = %b, Sum = %b, Carry = %b", a, b, c, sum, carry);
end
initial begin
#100 ;
$finish();
end



  endmodule