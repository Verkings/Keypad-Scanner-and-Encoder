`timescale 1 ns / 10 ps
module decoder_test();

reg [3:0]code;
reg rd_enable,clock;

wire [7:0]BCD;

decoder d1 (.code(code),.rd_enable(rd_enable),.clock(clock),.BCD(BCD));

initial $monitor("time=%0d rd_enable=%0d BCD=%0h",$time,rd_enable,BCD);

initial
begin
$dumpfile("decoder.vcd");
$dumpvars(0,decoder_test);

clock=1'b0;
forever #5 clock=~clock;
end

initial begin
$display ("%b, %b,", BCD, code);
end

initial begin
rd_enable = 1'd0;
#20 rd_enable = 1'd1;
#10 rd_enable = 1'd0;
#30 rd_enable = 1'd1;
end

initial begin
#20 code = 4'b0010;
#30 code = 4'b1101;
#10 code = 4'b1001;
#10 code = 4'b1011;
#10 code = 4'b1101;
#10 code = 4'b1011;
#10 code = 4'b1101;
end

initial begin
#300 $finish;
end

endmodule
