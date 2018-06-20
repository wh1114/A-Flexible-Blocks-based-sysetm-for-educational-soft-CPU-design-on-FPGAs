/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : LEFT_SHIFT_BLOCK                                             **
 **                                                                          **
 ******************************************************************************/

module LEFT_SHIFT_BLOCK( LOGISIM_CLOCK_TREE_0,
                         OP_IN,
                         SHIFT_DISTANCE,
                         SHIFT_FUNC_SEL,
                         RESULT);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[31:0]  OP_IN;
   input[4:0]  SHIFT_DISTANCE;
   input[1:0]  SHIFT_FUNC_SEL;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] RESULT;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[1:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_2;
   wire[31:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[4:0] s_LOGISIM_BUS_6;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_0[31:0]              = OP_IN;
   assign s_LOGISIM_BUS_6[4:0]               = SHIFT_DISTANCE;
   assign s_LOGISIM_BUS_1[1:0]               = SHIFT_FUNC_SEL;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign RESULT                             = s_LOGISIM_BUS_4[31:0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Shifter_32_bit #(.ShifterMode(1))
      Shifter_1 (.DataA(s_LOGISIM_BUS_0[31:0]),
                 .Result(s_LOGISIM_BUS_2[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_6[4:0]));

   Shifter_32_bit #(.ShifterMode(0))
      Shifter_2 (.DataA(s_LOGISIM_BUS_0[31:0]),
                 .Result(s_LOGISIM_BUS_3[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_6[4:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_3[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_2[31:0]),
             .MuxOut(s_LOGISIM_BUS_4[31:0]),
             .Sel(s_LOGISIM_BUS_1[1]));



endmodule
