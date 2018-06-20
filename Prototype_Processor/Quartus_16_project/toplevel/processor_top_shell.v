module processor_top_shell (FPGA_GlobalClock,NCLR,ONCE_CPU_EN,ALWAYS_CPU_EN,HEX5,HEX4,HEX3,HEX2,HEX1,HEX0,LED9_6);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  FPGA_GlobalClock;
	input  NCLR;
	input  ALWAYS_CPU_EN;
	input  ONCE_CPU_EN;
	
	
   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
	output [6:0] HEX5;
	output [6:0] HEX4;
	output [6:0] HEX3;
	output [6:0] HEX2;
	output [6:0] HEX1;
	output [6:0] HEX0;
	output [3:0] LED9_6;
	
	 /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_ASYN_CLR;
   wire s_CPU_EN;
   wire s_DOUT;
   wire s_FPGA_Tick;
   wire [4:0] s_LOGISIM_CLOCK_TREE_0;
   wire [7:0] s_PC_OUT;
	wire [7:0] s_OUT_RESULT;
	wire [3:0] s_FLAG_OUT;
	
	
   /***************************************************************************
    ** Here all inlined adaptations are performed                            **
    ***************************************************************************/
	 assign s_ASYN_CLR 	= ~NCLR;
	 
	 
	 assign LED9_6 		= s_FLAG_OUT;
	 
   /***************************************************************************
    ** Here the clock tree components are defined                            **
    ***************************************************************************/
   LogisimTickGenerator #(								.NrOfBits(26),
																.ReloadValue(10000000))
      LogisimTickGenerator_0 (						.FPGAClock(FPGA_GlobalClock),
																.FPGATick(s_FPGA_Tick));

   LogisimClockComponent #(							.HighTicks(1),
																.LowTicks(1),
																.NrOfBits(1))
      CLOCKGEN_0 (										.ClockBus(s_LOGISIM_CLOCK_TREE_0),
																.ClockTick(s_FPGA_Tick),
																.GlobalClock(FPGA_GlobalClock));

   /***************************************************************************
    ** Here the toplevel component is connected                              **
    ***************************************************************************/
						
		Soft_core_CPU_wrapper_top 	CPU_wrapper(	.NCLR(NCLR),
																.DOUT(s_DOUT),
																.ALWAYS_CPU_EN(ALWAYS_CPU_EN),
																.ONCE_CPU_EN(ONCE_CPU_EN),
																.processor_result(s_OUT_RESULT),
																.PC_rail(s_PC_OUT),
																.LOGISIM_CLOCK_TREE_0(s_LOGISIM_CLOCK_TREE_0),
																.HEX5(HEX5),
																.HEX4(HEX4),
																.HEX3(HEX3),
																.HEX2(HEX2),
																.HEX1(HEX1),
																.HEX0(HEX0),
																.CPU_EN(s_CPU_EN));


		CPU_main      					CPU_main_0 (	.ASYN_CLR(s_ASYN_CLR),
																.CPU_EN(s_CPU_EN),
																.DOUT(s_DOUT),
																.LOGISIM_CLOCK_TREE_0(s_LOGISIM_CLOCK_TREE_0),
																.OUT_RESULT(s_OUT_RESULT),
																.PC_OUT(s_PC_OUT),
																.FLAG_OUT(s_FLAG_OUT));

endmodule