/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : ALU_enhanced                                                 **
 **                                                                          **
 ******************************************************************************/

module ALU_enhanced( Fnc_SEL,
                     LOGISIM_CLOCK_TREE_0,
                     Op1,
                     Op2,
                     Flag_Out,
                     RESULT);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[8:0]  Fnc_SEL;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[31:0]  Op1;
   input[31:0]  Op2;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[3:0] Flag_Out;
   output[31:0] RESULT;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_10;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_14;
   wire[31:0] s_LOGISIM_BUS_15;
   wire[31:0] s_LOGISIM_BUS_17;
   wire[31:0] s_LOGISIM_BUS_19;
   wire[31:0] s_LOGISIM_BUS_20;
   wire[31:0] s_LOGISIM_BUS_22;
   wire[8:0] s_LOGISIM_BUS_23;
   wire[31:0] s_LOGISIM_BUS_24;
   wire[31:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[31:0] s_LOGISIM_BUS_5;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_4[31:0]              = Op2;
   assign s_LOGISIM_BUS_3[31:0]              = Op1;
   assign s_LOGISIM_BUS_23[8:0]              = Fnc_SEL;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign RESULT                             = s_LOGISIM_BUS_5[31:0];
   assign Flag_Out                           = s_LOGISIM_BUS_10[3:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_22[31:0] = 32'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE_BUS #(.BubblesMask(0),
                  .NrOfBits(32))
      GATE_1 (.Input_1(s_LOGISIM_BUS_3[31:0]),
              .Input_2(s_LOGISIM_BUS_24[31:0]),
              .Result(s_LOGISIM_BUS_20[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_1 (.A_EQ_B(s_LOGISIM_BUS_10[2]),
                    .A_GT_B(),
                    .A_LT_B(s_LOGISIM_BUS_10[3]),
                    .DataA(s_LOGISIM_BUS_5[31:0]),
                    .DataB(s_LOGISIM_BUS_22[31:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_4[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_12[31:0]),
             .MuxOut(s_LOGISIM_BUS_24[31:0]),
             .Sel(s_LOGISIM_BUS_23[8]));

   NOT_GATE_BUS #(.NrOfBits(32))
      GATE_2 (.Input_1(s_LOGISIM_BUS_4[31:0]),
              .Result(s_LOGISIM_BUS_12[31:0]));

   XOR_GATE_BUS_ONEHOT #(.BubblesMask(0),
                         .NrOfBits(32))
      GATE_3 (.Input_1(s_LOGISIM_BUS_3[31:0]),
              .Input_2(s_LOGISIM_BUS_4[31:0]),
              .Result(s_LOGISIM_BUS_19[31:0]));

   OR_GATE_BUS #(.BubblesMask(0),
                 .NrOfBits(32))
      GATE_4 (.Input_1(s_LOGISIM_BUS_3[31:0]),
              .Input_2(s_LOGISIM_BUS_4[31:0]),
              .Result(s_LOGISIM_BUS_13[31:0]));

   Multiplexer_bus_8 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_17[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_20[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_13[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_19[31:0]),
             .MuxIn_4(s_LOGISIM_BUS_14[31:0]),
             .MuxIn_5(s_LOGISIM_BUS_15[31:0]),
             .MuxIn_6(s_LOGISIM_BUS_4[31:0]),
             .MuxIn_7(32'd0),
             .MuxOut(s_LOGISIM_BUS_5[31:0]),
             .Sel(s_LOGISIM_BUS_23[2:0]));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   ALU_ADDER      ALG_ADDR (.A(s_LOGISIM_BUS_3[31:0]),
                            .B(s_LOGISIM_BUS_4[31:0]),
                            .C(s_LOGISIM_BUS_10[1]),
                            .Cin(s_LOGISIM_BUS_23[5]),
                            .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                            .RSB(s_LOGISIM_BUS_23[6]),
                            .SUB(s_LOGISIM_BUS_23[7]),
                            .SUM(s_LOGISIM_BUS_17[31:0]),
                            .V(s_LOGISIM_BUS_10[0]));

   ALU_LEFT_SHIFT      Left_shift_module (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                          .Op_Input(s_LOGISIM_BUS_3[31:0]),
                                          .Shift_Out(s_LOGISIM_BUS_15[31:0]),
                                          .Shift_distance(s_LOGISIM_BUS_4[4:0]),
                                          .Shift_func_sel(s_LOGISIM_BUS_23[4:3]));

   ALU_RIGHT_SHIFT      Right_shift_module (.C(s_LOGISIM_BUS_23[5]),
                                            .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                            .Op_Input(s_LOGISIM_BUS_3[31:0]),
                                            .Shift_Out(s_LOGISIM_BUS_14[31:0]),
                                            .Shift_distance(s_LOGISIM_BUS_4[4:0]),
                                            .Shift_func_sel(s_LOGISIM_BUS_23[4:3]));



endmodule
