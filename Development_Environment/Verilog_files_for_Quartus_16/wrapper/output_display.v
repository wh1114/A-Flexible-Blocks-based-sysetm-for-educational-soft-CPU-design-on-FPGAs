module Soft_core_CPU_output_display (NCLR,DOUT_pulse,CPU_EN_pulse,CPU_OUTPUT_VAL,CLK,NUM_BUFF1,NUM_BUFF0);
	
	input  NCLR;
	input  DOUT_pulse;
	input  CPU_EN_pulse;
	input  CLK;
	input  [7:0] CPU_OUTPUT_VAL;
	output [7:0] NUM_BUFF1;
	output [7:0] NUM_BUFF0;
	
	parameter S_A = 2'b00, S_B = 2'b01;
	parameter S_C = 2'b10, S_D = 2'b11;
	
	reg [7:0] NUM_BUFF1;
	reg [7:0] NUM_BUFF0;
	reg [1:0] state;
	
	initial state = S_A;
	initial NUM_BUFF0 = 8'b0;
	initial NUM_BUFF1 = 8'b0;			
	
	wire CLR;
	
	assign CLR = ~NCLR;

	always @ (posedge CLK, posedge CLR)
	
	begin
		if(CLR==1'b1) 
		begin
			state <= S_A;
			NUM_BUFF0 <= 8'b0;
			NUM_BUFF1 <= 8'b0;		
		end
		else
		begin
			case(state)
				S_A: if(CPU_EN_pulse==1'b1)	state <= S_B;
				S_B: if(DOUT_pulse==1'b1) begin
					NUM_BUFF1<=CPU_OUTPUT_VAL;
					state<=S_C;
					end
				S_C: if(DOUT_pulse==1'b1) begin
					NUM_BUFF0<=CPU_OUTPUT_VAL;
					state<=S_D;
					end 
				S_D:  state<=S_D;
				default: state<=S_A;
			endcase
		end
		
	end
	
	
endmodule
	