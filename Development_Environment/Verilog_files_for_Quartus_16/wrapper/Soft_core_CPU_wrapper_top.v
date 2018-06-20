module Soft_core_CPU_wrapper_top (NCLR,DOUT,ALWAYS_CPU_EN,ONCE_CPU_EN,processor_result,PC_rail,LOGISIM_CLOCK_TREE_0,HEX5,HEX4,HEX3,HEX2,HEX1,HEX0,CPU_EN);
		
	input  NCLR;
	input  DOUT;
	input  ALWAYS_CPU_EN;
	input  ONCE_CPU_EN;
   input [4:0] LOGISIM_CLOCK_TREE_0;
	input [7:0] processor_result;
	input [7:0] PC_rail;
	
	
	output [6:0] HEX5;
	output [6:0] HEX4;
	output [6:0] HEX3;
	output [6:0] HEX2;
	output [6:0] HEX1;
	output [6:0] HEX0;
	output CPU_EN;
	
	wire [7:0] NUM_BUFF1;
	wire [7:0] NUM_BUFF0;
//	wire [7:0] result_buff;
	wire [7:0] PC_op_running;
	wire DOUT_pulse;
	wire DOUT;
	
//	assign DOUT = ~NDOUT;
	assign PC_op_running = PC_rail - 8'b1;
	
	
	hex27seg PC_display1(PC_op_running[7:4],HEX5);
	hex27seg PC_display0(PC_op_running[3:0],HEX4);
	hex27seg SEG3(NUM_BUFF1[7:4],HEX3);
	hex27seg SEG2(NUM_BUFF1[3:0],HEX2);
	hex27seg SEG1(NUM_BUFF0[7:4],HEX1);
	hex27seg SEG0(NUM_BUFF0[3:0],HEX0);
	
//	en_buffer #(.NrOfBits(8)) processor_result_buffer(DOUT,processor_result,result_buff);
	
	pluse_gen_extra_delay pluse_gen_extra_delay(LOGISIM_CLOCK_TREE_0[4], DOUT, DOUT_pulse);

	Soft_core_CPU_output_display CPU_output_display(NCLR,DOUT_pulse,CPU_EN,processor_result,LOGISIM_CLOCK_TREE_0[4],NUM_BUFF1,NUM_BUFF0);
	
	CPU_EN_GEN CPU_EN_GENERATOR(	.ALWAYS_CPU_EN(ALWAYS_CPU_EN),
											.ONCE_CPU_EN(ONCE_CPU_EN),
											.CLK(LOGISIM_CLOCK_TREE_0[1]),
											.CPU_EN_OUT(CPU_EN));
											
	
endmodule
	