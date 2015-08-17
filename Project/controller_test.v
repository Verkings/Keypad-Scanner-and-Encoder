`timescale 1 ns / 10 ps
module controller_tb();

	// Inputs
	reg v;
	reg clock;
	reg reset;
	reg full;
	reg empty;
	reg read;

	// Outputs
	wire wr_enable;
	wire rd_enable;
	//wire enable;


	// Instantiate the Unit Under Test (UUT)
	controller uut (.v(v),.clock(clock),.reset(reset),.full(full),.empty(empty),.read(read),.valid(valid),
		.wr_enable(wr_enable),.rd_enable(rd_enable));

initial $monitor("time=%0d v=%0b reset=%0b full=%0b empty=%0b read=%0b valid=%0b wr_enable=%0b rd_enable=%0b",$time,v,reset,full,empty,read,valid,wr_enable,rd_enable);

initial begin
$dumpfile("controller.vcd");
$dumpvars(0,controller_tb);
end

initial begin 
#250 $finish;
end

	initial begin
		// Initialize Inputs
		v = 0;
		clock = 0;
		reset =0;
		full = 0;
		empty = 0;
		read = 0;
		#10 reset=1;
		#15 v=1;empty=1;read=1;
		#25 v=0;empty=1;read=1;
		#25 empty=1;read=0;
		#25 empty=0;read=0;
		#25 empty=0;read=1;
		#35 v=1;empty=1;read=1;
		#25 v=1;empty=0;read=1;
		#25 empty=0;read=1;		
		#25 empty=1;read=0;
		#25 empty=1;read=1;	
		
	end
     	 always begin
		#5 clock =~clock;
		 end	

endmodule
