/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : State_machine                                                **
 **                                                                          **
 ******************************************************************************/

module State_machine( CLK,
                      COND_MATCHED,
                      CPU_EN,
                      INSTRUCTION,
                      LOGISIM_CLOCK_TREE_0,
                      STATE_CLR,
                      STATE);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  CLK;
   input  COND_MATCHED;
   input  CPU_EN;
   input[31:0]  INSTRUCTION;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  STATE_CLR;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[3:0] STATE;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_11;
   wire[31:0] s_LOGISIM_BUS_59;
   wire[3:0] s_LOGISIM_BUS_65;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_28;
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
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_44;
   wire s_LOGISIM_NET_45;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_47;
   wire s_LOGISIM_NET_49;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_50;
   wire s_LOGISIM_NET_51;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_53;
   wire s_LOGISIM_NET_54;
   wire s_LOGISIM_NET_55;
   wire s_LOGISIM_NET_56;
   wire s_LOGISIM_NET_57;
   wire s_LOGISIM_NET_58;
   wire s_LOGISIM_NET_60;
   wire s_LOGISIM_NET_61;
   wire s_LOGISIM_NET_62;
   wire s_LOGISIM_NET_63;
   wire s_LOGISIM_NET_64;
   wire s_LOGISIM_NET_67;
   wire s_LOGISIM_NET_68;
   wire s_LOGISIM_NET_69;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_70;
   wire s_LOGISIM_NET_71;
   wire s_LOGISIM_NET_72;
   wire s_LOGISIM_NET_73;
   wire s_LOGISIM_NET_74;
   wire s_LOGISIM_NET_75;
   wire s_LOGISIM_NET_76;
   wire s_LOGISIM_NET_77;
   wire s_LOGISIM_NET_78;
   wire s_LOGISIM_NET_79;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_81;
   wire s_LOGISIM_NET_82;
   wire s_LOGISIM_NET_83;
   wire s_LOGISIM_NET_84;
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
   wire s_LOGISIM_NET_97;
   wire s_LOGISIM_NET_98;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_13                   = COND_MATCHED;
   assign s_LOGISIM_NET_43                   = CPU_EN;
   assign s_LOGISIM_NET_25                   = STATE_CLR;
   assign s_LOGISIM_NET_69                   = CLK;
   assign s_LOGISIM_BUS_59[31:0]             = INSTRUCTION;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign STATE                              = s_LOGISIM_BUS_11[3:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_81 = 1'd1;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_13),
              .Input_2(s_LOGISIM_NET_36),
              .Input_3(s_LOGISIM_NET_45),
              .Input_4(s_LOGISIM_NET_95),
              .Input_5(s_LOGISIM_BUS_11[0]),
              .Input_6(s_LOGISIM_BUS_59[24]),
              .Input_7(s_LOGISIM_NET_46),
              .Result(s_LOGISIM_NET_76));

   NOT_GATE      GATE_2 (.Input_1(s_LOGISIM_BUS_11[2]),
                         .Result(s_LOGISIM_NET_45));

   NOT_GATE      GATE_3 (.Input_1(s_LOGISIM_BUS_11[2]),
                         .Result(s_LOGISIM_NET_77));

   NOT_GATE      GATE_4 (.Input_1(s_LOGISIM_BUS_11[2]),
                         .Result(s_LOGISIM_NET_20));

   NOT_GATE      GATE_5 (.Input_1(s_LOGISIM_BUS_11[1]),
                         .Result(s_LOGISIM_NET_83));

   NOT_GATE      GATE_6 (.Input_1(s_LOGISIM_BUS_11[0]),
                         .Result(s_LOGISIM_NET_18));

   NOT_GATE      GATE_7 (.Input_1(s_LOGISIM_BUS_11[3]),
                         .Result(s_LOGISIM_NET_91));

   AND_GATE_9_INPUTS #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_NET_13),
              .Input_2(s_LOGISIM_NET_23),
              .Input_3(s_LOGISIM_NET_37),
              .Input_4(s_LOGISIM_NET_68),
              .Input_5(s_LOGISIM_BUS_11[0]),
              .Input_6(s_LOGISIM_BUS_59[26]),
              .Input_7(s_LOGISIM_BUS_59[25]),
              .Input_8(s_LOGISIM_NET_55),
              .Input_9(s_LOGISIM_BUS_59[22]),
              .Result(s_LOGISIM_NET_50));

   NOT_GATE      GATE_9 (.Input_1(s_LOGISIM_BUS_59[25]),
                         .Result(s_LOGISIM_NET_82));

   OR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_10 (.Input_1(s_LOGISIM_NET_85),
               .Input_2(s_LOGISIM_NET_9),
               .Input_3(s_LOGISIM_NET_34),
               .Result(s_LOGISIM_BUS_65[2]));

   NOT_GATE      GATE_11 (.Input_1(s_LOGISIM_BUS_59[26]),
                          .Result(s_LOGISIM_NET_70));

   NOT_GATE      GATE_12 (.Input_1(s_LOGISIM_BUS_11[3]),
                          .Result(s_LOGISIM_NET_90));

   NOT_GATE      GATE_13 (.Input_1(s_LOGISIM_BUS_11[3]),
                          .Result(s_LOGISIM_NET_53));

   NOT_GATE      GATE_14 (.Input_1(s_LOGISIM_BUS_11[3]),
                          .Result(s_LOGISIM_NET_92));

   NOT_GATE      GATE_15 (.Input_1(s_LOGISIM_BUS_11[3]),
                          .Result(s_LOGISIM_NET_32));

   NOT_GATE      GATE_16 (.Input_1(s_LOGISIM_BUS_59[23]),
                          .Result(s_LOGISIM_NET_86));

   NOT_GATE      GATE_17 (.Input_1(s_LOGISIM_BUS_11[0]),
                          .Result(s_LOGISIM_NET_27));

   AND_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_18 (.Input_1(s_LOGISIM_NET_13),
               .Input_2(s_LOGISIM_NET_32),
               .Input_3(s_LOGISIM_NET_20),
               .Input_4(s_LOGISIM_NET_83),
               .Input_5(s_LOGISIM_BUS_11[0]),
               .Input_6(s_LOGISIM_NET_70),
               .Result(s_LOGISIM_NET_96));

   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_19 (.Input_1(s_LOGISIM_NET_13),
               .Input_2(s_LOGISIM_NET_63),
               .Input_3(s_LOGISIM_NET_87),
               .Input_4(s_LOGISIM_NET_30),
               .Input_5(s_LOGISIM_BUS_11[0]),
               .Input_6(s_LOGISIM_NET_82),
               .Input_7(s_LOGISIM_NET_88),
               .Result(s_LOGISIM_NET_16));

   NOT_GATE      GATE_20 (.Input_1(s_LOGISIM_BUS_59[24]),
                          .Result(s_LOGISIM_NET_4));

   NOT_GATE      GATE_21 (.Input_1(s_LOGISIM_BUS_11[2]),
                          .Result(s_LOGISIM_NET_41));

   AND_GATE_9_INPUTS #(.BubblesMask(0))
      GATE_22 (.Input_1(s_LOGISIM_NET_13),
               .Input_2(s_LOGISIM_NET_56),
               .Input_3(s_LOGISIM_NET_7),
               .Input_4(s_LOGISIM_NET_24),
               .Input_5(s_LOGISIM_BUS_11[0]),
               .Input_6(s_LOGISIM_BUS_59[26]),
               .Input_7(s_LOGISIM_BUS_59[25]),
               .Input_8(s_LOGISIM_NET_39),
               .Input_9(s_LOGISIM_NET_51),
               .Result(s_LOGISIM_NET_64));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_23 (.Input_1(s_LOGISIM_BUS_11[3]),
               .Input_2(s_LOGISIM_NET_98),
               .Input_3(s_LOGISIM_BUS_11[1]),
               .Input_4(s_LOGISIM_NET_78),
               .Result(s_LOGISIM_NET_14));

   NOT_GATE      GATE_24 (.Input_1(s_LOGISIM_BUS_11[1]),
                          .Result(s_LOGISIM_NET_79));

   NOT_GATE      GATE_25 (.Input_1(s_LOGISIM_BUS_11[1]),
                          .Result(s_LOGISIM_NET_5));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_26 (.Input_1(s_LOGISIM_NET_13),
               .Input_2(s_LOGISIM_NET_91),
               .Input_3(s_LOGISIM_BUS_11[2]),
               .Input_4(s_LOGISIM_NET_27),
               .Result(s_LOGISIM_NET_34));

   NOT_GATE      GATE_27 (.Input_1(s_LOGISIM_BUS_11[3]),
                          .Result(s_LOGISIM_NET_8));

   NOT_GATE      GATE_28 (.Input_1(s_LOGISIM_BUS_11[1]),
                          .Result(s_LOGISIM_NET_0));

   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_29 (.Input_1(s_LOGISIM_NET_13),
               .Input_2(s_LOGISIM_NET_92),
               .Input_3(s_LOGISIM_NET_10),
               .Input_4(s_LOGISIM_NET_79),
               .Input_5(s_LOGISIM_BUS_11[0]),
               .Input_6(s_LOGISIM_NET_49),
               .Input_7(s_LOGISIM_NET_62),
               .Result(s_LOGISIM_NET_60));

   NOT_GATE      GATE_30 (.Input_1(s_LOGISIM_BUS_59[23]),
                          .Result(s_LOGISIM_NET_55));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_31 (.Input_1(s_LOGISIM_NET_13),
               .Input_2(s_LOGISIM_NET_94),
               .Input_3(s_LOGISIM_BUS_11[2]),
               .Input_4(s_LOGISIM_NET_54),
               .Result(s_LOGISIM_NET_73));

   AND_GATE_10_INPUTS #(.BubblesMask(0))
      GATE_32 (.Input_1(s_LOGISIM_NET_13),
               .Input_10(s_LOGISIM_BUS_59[22]),
               .Input_2(s_LOGISIM_NET_90),
               .Input_3(s_LOGISIM_NET_57),
               .Input_4(s_LOGISIM_NET_5),
               .Input_5(s_LOGISIM_BUS_11[0]),
               .Input_6(s_LOGISIM_BUS_59[26]),
               .Input_7(s_LOGISIM_BUS_59[25]),
               .Input_8(s_LOGISIM_NET_71),
               .Input_9(s_LOGISIM_NET_86),
               .Result(s_LOGISIM_NET_74));

   NOT_GATE      GATE_33 (.Input_1(s_LOGISIM_BUS_11[1]),
                          .Result(s_LOGISIM_NET_47));

   OR_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_34 (.Input_1(s_LOGISIM_NET_96),
               .Input_2(s_LOGISIM_NET_16),
               .Input_3(s_LOGISIM_NET_60),
               .Input_4(s_LOGISIM_NET_76),
               .Input_5(s_LOGISIM_NET_14),
               .Result(s_LOGISIM_BUS_65[3]));

   NOT_GATE      GATE_35 (.Input_1(s_LOGISIM_BUS_59[24]),
                          .Result(s_LOGISIM_NET_39));

   NOT_GATE      GATE_36 (.Input_1(s_LOGISIM_BUS_11[3]),
                          .Result(s_LOGISIM_NET_36));

   NOT_GATE      GATE_37 (.Input_1(s_LOGISIM_BUS_59[22]),
                          .Result(s_LOGISIM_NET_62));

   NOT_GATE      GATE_38 (.Input_1(s_LOGISIM_BUS_11[1]),
                          .Result(s_LOGISIM_NET_30));

   AND_GATE_9_INPUTS #(.BubblesMask(0))
      GATE_39 (.Input_1(s_LOGISIM_NET_13),
               .Input_2(s_LOGISIM_NET_44),
               .Input_3(s_LOGISIM_NET_31),
               .Input_4(s_LOGISIM_NET_0),
               .Input_5(s_LOGISIM_BUS_11[0]),
               .Input_6(s_LOGISIM_BUS_59[26]),
               .Input_7(s_LOGISIM_BUS_59[25]),
               .Input_8(s_LOGISIM_NET_19),
               .Input_9(s_LOGISIM_BUS_59[22]),
               .Result(s_LOGISIM_NET_97));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_40 (.Input_1(s_LOGISIM_NET_43),
               .Input_2(s_LOGISIM_NET_33),
               .Input_3(s_LOGISIM_NET_41),
               .Input_4(s_LOGISIM_NET_47),
               .Input_5(s_LOGISIM_NET_72),
               .Result(s_LOGISIM_NET_17));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_41 (.Input_1(s_LOGISIM_NET_13),
               .Input_2(s_LOGISIM_NET_53),
               .Input_3(s_LOGISIM_BUS_11[1]),
               .Input_4(s_LOGISIM_NET_61),
               .Result(s_LOGISIM_NET_35));

   NOT_GATE      GATE_42 (.Input_1(s_LOGISIM_BUS_59[23]),
                          .Result(s_LOGISIM_NET_51));

   NOT_GATE      GATE_43 (.Input_1(s_LOGISIM_BUS_11[1]),
                          .Result(s_LOGISIM_NET_26));

   AND_GATE_10_INPUTS #(.BubblesMask(0))
      GATE_44 (.Input_1(s_LOGISIM_NET_13),
               .Input_10(s_LOGISIM_NET_89),
               .Input_2(s_LOGISIM_NET_75),
               .Input_3(s_LOGISIM_NET_42),
               .Input_4(s_LOGISIM_NET_52),
               .Input_5(s_LOGISIM_BUS_11[0]),
               .Input_6(s_LOGISIM_BUS_59[26]),
               .Input_7(s_LOGISIM_BUS_59[25]),
               .Input_8(s_LOGISIM_BUS_59[24]),
               .Input_9(s_LOGISIM_NET_67),
               .Result(s_LOGISIM_NET_9));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_45 (.Input_1(s_LOGISIM_BUS_11[3]),
               .Input_2(s_LOGISIM_NET_77),
               .Input_3(s_LOGISIM_BUS_11[1]),
               .Input_4(s_LOGISIM_NET_18),
               .Result(s_LOGISIM_NET_28));

   OR_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_46 (.Input_1(s_LOGISIM_NET_74),
               .Input_2(s_LOGISIM_NET_35),
               .Input_3(s_LOGISIM_NET_73),
               .Input_4(s_LOGISIM_NET_17),
               .Result(s_LOGISIM_BUS_65[0]));

   NOT_GATE      GATE_47 (.Input_1(s_LOGISIM_BUS_11[3]),
                          .Result(s_LOGISIM_NET_94));

   NOT_GATE      GATE_48 (.Input_1(s_LOGISIM_BUS_11[2]),
                          .Result(s_LOGISIM_NET_42));

   NOT_GATE      GATE_49 (.Input_1(s_LOGISIM_BUS_11[1]),
                          .Result(s_LOGISIM_NET_68));

   NOT_GATE      GATE_50 (.Input_1(s_LOGISIM_BUS_59[25]),
                          .Result(s_LOGISIM_NET_49));

   NOT_GATE      GATE_51 (.Input_1(s_LOGISIM_BUS_11[0]),
                          .Result(s_LOGISIM_NET_61));

   NOT_GATE      GATE_52 (.Input_1(s_LOGISIM_BUS_59[24]),
                          .Result(s_LOGISIM_NET_71));

   NOT_GATE      GATE_53 (.Input_1(s_LOGISIM_BUS_11[3]),
                          .Result(s_LOGISIM_NET_84));

   NOT_GATE      GATE_54 (.Input_1(s_LOGISIM_BUS_59[23]),
                          .Result(s_LOGISIM_NET_67));

   NOT_GATE      GATE_55 (.Input_1(s_LOGISIM_BUS_11[3]),
                          .Result(s_LOGISIM_NET_75));

   NOT_GATE      GATE_56 (.Input_1(s_LOGISIM_BUS_11[2]),
                          .Result(s_LOGISIM_NET_57));

   NOT_GATE      GATE_57 (.Input_1(s_LOGISIM_BUS_11[2]),
                          .Result(s_LOGISIM_NET_93));

   OR_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_58 (.Input_1(s_LOGISIM_NET_28),
               .Input_2(s_LOGISIM_NET_64),
               .Input_3(s_LOGISIM_NET_97),
               .Input_4(s_LOGISIM_NET_50),
               .Input_5(s_LOGISIM_NET_58),
               .Result(s_LOGISIM_BUS_65[1]));

   NOT_GATE      GATE_59 (.Input_1(s_LOGISIM_BUS_11[0]),
                          .Result(s_LOGISIM_NET_72));

   NOT_GATE      GATE_60 (.Input_1(s_LOGISIM_BUS_11[0]),
                          .Result(s_LOGISIM_NET_54));

   NOT_GATE      GATE_61 (.Input_1(s_LOGISIM_BUS_11[3]),
                          .Result(s_LOGISIM_NET_33));

   NOT_GATE      GATE_62 (.Input_1(s_LOGISIM_BUS_59[24]),
                          .Result(s_LOGISIM_NET_19));

   NOT_GATE      GATE_63 (.Input_1(s_LOGISIM_BUS_11[2]),
                          .Result(s_LOGISIM_NET_37));

   NOT_GATE      GATE_64 (.Input_1(s_LOGISIM_BUS_59[23]),
                          .Result(s_LOGISIM_NET_46));

   NOT_GATE      GATE_65 (.Input_1(s_LOGISIM_BUS_11[1]),
                          .Result(s_LOGISIM_NET_95));

   NOT_GATE      GATE_66 (.Input_1(s_LOGISIM_BUS_11[0]),
                          .Result(s_LOGISIM_NET_38));

   NOT_GATE      GATE_67 (.Input_1(s_LOGISIM_BUS_11[2]),
                          .Result(s_LOGISIM_NET_31));

   NOT_GATE      GATE_68 (.Input_1(s_LOGISIM_BUS_59[22]),
                          .Result(s_LOGISIM_NET_89));

   NOT_GATE      GATE_69 (.Input_1(s_LOGISIM_BUS_11[0]),
                          .Result(s_LOGISIM_NET_78));

   NOT_GATE      GATE_70 (.Input_1(s_LOGISIM_BUS_11[2]),
                          .Result(s_LOGISIM_NET_87));

   NOT_GATE      GATE_71 (.Input_1(s_LOGISIM_BUS_59[24]),
                          .Result(s_LOGISIM_NET_88));

   NOT_GATE      GATE_72 (.Input_1(s_LOGISIM_BUS_11[3]),
                          .Result(s_LOGISIM_NET_44));

   NOT_GATE      GATE_73 (.Input_1(s_LOGISIM_BUS_11[1]),
                          .Result(s_LOGISIM_NET_52));

   NOT_GATE      GATE_74 (.Input_1(s_LOGISIM_BUS_11[2]),
                          .Result(s_LOGISIM_NET_10));

   NOT_GATE      GATE_75 (.Input_1(s_LOGISIM_BUS_11[2]),
                          .Result(s_LOGISIM_NET_7));

   NOT_GATE      GATE_76 (.Input_1(s_LOGISIM_BUS_11[1]),
                          .Result(s_LOGISIM_NET_24));

   AND_GATE_9_INPUTS #(.BubblesMask(0))
      GATE_77 (.Input_1(s_LOGISIM_NET_13),
               .Input_2(s_LOGISIM_NET_8),
               .Input_3(s_LOGISIM_NET_93),
               .Input_4(s_LOGISIM_NET_26),
               .Input_5(s_LOGISIM_BUS_11[0]),
               .Input_6(s_LOGISIM_BUS_59[26]),
               .Input_7(s_LOGISIM_BUS_59[25]),
               .Input_8(s_LOGISIM_NET_4),
               .Input_9(s_LOGISIM_BUS_59[23]),
               .Result(s_LOGISIM_NET_85));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_78 (.Input_1(s_LOGISIM_NET_13),
               .Input_2(s_LOGISIM_NET_84),
               .Input_3(s_LOGISIM_BUS_11[1]),
               .Input_4(s_LOGISIM_NET_38),
               .Result(s_LOGISIM_NET_58));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(4))
      REGISTER_FILE_1 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_81),
                       .D(s_LOGISIM_BUS_65[3:0]),
                       .Q(s_LOGISIM_BUS_11[3:0]),
                       .Reset(s_LOGISIM_NET_25),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   NOT_GATE      GATE_79 (.Input_1(s_LOGISIM_BUS_11[3]),
                          .Result(s_LOGISIM_NET_56));

   NOT_GATE      GATE_80 (.Input_1(s_LOGISIM_BUS_11[3]),
                          .Result(s_LOGISIM_NET_23));

   NOT_GATE      GATE_81 (.Input_1(s_LOGISIM_BUS_11[2]),
                          .Result(s_LOGISIM_NET_98));

   NOT_GATE      GATE_82 (.Input_1(s_LOGISIM_BUS_11[3]),
                          .Result(s_LOGISIM_NET_63));



endmodule
