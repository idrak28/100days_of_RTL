`timescale 1ns/1ps


wire out;
lab2 dut(i,clk,out);
initial
clk=0;
always
#2 clk=~clk;
initial
begin

#5 i=1; 
#4 i=0; 
#4 i=1; 
#4 i=0;

#4 i=0;
#4 i=0;

#4 $finish;
end