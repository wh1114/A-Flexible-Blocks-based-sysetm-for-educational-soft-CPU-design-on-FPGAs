/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : CPU_REG                                                      **
 **                                                                          **
 ******************************************************************************/

module CPU_REG( CLK,
                CLR,
                LOGISIM_CLOCK_TREE_0,
                PC_BUS,
                PC_EN,
                REG_1_SEL,
                REG_2_SEL,
                REG_BUS,
                REG_SEL,
                PC_OUT,
                REG_1_OUT,
                REG_2_OUT);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  CLK;
   input  CLR;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[31:0]  PC_BUS;
   input  PC_EN;
   input[3:0]  REG_1_SEL;
   input[3:0]  REG_2_SEL;
   input[31:0]  REG_BUS;
   input[3:0]  REG_SEL;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] PC_OUT;
   output[31:0] REG_1_OUT;
   output[31:0] REG_2_OUT;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_10;
   wire[31:0] s_LOGISIM_BUS_11;
   wire[31:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_16;
   wire[31:0] s_LOGISIM_BUS_17;
   wire[3:0] s_LOGISIM_BUS_19;
   wire[31:0] s_LOGISIM_BUS_2;
   wire[3:0] s_LOGISIM_BUS_20;
   wire[31:0] s_LOGISIM_BUS_21;
   wire[31:0] s_LOGISIM_BUS_22;
   wire[31:0] s_LOGISIM_BUS_25;
   wire[31:0] s_LOGISIM_BUS_26;
   wire[31:0] s_LOGISIM_BUS_28;
   wire[31:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_31;
   wire[31:0] s_LOGISIM_BUS_32;
   wire[31:0] s_LOGISIM_BUS_35;
   wire[3:0] s_LOGISIM_BUS_39;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[31:0] s_LOGISIM_BUS_40;
   wire[31:0] s_LOGISIM_BUS_5;
   wire[31:0] s_LOGISIM_BUS_7;
   wire[31:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_30;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_38;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_8;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_19[3:0]              = REG_SEL;
   assign s_LOGISIM_NET_0                    = CLR;
   assign s_LOGISIM_BUS_20[3:0]              = REG_2_SEL;
   assign s_LOGISIM_BUS_39[3:0]              = REG_1_SEL;
   assign s_LOGISIM_NET_1                    = CLK;
   assign s_LOGISIM_NET_24                   = PC_EN;
   assign s_LOGISIM_BUS_2[31:0]              = REG_BUS;
   assign s_LOGISIM_BUS_35[31:0]             = PC_BUS;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign PC_OUT                             = s_LOGISIM_BUS_11[31:0];
   assign REG_1_OUT                          = s_LOGISIM_BUS_31[31:0];
   assign REG_2_OUT                          = s_LOGISIM_BUS_40[31:0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_18),
                       .D(s_LOGISIM_BUS_2[31:0]),
                       .Q(s_LOGISIM_BUS_21[31:0]),
                       .Reset(s_LOGISIM_NET_0),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_2 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_23),
                       .D(s_LOGISIM_BUS_2[31:0]),
                       .Q(s_LOGISIM_BUS_5[31:0]),
                       .Reset(s_LOGISIM_NET_0),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_3 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_27),
                       .D(s_LOGISIM_BUS_2[31:0]),
                       .Q(s_LOGISIM_BUS_13[31:0]),
                       .Reset(s_LOGISIM_NET_0),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   Multiplexer_bus_16 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_7[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_16[31:0]),
             .MuxIn_10(s_LOGISIM_BUS_21[31:0]),
             .MuxIn_11(s_LOGISIM_BUS_32[31:0]),
             .MuxIn_12(s_LOGISIM_BUS_28[31:0]),
             .MuxIn_13(s_LOGISIM_BUS_13[31:0]),
             .MuxIn_14(s_LOGISIM_BUS_4[31:0]),
             .MuxIn_15(s_LOGISIM_BUS_11[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_5[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_10[31:0]),
             .MuxIn_4(s_LOGISIM_BUS_22[31:0]),
             .MuxIn_5(s_LOGISIM_BUS_26[31:0]),
             .MuxIn_6(s_LOGISIM_BUS_3[31:0]),
             .MuxIn_7(s_LOGISIM_BUS_9[31:0]),
             .MuxIn_8(s_LOGISIM_BUS_17[31:0]),
             .MuxIn_9(s_LOGISIM_BUS_25[31:0]),
             .MuxOut(s_LOGISIM_BUS_40[31:0]),
             .Sel(s_LOGISIM_BUS_20[3:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_4 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_14),
                       .D(s_LOGISIM_BUS_2[31:0]),
                       .Q(s_LOGISIM_BUS_9[31:0]),
                       .Reset(s_LOGISIM_NET_0),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_5 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_8),
                       .D(s_LOGISIM_BUS_2[31:0]),
                       .Q(s_LOGISIM_BUS_32[31:0]),
                       .Reset(s_LOGISIM_NET_0),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_6 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_37),
                       .D(s_LOGISIM_BUS_2[31:0]),
                       .Q(s_LOGISIM_BUS_3[31:0]),
                       .Reset(s_LOGISIM_NET_0),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_7 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_33),
                       .D(s_LOGISIM_BUS_2[31:0]),
                       .Q(s_LOGISIM_BUS_4[31:0]),
                       .Reset(s_LOGISIM_NET_0),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   Decoder_16      DECODER_1 (.DecoderOut_0(s_LOGISIM_NET_12),
                              .DecoderOut_1(s_LOGISIM_NET_29),
                              .DecoderOut_10(s_LOGISIM_NET_18),
                              .DecoderOut_11(s_LOGISIM_NET_8),
                              .DecoderOut_12(s_LOGISIM_NET_36),
                              .DecoderOut_13(s_LOGISIM_NET_27),
                              .DecoderOut_14(s_LOGISIM_NET_33),
                              .DecoderOut_15(),
                              .DecoderOut_2(s_LOGISIM_NET_23),
                              .DecoderOut_3(s_LOGISIM_NET_6),
                              .DecoderOut_4(s_LOGISIM_NET_15),
                              .DecoderOut_5(s_LOGISIM_NET_38),
                              .DecoderOut_6(s_LOGISIM_NET_37),
                              .DecoderOut_7(s_LOGISIM_NET_14),
                              .DecoderOut_8(s_LOGISIM_NET_34),
                              .DecoderOut_9(s_LOGISIM_NET_30),
                              .Enable(1'b1),
                              .Sel(s_LOGISIM_BUS_19[3:0]));

   Multiplexer_bus_16 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_7[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_16[31:0]),
             .MuxIn_10(s_LOGISIM_BUS_21[31:0]),
             .MuxIn_11(s_LOGISIM_BUS_32[31:0]),
             .MuxIn_12(s_LOGISIM_BUS_28[31:0]),
             .MuxIn_13(s_LOGISIM_BUS_13[31:0]),
             .MuxIn_14(s_LOGISIM_BUS_4[31:0]),
             .MuxIn_15(s_LOGISIM_BUS_11[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_5[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_10[31:0]),
             .MuxIn_4(s_LOGISIM_BUS_22[31:0]),
             .MuxIn_5(s_LOGISIM_BUS_26[31:0]),
             .MuxIn_6(s_LOGISIM_BUS_3[31:0]),
             .MuxIn_7(s_LOGISIM_BUS_9[31:0]),
             .MuxIn_8(s_LOGISIM_BUS_17[31:0]),
             .MuxIn_9(s_LOGISIM_BUS_25[31:0]),
             .MuxOut(s_LOGISIM_BUS_31[31:0]),
             .Sel(s_LOGISIM_BUS_39[3:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_8 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_38),
                       .D(s_LOGISIM_BUS_2[31:0]),
                       .Q(s_LOGISIM_BUS_26[31:0]),
                       .Reset(s_LOGISIM_NET_0),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_9 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_15),
                       .D(s_LOGISIM_BUS_2[31:0]),
                       .Q(s_LOGISIM_BUS_22[31:0]),
                       .Reset(s_LOGISIM_NET_0),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_10 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_12),
                        .D(s_LOGISIM_BUS_2[31:0]),
                        .Q(s_LOGISIM_BUS_7[31:0]),
                        .Reset(s_LOGISIM_NET_0),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_11 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_29),
                        .D(s_LOGISIM_BUS_2[31:0]),
                        .Q(s_LOGISIM_BUS_16[31:0]),
                        .Reset(s_LOGISIM_NET_0),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_12 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_6),
                        .D(s_LOGISIM_BUS_2[31:0]),
                        .Q(s_LOGISIM_BUS_10[31:0]),
                        .Reset(s_LOGISIM_NET_0),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_13 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_36),
                        .D(s_LOGISIM_BUS_2[31:0]),
                        .Q(s_LOGISIM_BUS_28[31:0]),
                        .Reset(s_LOGISIM_NET_0),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_14 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_30),
                        .D(s_LOGISIM_BUS_2[31:0]),
                        .Q(s_LOGISIM_BUS_25[31:0]),
                        .Reset(s_LOGISIM_NET_0),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_15 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_34),
                        .D(s_LOGISIM_BUS_2[31:0]),
                        .Q(s_LOGISIM_BUS_17[31:0]),
                        .Reset(s_LOGISIM_NET_0),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_16 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_24),
                        .D(s_LOGISIM_BUS_35[31:0]),
                        .Q(s_LOGISIM_BUS_11[31:0]),
                        .Reset(s_LOGISIM_NET_0),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));



endmodule
