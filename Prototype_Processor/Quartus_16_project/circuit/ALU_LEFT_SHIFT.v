/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : ALU_LEFT_SHIFT                                               **
 **                                                                          **
 ******************************************************************************/

module ALU_LEFT_SHIFT( LOGISIM_CLOCK_TREE_0,
                       Op_Input,
                       Shift_distance,
                       Shift_func_sel,
                       Shift_Out);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[31:0]  Op_Input;
   input[4:0]  Shift_distance;
   input[1:0]  Shift_func_sel;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] Shift_Out;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[1:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_2;
   wire[31:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[31:0] s_LOGISIM_BUS_5;
   wire[4:0] s_LOGISIM_BUS_6;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_6[4:0]               = Shift_distance;
   assign s_LOGISIM_BUS_3[31:0]              = Op_Input;
   assign s_LOGISIM_BUS_0[1:0]               = Shift_func_sel;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Shift_Out                          = s_LOGISIM_BUS_2[31:0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Shifter_32_bit #(.ShifterMode(0))
      Shifter_1 (.DataA(s_LOGISIM_BUS_3[31:0]),
                 .Result(s_LOGISIM_BUS_4[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_6[4:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_4[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_5[31:0]),
             .MuxOut(s_LOGISIM_BUS_2[31:0]),
             .Sel(s_LOGISIM_BUS_0[1]));

   Shifter_32_bit #(.ShifterMode(1))
      Shifter_2 (.DataA(s_LOGISIM_BUS_3[31:0]),
                 .Result(s_LOGISIM_BUS_5[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_6[4:0]));



endmodule
