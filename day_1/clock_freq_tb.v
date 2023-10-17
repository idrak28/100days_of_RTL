`timescale 1ps/1ps
module clock_freq_tb();
  reg clock;
 
initial 
begin
clock = 0;
$dumpfile("dump.vcd"); $dumpvars;
end

always #10 clock = ~clock;


initial #100 $finish();
endmodule