/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : PC_RAM_DECODER                                               **
 **                                                                          **
 ******************************************************************************/

module PC_RAM_DECODER( CPU_EN,
                       LOGISIM_CLOCK_TREE_0,
                       STATE,
                       PC_REG_EN,
                       PC_SRC_SEL,
                       RAM_INT_CTRL,
                       ROM_CLKEN);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  CPU_EN;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[3:0]  STATE;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output PC_REG_EN;
   output PC_SRC_SEL;
   output[3:0] RAM_INT_CTRL;
   output ROM_CLKEN;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_15;
   wire[3:0] s_LOGISIM_BUS_21;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_21[3:0]              = STATE;
   assign s_LOGISIM_NET_19                   = CPU_EN;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign RAM_INT_CTRL                       = s_LOGISIM_BUS_15[3:0];
   assign PC_SRC_SEL                         = s_LOGISIM_NET_26;
   assign ROM_CLKEN                          = s_LOGISIM_NET_29;
   assign PC_REG_EN                          = s_LOGISIM_NET_14;

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   NOT_GATE      GATE_1 (.Input_1(s_LOGISIM_BUS_21[0]),
                         .Result(s_LOGISIM_NET_8));

   NOT_GATE      GATE_2 (.Input_1(s_LOGISIM_BUS_21[2]),
                         .Result(s_LOGISIM_NET_28));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_12),
              .Input_2(s_LOGISIM_BUS_21[2]),
              .Input_3(s_LOGISIM_NET_16),
              .Input_4(s_LOGISIM_NET_13),
              .Result(s_LOGISIM_BUS_15[1]));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_25),
              .Input_2(s_LOGISIM_NET_28),
              .Input_3(s_LOGISIM_BUS_21[0]),
              .Result(s_LOGISIM_NET_14));

   NOT_GATE      GATE_5 (.Input_1(s_LOGISIM_BUS_21[3]),
                         .Result(s_LOGISIM_NET_20));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_6 (.Input_1(s_LOGISIM_NET_19),
              .Input_2(s_LOGISIM_NET_24),
              .Input_3(s_LOGISIM_NET_18),
              .Input_4(s_LOGISIM_NET_4),
              .Input_5(s_LOGISIM_NET_8),
              .Result(s_LOGISIM_NET_29));

   AND_GATE #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_20),
              .Input_2(s_LOGISIM_BUS_21[2]),
              .Result(s_LOGISIM_BUS_15[3]));

   NOT_GATE      GATE_8 (.Input_1(s_LOGISIM_BUS_21[1]),
                         .Result(s_LOGISIM_NET_5));

   NOT_GATE      GATE_9 (.Input_1(s_LOGISIM_BUS_21[3]),
                         .Result(s_LOGISIM_NET_25));

   NOT_GATE      GATE_10 (.Input_1(s_LOGISIM_BUS_21[1]),
                          .Result(s_LOGISIM_NET_4));

   NOT_GATE      GATE_11 (.Input_1(s_LOGISIM_BUS_21[3]),
                          .Result(s_LOGISIM_NET_24));

   NOT_GATE      GATE_12 (.Input_1(s_LOGISIM_BUS_21[0]),
                          .Result(s_LOGISIM_NET_13));

   NOT_GATE      GATE_13 (.Input_1(s_LOGISIM_BUS_21[3]),
                          .Result(s_LOGISIM_NET_10));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_14 (.Input_1(s_LOGISIM_NET_10),
               .Input_2(s_LOGISIM_NET_27),
               .Input_3(s_LOGISIM_BUS_21[1]),
               .Input_4(s_LOGISIM_BUS_21[0]),
               .Result(s_LOGISIM_NET_26));

   NOT_GATE      GATE_15 (.Input_1(s_LOGISIM_BUS_21[3]),
                          .Result(s_LOGISIM_NET_12));

   NOT_GATE      GATE_16 (.Input_1(s_LOGISIM_BUS_21[1]),
                          .Result(s_LOGISIM_NET_16));

   NOT_GATE      GATE_17 (.Input_1(s_LOGISIM_BUS_21[3]),
                          .Result(s_LOGISIM_NET_9));

   NOT_GATE      GATE_18 (.Input_1(s_LOGISIM_BUS_21[2]),
                          .Result(s_LOGISIM_NET_18));

   NOT_GATE      GATE_19 (.Input_1(s_LOGISIM_BUS_21[3]),
                          .Result(s_LOGISIM_NET_11));

   NOT_GATE      GATE_20 (.Input_1(s_LOGISIM_BUS_21[1]),
                          .Result(s_LOGISIM_NET_17));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_21 (.Input_1(s_LOGISIM_NET_9),
               .Input_2(s_LOGISIM_BUS_21[2]),
               .Input_3(s_LOGISIM_NET_5),
               .Result(s_LOGISIM_BUS_15[2]));

   NOT_GATE      GATE_22 (.Input_1(s_LOGISIM_BUS_21[2]),
                          .Result(s_LOGISIM_NET_27));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_23 (.Input_1(s_LOGISIM_NET_11),
               .Input_2(s_LOGISIM_BUS_21[2]),
               .Input_3(s_LOGISIM_NET_17),
               .Input_4(s_LOGISIM_BUS_21[0]),
               .Result(s_LOGISIM_BUS_15[0]));



endmodule
