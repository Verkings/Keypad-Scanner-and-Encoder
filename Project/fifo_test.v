`timescale 1 ns / 10 ps
module fifo_test();
wire [3:0]code;
wire full, empty;

reg [3:0]data ;
reg rd_enable, wr_enable, reset, clock;
    
fifo f1 (.code(code),.full(full),.empty(empty),.data(data),.rd_enable(rd_enable),.wr_enable(wr_enable),.reset(reset),.clock(clock));
 
initial $monitor ("time=0%d full=0%b empty=0%b data=%0h rd_enable=0%b wr_enable=0%b reset=0%b",$time,full,empty,data,rd_enable,wr_enable,reset);


initial begin
$dumpfile("fifo.vcd");
$dumpvars(0,fifo_test);

reset = 1'b0;
#20 reset=~reset;
end
  
initial begin
clock = 1'b0;
forever #5 clock=~clock; 
end
 
initial begin
   #10 data = 4'b0000;
   #10 data = 4'b0001;
   #10 data = 4'b0010;
   #10 data = 4'b0011;
   #10 data = 4'b0100;
   #10 data = 4'b0101;
   #10 data = 4'b0110;
   #10 data = 4'b0111;
   #10 data = 4'b1000;
   #10 data = 4'b1001;
   #10 data = 4'b1010;
   #10 data = 4'b1011;
   #10 data = 4'b1100;
   #10 data = 4'b1101;
   #10 data = 4'b1110;
   #10 data = 4'b1111;     
   #10 data = 4'b0000;
   #10 data = 4'b0001;
   #10 data = 4'b0010;
   #10 data = 4'b0011;
   #10 data = 4'b0100;
   #10 data = 4'b0101;
   #10 data = 4'b0110;
   #10 data = 4'b0111;
   #10 data = 4'b1000;
   #10 data = 4'b1001;
   #10 data = 4'b1010;
   #10 data = 4'b1011;
   #10 data = 4'b1100;
   #10 data = 4'b1101;
   #10 data = 4'b1110;
   #10 data = 4'b1111; 
   #10 data = 4'b0000;
   #10 data = 4'b0001;
   #10 data = 4'b1111;
   #10 data = 4'b1110;	
   #10 data = 4'b1101;   
end
initial begin
wr_enable = 1'b0;
#10 wr_enable = ~wr_enable;
#370 wr_enable = ~wr_enable;
end

initial begin
rd_enable = 1'b1;
#10 rd_enable = 1'b0;
#390 rd_enable= 1'b1;
end

initial begin
#900 $finish;
end
endmodule
