/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : COND_FLAG_CHK                                                **
 **                                                                          **
 ******************************************************************************/

module COND_FLAG_CHK( CONDITION_IN,
                      FLAG_IN,
                      LOGISIM_CLOCK_TREE_0,
                      CONDITION_MATCHED);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[3:0]  CONDITION_IN;
   input[3:0]  FLAG_IN;
   input[4:0]  LOGISIM_CLOCK_TREE_0;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output CONDITION_MATCHED;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_13;
   wire[3:0] s_LOGISIM_BUS_53;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_21;
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
   wire s_LOGISIM_NET_32;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_38;
   wire s_LOGISIM_NET_39;
   wire s_LOGISIM_NET_4;
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
   wire s_LOGISIM_NET_50;
   wire s_LOGISIM_NET_51;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_54;
   wire s_LOGISIM_NET_55;
   wire s_LOGISIM_NET_56;
   wire s_LOGISIM_NET_57;
   wire s_LOGISIM_NET_58;
   wire s_LOGISIM_NET_59;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_60;
   wire s_LOGISIM_NET_61;
   wire s_LOGISIM_NET_62;
   wire s_LOGISIM_NET_63;
   wire s_LOGISIM_NET_64;
   wire s_LOGISIM_NET_65;
   wire s_LOGISIM_NET_66;
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
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_13[3:0]              = CONDITION_IN;
   assign s_LOGISIM_BUS_53[3:0]              = FLAG_IN;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign CONDITION_MATCHED                  = s_LOGISIM_NET_24;

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   NOT_GATE      GATE_1 (.Input_1(s_LOGISIM_BUS_13[1]),
                         .Result(s_LOGISIM_NET_70));

   NOT_GATE      GATE_2 (.Input_1(s_LOGISIM_BUS_13[3]),
                         .Result(s_LOGISIM_NET_38));

   NOT_GATE      GATE_3 (.Input_1(s_LOGISIM_BUS_13[3]),
                         .Result(s_LOGISIM_NET_10));

   NOT_GATE      GATE_4 (.Input_1(s_LOGISIM_BUS_13[2]),
                         .Result(s_LOGISIM_NET_21));

   NOT_GATE      GATE_5 (.Input_1(s_LOGISIM_BUS_13[3]),
                         .Result(s_LOGISIM_NET_36));

   NOT_GATE      GATE_6 (.Input_1(s_LOGISIM_BUS_53[3]),
                         .Result(s_LOGISIM_NET_42));

   NOT_GATE      GATE_7 (.Input_1(s_LOGISIM_BUS_53[0]),
                         .Result(s_LOGISIM_NET_28));

   NOT_GATE      GATE_8 (.Input_1(s_LOGISIM_BUS_53[0]),
                         .Result(s_LOGISIM_NET_37));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_9 (.Input_1(s_LOGISIM_NET_36),
              .Input_2(s_LOGISIM_NET_21),
              .Input_3(s_LOGISIM_BUS_13[1]),
              .Input_4(s_LOGISIM_BUS_13[0]),
              .Input_5(s_LOGISIM_NET_64),
              .Result(s_LOGISIM_NET_26));

   NOT_GATE      GATE_10 (.Input_1(s_LOGISIM_BUS_13[2]),
                          .Result(s_LOGISIM_NET_57));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_11 (.Input_1(s_LOGISIM_NET_20),
               .Input_2(s_LOGISIM_NET_57),
               .Input_3(s_LOGISIM_NET_61),
               .Input_4(s_LOGISIM_BUS_13[0]),
               .Input_5(s_LOGISIM_NET_9),
               .Result(s_LOGISIM_NET_25));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_12 (.Input_1(s_LOGISIM_NET_38),
               .Input_2(s_LOGISIM_BUS_13[2]),
               .Input_3(s_LOGISIM_NET_4),
               .Input_4(s_LOGISIM_BUS_13[0]),
               .Input_5(s_LOGISIM_NET_42),
               .Result(s_LOGISIM_NET_35));

   NOT_GATE      GATE_13 (.Input_1(s_LOGISIM_BUS_13[1]),
                          .Result(s_LOGISIM_NET_75));

   NOT_GATE      GATE_14 (.Input_1(s_LOGISIM_BUS_53[2]),
                          .Result(s_LOGISIM_NET_46));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_15 (.Input_1(s_LOGISIM_NET_73),
               .Input_2(s_LOGISIM_BUS_13[2]),
               .Input_3(s_LOGISIM_BUS_13[1]),
               .Input_4(s_LOGISIM_BUS_13[0]),
               .Input_5(s_LOGISIM_NET_22),
               .Result(s_LOGISIM_NET_71));

   AND_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_16 (.Input_1(s_LOGISIM_BUS_13[3]),
               .Input_2(s_LOGISIM_BUS_13[2]),
               .Input_3(s_LOGISIM_NET_68),
               .Input_4(s_LOGISIM_BUS_13[0]),
               .Input_5(s_LOGISIM_BUS_53[3]),
               .Input_6(s_LOGISIM_NET_44),
               .Result(s_LOGISIM_NET_66));

   NOT_GATE      GATE_17 (.Input_1(s_LOGISIM_BUS_53[0]),
                          .Result(s_LOGISIM_NET_22));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_18 (.Input_1(s_LOGISIM_BUS_13[3]),
               .Input_2(s_LOGISIM_BUS_13[1]),
               .Input_3(s_LOGISIM_NET_74),
               .Input_4(s_LOGISIM_BUS_53[3]),
               .Input_5(s_LOGISIM_BUS_53[0]),
               .Result(s_LOGISIM_NET_31));

   OR_GATE_18_INPUTS #(.BubblesMask(0))
      GATE_19 (.Input_1(s_LOGISIM_NET_56),
               .Input_10(s_LOGISIM_NET_71),
               .Input_11(s_LOGISIM_NET_69),
               .Input_12(s_LOGISIM_NET_40),
               .Input_13(s_LOGISIM_NET_7),
               .Input_14(s_LOGISIM_NET_31),
               .Input_15(s_LOGISIM_NET_43),
               .Input_16(s_LOGISIM_NET_39),
               .Input_17(s_LOGISIM_NET_66),
               .Input_18(s_LOGISIM_NET_59),
               .Input_2(s_LOGISIM_NET_25),
               .Input_3(s_LOGISIM_NET_41),
               .Input_4(s_LOGISIM_NET_54),
               .Input_5(s_LOGISIM_NET_26),
               .Input_6(s_LOGISIM_NET_49),
               .Input_7(s_LOGISIM_NET_18),
               .Input_8(s_LOGISIM_NET_35),
               .Input_9(s_LOGISIM_NET_32),
               .Result(s_LOGISIM_NET_24));

   NOT_GATE      GATE_20 (.Input_1(s_LOGISIM_BUS_13[3]),
                          .Result(s_LOGISIM_NET_73));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_21 (.Input_1(s_LOGISIM_NET_33),
               .Input_2(s_LOGISIM_NET_60),
               .Input_3(s_LOGISIM_BUS_13[0]),
               .Input_4(s_LOGISIM_NET_46),
               .Input_5(s_LOGISIM_NET_23),
               .Result(s_LOGISIM_NET_41));

   NOT_GATE      GATE_22 (.Input_1(s_LOGISIM_BUS_53[3]),
                          .Result(s_LOGISIM_NET_48));

   NOT_GATE      GATE_23 (.Input_1(s_LOGISIM_BUS_53[2]),
                          .Result(s_LOGISIM_NET_11));

   NOT_GATE      GATE_24 (.Input_1(s_LOGISIM_BUS_13[0]),
                          .Result(s_LOGISIM_NET_27));

   NOT_GATE      GATE_25 (.Input_1(s_LOGISIM_BUS_13[1]),
                          .Result(s_LOGISIM_NET_60));

   NOT_GATE      GATE_26 (.Input_1(s_LOGISIM_BUS_13[0]),
                          .Result(s_LOGISIM_NET_58));

   NOT_GATE      GATE_27 (.Input_1(s_LOGISIM_BUS_13[1]),
                          .Result(s_LOGISIM_NET_4));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_28 (.Input_1(s_LOGISIM_NET_6),
               .Input_2(s_LOGISIM_NET_51),
               .Input_3(s_LOGISIM_NET_55),
               .Input_4(s_LOGISIM_NET_58),
               .Input_5(s_LOGISIM_BUS_53[2]),
               .Result(s_LOGISIM_NET_56));

   NOT_GATE      GATE_29 (.Input_1(s_LOGISIM_BUS_13[1]),
                          .Result(s_LOGISIM_NET_55));

   NOT_GATE      GATE_30 (.Input_1(s_LOGISIM_BUS_13[0]),
                          .Result(s_LOGISIM_NET_30));

   NOT_GATE      GATE_31 (.Input_1(s_LOGISIM_BUS_13[3]),
                          .Result(s_LOGISIM_NET_19));

   NOT_GATE      GATE_32 (.Input_1(s_LOGISIM_BUS_13[3]),
                          .Result(s_LOGISIM_NET_6));

   NOT_GATE      GATE_33 (.Input_1(s_LOGISIM_BUS_13[2]),
                          .Result(s_LOGISIM_NET_67));

   NOT_GATE      GATE_34 (.Input_1(s_LOGISIM_BUS_13[0]),
                          .Result(s_LOGISIM_NET_29));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_35 (.Input_1(s_LOGISIM_NET_19),
               .Input_2(s_LOGISIM_BUS_13[2]),
               .Input_3(s_LOGISIM_NET_70),
               .Input_4(s_LOGISIM_NET_72),
               .Input_5(s_LOGISIM_BUS_53[3]),
               .Result(s_LOGISIM_NET_49));

   NOT_GATE      GATE_36 (.Input_1(s_LOGISIM_BUS_13[2]),
                          .Result(s_LOGISIM_NET_65));

   NOT_GATE      GATE_37 (.Input_1(s_LOGISIM_BUS_13[0]),
                          .Result(s_LOGISIM_NET_17));

   NOT_GATE      GATE_38 (.Input_1(s_LOGISIM_BUS_13[0]),
                          .Result(s_LOGISIM_NET_52));

   NOT_GATE      GATE_39 (.Input_1(s_LOGISIM_BUS_53[3]),
                          .Result(s_LOGISIM_NET_63));

   NOT_GATE      GATE_40 (.Input_1(s_LOGISIM_BUS_13[2]),
                          .Result(s_LOGISIM_NET_45));

   NOT_GATE      GATE_41 (.Input_1(s_LOGISIM_BUS_53[2]),
                          .Result(s_LOGISIM_NET_15));

   NOT_GATE      GATE_42 (.Input_1(s_LOGISIM_BUS_13[1]),
                          .Result(s_LOGISIM_NET_68));

   NOT_GATE      GATE_43 (.Input_1(s_LOGISIM_BUS_53[0]),
                          .Result(s_LOGISIM_NET_50));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_44 (.Input_1(s_LOGISIM_BUS_13[2]),
               .Input_2(s_LOGISIM_NET_27),
               .Input_3(s_LOGISIM_BUS_53[3]),
               .Input_4(s_LOGISIM_NET_15),
               .Input_5(s_LOGISIM_BUS_53[0]),
               .Result(s_LOGISIM_NET_18));

   NOT_GATE      GATE_45 (.Input_1(s_LOGISIM_BUS_13[2]),
                          .Result(s_LOGISIM_NET_33));

   NOT_GATE      GATE_46 (.Input_1(s_LOGISIM_BUS_13[0]),
                          .Result(s_LOGISIM_NET_74));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_47 (.Input_1(s_LOGISIM_BUS_13[3]),
               .Input_2(s_LOGISIM_BUS_13[2]),
               .Input_3(s_LOGISIM_BUS_13[1]),
               .Input_4(s_LOGISIM_NET_29),
               .Result(s_LOGISIM_NET_59));

   NOT_GATE      GATE_48 (.Input_1(s_LOGISIM_BUS_53[1]),
                          .Result(s_LOGISIM_NET_23));

   NOT_GATE      GATE_49 (.Input_1(s_LOGISIM_BUS_53[2]),
                          .Result(s_LOGISIM_NET_9));

   NOT_GATE      GATE_50 (.Input_1(s_LOGISIM_BUS_53[2]),
                          .Result(s_LOGISIM_NET_12));

   NOT_GATE      GATE_51 (.Input_1(s_LOGISIM_BUS_13[1]),
                          .Result(s_LOGISIM_NET_16));

   NOT_GATE      GATE_52 (.Input_1(s_LOGISIM_BUS_53[0]),
                          .Result(s_LOGISIM_NET_44));

   AND_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_53 (.Input_1(s_LOGISIM_BUS_13[3]),
               .Input_2(s_LOGISIM_NET_65),
               .Input_3(s_LOGISIM_BUS_13[1]),
               .Input_4(s_LOGISIM_BUS_13[0]),
               .Input_5(s_LOGISIM_BUS_53[3]),
               .Input_6(s_LOGISIM_NET_28),
               .Result(s_LOGISIM_NET_43));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_54 (.Input_1(s_LOGISIM_NET_10),
               .Input_2(s_LOGISIM_NET_67),
               .Input_3(s_LOGISIM_BUS_13[1]),
               .Input_4(s_LOGISIM_NET_52),
               .Input_5(s_LOGISIM_BUS_53[1]),
               .Result(s_LOGISIM_NET_54));

   NOT_GATE      GATE_55 (.Input_1(s_LOGISIM_BUS_13[0]),
                          .Result(s_LOGISIM_NET_47));

   NOT_GATE      GATE_56 (.Input_1(s_LOGISIM_BUS_13[2]),
                          .Result(s_LOGISIM_NET_51));

   NOT_GATE      GATE_57 (.Input_1(s_LOGISIM_BUS_53[1]),
                          .Result(s_LOGISIM_NET_64));

   AND_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_58 (.Input_1(s_LOGISIM_BUS_13[3]),
               .Input_2(s_LOGISIM_BUS_13[2]),
               .Input_3(s_LOGISIM_NET_17),
               .Input_4(s_LOGISIM_NET_48),
               .Input_5(s_LOGISIM_NET_12),
               .Input_6(s_LOGISIM_NET_50),
               .Result(s_LOGISIM_NET_39));

   AND_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_59 (.Input_1(s_LOGISIM_BUS_13[3]),
               .Input_2(s_LOGISIM_NET_45),
               .Input_3(s_LOGISIM_NET_16),
               .Input_4(s_LOGISIM_NET_47),
               .Input_5(s_LOGISIM_NET_11),
               .Input_6(s_LOGISIM_BUS_53[1]),
               .Result(s_LOGISIM_NET_69));

   NOT_GATE      GATE_60 (.Input_1(s_LOGISIM_BUS_13[0]),
                          .Result(s_LOGISIM_NET_72));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_61 (.Input_1(s_LOGISIM_BUS_13[3]),
               .Input_2(s_LOGISIM_NET_75),
               .Input_3(s_LOGISIM_BUS_13[0]),
               .Input_4(s_LOGISIM_BUS_53[2]),
               .Result(s_LOGISIM_NET_40));

   NOT_GATE      GATE_62 (.Input_1(s_LOGISIM_BUS_13[1]),
                          .Result(s_LOGISIM_NET_61));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_63 (.Input_1(s_LOGISIM_BUS_13[3]),
               .Input_2(s_LOGISIM_BUS_13[1]),
               .Input_3(s_LOGISIM_NET_62),
               .Input_4(s_LOGISIM_NET_63),
               .Input_5(s_LOGISIM_NET_37),
               .Result(s_LOGISIM_NET_7));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_64 (.Input_1(s_LOGISIM_BUS_13[2]),
               .Input_2(s_LOGISIM_BUS_13[1]),
               .Input_3(s_LOGISIM_NET_30),
               .Input_4(s_LOGISIM_BUS_53[0]),
               .Result(s_LOGISIM_NET_32));

   NOT_GATE      GATE_65 (.Input_1(s_LOGISIM_BUS_13[0]),
                          .Result(s_LOGISIM_NET_62));

   NOT_GATE      GATE_66 (.Input_1(s_LOGISIM_BUS_13[3]),
                          .Result(s_LOGISIM_NET_20));



endmodule
