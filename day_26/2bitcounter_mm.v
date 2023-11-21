module tbc(input clk,reset,output reg [1:0]state);
  parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
  always @(posedge clk or reset )
  begin
    if(reset)
     begin 
      state<=s0;
    end
  else 
    begin
      case (state)
        s0:begin
          state<=s1;
        end
        
        s1:begin
          state<=s2;
        end
        s2:begin
          state<=s3;
        end
        s3:begin
          state<=s0;
        end
          
    endcase
  end
end
  
endmodule


module tb;
  reg clk, reset;
wire  [1:0]state1 ;
  tbc dut(clk,reset,state1);
  initial 
  begin
    clk=0; reset =1;
    #2 reset=0;
    #5 reset=1;
    #3 reset=0;
    #40 $finish;
  end
always
   begin
    #5 clk=~clk;
    end
endmodule 