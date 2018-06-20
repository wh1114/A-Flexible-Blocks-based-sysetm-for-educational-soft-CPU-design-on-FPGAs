/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : ALU                                                          **
 **                                                                          **
 ******************************************************************************/

module ALU( ALU_CTRL_BUS,
            LOGISIM_CLOCK_TREE_0,
            OP0_A_BUS,
            OP1_B_BUS,
            FLAG,
            RESULT);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[8:0]  ALU_CTRL_BUS;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[31:0]  OP0_A_BUS;
   input[31:0]  OP1_B_BUS;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[3:0] FLAG;
   output[31:0] RESULT;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[3:0] s_LOGISIM_BUS_11;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[2:0] s_LOGISIM_BUS_14;
   wire[31:0] s_LOGISIM_BUS_15;
   wire[4:0] s_LOGISIM_BUS_16;
   wire[31:0] s_LOGISIM_BUS_18;
   wire[31:0] s_LOGISIM_BUS_2;
   wire[8:0] s_LOGISIM_BUS_22;
   wire[31:0] s_LOGISIM_BUS_23;
   wire[31:0] s_LOGISIM_BUS_25;
   wire[31:0] s_LOGISIM_BUS_26;
   wire[31:0] s_LOGISIM_BUS_30;
   wire[31:0] s_LOGISIM_BUS_5;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[1:0] s_LOGISIM_BUS_7;
   wire[31:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_4;


   /***************************************************************************
    ** Here all wiring is defined                                            **
    ***************************************************************************/
   assign s_LOGISIM_BUS_7[0]                 = s_LOGISIM_BUS_22[3];
   assign s_LOGISIM_BUS_16[3]                = s_LOGISIM_BUS_7[0];
   assign s_LOGISIM_BUS_7[1]                 = s_LOGISIM_BUS_22[4];
   assign s_LOGISIM_BUS_16[4]                = s_LOGISIM_BUS_7[1];
   assign s_LOGISIM_BUS_14[0]                = s_LOGISIM_BUS_22[0];
   assign s_LOGISIM_BUS_16[0]                = s_LOGISIM_BUS_14[0];
   assign s_LOGISIM_BUS_14[1]                = s_LOGISIM_BUS_22[1];
   assign s_LOGISIM_BUS_16[1]                = s_LOGISIM_BUS_14[1];
   assign s_LOGISIM_BUS_14[2]                = s_LOGISIM_BUS_22[2];
   assign s_LOGISIM_BUS_16[2]                = s_LOGISIM_BUS_14[2];

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_5[31:0]              = OP0_A_BUS;
   assign s_LOGISIM_BUS_22[8:0]              = ALU_CTRL_BUS;
   assign s_LOGISIM_BUS_0[31:0]              = OP1_B_BUS;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign FLAG                               = s_LOGISIM_BUS_11[3:0];
   assign RESULT                             = s_LOGISIM_BUS_6[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_15[31:0] = 32'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Multiplexer_bus_8 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_23[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_12[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_26[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_9[31:0]),
             .MuxIn_4(s_LOGISIM_BUS_18[31:0]),
             .MuxIn_5(s_LOGISIM_BUS_2[31:0]),
             .MuxIn_6(s_LOGISIM_BUS_0[31:0]),
             .MuxIn_7(32'd0),
             .MuxOut(s_LOGISIM_BUS_6[31:0]),
             .Sel(s_LOGISIM_BUS_14[2:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_1 (.A_EQ_B(s_LOGISIM_BUS_11[2]),
                    .A_GT_B(),
                    .A_LT_B(s_LOGISIM_BUS_11[3]),
                    .DataA(s_LOGISIM_BUS_6[31:0]),
                    .DataB(s_LOGISIM_BUS_15[31:0]));

   AND_GATE_BUS #(.BubblesMask(0),
                  .NrOfBits(32))
      GATE_1 (.Input_1(s_LOGISIM_BUS_5[31:0]),
              .Input_2(s_LOGISIM_BUS_25[31:0]),
              .Result(s_LOGISIM_BUS_12[31:0]));

   XOR_GATE_BUS_ONEHOT #(.BubblesMask(0),
                         .NrOfBits(32))
      GATE_2 (.Input_1(s_LOGISIM_BUS_5[31:0]),
              .Input_2(s_LOGISIM_BUS_0[31:0]),
              .Result(s_LOGISIM_BUS_9[31:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_0[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_30[31:0]),
             .MuxOut(s_LOGISIM_BUS_25[31:0]),
             .Sel(s_LOGISIM_BUS_22[8]));

   OR_GATE_BUS #(.BubblesMask(0),
                 .NrOfBits(32))
      GATE_3 (.Input_1(s_LOGISIM_BUS_5[31:0]),
              .Input_2(s_LOGISIM_BUS_0[31:0]),
              .Result(s_LOGISIM_BUS_26[31:0]));

   Multiplexer_2      MUX_3 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_19),
                             .MuxIn_1(s_LOGISIM_NET_4),
                             .MuxOut(s_LOGISIM_BUS_11[1]),
                             .Sel(s_LOGISIM_NET_10));

   NOT_GATE_BUS #(.NrOfBits(32))
      GATE_4 (.Input_1(s_LOGISIM_BUS_0[31:0]),
              .Result(s_LOGISIM_BUS_30[31:0]));

   AND_GATE_5_INPUTS #(.BubblesMask(2))
      GATE_5 (.Input_1(s_LOGISIM_BUS_16[0]),
              .Input_2(s_LOGISIM_BUS_16[1]),
              .Input_3(s_LOGISIM_BUS_16[2]),
              .Input_4(s_LOGISIM_BUS_16[3]),
              .Input_5(s_LOGISIM_BUS_16[4]),
              .Result(s_LOGISIM_NET_10));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   RIGHT_SHIFT_BLOCK      RIGHT_SHIFT_BLOCK_1 (.CIN(s_LOGISIM_BUS_22[5]),
                                               .COUT(s_LOGISIM_NET_4),
                                               .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                               .OP_IN(s_LOGISIM_BUS_5[31:0]),
                                               .RESULT(s_LOGISIM_BUS_18[31:0]),
                                               .SHIFT_DISTANCE(s_LOGISIM_BUS_0[4:0]),
                                               .SHIFT_FUNC_SEL(s_LOGISIM_BUS_7[1:0]));

   ALU_ADDER      ALU_ADDER_1 (.Cin(s_LOGISIM_BUS_22[5]),
                               .Cout(s_LOGISIM_NET_19),
                               .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                               .OP0(s_LOGISIM_BUS_5[31:0]),
                               .OP1(s_LOGISIM_BUS_0[31:0]),
                               .RESULT(s_LOGISIM_BUS_23[31:0]),
                               .RSB(s_LOGISIM_BUS_22[6]),
                               .SUB(s_LOGISIM_BUS_22[7]),
                               .V(s_LOGISIM_BUS_11[0]));

   LEFT_SHIFT_BLOCK      LEFT_SHIFT_BLOCK_1 (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                             .OP_IN(s_LOGISIM_BUS_5[31:0]),
                                             .RESULT(s_LOGISIM_BUS_2[31:0]),
                                             .SHIFT_DISTANCE(s_LOGISIM_BUS_0[4:0]),
                                             .SHIFT_FUNC_SEL(s_LOGISIM_BUS_7[1:0]));



endmodule
