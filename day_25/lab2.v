
module lab2(i,clk,out);
input i,clk;
output reg out;
localparam S0=2'b00, S1=2'b01, S2=2'b10;
reg [1:0]state;
always@ (posedge clk)
begin
out<=i?0:0;

end

out<=i?0:0;

end

out<=i?1:0;

end
default:
begin
out<=0;

end
endcase
end
endmodule