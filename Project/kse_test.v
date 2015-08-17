`timescale 1 ns / 10 ps
module KSE_tb();

	// Inputs
	reg clock;
	reg reset;
	reg [3:0] row;
	reg read;

	// Outputs
	wire [7:0] BCD;
	wire valid;
	wire [3:0] col;

	// Instantiate the Unit Under Test (UUT)
	KSE uut (.clock(clock),.reset(reset),.row(row),.read(read),.BCD(BCD),.valid(valid),.col(col));

initial $monitor("time=%0d reset=%0b row=%0b read=%0b BCD=%0h valid=%0b col=%0b",$time,reset,row,read,BCD,valid,col);

//initial $monitor("time=%0d reset=%0b row=%0b read=%0b BCD=%0h valid=%0b col=%0b",$time,reset,row,read,BCD,valid,col);

initial begin
$dumpfile("KSE.vcd");
$dumpvars(0,KSE_tb);
end

	initial begin
	#5000 $finish;
	end



initial begin		
		read = 0;
		clock=0;
		reset=0;
		row=4'b1111;
		#10 reset=1;
		#10 read=1'b1;
		#20 read=1'b0;
		#60 row=4'b1111;
		#10 row=4'b1110;
		#20 row=4'b1111;
		#30 row=4'b1110;
		#20 row=4'b1111;
		#40 row=4'b1110;
		#40 row=4'b1111;read=1'b1;
		#10 row=4'b1101;read=1'b0;
		#25 row=4'b1111;
		#25 row=4'b1101;
		#20 row=4'b1111;
		#30 row=4'b1101;read=1'b0;
		#40 row=4'b1111;read=1'b1;
		#40 row=4'b1101;
		//#35 row=4'b1101;
		#20 row=4'b1111;
		#10 row=4'b1011;
		#20 row=4'b1111;
		#20 row=4'b1011;
		#50 row=4'b1111;read=1'b1;
		#30 row=4'b1011;read=1'b0;
		#20 row=4'b1111;
		#40 row=4'b1011;
		#20 row=4'b1111;read=1'b1;
		#10 row=4'b0111;read=1'b0;
		#5  row=4'b1111;
		#25 row=4'b0111;
		#30 row=4'b0111;
		#20 row=4'b1111;
		#30 row=4'b0111;read=1'b1;
		#20 row=4'b1111;read=1'b0;
		#40 row=4'b0111;
		#20 row=4'b1111;
		#10 row=4'b1110;
		#20 row=4'b1111;read=1'b1;
		#20 row=4'b1110;read=1'b0;
		#20 row=4'b1111;
		#20 row=4'b0111;
		#5  row=4'b1111;
		#25 row=4'b0111;
		#30 row=4'b0111;
		#20 row=4'b1111;read=1'b1;
		#30 row=4'b0111;read=1'b0;
		#20 row=4'b1111;
		#40 row=4'b0111;
		#20 row=4'b1111;
		#10 row=4'b1110;
		#20 row=4'b1111;
		#20 row=4'b1110;
		#20 row=4'b1111;
		#20 row=4'b0111;
		#15 row=4'b1111;read=1'b1; #25 read=1'b0;
		#10 row=4'b1110;
		#10 row=4'b1111;
		#30 row=4'b1110;
		#20 row=4'b1111;
		#40 row=4'b1110;
		#40 row=4'b1111;
		#10 row=4'b1101;
		#25 row=4'b1111;
		#25 row=4'b1101;
		#20 row=4'b1111;
		#30 row=4'b1101;
		#40 row=4'b1111;
		#40 row=4'b1101;
		#20 row=4'b1111;
		#10 row=4'b1011;
		#20 row=4'b1111;
		#20 row=4'b1011;
		#50 row=4'b1111;
		#30 row=4'b1011;
		#20 row=4'b1111;
		#40 row=4'b1011;
		#20 row=4'b1111;
		#10 row=4'b0111;
		#15  row=4'b1111;
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
		#15 row=4'b1111;
		#10 row=4'b1110;


		#40 row=4'b1111;
		#10 row=4'b1101;
		#25 row=4'b1111;
		#25 row=4'b1101;
		#20 row=4'b1111;
		
		#15  row=4'b1111;
		#30 row=4'b0111;
		#20 row=4'b1111;
		#30 row=4'b0111;
		#20 row=4'b1111;
		#40 row=4'b0111;
		#20 row=4'b1111;
		#10 row=4'b1110;
		#20 row=4'b1111;
		#20 row=4'b1110;
		#15 row=4'b1111;
		#10 row=4'b1110;
		#30 row=4'b1101;
		#40 row=4'b1111;
		#40 row=4'b1101;
		#20 row=4'b1111;read=1'b1;#20 read=1'b0;
		#10 row=4'b1011;
		#20 row=4'b1111;
		#20 row=4'b1011;
		#50 row=4'b1111;
		#30 row=4'b1011;
		#20 row=4'b1111;
		#40 row=4'b1011;
		#20 row=4'b1111;
		#10 row=4'b0111;
		#15  row=4'b1111;
		#30 row=4'b0111;
		#20 row=4'b1111;
		#30 row=4'b0111;
		#20 row=4'b1111;
		#40 row=4'b0111;
		#20 row=4'b1111;
		#10 row=4'b1110;
		#20 row=4'b1111;
		#20 row=4'b1110;
		#15 row=4'b1111;
		#10 row=4'b1110;
		
		


		end 
		
		always begin
		#5 clock=~clock;
		end

		

      
endmodule
