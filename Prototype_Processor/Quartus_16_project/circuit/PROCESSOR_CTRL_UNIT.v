/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : PROCESSOR_CTRL_UNIT                                          **
 **                                                                          **
 ******************************************************************************/

module PROCESSOR_CTRL_UNIT( ASYS_CLR,
                            CLK,
                            CPU_EN,
                            INSTRUCTION,
                            LOGISIM_CLOCK_TREE_0,
                            RESULT_FLAG,
                            ALU_CTRL,
                            B_BUS_SRC_SEL,
                            DOUT,
                            FLAG_OUT,
                            OP0_REG_OUT_SEL,
                            OP1_REG_OUT_SEL,
                            PC_REG_EN,
                            PC_SRC_SEL,
                            RAM_INT_CTRL,
                            REG_IN_BUS_SRC_SEL,
                            REG_RD_SEL,
                            ROM_CLKEN);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  ASYS_CLR;
   input  CLK;
   input  CPU_EN;
   input[31:0]  INSTRUCTION;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[3:0]  RESULT_FLAG;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[8:0] ALU_CTRL;
   output[1:0] B_BUS_SRC_SEL;
   output DOUT;
   output[3:0] FLAG_OUT;
   output[3:0] OP0_REG_OUT_SEL;
   output[3:0] OP1_REG_OUT_SEL;
   output PC_REG_EN;
   output PC_SRC_SEL;
   output[3:0] RAM_INT_CTRL;
   output REG_IN_BUS_SRC_SEL;
   output[3:0] REG_RD_SEL;
   output ROM_CLKEN;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[2:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_1;
   wire[3:0] s_LOGISIM_BUS_10;
   wire[3:0] s_LOGISIM_BUS_17;
   wire[1:0] s_LOGISIM_BUS_18;
   wire[3:0] s_LOGISIM_BUS_19;
   wire[3:0] s_LOGISIM_BUS_20;
   wire[8:0] s_LOGISIM_BUS_3;
   wire[3:0] s_LOGISIM_BUS_4;
   wire[3:0] s_LOGISIM_BUS_5;
   wire[3:0] s_LOGISIM_BUS_8;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_9                    = ASYS_CLR;
   assign s_LOGISIM_BUS_1[31:0]              = INSTRUCTION;
   assign s_LOGISIM_NET_13                   = CPU_EN;
   assign s_LOGISIM_BUS_4[3:0]               = RESULT_FLAG;
   assign s_LOGISIM_NET_2                    = CLK;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign OP1_REG_OUT_SEL                    = s_LOGISIM_BUS_20[3:0];
   assign PC_SRC_SEL                         = s_LOGISIM_NET_11;
   assign REG_IN_BUS_SRC_SEL                 = s_LOGISIM_NET_16;
   assign REG_RD_SEL                         = s_LOGISIM_BUS_19[3:0];
   assign B_BUS_SRC_SEL                      = s_LOGISIM_BUS_18[1:0];
   assign ALU_CTRL                           = s_LOGISIM_BUS_3[8:0];
   assign DOUT                               = s_LOGISIM_NET_21;
   assign ROM_CLKEN                          = s_LOGISIM_NET_14;
   assign OP0_REG_OUT_SEL                    = s_LOGISIM_BUS_17[3:0];
   assign RAM_INT_CTRL                       = s_LOGISIM_BUS_8[3:0];
   assign PC_REG_EN                          = s_LOGISIM_NET_12;
   assign FLAG_OUT                           = s_LOGISIM_BUS_5[3:0];

   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   PC_RAM_DECODER      PC_RAM_DECODER_1 (.CPU_EN(s_LOGISIM_NET_13),
                                         .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                         .PC_REG_EN(s_LOGISIM_NET_12),
                                         .PC_SRC_SEL(s_LOGISIM_NET_11),
                                         .RAM_INT_CTRL(s_LOGISIM_BUS_8[3:0]),
                                         .ROM_CLKEN(s_LOGISIM_NET_14),
                                         .STATE(s_LOGISIM_BUS_10[3:0]));

   COND_FLAG_CHK      COND_FLAG_CHK_1 (.CONDITION_IN(s_LOGISIM_BUS_1[31:28]),
                                       .CONDITION_MATCHED(s_LOGISIM_NET_7),
                                       .FLAG_IN(s_LOGISIM_BUS_5[3:0]),
                                       .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0));

   CTRL_DECODER      CTRL_DECODER_1 (.ALU_CTRL(s_LOGISIM_BUS_3[8:0]),
                                     .B_BUS_SRC_SEL(s_LOGISIM_BUS_18[1:0]),
                                     .C_FLAG(s_LOGISIM_BUS_5[1]),
                                     .DOUT(s_LOGISIM_NET_21),
                                     .FLAG_REG_CTRL(s_LOGISIM_BUS_0[2:0]),
                                     .INST(s_LOGISIM_BUS_1[31:0]),
                                     .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                     .OP0_REG_OUT_SEL(s_LOGISIM_BUS_17[3:0]),
                                     .OP1_REG_OUT_SEL(s_LOGISIM_BUS_20[3:0]),
                                     .RD_OUT(s_LOGISIM_BUS_19[3:0]),
                                     .REG_INPUT_SRC_SEL(s_LOGISIM_NET_16),
                                     .STATE(s_LOGISIM_BUS_10[3:0]));

   FLAG_REGISTER      FLAG_REGISTER_1 (.CLK(s_LOGISIM_NET_2),
                                       .CLR_FLAG(s_LOGISIM_NET_9),
                                       .FLAG_EN_CTRL(s_LOGISIM_BUS_0[2:0]),
                                       .FLAG_IN(s_LOGISIM_BUS_4[3:0]),
                                       .FLAG_OUT(s_LOGISIM_BUS_5[3:0]),
                                       .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0));

   State_machine      State_machine_1 (.CLK(s_LOGISIM_NET_2),
                                       .COND_MATCHED(s_LOGISIM_NET_7),
                                       .CPU_EN(s_LOGISIM_NET_13),
                                       .INSTRUCTION(s_LOGISIM_BUS_1[31:0]),
                                       .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                       .STATE(s_LOGISIM_BUS_10[3:0]),
                                       .STATE_CLR(s_LOGISIM_NET_9));



endmodule
