`timescale 1 ns / 10 ps
module KSE(clock,reset,row,read,BCD,valid,col);
input clock;
input reset;
input [3:0] row;
input read;
output [7:0] BCD;
output valid;
output [3:0] col;
    
wire [3:0] code;
wire v;
wire full;
wire empty;
wire wr_enable;
wire rd_enable;
wire valid;
wire [3:0] data;

keypad  A(.row(row),.col(col),.data(data),.v(v),.clock(clock),.reset(reset));

controller B(.v(v),.clock(clock),.reset(reset),.full(full),.empty(empty),
.read(read),.valid(valid),.wr_enable(wr_enable),.rd_enable(rd_enable));

fifo C(.code(code),.full(full),.empty(empty),.data(data),.rd_enable(rd_enable),.wr_enable(wr_enable),.reset(reset),.clock(clock));

 decoder D(.code(code),.rd_enable(rd_enable),.clock(clock),.BCD(BCD));

endmodule
