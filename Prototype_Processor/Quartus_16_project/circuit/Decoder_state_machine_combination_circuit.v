/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Decoder_state_machine_combination_circuit                    **
 **                                                                          **
 ******************************************************************************/

module Decoder_state_machine_combination_circuit( CLEAR_STATE,
                                                  CLK,
                                                  CONDITION_MATCHED,
                                                  CPU_EN,
                                                  INST,
                                                  LOGISIM_CLOCK_TREE_0,
                                                  PC_REG,
                                                  PC_SRC,
                                                  RAM_INT_CTRL,
                                                  ROM_EN,
                                                  STATE);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  CLEAR_STATE;
   input  CLK;
   input  CONDITION_MATCHED;
   input  CPU_EN;
   input[31:0]  INST;
   input[4:0]  LOGISIM_CLOCK_TREE_0;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output PC_REG;
   output PC_SRC;
   output[3:0] RAM_INT_CTRL;
   output ROM_EN;
   output[3:0] STATE;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_32;
   wire[3:0] s_LOGISIM_BUS_39;
   wire[3:0] s_LOGISIM_BUS_64;
   wire[31:0] s_LOGISIM_BUS_97;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_100;
   wire s_LOGISIM_NET_101;
   wire s_LOGISIM_NET_102;
   wire s_LOGISIM_NET_104;
   wire s_LOGISIM_NET_105;
   wire s_LOGISIM_NET_106;
   wire s_LOGISIM_NET_107;
   wire s_LOGISIM_NET_108;
   wire s_LOGISIM_NET_110;
   wire s_LOGISIM_NET_111;
   wire s_LOGISIM_NET_112;
   wire s_LOGISIM_NET_113;
   wire s_LOGISIM_NET_114;
   wire s_LOGISIM_NET_115;
   wire s_LOGISIM_NET_116;
   wire s_LOGISIM_NET_118;
   wire s_LOGISIM_NET_119;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_120;
   wire s_LOGISIM_NET_121;
   wire s_LOGISIM_NET_122;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_30;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_38;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_44;
   wire s_LOGISIM_NET_45;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_47;
   wire s_LOGISIM_NET_48;
   wire s_LOGISIM_NET_49;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_50;
   wire s_LOGISIM_NET_51;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_53;
   wire s_LOGISIM_NET_54;
   wire s_LOGISIM_NET_55;
   wire s_LOGISIM_NET_56;
   wire s_LOGISIM_NET_58;
   wire s_LOGISIM_NET_59;
   wire s_LOGISIM_NET_60;
   wire s_LOGISIM_NET_61;
   wire s_LOGISIM_NET_62;
   wire s_LOGISIM_NET_65;
   wire s_LOGISIM_NET_66;
   wire s_LOGISIM_NET_67;
   wire s_LOGISIM_NET_68;
   wire s_LOGISIM_NET_69;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_70;
   wire s_LOGISIM_NET_71;
   wire s_LOGISIM_NET_74;
   wire s_LOGISIM_NET_75;
   wire s_LOGISIM_NET_76;
   wire s_LOGISIM_NET_77;
   wire s_LOGISIM_NET_78;
   wire s_LOGISIM_NET_79;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_80;
   wire s_LOGISIM_NET_81;
   wire s_LOGISIM_NET_82;
   wire s_LOGISIM_NET_83;
   wire s_LOGISIM_NET_85;
   wire s_LOGISIM_NET_86;
   wire s_LOGISIM_NET_87;
   wire s_LOGISIM_NET_88;
   wire s_LOGISIM_NET_89;
   wire s_LOGISIM_NET_9;
   wire s_LOGISIM_NET_90;
   wire s_LOGISIM_NET_91;
   wire s_LOGISIM_NET_92;
   wire s_LOGISIM_NET_93;
   wire s_LOGISIM_NET_94;
   wire s_LOGISIM_NET_95;
   wire s_LOGISIM_NET_96;
   wire s_LOGISIM_NET_98;
   wire s_LOGISIM_NET_99;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_29                   = CLK;
   assign s_LOGISIM_NET_13                   = CPU_EN;
   assign s_LOGISIM_BUS_97[31:0]             = INST;
   assign s_LOGISIM_NET_79                   = CLEAR_STATE;
   assign s_LOGISIM_NET_19                   = CONDITION_MATCHED;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign ROM_EN                             = s_LOGISIM_NET_119;
   assign PC_SRC                             = s_LOGISIM_NET_118;
   assign RAM_INT_CTRL                       = s_LOGISIM_BUS_64[3:0];
   assign PC_REG                             = s_LOGISIM_NET_122;
   assign STATE                              = s_LOGISIM_BUS_32[3:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_110 = 1'd1;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_19),
              .Input_2(s_LOGISIM_NET_116),
              .Input_3(s_LOGISIM_BUS_32[2]),
              .Input_4(s_LOGISIM_NET_76),
              .Result(s_LOGISIM_NET_82));

   NOT_GATE      GATE_2 (.Input_1(s_LOGISIM_BUS_97[22]),
                         .Result(s_LOGISIM_NET_31));

   NOT_GATE      GATE_3 (.Input_1(s_LOGISIM_BUS_32[3]),
                         .Result(s_LOGISIM_NET_102));

   NOT_GATE      GATE_4 (.Input_1(s_LOGISIM_BUS_97[24]),
                         .Result(s_LOGISIM_NET_5));

   AND_GATE_9_INPUTS #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_19),
              .Input_2(s_LOGISIM_NET_67),
              .Input_3(s_LOGISIM_NET_28),
              .Input_4(s_LOGISIM_NET_41),
              .Input_5(s_LOGISIM_BUS_32[0]),
              .Input_6(s_LOGISIM_BUS_97[26]),
              .Input_7(s_LOGISIM_BUS_97[25]),
              .Input_8(s_LOGISIM_NET_5),
              .Input_9(s_LOGISIM_BUS_97[23]),
              .Result(s_LOGISIM_NET_9));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_6 (.Input_1(s_LOGISIM_NET_19),
              .Input_2(s_LOGISIM_NET_120),
              .Input_3(s_LOGISIM_BUS_32[2]),
              .Input_4(s_LOGISIM_NET_15),
              .Result(s_LOGISIM_NET_107));

   NOT_GATE      GATE_7 (.Input_1(s_LOGISIM_BUS_32[1]),
                         .Result(s_LOGISIM_NET_41));

   NOT_GATE      GATE_8 (.Input_1(s_LOGISIM_BUS_97[23]),
                         .Result(s_LOGISIM_NET_114));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_9 (.Input_1(s_LOGISIM_NET_23),
              .Input_2(s_LOGISIM_BUS_32[2]),
              .Input_3(s_LOGISIM_NET_115),
              .Input_4(s_LOGISIM_NET_38),
              .Result(s_LOGISIM_BUS_64[1]));

   NOT_GATE      GATE_10 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_23));

   NOT_GATE      GATE_11 (.Input_1(s_LOGISIM_BUS_97[24]),
                          .Result(s_LOGISIM_NET_7));

   NOT_GATE      GATE_12 (.Input_1(s_LOGISIM_BUS_32[2]),
                          .Result(s_LOGISIM_NET_27));

   NOT_GATE      GATE_13 (.Input_1(s_LOGISIM_BUS_32[2]),
                          .Result(s_LOGISIM_NET_100));

   NOT_GATE      GATE_14 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_113));

   OR_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_15 (.Input_1(s_LOGISIM_NET_10),
               .Input_2(s_LOGISIM_NET_44),
               .Input_3(s_LOGISIM_NET_107),
               .Input_4(s_LOGISIM_NET_69),
               .Result(s_LOGISIM_BUS_39[0]));

   NOT_GATE      GATE_16 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_49));

   OR_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_17 (.Input_1(s_LOGISIM_NET_17),
               .Input_2(s_LOGISIM_NET_62),
               .Input_3(s_LOGISIM_NET_99),
               .Input_4(s_LOGISIM_NET_105),
               .Input_5(s_LOGISIM_NET_71),
               .Result(s_LOGISIM_BUS_39[3]));

   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_18 (.Input_1(s_LOGISIM_NET_19),
               .Input_2(s_LOGISIM_NET_102),
               .Input_3(s_LOGISIM_NET_47),
               .Input_4(s_LOGISIM_NET_80),
               .Input_5(s_LOGISIM_BUS_32[0]),
               .Input_6(s_LOGISIM_NET_34),
               .Input_7(s_LOGISIM_NET_58),
               .Result(s_LOGISIM_NET_62));

   NOT_GATE      GATE_19 (.Input_1(s_LOGISIM_BUS_32[1]),
                          .Result(s_LOGISIM_NET_104));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_20 (.Input_1(s_LOGISIM_NET_106),
               .Input_2(s_LOGISIM_NET_43),
               .Input_3(s_LOGISIM_BUS_32[1]),
               .Input_4(s_LOGISIM_BUS_32[0]),
               .Result(s_LOGISIM_NET_118));

   NOT_GATE      GATE_21 (.Input_1(s_LOGISIM_BUS_32[1]),
                          .Result(s_LOGISIM_NET_59));

   NOT_GATE      GATE_22 (.Input_1(s_LOGISIM_BUS_32[2]),
                          .Result(s_LOGISIM_NET_42));

   NOT_GATE      GATE_23 (.Input_1(s_LOGISIM_BUS_32[1]),
                          .Result(s_LOGISIM_NET_80));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(4))
      REGISTER_FILE_1 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_110),
                       .D(s_LOGISIM_BUS_39[3:0]),
                       .Q(s_LOGISIM_BUS_32[3:0]),
                       .Reset(s_LOGISIM_NET_79),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   NOT_GATE      GATE_24 (.Input_1(s_LOGISIM_BUS_32[2]),
                          .Result(s_LOGISIM_NET_43));

   NOT_GATE      GATE_25 (.Input_1(s_LOGISIM_BUS_97[25]),
                          .Result(s_LOGISIM_NET_92));

   NOT_GATE      GATE_26 (.Input_1(s_LOGISIM_BUS_32[1]),
                          .Result(s_LOGISIM_NET_115));

   NOT_GATE      GATE_27 (.Input_1(s_LOGISIM_BUS_32[2]),
                          .Result(s_LOGISIM_NET_88));

   NOT_GATE      GATE_28 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_61));

   NOT_GATE      GATE_29 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_30));

   AND_GATE_9_INPUTS #(.BubblesMask(0))
      GATE_30 (.Input_1(s_LOGISIM_NET_19),
               .Input_2(s_LOGISIM_NET_86),
               .Input_3(s_LOGISIM_NET_18),
               .Input_4(s_LOGISIM_NET_65),
               .Input_5(s_LOGISIM_BUS_32[0]),
               .Input_6(s_LOGISIM_BUS_97[26]),
               .Input_7(s_LOGISIM_BUS_97[25]),
               .Input_8(s_LOGISIM_NET_45),
               .Input_9(s_LOGISIM_BUS_97[22]),
               .Result(s_LOGISIM_NET_24));

   NOT_GATE      GATE_31 (.Input_1(s_LOGISIM_BUS_32[1]),
                          .Result(s_LOGISIM_NET_91));

   NOT_GATE      GATE_32 (.Input_1(s_LOGISIM_BUS_32[1]),
                          .Result(s_LOGISIM_NET_14));

   NOT_GATE      GATE_33 (.Input_1(s_LOGISIM_BUS_32[1]),
                          .Result(s_LOGISIM_NET_94));

   NOT_GATE      GATE_34 (.Input_1(s_LOGISIM_BUS_97[24]),
                          .Result(s_LOGISIM_NET_45));

   NOT_GATE      GATE_35 (.Input_1(s_LOGISIM_BUS_97[23]),
                          .Result(s_LOGISIM_NET_89));

   NOT_GATE      GATE_36 (.Input_1(s_LOGISIM_BUS_32[2]),
                          .Result(s_LOGISIM_NET_74));

   NOT_GATE      GATE_37 (.Input_1(s_LOGISIM_BUS_32[0]),
                          .Result(s_LOGISIM_NET_76));

   NOT_GATE      GATE_38 (.Input_1(s_LOGISIM_BUS_32[0]),
                          .Result(s_LOGISIM_NET_40));

   NOT_GATE      GATE_39 (.Input_1(s_LOGISIM_BUS_32[0]),
                          .Result(s_LOGISIM_NET_54));

   OR_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_40 (.Input_1(s_LOGISIM_NET_78),
               .Input_2(s_LOGISIM_NET_51),
               .Input_3(s_LOGISIM_NET_24),
               .Input_4(s_LOGISIM_NET_50),
               .Input_5(s_LOGISIM_NET_98),
               .Result(s_LOGISIM_BUS_39[1]));

   NOT_GATE      GATE_41 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_52));

   NOT_GATE      GATE_42 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_86));

   NOT_GATE      GATE_43 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_120));

   NOT_GATE      GATE_44 (.Input_1(s_LOGISIM_BUS_32[2]),
                          .Result(s_LOGISIM_NET_33));

   NOT_GATE      GATE_45 (.Input_1(s_LOGISIM_BUS_32[2]),
                          .Result(s_LOGISIM_NET_87));

   AND_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_46 (.Input_1(s_LOGISIM_NET_19),
               .Input_2(s_LOGISIM_NET_46),
               .Input_3(s_LOGISIM_NET_74),
               .Input_4(s_LOGISIM_NET_53),
               .Input_5(s_LOGISIM_BUS_32[0]),
               .Input_6(s_LOGISIM_NET_35),
               .Result(s_LOGISIM_NET_17));

   NOT_GATE      GATE_47 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_116));

   NOT_GATE      GATE_48 (.Input_1(s_LOGISIM_BUS_32[0]),
                          .Result(s_LOGISIM_NET_60));

   AND_GATE_10_INPUTS #(.BubblesMask(0))
      GATE_49 (.Input_1(s_LOGISIM_NET_19),
               .Input_10(s_LOGISIM_BUS_97[22]),
               .Input_2(s_LOGISIM_NET_61),
               .Input_3(s_LOGISIM_NET_8),
               .Input_4(s_LOGISIM_NET_26),
               .Input_5(s_LOGISIM_BUS_32[0]),
               .Input_6(s_LOGISIM_BUS_97[26]),
               .Input_7(s_LOGISIM_BUS_97[25]),
               .Input_8(s_LOGISIM_NET_7),
               .Input_9(s_LOGISIM_NET_114),
               .Result(s_LOGISIM_NET_10));

   NOT_GATE      GATE_50 (.Input_1(s_LOGISIM_BUS_97[22]),
                          .Result(s_LOGISIM_NET_56));

   NOT_GATE      GATE_51 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_95));

   NOT_GATE      GATE_52 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_101));

   NOT_GATE      GATE_53 (.Input_1(s_LOGISIM_BUS_32[1]),
                          .Result(s_LOGISIM_NET_66));

   AND_GATE_9_INPUTS #(.BubblesMask(0))
      GATE_54 (.Input_1(s_LOGISIM_NET_19),
               .Input_2(s_LOGISIM_NET_75),
               .Input_3(s_LOGISIM_NET_83),
               .Input_4(s_LOGISIM_NET_104),
               .Input_5(s_LOGISIM_BUS_32[0]),
               .Input_6(s_LOGISIM_BUS_97[26]),
               .Input_7(s_LOGISIM_BUS_97[25]),
               .Input_8(s_LOGISIM_NET_96),
               .Input_9(s_LOGISIM_BUS_97[22]),
               .Result(s_LOGISIM_NET_50));

   NOT_GATE      GATE_55 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_93));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_56 (.Input_1(s_LOGISIM_BUS_32[3]),
               .Input_2(s_LOGISIM_NET_108),
               .Input_3(s_LOGISIM_BUS_32[1]),
               .Input_4(s_LOGISIM_NET_40),
               .Result(s_LOGISIM_NET_78));

   NOT_GATE      GATE_57 (.Input_1(s_LOGISIM_BUS_97[26]),
                          .Result(s_LOGISIM_NET_35));

   NOT_GATE      GATE_58 (.Input_1(s_LOGISIM_BUS_32[0]),
                          .Result(s_LOGISIM_NET_48));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_59 (.Input_1(s_LOGISIM_NET_93),
               .Input_2(s_LOGISIM_BUS_32[2]),
               .Input_3(s_LOGISIM_NET_66),
               .Input_4(s_LOGISIM_BUS_32[0]),
               .Result(s_LOGISIM_BUS_64[0]));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_60 (.Input_1(s_LOGISIM_BUS_32[3]),
               .Input_2(s_LOGISIM_NET_42),
               .Input_3(s_LOGISIM_BUS_32[1]),
               .Input_4(s_LOGISIM_NET_60),
               .Result(s_LOGISIM_NET_71));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_61 (.Input_1(s_LOGISIM_NET_13),
               .Input_2(s_LOGISIM_NET_25),
               .Input_3(s_LOGISIM_NET_100),
               .Input_4(s_LOGISIM_NET_59),
               .Input_5(s_LOGISIM_NET_70),
               .Result(s_LOGISIM_NET_119));

   NOT_GATE      GATE_62 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_12));

   NOT_GATE      GATE_63 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_22));

   NOT_GATE      GATE_64 (.Input_1(s_LOGISIM_BUS_32[2]),
                          .Result(s_LOGISIM_NET_8));

   AND_GATE_10_INPUTS #(.BubblesMask(0))
      GATE_65 (.Input_1(s_LOGISIM_NET_19),
               .Input_10(s_LOGISIM_NET_56),
               .Input_2(s_LOGISIM_NET_52),
               .Input_3(s_LOGISIM_NET_88),
               .Input_4(s_LOGISIM_NET_94),
               .Input_5(s_LOGISIM_BUS_32[0]),
               .Input_6(s_LOGISIM_BUS_97[26]),
               .Input_7(s_LOGISIM_BUS_97[25]),
               .Input_8(s_LOGISIM_BUS_97[24]),
               .Input_9(s_LOGISIM_NET_36),
               .Result(s_LOGISIM_NET_68));

   NOT_GATE      GATE_66 (.Input_1(s_LOGISIM_BUS_32[0]),
                          .Result(s_LOGISIM_NET_15));

   NOT_GATE      GATE_67 (.Input_1(s_LOGISIM_BUS_32[1]),
                          .Result(s_LOGISIM_NET_121));

   NOT_GATE      GATE_68 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_46));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_69 (.Input_1(s_LOGISIM_NET_90),
               .Input_2(s_LOGISIM_BUS_32[2]),
               .Input_3(s_LOGISIM_NET_14),
               .Result(s_LOGISIM_BUS_64[2]));

   NOT_GATE      GATE_70 (.Input_1(s_LOGISIM_BUS_32[2]),
                          .Result(s_LOGISIM_NET_28));

   NOT_GATE      GATE_71 (.Input_1(s_LOGISIM_BUS_32[2]),
                          .Result(s_LOGISIM_NET_112));

   AND_GATE #(.BubblesMask(0))
      GATE_72 (.Input_1(s_LOGISIM_NET_101),
               .Input_2(s_LOGISIM_BUS_32[2]),
               .Result(s_LOGISIM_BUS_64[3]));

   NOT_GATE      GATE_73 (.Input_1(s_LOGISIM_BUS_32[1]),
                          .Result(s_LOGISIM_NET_26));

   NOT_GATE      GATE_74 (.Input_1(s_LOGISIM_BUS_32[0]),
                          .Result(s_LOGISIM_NET_70));

   NOT_GATE      GATE_75 (.Input_1(s_LOGISIM_BUS_32[1]),
                          .Result(s_LOGISIM_NET_53));

   AND_GATE_9_INPUTS #(.BubblesMask(0))
      GATE_76 (.Input_1(s_LOGISIM_NET_19),
               .Input_2(s_LOGISIM_NET_22),
               .Input_3(s_LOGISIM_NET_33),
               .Input_4(s_LOGISIM_NET_77),
               .Input_5(s_LOGISIM_BUS_32[0]),
               .Input_6(s_LOGISIM_BUS_97[26]),
               .Input_7(s_LOGISIM_BUS_97[25]),
               .Input_8(s_LOGISIM_NET_55),
               .Input_9(s_LOGISIM_NET_16),
               .Result(s_LOGISIM_NET_51));

   NOT_GATE      GATE_77 (.Input_1(s_LOGISIM_BUS_32[1]),
                          .Result(s_LOGISIM_NET_111));

   NOT_GATE      GATE_78 (.Input_1(s_LOGISIM_BUS_97[24]),
                          .Result(s_LOGISIM_NET_58));

   NOT_GATE      GATE_79 (.Input_1(s_LOGISIM_BUS_97[23]),
                          .Result(s_LOGISIM_NET_96));

   NOT_GATE      GATE_80 (.Input_1(s_LOGISIM_BUS_32[2]),
                          .Result(s_LOGISIM_NET_47));

   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_81 (.Input_1(s_LOGISIM_NET_19),
               .Input_2(s_LOGISIM_NET_12),
               .Input_3(s_LOGISIM_NET_27),
               .Input_4(s_LOGISIM_NET_111),
               .Input_5(s_LOGISIM_BUS_32[0]),
               .Input_6(s_LOGISIM_NET_92),
               .Input_7(s_LOGISIM_NET_31),
               .Result(s_LOGISIM_NET_99));

   NOT_GATE      GATE_82 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_81));

   NOT_GATE      GATE_83 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_106));

   NOT_GATE      GATE_84 (.Input_1(s_LOGISIM_BUS_32[2]),
                          .Result(s_LOGISIM_NET_108));

   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_85 (.Input_1(s_LOGISIM_NET_19),
               .Input_2(s_LOGISIM_NET_49),
               .Input_3(s_LOGISIM_NET_87),
               .Input_4(s_LOGISIM_NET_121),
               .Input_5(s_LOGISIM_BUS_32[0]),
               .Input_6(s_LOGISIM_BUS_97[24]),
               .Input_7(s_LOGISIM_NET_89),
               .Result(s_LOGISIM_NET_105));

   NOT_GATE      GATE_86 (.Input_1(s_LOGISIM_BUS_32[2]),
                          .Result(s_LOGISIM_NET_83));

   NOT_GATE      GATE_87 (.Input_1(s_LOGISIM_BUS_97[25]),
                          .Result(s_LOGISIM_NET_34));

   NOT_GATE      GATE_88 (.Input_1(s_LOGISIM_BUS_32[0]),
                          .Result(s_LOGISIM_NET_38));

   NOT_GATE      GATE_89 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_67));

   NOT_GATE      GATE_90 (.Input_1(s_LOGISIM_BUS_32[1]),
                          .Result(s_LOGISIM_NET_65));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_91 (.Input_1(s_LOGISIM_NET_19),
               .Input_2(s_LOGISIM_NET_95),
               .Input_3(s_LOGISIM_BUS_32[1]),
               .Input_4(s_LOGISIM_NET_37),
               .Result(s_LOGISIM_NET_44));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_92 (.Input_1(s_LOGISIM_NET_30),
               .Input_2(s_LOGISIM_NET_112),
               .Input_3(s_LOGISIM_BUS_32[0]),
               .Result(s_LOGISIM_NET_122));

   OR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_93 (.Input_1(s_LOGISIM_NET_9),
               .Input_2(s_LOGISIM_NET_68),
               .Input_3(s_LOGISIM_NET_82),
               .Result(s_LOGISIM_BUS_39[2]));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_94 (.Input_1(s_LOGISIM_NET_19),
               .Input_2(s_LOGISIM_NET_113),
               .Input_3(s_LOGISIM_BUS_32[1]),
               .Input_4(s_LOGISIM_NET_54),
               .Result(s_LOGISIM_NET_98));

   NOT_GATE      GATE_95 (.Input_1(s_LOGISIM_BUS_97[24]),
                          .Result(s_LOGISIM_NET_55));

   NOT_GATE      GATE_96 (.Input_1(s_LOGISIM_BUS_32[3]),
                          .Result(s_LOGISIM_NET_90));

   NOT_GATE      GATE_97 (.Input_1(s_LOGISIM_BUS_97[23]),
                          .Result(s_LOGISIM_NET_16));

   NOT_GATE      GATE_98 (.Input_1(s_LOGISIM_BUS_32[2]),
                          .Result(s_LOGISIM_NET_85));

   NOT_GATE      GATE_99 (.Input_1(s_LOGISIM_BUS_32[1]),
                          .Result(s_LOGISIM_NET_77));

   NOT_GATE      GATE_100 (.Input_1(s_LOGISIM_BUS_32[3]),
                           .Result(s_LOGISIM_NET_25));

   NOT_GATE      GATE_101 (.Input_1(s_LOGISIM_BUS_97[23]),
                           .Result(s_LOGISIM_NET_36));

   NOT_GATE      GATE_102 (.Input_1(s_LOGISIM_BUS_32[0]),
                           .Result(s_LOGISIM_NET_37));

   NOT_GATE      GATE_103 (.Input_1(s_LOGISIM_BUS_32[2]),
                           .Result(s_LOGISIM_NET_18));

   NOT_GATE      GATE_104 (.Input_1(s_LOGISIM_BUS_32[3]),
                           .Result(s_LOGISIM_NET_75));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_105 (.Input_1(s_LOGISIM_NET_13),
                .Input_2(s_LOGISIM_NET_81),
                .Input_3(s_LOGISIM_NET_85),
                .Input_4(s_LOGISIM_NET_91),
                .Input_5(s_LOGISIM_NET_48),
                .Result(s_LOGISIM_NET_69));



endmodule
