/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : CPU_REGISTERS                                                **
 **                                                                          **
 ******************************************************************************/

module CPU_REGISTERS( CLK,
                      LOGISIM_CLOCK_TREE_0,
                      OP0_REG_OUT_SEL,
                      OP1_REG_OUT_SEL,
                      PC_ACLR,
                      PC_IN_BUS,
                      PC_REG_EN,
                      REG_ACLR,
                      REG_INPUT_BUS,
                      REG_WR_SEL,
                      OP0_OUT_BUS,
                      OP1_OUT_BUS,
                      PC_BUS);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  CLK;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[3:0]  OP0_REG_OUT_SEL;
   input[3:0]  OP1_REG_OUT_SEL;
   input  PC_ACLR;
   input[31:0]  PC_IN_BUS;
   input  PC_REG_EN;
   input  REG_ACLR;
   input[31:0]  REG_INPUT_BUS;
   input[3:0]  REG_WR_SEL;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] OP0_OUT_BUS;
   output[31:0] OP1_OUT_BUS;
   output[31:0] PC_BUS;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_11;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_14;
   wire[31:0] s_LOGISIM_BUS_15;
   wire[31:0] s_LOGISIM_BUS_18;
   wire[31:0] s_LOGISIM_BUS_19;
   wire[31:0] s_LOGISIM_BUS_2;
   wire[31:0] s_LOGISIM_BUS_20;
   wire[31:0] s_LOGISIM_BUS_21;
   wire[31:0] s_LOGISIM_BUS_22;
   wire[31:0] s_LOGISIM_BUS_23;
   wire[31:0] s_LOGISIM_BUS_24;
   wire[31:0] s_LOGISIM_BUS_25;
   wire[31:0] s_LOGISIM_BUS_28;
   wire[3:0] s_LOGISIM_BUS_29;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[31:0] s_LOGISIM_BUS_41;
   wire[3:0] s_LOGISIM_BUS_5;
   wire[31:0] s_LOGISIM_BUS_7;
   wire[3:0] s_LOGISIM_BUS_8;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_30;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_32;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_38;
   wire s_LOGISIM_NET_39;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_6                    = CLK;
   assign s_LOGISIM_NET_31                   = PC_REG_EN;
   assign s_LOGISIM_BUS_8[3:0]               = OP1_REG_OUT_SEL;
   assign s_LOGISIM_BUS_12[31:0]             = REG_INPUT_BUS;
   assign s_LOGISIM_NET_10                   = REG_ACLR;
   assign s_LOGISIM_BUS_28[31:0]             = PC_IN_BUS;
   assign s_LOGISIM_BUS_29[3:0]              = OP0_REG_OUT_SEL;
   assign s_LOGISIM_BUS_5[3:0]               = REG_WR_SEL;
   assign s_LOGISIM_NET_37                   = PC_ACLR;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign OP0_OUT_BUS                        = s_LOGISIM_BUS_14[31:0];
   assign OP1_OUT_BUS                        = s_LOGISIM_BUS_41[31:0];
   assign PC_BUS                             = s_LOGISIM_BUS_20[31:0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_3),
                       .D(s_LOGISIM_BUS_12[31:0]),
                       .Q(s_LOGISIM_BUS_24[31:0]),
                       .Reset(s_LOGISIM_NET_10),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_2 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_34),
                       .D(s_LOGISIM_BUS_12[31:0]),
                       .Q(s_LOGISIM_BUS_13[31:0]),
                       .Reset(s_LOGISIM_NET_10),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_3 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_40),
                       .D(s_LOGISIM_BUS_12[31:0]),
                       .Q(s_LOGISIM_BUS_7[31:0]),
                       .Reset(s_LOGISIM_NET_10),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_4 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_36),
                       .D(s_LOGISIM_BUS_12[31:0]),
                       .Q(s_LOGISIM_BUS_23[31:0]),
                       .Reset(s_LOGISIM_NET_10),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_5 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_38),
                       .D(s_LOGISIM_BUS_12[31:0]),
                       .Q(s_LOGISIM_BUS_18[31:0]),
                       .Reset(s_LOGISIM_NET_10),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_6 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_26),
                       .D(s_LOGISIM_BUS_12[31:0]),
                       .Q(s_LOGISIM_BUS_21[31:0]),
                       .Reset(s_LOGISIM_NET_10),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_7 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_32),
                       .D(s_LOGISIM_BUS_12[31:0]),
                       .Q(s_LOGISIM_BUS_19[31:0]),
                       .Reset(s_LOGISIM_NET_10),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_8 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_33),
                       .D(s_LOGISIM_BUS_12[31:0]),
                       .Q(s_LOGISIM_BUS_25[31:0]),
                       .Reset(s_LOGISIM_NET_6),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_9 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_35),
                       .D(s_LOGISIM_BUS_12[31:0]),
                       .Q(s_LOGISIM_BUS_2[31:0]),
                       .Reset(s_LOGISIM_NET_10),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_10 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_17),
                        .D(s_LOGISIM_BUS_12[31:0]),
                        .Q(s_LOGISIM_BUS_1[31:0]),
                        .Reset(s_LOGISIM_NET_10),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));

   Decoder_16      DECODER_1 (.DecoderOut_0(s_LOGISIM_NET_35),
                              .DecoderOut_1(s_LOGISIM_NET_32),
                              .DecoderOut_10(s_LOGISIM_NET_33),
                              .DecoderOut_11(s_LOGISIM_NET_39),
                              .DecoderOut_12(s_LOGISIM_NET_26),
                              .DecoderOut_13(s_LOGISIM_NET_40),
                              .DecoderOut_14(s_LOGISIM_NET_17),
                              .DecoderOut_15(),
                              .DecoderOut_2(s_LOGISIM_NET_36),
                              .DecoderOut_3(s_LOGISIM_NET_27),
                              .DecoderOut_4(s_LOGISIM_NET_38),
                              .DecoderOut_5(s_LOGISIM_NET_16),
                              .DecoderOut_6(s_LOGISIM_NET_9),
                              .DecoderOut_7(s_LOGISIM_NET_3),
                              .DecoderOut_8(s_LOGISIM_NET_30),
                              .DecoderOut_9(s_LOGISIM_NET_34),
                              .Enable(1'b1),
                              .Sel(s_LOGISIM_BUS_5[3:0]));

   Multiplexer_bus_16 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_2[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_19[31:0]),
             .MuxIn_10(s_LOGISIM_BUS_25[31:0]),
             .MuxIn_11(s_LOGISIM_BUS_0[31:0]),
             .MuxIn_12(s_LOGISIM_BUS_21[31:0]),
             .MuxIn_13(s_LOGISIM_BUS_7[31:0]),
             .MuxIn_14(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_15(s_LOGISIM_BUS_20[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_23[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_11[31:0]),
             .MuxIn_4(s_LOGISIM_BUS_18[31:0]),
             .MuxIn_5(s_LOGISIM_BUS_22[31:0]),
             .MuxIn_6(s_LOGISIM_BUS_15[31:0]),
             .MuxIn_7(s_LOGISIM_BUS_24[31:0]),
             .MuxIn_8(s_LOGISIM_BUS_4[31:0]),
             .MuxIn_9(s_LOGISIM_BUS_13[31:0]),
             .MuxOut(s_LOGISIM_BUS_14[31:0]),
             .Sel(s_LOGISIM_BUS_29[3:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_11 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_27),
                        .D(s_LOGISIM_BUS_12[31:0]),
                        .Q(s_LOGISIM_BUS_11[31:0]),
                        .Reset(s_LOGISIM_NET_10),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_12 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_16),
                        .D(s_LOGISIM_BUS_12[31:0]),
                        .Q(s_LOGISIM_BUS_22[31:0]),
                        .Reset(s_LOGISIM_NET_10),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_13 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_30),
                        .D(s_LOGISIM_BUS_12[31:0]),
                        .Q(s_LOGISIM_BUS_4[31:0]),
                        .Reset(s_LOGISIM_NET_10),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));

   Multiplexer_bus_16 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_2[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_19[31:0]),
             .MuxIn_10(s_LOGISIM_BUS_25[31:0]),
             .MuxIn_11(s_LOGISIM_BUS_0[31:0]),
             .MuxIn_12(s_LOGISIM_BUS_21[31:0]),
             .MuxIn_13(s_LOGISIM_BUS_7[31:0]),
             .MuxIn_14(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_15(s_LOGISIM_BUS_20[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_23[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_11[31:0]),
             .MuxIn_4(s_LOGISIM_BUS_18[31:0]),
             .MuxIn_5(s_LOGISIM_BUS_22[31:0]),
             .MuxIn_6(s_LOGISIM_BUS_15[31:0]),
             .MuxIn_7(s_LOGISIM_BUS_24[31:0]),
             .MuxIn_8(s_LOGISIM_BUS_4[31:0]),
             .MuxIn_9(s_LOGISIM_BUS_13[31:0]),
             .MuxOut(s_LOGISIM_BUS_41[31:0]),
             .Sel(s_LOGISIM_BUS_8[3:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_14 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_31),
                        .D(s_LOGISIM_BUS_28[31:0]),
                        .Q(s_LOGISIM_BUS_20[31:0]),
                        .Reset(s_LOGISIM_NET_37),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_15 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_9),
                        .D(s_LOGISIM_BUS_12[31:0]),
                        .Q(s_LOGISIM_BUS_15[31:0]),
                        .Reset(s_LOGISIM_NET_10),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_16 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_39),
                        .D(s_LOGISIM_BUS_12[31:0]),
                        .Q(s_LOGISIM_BUS_0[31:0]),
                        .Reset(s_LOGISIM_NET_10),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));



endmodule
