`timescale 1ns/1ps
module tb;
  reg d,clk,a,b,c;
  wire d0,d1;
  m4 dut(d,clk,a,b,c,d0,d1);
  initial 
  begin
    $monitor($time,a,b,c,d,clk,d0,d1);
  #0 d=1;clk=1;a=1;b=0;c=0;
  #15.125 d=0;clk=0;b=1;
  #15.125 d=1; clk=1;a=0;
  #15.125 d=0;clk=0;b=0;
  #15.125 d=1;clk=1;a=1;
  #15.125 c=1;d=0;clk=0;b=1;
  #15.125 d=1;clk=1;a=0;
       
  #15.125 d=0;clk=0;b=0;
  end
  
  initial begin
    #121 $finish;
    end
endmodule