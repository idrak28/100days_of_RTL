// Code your testbench here
// or browse Examples
module tb();
  reg [3:0] a,b;
  wire [7:0] result;
  adding_using_xs3 dut(a,b,result);

initial begin
   
        
  a = 4'b1000; b = 4'b0101; #1; $display("a=%b, b=%b, sum=%b", a, b, result);
  a = 4'b1000; b = 4'b1010; #1; $display("a=%b, b=%b, sum=%b", a, b, result);
  a = 4'b0101; b = 4'b1010; #1; $display("a=%b, b=%b, sum=%b", a, b, result);
 
        
        $finish;
    end 


endmodule