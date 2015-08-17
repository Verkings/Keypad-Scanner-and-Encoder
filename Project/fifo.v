`timescale 1 ns / 10 ps
module fifo (code, full, empty, data, rd_enable, wr_enable, reset, clock);

output [3:0]code;
output full, empty;

input [3:0]data ; 
input rd_enable, wr_enable, clock ,reset;


reg [3:0] memory[31:0];
reg [3:0]code;
reg full, empty;
reg [4:0]rd_addr; 
reg [4:0]wr_addr;

integer counter;
integer j;
  
always @(posedge clock or negedge reset)
begin
if(reset==0)
begin
    full = 1'b0;
    empty = 1'b1;
    j=0;
    counter = 0;
end 

else 
begin
	if (reset==1)  
	begin

		if(rd_enable==1)
		begin
			if((counter !=0) && (counter <=32))
    			begin
    				rd_addr = 5'b0;
    				full = 1'b0;
    				code = memory[0] ;
    				counter = counter - 1;
    				$display ("code =%b",code);
    				j= rd_addr;
    
    				while(j<31)    		
    				begin
      					memory [j] = memory [j+1];
      					j = j+1;
        			end
			end

			else 
			begin
      				empty = 1'b1;
			end
		end

		else
		begin
  			counter = counter; 
  		end
 
 
		if(wr_enable)
    		begin
  		
  			if(counter <32)
  			begin
    				empty = 1'b0;
    				wr_addr = counter;
    				memory[wr_addr] = data;
    				$display ("mem[%d] =%b",counter, data);
    				counter = counter +1;
   			end

  			else 
    			begin
      				full = 1'b1;
				j = 1'b0;
				while(j<31)    		
    				begin
      					memory [j] = memory [j+1];
      					j = j+1;
        			end
					memory[31] = data;
    			end
  			end
  		else
    		begin
  			counter = counter;  
  
  		end
  	end
end 
  
end
  
endmodule
