// Code your design here
//Full Adder using Half Subtractors
module half_subtractor(a,b,dif,bor);
input a,b;
output reg dif , bor;
always @ *
begin 
dif=a^b;
  bor=(~a)&b;

end
endmodule
module fa_hs(input a,b,c,logic sum,carry);
wire w1,w2,w3,w4,w5;
not bf1(w4,a);

half_subtractor hs1(.a(w4), .b(b), .dif(w1), .bor(w2));         
half_subtractor hs2(.a(w1), .b(c), .dif(w5), .bor(w3));

assign sum=~w5;

assign carry=w3||w2;
endmodule
