`timescale 1 ns / 10 ps
module controller (v,clock,reset,full,empty,read,valid,wr_enable,rd_enable);
input v, clock, reset, read, full, empty;   // Input
output wr_enable,rd_enable,valid; 	// Output	
reg wr_enable,rd_enable,valid;				


always@(posedge clock or negedge reset) begin
	
	if (reset == 0) begin
		wr_enable = 1'b0;
		rd_enable = 1'b0;
		valid = 1'b1;
		end

	else begin
		valid=1'b1;
		rd_enable=1'b0;
		wr_enable=1'b0;
		case({v,read,empty})

		3'b010:
		begin
		rd_enable = 1'b1;
		wr_enable=1'b0;
		valid = 1'b0;
		end

		3'b011:
		begin
		rd_enable = 1'b0;
		wr_enable=1'b0;
		valid = 1'b0;
		end

		3'b100:
		begin
		rd_enable = 1'b0;
		wr_enable=1'b1;
		valid = 1'b1;
		end

		3'b101:
		begin
		rd_enable = 1'b0;
		wr_enable=1'b1;
		valid = 1'b1;
		end

		3'b110:
		begin
		rd_enable = 1'b1;
		wr_enable=1'b1;
		valid = 1'b0;
		end

		3'b111:
		begin
		rd_enable = 1'b1;
		wr_enable=1'b1;		
		valid = 1'b0;
		end

		3'b001:
		begin
		rd_enable = 1'b0;
		wr_enable=1'b0;
		valid= 1'b0;
		end

		default:
		begin
		valid=1'b1;
		wr_enable=1'b0;
		rd_enable=1'b0;
		end
		endcase
	end
end 
endmodule
