module pluse_gen (clock,trigger,load);
	
	input clock;
	input trigger;

	output load;
	
	reg [1:0] state;
	reg load;
	
	initial state = 2'b00;
	
	always@ (posedge clock)begin
		load<=1'b0;
		case(state)
		2'b0:		if (trigger==1'b0)
						state <= 2'b00;
					
					else begin
						state <= 2'b01;
						load<=1'b1;
				end
		2'b01: if(trigger==1'b0)
					state<=2'b00;
	 
				
				else 
				state <=2'b10;
			
		2'b10:if (trigger==1'b0)
				state <=2'b00;
			
			else 
				state <=2'b10;
			
		endcase
	end
endmodule