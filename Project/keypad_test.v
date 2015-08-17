`timescale 1 ns / 10 ps
module keypad_test();

	// Inputs
	reg [3:0] row;
	reg clock;
	reg reset;

	// Outputs
	wire [3:0] col;
	wire [3:0] data;
	wire v;

keypad uut (.row(row),.col(col),.data(data),.v(v),.clock(clock),.reset(reset));

initial $monitor("time=0%d row=0%b col=0%b data=0%h v=0%b reset=0%b",$time,row,col,data,v,reset);

initial begin
$dumpfile("keypad.vcd");
$dumpvars(0,keypad_test);
end

	initial begin
		clock=0;
		reset=0;
		row = 4'b1111;
		#10 reset=1;row=4'b1110;
		#15 row=4'b1111;
		#5 row=4'b1110;
		#20 row=4'b1111;
		#25 row=4'b1110;
		#20 row=4'b1111;
		#35 row=4'b1110;
		#40 row=4'b1111;
		#5 row=4'b1101;
		#25 row=4'b1111;
		#15 row=4'b1101;
		#20 row=4'b1111;
		#25 row=4'b1101;
		#40 row=4'b1111;
		#35 row=4'b1101;
		//#35 row=4'b1101;
		#20 row=4'b1111;
		#5 row=4'b1011;
		#20 row=4'b1111;
		#15 row=4'b1011;
		#50 row=4'b1111;
		#30 row=4'b1011;
		#20 row=4'b1111;
		#40 row=4'b1011;
		#20 row=4'b1111;
		#10 row=4'b0111;
		#5  row=4'b1111;
		#25 row=4'b0111;
		#30 row=4'b0111;
		#20 row=4'b1111;
		#30 row=4'b0111;
		#20 row=4'b1111;
		#40 row=4'b0111;
		#20 row=4'b1111;
		#10 row=4'b1110;
		#20 row=4'b1111;
		#20 row=4'b1110;
end
		always 
		#5 clock=~clock;
		initial#750 $finish;
		    
	      
endmodule
