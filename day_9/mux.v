// Code your design here
module mux2_1(input x,y,s,output z);
assign z=s?y:x;
endmodule
 module mux4_1(input a,b,c,d,s1,s2,output z);
wire f0,f1;
    mux2_1 m1(.x(a), .y(b),.s(s1),.z(f0));
    mux2_1 m2(.x(e), .y(d),.s(s1),.z(f1));
    mux2_1 m3(.x(f0), .y(f1),.s(s2),.z(z));
  endmodule
  module mux8_1(input a,b,c,d,e,f,g,h,s0,s1,s2,output z);
wire f0,f1;
    mux4_1 m1(.a(a),.b(b),.c(c),.d(d),.s1(s0),.s2(s1),.z(f0));
    mux4_1 m2(.a(e),.b(f),.c(g),.d(h),.s1(s0),.s2(s1),.z(f1));
    mux4_1 m3(.a(f0),.b(1'b0),.c(1'b0),.d(f1),.s1(s2),.s2(s2),.z(z));
  endmodule