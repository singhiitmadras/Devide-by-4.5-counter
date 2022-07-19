`timescale 1ns/100ps
module clkdiv3_tb;
  reg clk,reset;
  wire clk_out;
 
     clk_divn t1(clk,reset,clk_out);
        initial
          clk= 1'b0;
     always
        #5  clk=~clk; 
        initial
            begin
               #6 reset=1'b1;
               #6 reset=1'b0;
			   #6 reset=1'b1;
               #500 $finish;
            end
 
        initial
               $monitor("clk=%b,reset=%b,clk_out=%b",clk,reset,clk_out);
 
        initial
            begin
              $dumpfile("clkdiv3_tb.vcd");
              $dumpvars(0,clkdiv3_tb);
             end
    endmodule