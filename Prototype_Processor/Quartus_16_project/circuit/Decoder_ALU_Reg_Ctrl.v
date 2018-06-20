/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Decoder_ALU_Reg_Ctrl                                         **
 **                                                                          **
 ******************************************************************************/

module Decoder_ALU_Reg_Ctrl( C_flag,
                             INST,
                             LOGISIM_CLOCK_TREE_0,
                             STATE,
                             DOUT,
                             FLAG_SET_CTRL,
                             Func_SEL,
                             OP1_REG_SEL,
                             OP2_REG_SEL,
                             OP2_SRC_SEL,
                             REG_SRC,
                             Rd_Out);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  C_flag;
   input[31:0]  INST;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[3:0]  STATE;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output DOUT;
   output[2:0] FLAG_SET_CTRL;
   output[8:0] Func_SEL;
   output[3:0] OP1_REG_SEL;
   output[3:0] OP2_REG_SEL;
   output[1:0] OP2_SRC_SEL;
   output REG_SRC;
   output[3:0] Rd_Out;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_102;
   wire[3:0] s_LOGISIM_BUS_152;
   wire[3:0] s_LOGISIM_BUS_193;
   wire[3:0] s_LOGISIM_BUS_240;
   wire[3:0] s_LOGISIM_BUS_257;
   wire[31:0] s_LOGISIM_BUS_267;
   wire[1:0] s_LOGISIM_BUS_271;
   wire[2:0] s_LOGISIM_BUS_280;
   wire[8:0] s_LOGISIM_BUS_285;
   wire[1:0] s_LOGISIM_BUS_47;
   wire[3:0] s_LOGISIM_BUS_55;
   wire[3:0] s_LOGISIM_BUS_69;
   wire[1:0] s_LOGISIM_BUS_78;
   wire s_LOGISIM_NET_100;
   wire s_LOGISIM_NET_103;
   wire s_LOGISIM_NET_104;
   wire s_LOGISIM_NET_105;
   wire s_LOGISIM_NET_107;
   wire s_LOGISIM_NET_108;
   wire s_LOGISIM_NET_109;
   wire s_LOGISIM_NET_110;
   wire s_LOGISIM_NET_111;
   wire s_LOGISIM_NET_112;
   wire s_LOGISIM_NET_113;
   wire s_LOGISIM_NET_114;
   wire s_LOGISIM_NET_115;
   wire s_LOGISIM_NET_116;
   wire s_LOGISIM_NET_117;
   wire s_LOGISIM_NET_118;
   wire s_LOGISIM_NET_119;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_120;
   wire s_LOGISIM_NET_121;
   wire s_LOGISIM_NET_122;
   wire s_LOGISIM_NET_123;
   wire s_LOGISIM_NET_124;
   wire s_LOGISIM_NET_125;
   wire s_LOGISIM_NET_126;
   wire s_LOGISIM_NET_127;
   wire s_LOGISIM_NET_128;
   wire s_LOGISIM_NET_129;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_131;
   wire s_LOGISIM_NET_132;
   wire s_LOGISIM_NET_133;
   wire s_LOGISIM_NET_134;
   wire s_LOGISIM_NET_135;
   wire s_LOGISIM_NET_137;
   wire s_LOGISIM_NET_138;
   wire s_LOGISIM_NET_139;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_140;
   wire s_LOGISIM_NET_141;
   wire s_LOGISIM_NET_142;
   wire s_LOGISIM_NET_144;
   wire s_LOGISIM_NET_145;
   wire s_LOGISIM_NET_146;
   wire s_LOGISIM_NET_147;
   wire s_LOGISIM_NET_148;
   wire s_LOGISIM_NET_149;
   wire s_LOGISIM_NET_150;
   wire s_LOGISIM_NET_151;
   wire s_LOGISIM_NET_153;
   wire s_LOGISIM_NET_154;
   wire s_LOGISIM_NET_155;
   wire s_LOGISIM_NET_156;
   wire s_LOGISIM_NET_157;
   wire s_LOGISIM_NET_158;
   wire s_LOGISIM_NET_159;
   wire s_LOGISIM_NET_160;
   wire s_LOGISIM_NET_161;
   wire s_LOGISIM_NET_163;
   wire s_LOGISIM_NET_164;
   wire s_LOGISIM_NET_165;
   wire s_LOGISIM_NET_166;
   wire s_LOGISIM_NET_167;
   wire s_LOGISIM_NET_168;
   wire s_LOGISIM_NET_169;
   wire s_LOGISIM_NET_170;
   wire s_LOGISIM_NET_171;
   wire s_LOGISIM_NET_172;
   wire s_LOGISIM_NET_174;
   wire s_LOGISIM_NET_175;
   wire s_LOGISIM_NET_176;
   wire s_LOGISIM_NET_177;
   wire s_LOGISIM_NET_178;
   wire s_LOGISIM_NET_180;
   wire s_LOGISIM_NET_181;
   wire s_LOGISIM_NET_182;
   wire s_LOGISIM_NET_184;
   wire s_LOGISIM_NET_185;
   wire s_LOGISIM_NET_186;
   wire s_LOGISIM_NET_187;
   wire s_LOGISIM_NET_188;
   wire s_LOGISIM_NET_189;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_190;
   wire s_LOGISIM_NET_194;
   wire s_LOGISIM_NET_195;
   wire s_LOGISIM_NET_196;
   wire s_LOGISIM_NET_197;
   wire s_LOGISIM_NET_198;
   wire s_LOGISIM_NET_199;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_200;
   wire s_LOGISIM_NET_201;
   wire s_LOGISIM_NET_203;
   wire s_LOGISIM_NET_204;
   wire s_LOGISIM_NET_205;
   wire s_LOGISIM_NET_206;
   wire s_LOGISIM_NET_207;
   wire s_LOGISIM_NET_208;
   wire s_LOGISIM_NET_209;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_210;
   wire s_LOGISIM_NET_211;
   wire s_LOGISIM_NET_212;
   wire s_LOGISIM_NET_213;
   wire s_LOGISIM_NET_214;
   wire s_LOGISIM_NET_215;
   wire s_LOGISIM_NET_216;
   wire s_LOGISIM_NET_217;
   wire s_LOGISIM_NET_218;
   wire s_LOGISIM_NET_219;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_220;
   wire s_LOGISIM_NET_221;
   wire s_LOGISIM_NET_222;
   wire s_LOGISIM_NET_223;
   wire s_LOGISIM_NET_224;
   wire s_LOGISIM_NET_225;
   wire s_LOGISIM_NET_226;
   wire s_LOGISIM_NET_227;
   wire s_LOGISIM_NET_228;
   wire s_LOGISIM_NET_229;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_230;
   wire s_LOGISIM_NET_231;
   wire s_LOGISIM_NET_232;
   wire s_LOGISIM_NET_233;
   wire s_LOGISIM_NET_234;
   wire s_LOGISIM_NET_235;
   wire s_LOGISIM_NET_236;
   wire s_LOGISIM_NET_237;
   wire s_LOGISIM_NET_238;
   wire s_LOGISIM_NET_239;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_241;
   wire s_LOGISIM_NET_242;
   wire s_LOGISIM_NET_243;
   wire s_LOGISIM_NET_244;
   wire s_LOGISIM_NET_245;
   wire s_LOGISIM_NET_246;
   wire s_LOGISIM_NET_248;
   wire s_LOGISIM_NET_249;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_250;
   wire s_LOGISIM_NET_251;
   wire s_LOGISIM_NET_252;
   wire s_LOGISIM_NET_253;
   wire s_LOGISIM_NET_254;
   wire s_LOGISIM_NET_255;
   wire s_LOGISIM_NET_256;
   wire s_LOGISIM_NET_258;
   wire s_LOGISIM_NET_259;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_260;
   wire s_LOGISIM_NET_261;
   wire s_LOGISIM_NET_262;
   wire s_LOGISIM_NET_263;
   wire s_LOGISIM_NET_264;
   wire s_LOGISIM_NET_265;
   wire s_LOGISIM_NET_266;
   wire s_LOGISIM_NET_268;
   wire s_LOGISIM_NET_269;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_270;
   wire s_LOGISIM_NET_272;
   wire s_LOGISIM_NET_273;
   wire s_LOGISIM_NET_274;
   wire s_LOGISIM_NET_275;
   wire s_LOGISIM_NET_276;
   wire s_LOGISIM_NET_277;
   wire s_LOGISIM_NET_279;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_281;
   wire s_LOGISIM_NET_282;
   wire s_LOGISIM_NET_283;
   wire s_LOGISIM_NET_284;
   wire s_LOGISIM_NET_286;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_32;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_38;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_44;
   wire s_LOGISIM_NET_45;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_48;
   wire s_LOGISIM_NET_49;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_50;
   wire s_LOGISIM_NET_51;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_53;
   wire s_LOGISIM_NET_54;
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
   wire s_LOGISIM_NET_70;
   wire s_LOGISIM_NET_71;
   wire s_LOGISIM_NET_72;
   wire s_LOGISIM_NET_73;
   wire s_LOGISIM_NET_74;
   wire s_LOGISIM_NET_75;
   wire s_LOGISIM_NET_76;
   wire s_LOGISIM_NET_77;
   wire s_LOGISIM_NET_79;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_80;
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
   wire s_LOGISIM_NET_91;
   wire s_LOGISIM_NET_92;
   wire s_LOGISIM_NET_94;
   wire s_LOGISIM_NET_96;
   wire s_LOGISIM_NET_97;
   wire s_LOGISIM_NET_98;
   wire s_LOGISIM_NET_99;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_193[3:0]             = STATE;
   assign s_LOGISIM_NET_44                   = C_flag;
   assign s_LOGISIM_BUS_267[31:0]            = INST;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Rd_Out                             = s_LOGISIM_BUS_257[3:0];
   assign Func_SEL                           = s_LOGISIM_BUS_285[8:0];
   assign FLAG_SET_CTRL                      = s_LOGISIM_BUS_280[2:0];
   assign DOUT                               = s_LOGISIM_NET_175;
   assign OP2_REG_SEL                        = s_LOGISIM_BUS_240[3:0];
   assign OP2_SRC_SEL                        = s_LOGISIM_BUS_271[1:0];
   assign REG_SRC                            = s_LOGISIM_NET_277;
   assign OP1_REG_SEL                        = s_LOGISIM_BUS_267[20:17];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_152[3:0] = 4'd15;

   assign s_LOGISIM_BUS_55[3:0] = 4'd14;

   assign s_LOGISIM_BUS_69[3:0] = 4'd14;

   assign s_LOGISIM_BUS_102[3:0] = 4'd15;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   NOT_GATE      GATE_1 (.Input_1(s_LOGISIM_BUS_193[2]),
                         .Result(s_LOGISIM_NET_84));

   NOT_GATE      GATE_2 (.Input_1(s_LOGISIM_BUS_267[22]),
                         .Result(s_LOGISIM_NET_86));

   NOT_GATE      GATE_3 (.Input_1(s_LOGISIM_BUS_267[24]),
                         .Result(s_LOGISIM_NET_266));

   NOT_GATE      GATE_4 (.Input_1(s_LOGISIM_BUS_193[3]),
                         .Result(s_LOGISIM_NET_122));

   NOT_GATE      GATE_5 (.Input_1(s_LOGISIM_BUS_267[25]),
                         .Result(s_LOGISIM_NET_31));

   NOT_GATE      GATE_6 (.Input_1(s_LOGISIM_BUS_193[0]),
                         .Result(s_LOGISIM_NET_201));

   NOT_GATE      GATE_7 (.Input_1(s_LOGISIM_BUS_267[22]),
                         .Result(s_LOGISIM_NET_9));

   NOT_GATE      GATE_8 (.Input_1(s_LOGISIM_BUS_193[2]),
                         .Result(s_LOGISIM_NET_230));

   NOT_GATE      GATE_9 (.Input_1(s_LOGISIM_BUS_193[2]),
                         .Result(s_LOGISIM_NET_105));

   NOT_GATE      GATE_10 (.Input_1(s_LOGISIM_BUS_193[2]),
                          .Result(s_LOGISIM_NET_165));

   NOT_GATE      GATE_11 (.Input_1(s_LOGISIM_BUS_193[2]),
                          .Result(s_LOGISIM_NET_127));

   NOT_GATE      GATE_12 (.Input_1(s_LOGISIM_BUS_193[1]),
                          .Result(s_LOGISIM_NET_61));

   NOT_GATE      GATE_13 (.Input_1(s_LOGISIM_BUS_267[24]),
                          .Result(s_LOGISIM_NET_172));

   NOT_GATE      GATE_14 (.Input_1(s_LOGISIM_BUS_193[1]),
                          .Result(s_LOGISIM_NET_57));

   NOT_GATE      GATE_15 (.Input_1(s_LOGISIM_BUS_267[25]),
                          .Result(s_LOGISIM_NET_113));

   NOT_GATE      GATE_16 (.Input_1(s_LOGISIM_BUS_193[1]),
                          .Result(s_LOGISIM_NET_20));

   NOT_GATE      GATE_17 (.Input_1(s_LOGISIM_BUS_193[2]),
                          .Result(s_LOGISIM_NET_229));

   NOT_GATE      GATE_18 (.Input_1(s_LOGISIM_BUS_193[0]),
                          .Result(s_LOGISIM_NET_126));

   NOT_GATE      GATE_19 (.Input_1(s_LOGISIM_BUS_267[25]),
                          .Result(s_LOGISIM_NET_238));

   NOT_GATE      GATE_20 (.Input_1(s_LOGISIM_BUS_193[1]),
                          .Result(s_LOGISIM_NET_64));

   OR_GATE_9_INPUTS #(.BubblesMask(0))
      GATE_21 (.Input_1(s_LOGISIM_NET_122),
               .Input_2(s_LOGISIM_NET_62),
               .Input_3(s_LOGISIM_NET_236),
               .Input_4(s_LOGISIM_NET_205),
               .Input_5(s_LOGISIM_NET_272),
               .Input_6(s_LOGISIM_NET_115),
               .Input_7(s_LOGISIM_BUS_193[0]),
               .Input_8(s_LOGISIM_BUS_193[1]),
               .Input_9(s_LOGISIM_BUS_193[2]),
               .Result(s_LOGISIM_BUS_285[1]));

   NOT_GATE      GATE_22 (.Input_1(s_LOGISIM_BUS_193[0]),
                          .Result(s_LOGISIM_NET_219));

   OR_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_23 (.Input_1(s_LOGISIM_NET_118),
               .Input_2(s_LOGISIM_NET_92),
               .Input_3(s_LOGISIM_NET_157),
               .Input_4(s_LOGISIM_NET_147),
               .Input_5(s_LOGISIM_NET_22),
               .Input_6(s_LOGISIM_NET_169),
               .Input_7(s_LOGISIM_NET_98),
               .Result(s_LOGISIM_BUS_78[1]));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_24 (.Input_1(s_LOGISIM_BUS_193[3]),
               .Input_2(s_LOGISIM_NET_138),
               .Input_3(s_LOGISIM_NET_220),
               .Input_4(s_LOGISIM_NET_286),
               .Input_5(s_LOGISIM_NET_223),
               .Input_6(s_LOGISIM_BUS_267[25]),
               .Input_7(s_LOGISIM_NET_180),
               .Input_8(s_LOGISIM_BUS_267[23]),
               .Result(s_LOGISIM_NET_258));

   NOT_GATE      GATE_25 (.Input_1(s_LOGISIM_BUS_267[24]),
                          .Result(s_LOGISIM_NET_73));

   NOT_GATE      GATE_26 (.Input_1(s_LOGISIM_BUS_267[23]),
                          .Result(s_LOGISIM_NET_178));

   NOT_GATE      GATE_27 (.Input_1(s_LOGISIM_BUS_267[26]),
                          .Result(s_LOGISIM_NET_154));

   NOT_GATE      GATE_28 (.Input_1(s_LOGISIM_BUS_267[25]),
                          .Result(s_LOGISIM_NET_234));

   NOT_GATE      GATE_29 (.Input_1(s_LOGISIM_BUS_193[0]),
                          .Result(s_LOGISIM_NET_286));

   NOT_GATE      GATE_30 (.Input_1(s_LOGISIM_BUS_193[2]),
                          .Result(s_LOGISIM_NET_174));

   NOT_GATE      GATE_31 (.Input_1(s_LOGISIM_BUS_267[25]),
                          .Result(s_LOGISIM_NET_3));

   NOT_GATE      GATE_32 (.Input_1(s_LOGISIM_BUS_193[1]),
                          .Result(s_LOGISIM_NET_270));

   NOT_GATE      GATE_33 (.Input_1(s_LOGISIM_BUS_193[2]),
                          .Result(s_LOGISIM_NET_14));

   NOT_GATE      GATE_34 (.Input_1(s_LOGISIM_BUS_193[1]),
                          .Result(s_LOGISIM_NET_23));

   Multiplexer_bus_4 #(.NrOfBits(4))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_267[12:9]),
             .MuxIn_1(s_LOGISIM_BUS_267[20:17]),
             .MuxIn_2(s_LOGISIM_BUS_69[3:0]),
             .MuxIn_3(s_LOGISIM_BUS_102[3:0]),
             .MuxOut(s_LOGISIM_BUS_240[3:0]),
             .Sel(s_LOGISIM_BUS_47[1:0]));

   NOT_GATE      GATE_35 (.Input_1(s_LOGISIM_BUS_193[2]),
                          .Result(s_LOGISIM_NET_148));

   NOT_GATE      GATE_36 (.Input_1(s_LOGISIM_BUS_193[1]),
                          .Result(s_LOGISIM_NET_109));

   NOT_GATE      GATE_37 (.Input_1(s_LOGISIM_BUS_193[0]),
                          .Result(s_LOGISIM_NET_226));

   AND_GATE_9_INPUTS #(.BubblesMask(0))
      GATE_38 (.Input_1(s_LOGISIM_BUS_193[3]),
               .Input_2(s_LOGISIM_NET_125),
               .Input_3(s_LOGISIM_NET_24),
               .Input_4(s_LOGISIM_NET_245),
               .Input_5(s_LOGISIM_BUS_267[26]),
               .Input_6(s_LOGISIM_NET_206),
               .Input_7(s_LOGISIM_BUS_267[24]),
               .Input_8(s_LOGISIM_BUS_267[23]),
               .Input_9(s_LOGISIM_NET_41),
               .Result(s_LOGISIM_NET_264));

   NOT_GATE      GATE_39 (.Input_1(s_LOGISIM_BUS_193[1]),
                          .Result(s_LOGISIM_NET_284));

   NOT_GATE      GATE_40 (.Input_1(s_LOGISIM_BUS_193[0]),
                          .Result(s_LOGISIM_NET_221));

   AND_GATE_10_INPUTS #(.BubblesMask(0))
      GATE_41 (.Input_1(s_LOGISIM_NET_44),
               .Input_10(s_LOGISIM_BUS_267[22]),
               .Input_2(s_LOGISIM_BUS_193[3]),
               .Input_3(s_LOGISIM_NET_124),
               .Input_4(s_LOGISIM_NET_23),
               .Input_5(s_LOGISIM_NET_244),
               .Input_6(s_LOGISIM_NET_195),
               .Input_7(s_LOGISIM_NET_227),
               .Input_8(s_LOGISIM_BUS_267[24]),
               .Input_9(s_LOGISIM_NET_94),
               .Result(s_LOGISIM_NET_4));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_42 (.Input_1(s_LOGISIM_BUS_267[25]),
               .Input_2(s_LOGISIM_BUS_267[24]),
               .Input_3(s_LOGISIM_NET_170),
               .Result(s_LOGISIM_NET_236));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_43 (.Input_1(s_LOGISIM_NET_107),
               .Input_2(s_LOGISIM_NET_237),
               .Input_3(s_LOGISIM_BUS_267[26]),
               .Input_4(s_LOGISIM_BUS_267[25]),
               .Result(s_LOGISIM_NET_141));

   NOT_GATE      GATE_44 (.Input_1(s_LOGISIM_BUS_193[0]),
                          .Result(s_LOGISIM_NET_186));

   NOT_GATE      GATE_45 (.Input_1(s_LOGISIM_BUS_267[25]),
                          .Result(s_LOGISIM_NET_253));

   NOT_GATE      GATE_46 (.Input_1(s_LOGISIM_BUS_193[1]),
                          .Result(s_LOGISIM_NET_112));

   NOT_GATE      GATE_47 (.Input_1(s_LOGISIM_BUS_193[1]),
                          .Result(s_LOGISIM_NET_5));

   NOT_GATE      GATE_48 (.Input_1(s_LOGISIM_BUS_193[3]),
                          .Result(s_LOGISIM_NET_261));

   NOT_GATE      GATE_49 (.Input_1(s_LOGISIM_BUS_193[2]),
                          .Result(s_LOGISIM_NET_37));

   NOT_GATE      GATE_50 (.Input_1(s_LOGISIM_BUS_267[26]),
                          .Result(s_LOGISIM_NET_132));

   NOT_GATE      GATE_51 (.Input_1(s_LOGISIM_BUS_193[2]),
                          .Result(s_LOGISIM_NET_111));

   NOT_GATE      GATE_52 (.Input_1(s_LOGISIM_BUS_193[3]),
                          .Result(s_LOGISIM_NET_260));

   OR_GATE #(.BubblesMask(0))
      GATE_53 (.Input_1(s_LOGISIM_NET_216),
               .Input_2(s_LOGISIM_NET_200),
               .Result(s_LOGISIM_BUS_285[3]));

   NOT_GATE      GATE_54 (.Input_1(s_LOGISIM_BUS_193[0]),
                          .Result(s_LOGISIM_NET_71));

   NOT_GATE      GATE_55 (.Input_1(s_LOGISIM_BUS_267[26]),
                          .Result(s_LOGISIM_NET_195));

   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_56 (.Input_1(s_LOGISIM_BUS_193[3]),
               .Input_2(s_LOGISIM_NET_229),
               .Input_3(s_LOGISIM_NET_64),
               .Input_4(s_LOGISIM_NET_254),
               .Input_5(s_LOGISIM_BUS_267[26]),
               .Input_6(s_LOGISIM_NET_249),
               .Input_7(s_LOGISIM_NET_21),
               .Result(s_LOGISIM_NET_22));

   NOT_GATE      GATE_57 (.Input_1(s_LOGISIM_BUS_193[1]),
                          .Result(s_LOGISIM_NET_24));

   NOT_GATE      GATE_58 (.Input_1(s_LOGISIM_BUS_267[26]),
                          .Result(s_LOGISIM_NET_133));

   NOT_GATE      GATE_59 (.Input_1(s_LOGISIM_BUS_193[0]),
                          .Result(s_LOGISIM_NET_228));

   NOT_GATE      GATE_60 (.Input_1(s_LOGISIM_BUS_193[0]),
                          .Result(s_LOGISIM_NET_235));

   OR_GATE #(.BubblesMask(0))
      GATE_61 (.Input_1(s_LOGISIM_NET_123),
               .Input_2(s_LOGISIM_NET_140),
               .Result(s_LOGISIM_BUS_280[0]));

   NOT_GATE      GATE_62 (.Input_1(s_LOGISIM_BUS_193[1]),
                          .Result(s_LOGISIM_NET_42));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_63 (.Input_1(s_LOGISIM_BUS_267[21]),
               .Input_2(s_LOGISIM_BUS_193[3]),
               .Input_3(s_LOGISIM_NET_117),
               .Input_4(s_LOGISIM_NET_145),
               .Input_5(s_LOGISIM_NET_71),
               .Input_6(s_LOGISIM_NET_132),
               .Input_7(s_LOGISIM_NET_269),
               .Input_8(s_LOGISIM_BUS_267[24]),
               .Result(s_LOGISIM_NET_182));

   NOT_GATE      GATE_64 (.Input_1(s_LOGISIM_BUS_267[24]),
                          .Result(s_LOGISIM_NET_180));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_65 (.Input_1(s_LOGISIM_NET_261),
               .Input_2(s_LOGISIM_BUS_193[2]),
               .Input_3(s_LOGISIM_BUS_193[1]),
               .Input_4(s_LOGISIM_BUS_193[0]),
               .Result(s_LOGISIM_NET_277));

   NOT_GATE      GATE_66 (.Input_1(s_LOGISIM_BUS_193[0]),
                          .Result(s_LOGISIM_NET_187));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_67 (.Input_1(s_LOGISIM_NET_260),
               .Input_2(s_LOGISIM_NET_29),
               .Input_3(s_LOGISIM_BUS_193[1]),
               .Input_4(s_LOGISIM_NET_96),
               .Result(s_LOGISIM_BUS_78[0]));

   NOT_GATE      GATE_68 (.Input_1(s_LOGISIM_BUS_193[2]),
                          .Result(s_LOGISIM_NET_188));

   NOT_GATE      GATE_69 (.Input_1(s_LOGISIM_BUS_193[1]),
                          .Result(s_LOGISIM_NET_220));

   NOT_GATE      GATE_70 (.Input_1(s_LOGISIM_BUS_267[26]),
                          .Result(s_LOGISIM_NET_184));

   NOT_GATE      GATE_71 (.Input_1(s_LOGISIM_BUS_193[2]),
                          .Result(s_LOGISIM_NET_117));

   NOT_GATE      GATE_72 (.Input_1(s_LOGISIM_BUS_267[25]),
                          .Result(s_LOGISIM_NET_53));

   NOT_GATE      GATE_73 (.Input_1(s_LOGISIM_BUS_193[0]),
                          .Result(s_LOGISIM_NET_48));

   NOT_GATE      GATE_74 (.Input_1(s_LOGISIM_BUS_267[25]),
                          .Result(s_LOGISIM_NET_243));

   NOT_GATE      GATE_75 (.Input_1(s_LOGISIM_BUS_193[1]),
                          .Result(s_LOGISIM_NET_268));

   NOT_GATE      GATE_76 (.Input_1(s_LOGISIM_BUS_267[26]),
                          .Result(s_LOGISIM_NET_223));

   NOT_GATE      GATE_77 (.Input_1(s_LOGISIM_BUS_193[1]),
                          .Result(s_LOGISIM_NET_50));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_78 (.Input_1(s_LOGISIM_BUS_193[3]),
               .Input_2(s_LOGISIM_NET_190),
               .Input_3(s_LOGISIM_NET_82),
               .Input_4(s_LOGISIM_NET_262),
               .Input_5(s_LOGISIM_BUS_267[26]),
               .Input_6(s_LOGISIM_NET_253),
               .Input_7(s_LOGISIM_BUS_267[23]),
               .Input_8(s_LOGISIM_NET_86),
               .Result(s_LOGISIM_NET_242));

   NOT_GATE      GATE_79 (.Input_1(s_LOGISIM_BUS_267[26]),
                          .Result(s_LOGISIM_NET_149));

   NOT_GATE      GATE_80 (.Input_1(s_LOGISIM_BUS_193[1]),
                          .Result(s_LOGISIM_NET_199));

   NOT_GATE      GATE_81 (.Input_1(s_LOGISIM_BUS_193[2]),
                          .Result(s_LOGISIM_NET_75));

   NOT_GATE      GATE_82 (.Input_1(s_LOGISIM_BUS_193[3]),
                          .Result(s_LOGISIM_NET_256));

   NOT_GATE      GATE_83 (.Input_1(s_LOGISIM_BUS_193[0]),
                          .Result(s_LOGISIM_NET_63));

   NOT_GATE      GATE_84 (.Input_1(s_LOGISIM_BUS_193[0]),
                          .Result(s_LOGISIM_NET_28));

   NOT_GATE      GATE_85 (.Input_1(s_LOGISIM_BUS_193[2]),
                          .Result(s_LOGISIM_NET_225));

   NOT_GATE      GATE_86 (.Input_1(s_LOGISIM_BUS_267[25]),
                          .Result(s_LOGISIM_NET_131));

   NOT_GATE      GATE_87 (.Input_1(s_LOGISIM_BUS_193[1]),
                          .Result(s_LOGISIM_NET_82));

   NOT_GATE      GATE_88 (.Input_1(s_LOGISIM_BUS_267[25]),
                          .Result(s_LOGISIM_NET_88));

   AND_GATE #(.BubblesMask(0))
      GATE_89 (.Input_1(s_LOGISIM_BUS_193[3]),
               .Input_2(s_LOGISIM_BUS_193[1]),
               .Result(s_LOGISIM_NET_153));

   NOT_GATE      GATE_90 (.Input_1(s_LOGISIM_BUS_193[2]),
                          .Result(s_LOGISIM_NET_160));

   NOT_GATE      GATE_91 (.Input_1(s_LOGISIM_BUS_193[0]),
                          .Result(s_LOGISIM_NET_262));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_92 (.Input_1(s_LOGISIM_NET_184),
               .Input_2(s_LOGISIM_NET_266),
               .Input_3(s_LOGISIM_NET_185),
               .Input_4(s_LOGISIM_BUS_267[22]),
               .Result(s_LOGISIM_NET_62));

   NOT_GATE      GATE_93 (.Input_1(s_LOGISIM_BUS_193[2]),
                          .Result(s_LOGISIM_NET_276));

   NOT_GATE      GATE_94 (.Input_1(s_LOGISIM_BUS_267[26]),
                          .Result(s_LOGISIM_NET_233));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_95 (.Input_1(s_LOGISIM_BUS_267[26]),
               .Input_2(s_LOGISIM_BUS_267[24]),
               .Input_3(s_LOGISIM_BUS_267[23]),
               .Input_4(s_LOGISIM_BUS_267[22]),
               .Result(s_LOGISIM_NET_272));

   NOT_GATE      GATE_96 (.Input_1(s_LOGISIM_BUS_267[23]),
                          .Result(s_LOGISIM_NET_32));

   AND_GATE_9_INPUTS #(.BubblesMask(0))
      GATE_97 (.Input_1(s_LOGISIM_BUS_193[3]),
               .Input_2(s_LOGISIM_NET_198),
               .Input_3(s_LOGISIM_NET_109),
               .Input_4(s_LOGISIM_NET_201),
               .Input_5(s_LOGISIM_NET_176),
               .Input_6(s_LOGISIM_BUS_267[25]),
               .Input_7(s_LOGISIM_BUS_267[24]),
               .Input_8(s_LOGISIM_BUS_267[23]),
               .Input_9(s_LOGISIM_NET_120),
               .Result(s_LOGISIM_BUS_285[8]));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_98 (.Input_1(s_LOGISIM_NET_127),
               .Input_2(s_LOGISIM_NET_50),
               .Input_3(s_LOGISIM_BUS_267[26]),
               .Input_4(s_LOGISIM_NET_172),
               .Input_5(s_LOGISIM_NET_274),
               .Result(s_LOGISIM_NET_252));

   NOT_GATE      GATE_99 (.Input_1(s_LOGISIM_BUS_267[24]),
                          .Result(s_LOGISIM_NET_21));

   NOT_GATE      GATE_100 (.Input_1(s_LOGISIM_BUS_193[0]),
                           .Result(s_LOGISIM_NET_121));

   NOT_GATE      GATE_101 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_150));

   AND_GATE_10_INPUTS #(.BubblesMask(0))
      GATE_102 (.Input_1(s_LOGISIM_NET_44),
                .Input_10(s_LOGISIM_NET_210),
                .Input_2(s_LOGISIM_BUS_193[3]),
                .Input_3(s_LOGISIM_NET_148),
                .Input_4(s_LOGISIM_NET_208),
                .Input_5(s_LOGISIM_NET_28),
                .Input_6(s_LOGISIM_BUS_267[26]),
                .Input_7(s_LOGISIM_NET_171),
                .Input_8(s_LOGISIM_BUS_267[24]),
                .Input_9(s_LOGISIM_BUS_267[23]),
                .Result(s_LOGISIM_NET_26));

   NOT_GATE      GATE_103 (.Input_1(s_LOGISIM_BUS_267[24]),
                           .Result(s_LOGISIM_NET_166));

   NOT_GATE      GATE_104 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_54));

   NOT_GATE      GATE_105 (.Input_1(s_LOGISIM_BUS_267[26]),
                           .Result(s_LOGISIM_NET_19));

   NOT_GATE      GATE_106 (.Input_1(s_LOGISIM_BUS_267[24]),
                           .Result(s_LOGISIM_NET_239));

   NOT_GATE      GATE_107 (.Input_1(s_LOGISIM_BUS_193[0]),
                           .Result(s_LOGISIM_NET_204));

   NOT_GATE      GATE_108 (.Input_1(s_LOGISIM_BUS_267[22]),
                           .Result(s_LOGISIM_NET_110));

   NOT_GATE      GATE_109 (.Input_1(s_LOGISIM_BUS_193[0]),
                           .Result(s_LOGISIM_NET_275));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_110 (.Input_1(s_LOGISIM_BUS_193[3]),
                .Input_2(s_LOGISIM_BUS_193[2]),
                .Input_3(s_LOGISIM_NET_270),
                .Input_4(s_LOGISIM_NET_235),
                .Result(s_LOGISIM_NET_175));

   NOT_GATE      GATE_111 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_211));

   NOT_GATE      GATE_112 (.Input_1(s_LOGISIM_BUS_193[3]),
                           .Result(s_LOGISIM_NET_248));

   NOT_GATE      GATE_113 (.Input_1(s_LOGISIM_BUS_267[25]),
                           .Result(s_LOGISIM_NET_227));

   NOT_GATE      GATE_114 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_181));

   NOT_GATE      GATE_115 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_145));

   OR_GATE #(.BubblesMask(0))
      GATE_116 (.Input_1(s_LOGISIM_NET_99),
                .Input_2(s_LOGISIM_NET_242),
                .Result(s_LOGISIM_BUS_285[4]));

   NOT_GATE      GATE_117 (.Input_1(s_LOGISIM_BUS_267[25]),
                           .Result(s_LOGISIM_NET_45));

   NOT_GATE      GATE_118 (.Input_1(s_LOGISIM_BUS_193[0]),
                           .Result(s_LOGISIM_NET_144));

   AND_GATE_9_INPUTS #(.BubblesMask(0))
      GATE_119 (.Input_1(s_LOGISIM_BUS_193[3]),
                .Input_2(s_LOGISIM_NET_111),
                .Input_3(s_LOGISIM_NET_5),
                .Input_4(s_LOGISIM_NET_121),
                .Input_5(s_LOGISIM_NET_85),
                .Input_6(s_LOGISIM_BUS_267[25]),
                .Input_7(s_LOGISIM_BUS_267[24]),
                .Input_8(s_LOGISIM_BUS_267[23]),
                .Input_9(s_LOGISIM_BUS_267[22]),
                .Result(s_LOGISIM_BUS_271[1]));

   NOT_GATE      GATE_120 (.Input_1(s_LOGISIM_BUS_193[0]),
                           .Result(s_LOGISIM_NET_96));

   NOT_GATE      GATE_121 (.Input_1(s_LOGISIM_BUS_193[0]),
                           .Result(s_LOGISIM_NET_245));

   NOT_GATE      GATE_122 (.Input_1(s_LOGISIM_BUS_193[0]),
                           .Result(s_LOGISIM_NET_251));

   OR_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_123 (.Input_1(s_LOGISIM_NET_203),
                .Input_2(s_LOGISIM_NET_114),
                .Input_3(s_LOGISIM_NET_91),
                .Input_4(s_LOGISIM_NET_264),
                .Result(s_LOGISIM_BUS_280[1]));

   NOT_GATE      GATE_124 (.Input_1(s_LOGISIM_BUS_193[0]),
                           .Result(s_LOGISIM_NET_168));

   OR_GATE #(.BubblesMask(0))
      GATE_125 (.Input_1(s_LOGISIM_NET_128),
                .Input_2(s_LOGISIM_NET_250),
                .Result(s_LOGISIM_BUS_47[1]));

   NOT_GATE      GATE_126 (.Input_1(s_LOGISIM_BUS_267[24]),
                           .Result(s_LOGISIM_NET_241));

   NOT_GATE      GATE_127 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_40));

   NOT_GATE      GATE_128 (.Input_1(s_LOGISIM_BUS_193[0]),
                           .Result(s_LOGISIM_NET_164));

   NOT_GATE      GATE_129 (.Input_1(s_LOGISIM_BUS_193[3]),
                           .Result(s_LOGISIM_NET_35));

   OR_GATE #(.BubblesMask(0))
      GATE_130 (.Input_1(s_LOGISIM_NET_283),
                .Input_2(s_LOGISIM_NET_246),
                .Result(s_LOGISIM_NET_222));

   NOT_GATE      GATE_131 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_89));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_132 (.Input_1(s_LOGISIM_NET_217),
                .Input_2(s_LOGISIM_NET_276),
                .Input_3(s_LOGISIM_BUS_193[1]),
                .Input_4(s_LOGISIM_NET_74),
                .Result(s_LOGISIM_NET_118));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_133 (.Input_1(s_LOGISIM_NET_35),
                .Input_2(s_LOGISIM_NET_197),
                .Input_3(s_LOGISIM_BUS_193[1]),
                .Input_4(s_LOGISIM_NET_228),
                .Result(s_LOGISIM_NET_250));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_134 (.Input_1(s_LOGISIM_NET_81),
                .Input_2(s_LOGISIM_BUS_193[2]),
                .Input_3(s_LOGISIM_NET_177),
                .Input_4(s_LOGISIM_NET_164),
                .Result(s_LOGISIM_NET_67));

   NOT_GATE      GATE_135 (.Input_1(s_LOGISIM_BUS_193[3]),
                           .Result(s_LOGISIM_NET_139));

   NOT_GATE      GATE_136 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_138));

   NOT_GATE      GATE_137 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_156));

   NOT_GATE      GATE_138 (.Input_1(s_LOGISIM_BUS_267[25]),
                           .Result(s_LOGISIM_NET_269));

   NOT_GATE      GATE_139 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_79));

   NOT_GATE      GATE_140 (.Input_1(s_LOGISIM_BUS_193[0]),
                           .Result(s_LOGISIM_NET_273));

   NOT_GATE      GATE_141 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_177));

   NOT_GATE      GATE_142 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_213));

   NOT_GATE      GATE_143 (.Input_1(s_LOGISIM_BUS_193[0]),
                           .Result(s_LOGISIM_NET_27));

   AND_GATE_9_INPUTS #(.BubblesMask(0))
      GATE_144 (.Input_1(s_LOGISIM_BUS_267[21]),
                .Input_2(s_LOGISIM_BUS_193[3]),
                .Input_3(s_LOGISIM_NET_105),
                .Input_4(s_LOGISIM_NET_199),
                .Input_5(s_LOGISIM_NET_168),
                .Input_6(s_LOGISIM_NET_49),
                .Input_7(s_LOGISIM_NET_113),
                .Input_8(s_LOGISIM_NET_265),
                .Input_9(s_LOGISIM_BUS_267[23]),
                .Result(s_LOGISIM_NET_91));

   NOT_GATE      GATE_145 (.Input_1(s_LOGISIM_BUS_193[3]),
                           .Result(s_LOGISIM_NET_217));

   AND_GATE #(.BubblesMask(0))
      GATE_146 (.Input_1(s_LOGISIM_BUS_267[26]),
                .Input_2(s_LOGISIM_BUS_267[25]),
                .Result(s_LOGISIM_NET_115));

   NOT_GATE      GATE_147 (.Input_1(s_LOGISIM_BUS_267[22]),
                           .Result(s_LOGISIM_NET_41));

   NOT_GATE      GATE_148 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_159));

   NOT_GATE      GATE_149 (.Input_1(s_LOGISIM_BUS_267[25]),
                           .Result(s_LOGISIM_NET_249));

   NOT_GATE      GATE_150 (.Input_1(s_LOGISIM_NET_44),
                           .Result(s_LOGISIM_NET_134));

   NOT_GATE      GATE_151 (.Input_1(s_LOGISIM_BUS_267[26]),
                           .Result(s_LOGISIM_NET_119));

   NOT_GATE      GATE_152 (.Input_1(s_LOGISIM_BUS_267[26]),
                           .Result(s_LOGISIM_NET_59));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_153 (.Input_1(s_LOGISIM_BUS_193[3]),
                .Input_2(s_LOGISIM_NET_165),
                .Input_3(s_LOGISIM_NET_20),
                .Input_4(s_LOGISIM_NET_48),
                .Input_5(s_LOGISIM_BUS_267[26]),
                .Input_6(s_LOGISIM_NET_31),
                .Input_7(s_LOGISIM_BUS_267[24]),
                .Input_8(s_LOGISIM_NET_32),
                .Result(s_LOGISIM_NET_216));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_154 (.Input_1(s_LOGISIM_BUS_267[25]),
                .Input_2(s_LOGISIM_BUS_267[24]),
                .Input_3(s_LOGISIM_NET_218),
                .Input_4(s_LOGISIM_BUS_267[22]),
                .Result(s_LOGISIM_NET_76));

   NOT_GATE      GATE_155 (.Input_1(s_LOGISIM_BUS_267[22]),
                           .Result(s_LOGISIM_NET_120));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_156 (.Input_1(s_LOGISIM_BUS_193[3]),
                .Input_2(s_LOGISIM_NET_100),
                .Input_3(s_LOGISIM_NET_211),
                .Input_4(s_LOGISIM_NET_221),
                .Input_5(s_LOGISIM_BUS_267[26]),
                .Input_6(s_LOGISIM_NET_214),
                .Input_7(s_LOGISIM_BUS_267[24]),
                .Input_8(s_LOGISIM_NET_215),
                .Result(s_LOGISIM_NET_200));

   AND_GATE_9_INPUTS #(.BubblesMask(0))
      GATE_157 (.Input_1(s_LOGISIM_NET_134),
                .Input_2(s_LOGISIM_BUS_193[3]),
                .Input_3(s_LOGISIM_NET_37),
                .Input_4(s_LOGISIM_NET_112),
                .Input_5(s_LOGISIM_NET_275),
                .Input_6(s_LOGISIM_NET_119),
                .Input_7(s_LOGISIM_NET_3),
                .Input_8(s_LOGISIM_BUS_267[24]),
                .Input_9(s_LOGISIM_BUS_267[23]),
                .Result(s_LOGISIM_NET_259));

   OR_GATE #(.BubblesMask(0))
      GATE_158 (.Input_1(s_LOGISIM_NET_67),
                .Input_2(s_LOGISIM_NET_142),
                .Result(s_LOGISIM_BUS_47[0]));

   NOT_GATE      GATE_159 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_116));

   AND_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_160 (.Input_1(s_LOGISIM_BUS_267[21]),
                .Input_2(s_LOGISIM_BUS_193[3]),
                .Input_3(s_LOGISIM_NET_209),
                .Input_4(s_LOGISIM_NET_155),
                .Input_5(s_LOGISIM_NET_224),
                .Input_6(s_LOGISIM_NET_80),
                .Result(s_LOGISIM_NET_140));

   NOT_GATE      GATE_161 (.Input_1(s_LOGISIM_BUS_267[24]),
                           .Result(s_LOGISIM_NET_246));

   NOT_GATE      GATE_162 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_13));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_163 (.Input_1(s_LOGISIM_NET_135),
                .Input_2(s_LOGISIM_NET_61),
                .Input_3(s_LOGISIM_BUS_267[26]),
                .Input_4(s_LOGISIM_NET_178),
                .Input_5(s_LOGISIM_NET_9),
                .Result(s_LOGISIM_NET_167));

   NOT_GATE      GATE_164 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_237));

   NOT_GATE      GATE_165 (.Input_1(s_LOGISIM_BUS_267[26]),
                           .Result(s_LOGISIM_NET_80));

   OR_GATE #(.BubblesMask(0))
      GATE_166 (.Input_1(s_LOGISIM_NET_58),
                .Input_2(s_LOGISIM_NET_12),
                .Result(s_LOGISIM_BUS_271[0]));

   NOT_GATE      GATE_167 (.Input_1(s_LOGISIM_BUS_267[25]),
                           .Result(s_LOGISIM_NET_214));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_168 (.Input_1(s_LOGISIM_NET_256),
                .Input_2(s_LOGISIM_NET_13),
                .Input_3(s_LOGISIM_BUS_193[1]),
                .Input_4(s_LOGISIM_NET_27),
                .Result(s_LOGISIM_NET_142));

   NOT_GATE      GATE_169 (.Input_1(s_LOGISIM_BUS_193[3]),
                           .Result(s_LOGISIM_NET_66));

   NOT_GATE      GATE_170 (.Input_1(s_LOGISIM_BUS_193[0]),
                           .Result(s_LOGISIM_NET_244));

   NOT_GATE      GATE_171 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_100));

   NOT_GATE      GATE_172 (.Input_1(s_LOGISIM_BUS_267[26]),
                           .Result(s_LOGISIM_NET_49));

   OR_GATE_9_INPUTS #(.BubblesMask(0))
      GATE_173 (.Input_1(s_LOGISIM_NET_97),
                .Input_2(s_LOGISIM_NET_103),
                .Input_3(s_LOGISIM_NET_104),
                .Input_4(s_LOGISIM_NET_252),
                .Input_5(s_LOGISIM_NET_167),
                .Input_6(s_LOGISIM_NET_8),
                .Input_7(s_LOGISIM_NET_141),
                .Input_8(s_LOGISIM_NET_207),
                .Input_9(s_LOGISIM_NET_153),
                .Result(s_LOGISIM_BUS_285[0]));

   NOT_GATE      GATE_174 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_70));

   NOT_GATE      GATE_175 (.Input_1(s_LOGISIM_BUS_267[23]),
                           .Result(s_LOGISIM_NET_94));

   NAND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_176 (.Input_1(s_LOGISIM_BUS_267[24]),
                .Input_2(s_LOGISIM_BUS_267[23]),
                .Input_3(s_LOGISIM_BUS_267[22]),
                .Result(s_LOGISIM_NET_129));

   OR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_177 (.Input_1(s_LOGISIM_NET_258),
                .Input_2(s_LOGISIM_NET_182),
                .Input_3(s_LOGISIM_NET_65),
                .Result(s_LOGISIM_BUS_280[2]));

   NOT_GATE      GATE_178 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_25));

   NOT_GATE      GATE_179 (.Input_1(s_LOGISIM_BUS_267[26]),
                           .Result(s_LOGISIM_NET_176));

   OR_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_180 (.Input_1(s_LOGISIM_NET_161),
                .Input_2(s_LOGISIM_NET_76),
                .Input_3(s_LOGISIM_BUS_267[26]),
                .Input_4(s_LOGISIM_BUS_193[0]),
                .Input_5(s_LOGISIM_BUS_193[1]),
                .Input_6(s_LOGISIM_BUS_193[2]),
                .Result(s_LOGISIM_BUS_285[2]));

   NOT_GATE      GATE_181 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_72));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_182 (.Input_1(s_LOGISIM_NET_150),
                .Input_2(s_LOGISIM_NET_79),
                .Input_3(s_LOGISIM_NET_281),
                .Input_4(s_LOGISIM_NET_212),
                .Input_5(s_LOGISIM_NET_56),
                .Result(s_LOGISIM_NET_103));

   NOT_GATE      GATE_183 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_158));

   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_184 (.Input_1(s_LOGISIM_BUS_267[27]),
                .Input_2(s_LOGISIM_BUS_193[3]),
                .Input_3(s_LOGISIM_NET_14),
                .Input_4(s_LOGISIM_NET_279),
                .Input_5(s_LOGISIM_NET_187),
                .Input_6(s_LOGISIM_NET_46),
                .Input_7(s_LOGISIM_NET_189),
                .Result(s_LOGISIM_NET_58));

   AND_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_185 (.Input_1(s_LOGISIM_BUS_193[3]),
                .Input_2(s_LOGISIM_NET_230),
                .Input_3(s_LOGISIM_NET_284),
                .Input_4(s_LOGISIM_NET_231),
                .Input_5(s_LOGISIM_NET_19),
                .Input_6(s_LOGISIM_NET_232),
                .Result(s_LOGISIM_NET_157));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_186 (.Input_1(s_LOGISIM_NET_248),
                .Input_2(s_LOGISIM_NET_160),
                .Input_3(s_LOGISIM_NET_40),
                .Result(s_LOGISIM_NET_97));

   NOT_GATE      GATE_187 (.Input_1(s_LOGISIM_BUS_267[23]),
                           .Result(s_LOGISIM_NET_170));

   NOT_GATE      GATE_188 (.Input_1(s_LOGISIM_BUS_267[23]),
                           .Result(s_LOGISIM_NET_56));

   NOT_GATE      GATE_189 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_208));

   NOT_GATE      GATE_190 (.Input_1(s_LOGISIM_BUS_193[0]),
                           .Result(s_LOGISIM_NET_231));

   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_191 (.Input_1(s_LOGISIM_BUS_193[3]),
                .Input_2(s_LOGISIM_NET_196),
                .Input_3(s_LOGISIM_NET_72),
                .Input_4(s_LOGISIM_NET_226),
                .Input_5(s_LOGISIM_NET_149),
                .Input_6(s_LOGISIM_BUS_267[25]),
                .Input_7(s_LOGISIM_NET_73),
                .Result(s_LOGISIM_NET_123));

   AND_GATE_9_INPUTS #(.BubblesMask(0))
      GATE_192 (.Input_1(s_LOGISIM_BUS_267[21]),
                .Input_2(s_LOGISIM_BUS_193[3]),
                .Input_3(s_LOGISIM_NET_83),
                .Input_4(s_LOGISIM_NET_156),
                .Input_5(s_LOGISIM_NET_282),
                .Input_6(s_LOGISIM_NET_163),
                .Input_7(s_LOGISIM_NET_45),
                .Input_8(s_LOGISIM_NET_166),
                .Input_9(s_LOGISIM_BUS_267[23]),
                .Result(s_LOGISIM_NET_65));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_193 (.Input_1(s_LOGISIM_BUS_193[3]),
                .Input_2(s_LOGISIM_NET_174),
                .Input_3(s_LOGISIM_NET_57),
                .Input_4(s_LOGISIM_NET_251),
                .Input_5(s_LOGISIM_BUS_267[26]),
                .Input_6(s_LOGISIM_NET_243),
                .Input_7(s_LOGISIM_BUS_267[24]),
                .Input_8(s_LOGISIM_NET_60),
                .Result(s_LOGISIM_NET_169));

   NOT_GATE      GATE_194 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_38));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_195 (.Input_1(s_LOGISIM_BUS_193[3]),
                .Input_2(s_LOGISIM_NET_25),
                .Input_3(s_LOGISIM_NET_151),
                .Input_4(s_LOGISIM_NET_273),
                .Input_5(s_LOGISIM_NET_154),
                .Input_6(s_LOGISIM_NET_53),
                .Input_7(s_LOGISIM_BUS_267[23]),
                .Input_8(s_LOGISIM_BUS_267[22]),
                .Result(s_LOGISIM_BUS_285[6]));

   NOT_GATE      GATE_196 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_198));

   NOT_GATE      GATE_197 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_137));

   NOT_GATE      GATE_198 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_190));

   NOT_GATE      GATE_199 (.Input_1(s_LOGISIM_BUS_193[0]),
                           .Result(s_LOGISIM_NET_224));

   AND_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_200 (.Input_1(s_LOGISIM_NET_159),
                .Input_2(s_LOGISIM_NET_42),
                .Input_3(s_LOGISIM_BUS_267[26]),
                .Input_4(s_LOGISIM_BUS_267[24]),
                .Input_5(s_LOGISIM_BUS_267[23]),
                .Input_6(s_LOGISIM_BUS_267[22]),
                .Result(s_LOGISIM_NET_8));

   NOT_GATE      GATE_201 (.Input_1(s_LOGISIM_BUS_193[0]),
                           .Result(s_LOGISIM_NET_282));

   NOT_GATE      GATE_202 (.Input_1(s_LOGISIM_BUS_267[23]),
                           .Result(s_LOGISIM_NET_185));

   NOT_GATE      GATE_203 (.Input_1(s_LOGISIM_BUS_193[3]),
                           .Result(s_LOGISIM_NET_161));

   NOT_GATE      GATE_204 (.Input_1(s_LOGISIM_BUS_267[26]),
                           .Result(s_LOGISIM_NET_163));

   NOT_GATE      GATE_205 (.Input_1(s_LOGISIM_BUS_193[0]),
                           .Result(s_LOGISIM_NET_74));

   NOT_GATE      GATE_206 (.Input_1(s_LOGISIM_BUS_267[26]),
                           .Result(s_LOGISIM_NET_85));

   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_207 (.Input_1(s_LOGISIM_BUS_193[3]),
                .Input_2(s_LOGISIM_NET_188),
                .Input_3(s_LOGISIM_NET_54),
                .Input_4(s_LOGISIM_NET_219),
                .Input_5(s_LOGISIM_NET_133),
                .Input_6(s_LOGISIM_BUS_267[25]),
                .Input_7(s_LOGISIM_BUS_267[24]),
                .Result(s_LOGISIM_NET_147));

   NOT_GATE      GATE_208 (.Input_1(s_LOGISIM_BUS_267[25]),
                           .Result(s_LOGISIM_NET_206));

   NOT_GATE      GATE_209 (.Input_1(s_LOGISIM_BUS_267[25]),
                           .Result(s_LOGISIM_NET_283));

   NOT_GATE      GATE_210 (.Input_1(s_LOGISIM_BUS_267[24]),
                           .Result(s_LOGISIM_NET_212));

   AND_GATE_9_INPUTS #(.BubblesMask(0))
      GATE_211 (.Input_1(s_LOGISIM_NET_66),
                .Input_2(s_LOGISIM_NET_89),
                .Input_3(s_LOGISIM_BUS_193[1]),
                .Input_4(s_LOGISIM_BUS_193[0]),
                .Input_5(s_LOGISIM_BUS_267[26]),
                .Input_6(s_LOGISIM_BUS_267[25]),
                .Input_7(s_LOGISIM_NET_239),
                .Input_8(s_LOGISIM_NET_52),
                .Input_9(s_LOGISIM_BUS_267[22]),
                .Result(s_LOGISIM_NET_128));

   AND_GATE #(.BubblesMask(0))
      GATE_212 (.Input_1(s_LOGISIM_BUS_193[3]),
                .Input_2(s_LOGISIM_BUS_193[0]),
                .Result(s_LOGISIM_NET_207));

   Multiplexer_bus_4 #(.NrOfBits(4))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_152[3:0]),
             .MuxIn_1(s_LOGISIM_BUS_152[3:0]),
             .MuxIn_2(s_LOGISIM_BUS_267[16:13]),
             .MuxIn_3(s_LOGISIM_BUS_55[3:0]),
             .MuxOut(s_LOGISIM_BUS_257[3:0]),
             .Sel(s_LOGISIM_BUS_78[1:0]));

   NOT_GATE      GATE_213 (.Input_1(s_LOGISIM_BUS_267[22]),
                           .Result(s_LOGISIM_NET_215));

   NOT_GATE      GATE_214 (.Input_1(s_LOGISIM_BUS_267[23]),
                           .Result(s_LOGISIM_NET_52));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_215 (.Input_1(s_LOGISIM_NET_139),
                .Input_2(s_LOGISIM_BUS_193[2]),
                .Input_3(s_LOGISIM_BUS_193[1]),
                .Input_4(s_LOGISIM_BUS_193[0]),
                .Result(s_LOGISIM_NET_92));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_216 (.Input_1(s_LOGISIM_BUS_267[21]),
                .Input_2(s_LOGISIM_BUS_193[3]),
                .Input_3(s_LOGISIM_NET_84),
                .Input_4(s_LOGISIM_NET_263),
                .Input_5(s_LOGISIM_NET_87),
                .Input_6(s_LOGISIM_NET_255),
                .Input_7(s_LOGISIM_NET_88),
                .Input_8(s_LOGISIM_BUS_267[24]),
                .Result(s_LOGISIM_NET_114));

   NOT_GATE      GATE_217 (.Input_1(s_LOGISIM_BUS_193[3]),
                           .Result(s_LOGISIM_NET_81));

   NOT_GATE      GATE_218 (.Input_1(s_LOGISIM_BUS_267[25]),
                           .Result(s_LOGISIM_NET_232));

   NOT_GATE      GATE_219 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_135));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_220 (.Input_1(s_LOGISIM_BUS_267[27]),
                .Input_2(s_LOGISIM_BUS_193[3]),
                .Input_3(s_LOGISIM_NET_108),
                .Input_4(s_LOGISIM_NET_137),
                .Input_5(s_LOGISIM_NET_63),
                .Input_6(s_LOGISIM_BUS_267[26]),
                .Input_7(s_LOGISIM_NET_234),
                .Input_8(s_LOGISIM_NET_129),
                .Result(s_LOGISIM_NET_12));

   NOT_GATE      GATE_221 (.Input_1(s_LOGISIM_BUS_193[0]),
                           .Result(s_LOGISIM_NET_254));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_222 (.Input_1(s_LOGISIM_NET_213),
                .Input_2(s_LOGISIM_NET_158),
                .Input_3(s_LOGISIM_BUS_267[25]),
                .Input_4(s_LOGISIM_BUS_267[24]),
                .Input_5(s_LOGISIM_BUS_267[23]),
                .Result(s_LOGISIM_NET_104));

   NOT_GATE      GATE_223 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_125));

   NOT_GATE      GATE_224 (.Input_1(s_LOGISIM_BUS_267[26]),
                           .Result(s_LOGISIM_NET_281));

   NOT_GATE      GATE_225 (.Input_1(s_LOGISIM_BUS_267[25]),
                           .Result(s_LOGISIM_NET_171));

   NOT_GATE      GATE_226 (.Input_1(s_LOGISIM_BUS_267[23]),
                           .Result(s_LOGISIM_NET_218));

   NOT_GATE      GATE_227 (.Input_1(s_LOGISIM_BUS_267[22]),
                           .Result(s_LOGISIM_NET_274));

   NOT_GATE      GATE_228 (.Input_1(s_LOGISIM_BUS_193[0]),
                           .Result(s_LOGISIM_NET_87));

   NOT_GATE      GATE_229 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_107));

   NOT_GATE      GATE_230 (.Input_1(s_LOGISIM_BUS_267[24]),
                           .Result(s_LOGISIM_NET_77));

   NOT_GATE      GATE_231 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_279));

   NOT_GATE      GATE_232 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_29));

   NOT_GATE      GATE_233 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_196));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_234 (.Input_1(s_LOGISIM_BUS_193[3]),
                .Input_2(s_LOGISIM_BUS_267[23]),
                .Input_3(s_LOGISIM_NET_110),
                .Input_4(s_LOGISIM_NET_222),
                .Input_5(s_LOGISIM_NET_59),
                .Input_6(s_LOGISIM_NET_126),
                .Input_7(s_LOGISIM_NET_268),
                .Input_8(s_LOGISIM_NET_70),
                .Result(s_LOGISIM_BUS_285[7]));

   NOT_GATE      GATE_235 (.Input_1(s_LOGISIM_BUS_267[22]),
                           .Result(s_LOGISIM_NET_210));

   NOT_GATE      GATE_236 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_83));

   NOT_GATE      GATE_237 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_194));

   NOT_GATE      GATE_238 (.Input_1(s_LOGISIM_BUS_267[26]),
                           .Result(s_LOGISIM_NET_255));

   AND_GATE_9_INPUTS #(.BubblesMask(0))
      GATE_239 (.Input_1(s_LOGISIM_BUS_193[3]),
                .Input_2(s_LOGISIM_NET_181),
                .Input_3(s_LOGISIM_NET_38),
                .Input_4(s_LOGISIM_NET_186),
                .Input_5(s_LOGISIM_BUS_267[26]),
                .Input_6(s_LOGISIM_NET_238),
                .Input_7(s_LOGISIM_BUS_267[24]),
                .Input_8(s_LOGISIM_BUS_267[23]),
                .Input_9(s_LOGISIM_NET_51),
                .Result(s_LOGISIM_NET_98));

   NOT_GATE      GATE_240 (.Input_1(s_LOGISIM_BUS_267[26]),
                           .Result(s_LOGISIM_NET_146));

   NOT_GATE      GATE_241 (.Input_1(s_LOGISIM_BUS_267[23]),
                           .Result(s_LOGISIM_NET_60));

   NOT_GATE      GATE_242 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_151));

   OR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_243 (.Input_1(s_LOGISIM_NET_26),
                .Input_2(s_LOGISIM_NET_4),
                .Input_3(s_LOGISIM_NET_259),
                .Result(s_LOGISIM_BUS_285[5]));

   NOT_GATE      GATE_244 (.Input_1(s_LOGISIM_BUS_267[24]),
                           .Result(s_LOGISIM_NET_265));

   NOT_GATE      GATE_245 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_108));

   NAND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_246 (.Input_1(s_LOGISIM_NET_233),
                .Input_2(s_LOGISIM_BUS_267[25]),
                .Input_3(s_LOGISIM_BUS_267[24]),
                .Input_4(s_LOGISIM_BUS_267[23]),
                .Input_5(s_LOGISIM_BUS_267[22]),
                .Result(s_LOGISIM_NET_189));

   NOT_GATE      GATE_247 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_124));

   NOT_GATE      GATE_248 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_209));

   NOT_GATE      GATE_249 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_155));

   NOT_GATE      GATE_250 (.Input_1(s_LOGISIM_BUS_267[22]),
                           .Result(s_LOGISIM_NET_51));

   NOT_GATE      GATE_251 (.Input_1(s_LOGISIM_BUS_193[2]),
                           .Result(s_LOGISIM_NET_197));

   NOT_GATE      GATE_252 (.Input_1(s_LOGISIM_BUS_193[1]),
                           .Result(s_LOGISIM_NET_263));

   NOT_GATE      GATE_253 (.Input_1(s_LOGISIM_BUS_267[26]),
                           .Result(s_LOGISIM_NET_46));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_254 (.Input_1(s_LOGISIM_BUS_193[3]),
                .Input_2(s_LOGISIM_NET_75),
                .Input_3(s_LOGISIM_NET_194),
                .Input_4(s_LOGISIM_NET_204),
                .Input_5(s_LOGISIM_NET_146),
                .Input_6(s_LOGISIM_BUS_267[25]),
                .Input_7(s_LOGISIM_NET_77),
                .Input_8(s_LOGISIM_BUS_267[23]),
                .Result(s_LOGISIM_NET_203));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_255 (.Input_1(s_LOGISIM_BUS_193[3]),
                .Input_2(s_LOGISIM_NET_225),
                .Input_3(s_LOGISIM_NET_116),
                .Input_4(s_LOGISIM_NET_144),
                .Input_5(s_LOGISIM_BUS_267[26]),
                .Input_6(s_LOGISIM_NET_131),
                .Input_7(s_LOGISIM_NET_241),
                .Input_8(s_LOGISIM_BUS_267[23]),
                .Result(s_LOGISIM_NET_99));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_256 (.Input_1(s_LOGISIM_BUS_267[25]),
                .Input_2(s_LOGISIM_BUS_267[24]),
                .Input_3(s_LOGISIM_BUS_267[22]),
                .Result(s_LOGISIM_NET_205));



endmodule