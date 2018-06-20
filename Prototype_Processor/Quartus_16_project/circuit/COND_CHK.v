/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : COND_CHK                                                     **
 **                                                                          **
 ******************************************************************************/

module COND_CHK( COND_IN,
                 FLAG_IN,
                 LOGISIM_CLOCK_TREE_0,
                 COND_MATCH);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[3:0]  COND_IN;
   input[3:0]  FLAG_IN;
   input[4:0]  LOGISIM_CLOCK_TREE_0;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output COND_MATCH;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_50;
   wire[3:0] s_LOGISIM_BUS_72;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_14;
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
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_34;
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
   wire s_LOGISIM_NET_51;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_53;
   wire s_LOGISIM_NET_54;
   wire s_LOGISIM_NET_55;
   wire s_LOGISIM_NET_56;
   wire s_LOGISIM_NET_57;
   wire s_LOGISIM_NET_58;
   wire s_LOGISIM_NET_59;
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
   wire s_LOGISIM_NET_70;
   wire s_LOGISIM_NET_71;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_72[3:0]              = FLAG_IN;
   assign s_LOGISIM_BUS_50[3:0]              = COND_IN;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign COND_MATCH                         = s_LOGISIM_NET_62;

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_36),
              .Input_2(s_LOGISIM_NET_53),
              .Input_3(s_LOGISIM_NET_60),
              .Input_4(s_LOGISIM_BUS_50[0]),
              .Input_5(s_LOGISIM_NET_22),
              .Result(s_LOGISIM_NET_63));

   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_BUS_50[3]),
              .Input_2(s_LOGISIM_BUS_50[2]),
              .Input_3(s_LOGISIM_NET_18),
              .Input_4(s_LOGISIM_BUS_50[0]),
              .Input_5(s_LOGISIM_BUS_72[3]),
              .Input_6(s_LOGISIM_BUS_72[2]),
              .Input_7(s_LOGISIM_NET_24),
              .Result(s_LOGISIM_NET_58));

   NOT_GATE      GATE_3 (.Input_1(s_LOGISIM_BUS_50[2]),
                         .Result(s_LOGISIM_NET_31));

   NOT_GATE      GATE_4 (.Input_1(s_LOGISIM_BUS_50[3]),
                         .Result(s_LOGISIM_NET_36));

   NOT_GATE      GATE_5 (.Input_1(s_LOGISIM_BUS_50[1]),
                         .Result(s_LOGISIM_NET_60));

   NOT_GATE      GATE_6 (.Input_1(s_LOGISIM_BUS_50[3]),
                         .Result(s_LOGISIM_NET_27));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_34),
              .Input_2(s_LOGISIM_NET_21),
              .Input_3(s_LOGISIM_BUS_50[1]),
              .Input_4(s_LOGISIM_BUS_50[0]),
              .Input_5(s_LOGISIM_NET_56),
              .Result(s_LOGISIM_NET_35));

   AND_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_BUS_50[3]),
              .Input_2(s_LOGISIM_BUS_50[2]),
              .Input_3(s_LOGISIM_NET_66),
              .Input_4(s_LOGISIM_NET_9),
              .Input_5(s_LOGISIM_NET_65),
              .Input_6(s_LOGISIM_NET_57),
              .Result(s_LOGISIM_NET_39));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_9 (.Input_1(s_LOGISIM_BUS_50[2]),
              .Input_2(s_LOGISIM_NET_30),
              .Input_3(s_LOGISIM_BUS_72[3]),
              .Input_4(s_LOGISIM_NET_16),
              .Input_5(s_LOGISIM_BUS_72[0]),
              .Result(s_LOGISIM_NET_19));

   NOT_GATE      GATE_10 (.Input_1(s_LOGISIM_BUS_72[0]),
                          .Result(s_LOGISIM_NET_47));

   NOT_GATE      GATE_11 (.Input_1(s_LOGISIM_BUS_50[1]),
                          .Result(s_LOGISIM_NET_68));

   AND_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_12 (.Input_1(s_LOGISIM_BUS_50[3]),
               .Input_2(s_LOGISIM_NET_41),
               .Input_3(s_LOGISIM_NET_15),
               .Input_4(s_LOGISIM_NET_44),
               .Input_5(s_LOGISIM_NET_12),
               .Input_6(s_LOGISIM_BUS_72[1]),
               .Result(s_LOGISIM_NET_25));

   NOT_GATE      GATE_13 (.Input_1(s_LOGISIM_BUS_50[3]),
                          .Result(s_LOGISIM_NET_11));

   NOT_GATE      GATE_14 (.Input_1(s_LOGISIM_BUS_50[0]),
                          .Result(s_LOGISIM_NET_66));

   NOT_GATE      GATE_15 (.Input_1(s_LOGISIM_BUS_50[0]),
                          .Result(s_LOGISIM_NET_71));

   NOT_GATE      GATE_16 (.Input_1(s_LOGISIM_BUS_72[3]),
                          .Result(s_LOGISIM_NET_9));

   NOT_GATE      GATE_17 (.Input_1(s_LOGISIM_BUS_72[0]),
                          .Result(s_LOGISIM_NET_23));

   NOT_GATE      GATE_18 (.Input_1(s_LOGISIM_BUS_50[0]),
                          .Result(s_LOGISIM_NET_30));

   NOT_GATE      GATE_19 (.Input_1(s_LOGISIM_BUS_72[2]),
                          .Result(s_LOGISIM_NET_65));

   NOT_GATE      GATE_20 (.Input_1(s_LOGISIM_BUS_72[0]),
                          .Result(s_LOGISIM_NET_57));

   NOT_GATE      GATE_21 (.Input_1(s_LOGISIM_BUS_72[3]),
                          .Result(s_LOGISIM_NET_40));

   NOT_GATE      GATE_22 (.Input_1(s_LOGISIM_BUS_50[1]),
                          .Result(s_LOGISIM_NET_52));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_23 (.Input_1(s_LOGISIM_NET_11),
               .Input_2(s_LOGISIM_NET_61),
               .Input_3(s_LOGISIM_BUS_50[1]),
               .Input_4(s_LOGISIM_NET_46),
               .Input_5(s_LOGISIM_BUS_72[1]),
               .Result(s_LOGISIM_NET_48));

   NOT_GATE      GATE_24 (.Input_1(s_LOGISIM_BUS_50[2]),
                          .Result(s_LOGISIM_NET_61));

   NOT_GATE      GATE_25 (.Input_1(s_LOGISIM_BUS_50[0]),
                          .Result(s_LOGISIM_NET_29));

   NOT_GATE      GATE_26 (.Input_1(s_LOGISIM_BUS_72[0]),
                          .Result(s_LOGISIM_NET_37));

   NOT_GATE      GATE_27 (.Input_1(s_LOGISIM_BUS_72[2]),
                          .Result(s_LOGISIM_NET_12));

   NOT_GATE      GATE_28 (.Input_1(s_LOGISIM_BUS_50[3]),
                          .Result(s_LOGISIM_NET_34));

   NOT_GATE      GATE_29 (.Input_1(s_LOGISIM_BUS_72[1]),
                          .Result(s_LOGISIM_NET_56));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_30 (.Input_1(s_LOGISIM_NET_27),
               .Input_2(s_LOGISIM_NET_49),
               .Input_3(s_LOGISIM_NET_52),
               .Input_4(s_LOGISIM_NET_55),
               .Input_5(s_LOGISIM_BUS_72[2]),
               .Result(s_LOGISIM_NET_20));

   NOT_GATE      GATE_31 (.Input_1(s_LOGISIM_BUS_50[3]),
                          .Result(s_LOGISIM_NET_17));

   AND_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_32 (.Input_1(s_LOGISIM_BUS_50[3]),
               .Input_2(s_LOGISIM_NET_31),
               .Input_3(s_LOGISIM_BUS_50[1]),
               .Input_4(s_LOGISIM_BUS_50[0]),
               .Input_5(s_LOGISIM_BUS_72[3]),
               .Input_6(s_LOGISIM_NET_47),
               .Result(s_LOGISIM_NET_4));

   NOT_GATE      GATE_33 (.Input_1(s_LOGISIM_BUS_50[2]),
                          .Result(s_LOGISIM_NET_53));

   OR_GATE_17_INPUTS #(.BubblesMask(0))
      GATE_34 (.Input_1(s_LOGISIM_NET_20),
               .Input_10(s_LOGISIM_NET_25),
               .Input_11(s_LOGISIM_NET_14),
               .Input_12(s_LOGISIM_NET_28),
               .Input_13(s_LOGISIM_NET_54),
               .Input_14(s_LOGISIM_NET_4),
               .Input_15(s_LOGISIM_NET_39),
               .Input_16(s_LOGISIM_NET_58),
               .Input_17(s_LOGISIM_NET_64),
               .Input_2(s_LOGISIM_NET_63),
               .Input_3(s_LOGISIM_NET_48),
               .Input_4(s_LOGISIM_NET_35),
               .Input_5(s_LOGISIM_NET_43),
               .Input_6(s_LOGISIM_NET_19),
               .Input_7(s_LOGISIM_NET_38),
               .Input_8(s_LOGISIM_NET_26),
               .Input_9(s_LOGISIM_NET_67),
               .Result(s_LOGISIM_NET_62));

   NOT_GATE      GATE_35 (.Input_1(s_LOGISIM_BUS_50[1]),
                          .Result(s_LOGISIM_NET_18));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_36 (.Input_1(s_LOGISIM_NET_33),
               .Input_2(s_LOGISIM_BUS_50[2]),
               .Input_3(s_LOGISIM_NET_1),
               .Input_4(s_LOGISIM_BUS_50[0]),
               .Input_5(s_LOGISIM_NET_40),
               .Result(s_LOGISIM_NET_38));

   NOT_GATE      GATE_37 (.Input_1(s_LOGISIM_BUS_50[0]),
                          .Result(s_LOGISIM_NET_44));

   NOT_GATE      GATE_38 (.Input_1(s_LOGISIM_BUS_50[2]),
                          .Result(s_LOGISIM_NET_49));

   NOT_GATE      GATE_39 (.Input_1(s_LOGISIM_BUS_50[2]),
                          .Result(s_LOGISIM_NET_41));

   NOT_GATE      GATE_40 (.Input_1(s_LOGISIM_BUS_50[1]),
                          .Result(s_LOGISIM_NET_1));

   AND_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_41 (.Input_1(s_LOGISIM_BUS_50[3]),
               .Input_2(s_LOGISIM_NET_45),
               .Input_3(s_LOGISIM_NET_59),
               .Input_4(s_LOGISIM_BUS_50[0]),
               .Input_5(s_LOGISIM_BUS_72[2]),
               .Input_6(s_LOGISIM_NET_42),
               .Result(s_LOGISIM_NET_14));

   NOT_GATE      GATE_42 (.Input_1(s_LOGISIM_BUS_50[1]),
                          .Result(s_LOGISIM_NET_15));

   NOT_GATE      GATE_43 (.Input_1(s_LOGISIM_BUS_72[2]),
                          .Result(s_LOGISIM_NET_22));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_44 (.Input_1(s_LOGISIM_NET_17),
               .Input_2(s_LOGISIM_BUS_50[2]),
               .Input_3(s_LOGISIM_NET_68),
               .Input_4(s_LOGISIM_NET_70),
               .Input_5(s_LOGISIM_BUS_72[3]),
               .Result(s_LOGISIM_NET_43));

   NOT_GATE      GATE_45 (.Input_1(s_LOGISIM_BUS_50[2]),
                          .Result(s_LOGISIM_NET_21));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_46 (.Input_1(s_LOGISIM_BUS_50[3]),
               .Input_2(s_LOGISIM_BUS_50[1]),
               .Input_3(s_LOGISIM_NET_51),
               .Input_4(s_LOGISIM_BUS_72[3]),
               .Input_5(s_LOGISIM_BUS_72[0]),
               .Result(s_LOGISIM_NET_54));

   NOT_GATE      GATE_47 (.Input_1(s_LOGISIM_BUS_72[0]),
                          .Result(s_LOGISIM_NET_24));

   NOT_GATE      GATE_48 (.Input_1(s_LOGISIM_BUS_50[0]),
                          .Result(s_LOGISIM_NET_70));

   NOT_GATE      GATE_49 (.Input_1(s_LOGISIM_BUS_72[3]),
                          .Result(s_LOGISIM_NET_13));

   NOT_GATE      GATE_50 (.Input_1(s_LOGISIM_BUS_50[1]),
                          .Result(s_LOGISIM_NET_59));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_51 (.Input_1(s_LOGISIM_BUS_50[3]),
               .Input_2(s_LOGISIM_BUS_50[2]),
               .Input_3(s_LOGISIM_BUS_50[1]),
               .Input_4(s_LOGISIM_NET_8),
               .Result(s_LOGISIM_NET_64));

   NOT_GATE      GATE_52 (.Input_1(s_LOGISIM_BUS_50[0]),
                          .Result(s_LOGISIM_NET_46));

   NOT_GATE      GATE_53 (.Input_1(s_LOGISIM_BUS_50[0]),
                          .Result(s_LOGISIM_NET_8));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_54 (.Input_1(s_LOGISIM_BUS_50[2]),
               .Input_2(s_LOGISIM_BUS_50[1]),
               .Input_3(s_LOGISIM_NET_29),
               .Input_4(s_LOGISIM_BUS_72[0]),
               .Result(s_LOGISIM_NET_26));

   NOT_GATE      GATE_55 (.Input_1(s_LOGISIM_BUS_72[1]),
                          .Result(s_LOGISIM_NET_42));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_56 (.Input_1(s_LOGISIM_BUS_50[3]),
               .Input_2(s_LOGISIM_BUS_50[1]),
               .Input_3(s_LOGISIM_NET_71),
               .Input_4(s_LOGISIM_NET_13),
               .Input_5(s_LOGISIM_NET_37),
               .Result(s_LOGISIM_NET_28));

   NOT_GATE      GATE_57 (.Input_1(s_LOGISIM_BUS_72[2]),
                          .Result(s_LOGISIM_NET_16));

   NOT_GATE      GATE_58 (.Input_1(s_LOGISIM_BUS_50[2]),
                          .Result(s_LOGISIM_NET_45));

   NOT_GATE      GATE_59 (.Input_1(s_LOGISIM_BUS_50[3]),
                          .Result(s_LOGISIM_NET_33));

   NOT_GATE      GATE_60 (.Input_1(s_LOGISIM_BUS_50[3]),
                          .Result(s_LOGISIM_NET_69));

   NOT_GATE      GATE_61 (.Input_1(s_LOGISIM_BUS_50[0]),
                          .Result(s_LOGISIM_NET_51));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_62 (.Input_1(s_LOGISIM_NET_69),
               .Input_2(s_LOGISIM_BUS_50[2]),
               .Input_3(s_LOGISIM_BUS_50[1]),
               .Input_4(s_LOGISIM_BUS_50[0]),
               .Input_5(s_LOGISIM_NET_23),
               .Result(s_LOGISIM_NET_67));

   NOT_GATE      GATE_63 (.Input_1(s_LOGISIM_BUS_50[0]),
                          .Result(s_LOGISIM_NET_55));



endmodule
