// Code your design here
module adding_using_xs3(input[3:0]a,b ,output reg[7:0]result);
wire c;
  reg [3:0]result1;
  assign {c,result1}=a+b;
  always @(*)
begin
  if (c==1'b0) begin
result = result1-4'b0011;
  end
    else begin
      result[3:0] = result1+4'b0011;
      result[7:4]=result1;

    end
  end
endmodule
