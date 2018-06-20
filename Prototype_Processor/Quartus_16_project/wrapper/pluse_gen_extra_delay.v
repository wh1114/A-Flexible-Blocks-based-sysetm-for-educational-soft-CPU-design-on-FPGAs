module pluse_gen_extra_delay (clock,trigger,load);
	
	input clock;
	input trigger;

	output load;
	
	reg [1:0] state;
	reg load;
	

	
	always@ (posedge clock)begin
		load<=1'b0;
		
		case(state)
		
		2'b0:		if (trigger==1'b0)
						state <= 2'b00;
					
					else 
						state <= 2'b01;
						
		2'b01:		begin
							state <= 2'b10;
							load<=1'b1;
					end
					
		2'b10: 	if(trigger==1'b0)
						state<=2'b00;
	 
				
					else 
						state <=2'b11;
			
		2'b11:	if (trigger==1'b0)
						state <=2'b00;
				
					else 
						state <=2'b11;
			
		endcase
	end
endmodule