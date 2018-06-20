/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : LogisimToplevelShell                                         **
 **                                                                          **
 ******************************************************************************/

module LogisimToplevelShell( FPGA_GlobalClock,
                             FPGA_INPUT_PIN_0,
                             FPGA_INPUT_PIN_1,
                             FPGA_OUTPUT_PIN_0,
                             FPGA_OUTPUT_PIN_1,
                             FPGA_OUTPUT_PIN_2);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  FPGA_GlobalClock;
   input  FPGA_INPUT_PIN_0;
   input  FPGA_INPUT_PIN_1;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output FPGA_OUTPUT_PIN_0;
   output FPGA_OUTPUT_PIN_1;
   output FPGA_OUTPUT_PIN_2;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_FPGA_Tick;
   wire s_Input_1;
   wire s_Input_2;
   wire[4:0] s_LOGISIM_CLOCK_TREE_0;
   wire s_Output_1;
   wire s_Output_2;
   wire s_Output_3;

   /***************************************************************************
    ** Here all signal adaptations are performed                             **
    ***************************************************************************/
   assign s_Input_1 = FPGA_INPUT_PIN_0;
   assign FPGA_OUTPUT_PIN_0 = s_Output_3;
   assign FPGA_OUTPUT_PIN_1 = s_Output_2;
   assign FPGA_OUTPUT_PIN_2 = s_Output_1;
   assign s_Input_2 = FPGA_INPUT_PIN_1;
   /***************************************************************************
    ** Here all inlined adaptations are performed                            **
    ***************************************************************************/
   /***************************************************************************
    ** Here the clock tree components are defined                            **
    ***************************************************************************/
   LogisimTickGenerator #(.NrOfBits(26),
                          .ReloadValue(50000000))
      LogisimTickGenerator_0 (.FPGAClock(FPGA_GlobalClock),
                              .FPGATick(s_FPGA_Tick));

   LogisimClockComponent #(.HighTicks(1),
                           .LowTicks(1),
                           .NrOfBits(1))
      CLOCKGEN_0 (.ClockBus(s_LOGISIM_CLOCK_TREE_0),
                  .ClockTick(s_FPGA_Tick),
                  .GlobalClock(FPGA_GlobalClock));


   /***************************************************************************
    ** Here the toplevel component is connected                              **
    ***************************************************************************/
   Top_level_processor_with_wrapper      Top_level_processor_with_wrapper_0 (.Input_1(s_Input_1),
                                                                             .Input_2(s_Input_2),
                                                                             .LOGISIM_CLOCK_TREE_0(s_LOGISIM_CLOCK_TREE_0),
                                                                             .Output_1(s_Output_1),
                                                                             .Output_2(s_Output_2),
                                                                             .Output_3(s_Output_3));


endmodule
