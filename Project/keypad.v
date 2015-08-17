`timescale 1 ns / 10 ps
module keypad(row,col,data,v,clock,reset);
    
output [3:0] col;
output [3:0] data;
output v;

input [3:0] row;
input clock;
input reset;
    

parameter s_0=3'b000,s_1=3'b001,s_2=3'b010,s_3=3'b011,s_4=3'b100,s_5=3'b101;

    reg [2:0] state,	next_state;
    reg [3:0] data;
    reg [3:0] col;
    reg [3:0] store;
    reg v;
	
	
  always@(posedge clock or negedge reset)
  begin
  if (reset == 0) begin state <= s_0;store <= row;end
  else begin	state <= next_state;store <= row; end
  end
	
	always@(posedge clock) begin 
	
	case(state)
	
s_0:if(store==4'b1111) begin next_state = s_0; col<=4'b0000;  v<=0; data<=4'bx; end
    else begin next_state = s_1; col<=col;v<=0;data<=4'bx; end

s_1:if(store==4'b1111) begin next_state = s_2; col<=col;v<=0;data<=data; end
	else begin case(store)
	4'b1110 : begin data <= 4'b0000; v<=1; next_state=s_5;col<=4'b1110; end
	4'b1101 : begin data <= 4'b0100; v<=1; next_state=s_5;col<=4'b1110;end
        4'b1011 : begin data <= 4'b1000; v<=1; next_state=s_5;col<=4'b1110; end
        4'b0111 : begin data <= 4'b1100; v<=1; next_state=s_5;col<=4'b1110; end
        endcase
	end
	
s_2: if(store==4'b1111) begin next_state = s_3; col<=col;v<=0;data<=data; end
	else begin case(store)
        4'b1110 : begin data <= 4'b0001; v<=1; next_state=s_5;col<=4'b1101; end
	4'b1101 : begin data <= 4'b0101; v<=1; next_state=s_5;col<=4'b1101; end
	4'b1011 : begin data <= 4'b1001; v<=1; next_state=s_5;col<=4'b1101; end
	4'b0111 : begin data <= 4'b1101; v<=1; next_state=s_5;col<=4'b1101; end
	endcase
	end
   
s_3: if(store==4'b1111) begin next_state = s_4; col<=col;v<=0;data<=data; end
	else begin case(store)
        4'b1110 : begin data <= 4'b0010; v<=1; next_state=s_5; col<=4'b1011; end
	4'b1101 : begin data <= 4'b0110; v<=1; next_state=s_5; col<=4'b1011; end
        4'b1011 : begin data <= 4'b1010; v<=1; next_state=s_5;col<=4'b1011; end
	4'b0111 : begin data <= 4'b1110; v<=1; next_state=s_5;col<=4'b1011; end
        endcase
	end
  
 s_4: if(store==4'b1111) begin next_state = s_1; col<=col;v<=0;data<=data; end
	 else begin case(store)
         4'b1110 : begin data <= 4'b0011; v<=1; next_state=s_5;col<=4'b0111; end
	 4'b1101 : begin data <= 4'b0111; v<=1; next_state=s_5;col<=4'b0111; end
	 4'b1011 : begin data <= 4'b1011; v<=1; next_state=s_5;col<=4'b0111; end
	 4'b0111 : begin data <= 4'b1111; v<=1; next_state=s_5;col<=4'b0111;end
	 endcase
	 end	
   
s_5: if(store==4'b1111) begin next_state=s_1; col<=col;v<=0;data<=data; end
     else begin next_state=s_5; col <= col; v<=0; data<=data; end

endcase

end		  

endmodule
