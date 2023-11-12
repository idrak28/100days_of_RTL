module m4(input d,clk,a,b,c,output  d0,d1);
  wire w1 ,w2;
 m2 x1(d,clk,w1); 
 m3 x2(a,b,c,w2);
 m1 x3(w1,w2,d0,d1);
endmodule

module m2(input d,clk ,output reg w1);
  always@(posedge clk) begin
    if(clk==0)w1<=w1;
    else w1<=d;
  
  end
  
endmodule

module m1(input w1,s,output  d0,d1);
  assign {d0,d1}=s?{1'b0,w1}:{w1,1'b0};
endmodule

module m3(input a,b,c,output y);
  assign y=~((a&b)|(~c));
endmodule

