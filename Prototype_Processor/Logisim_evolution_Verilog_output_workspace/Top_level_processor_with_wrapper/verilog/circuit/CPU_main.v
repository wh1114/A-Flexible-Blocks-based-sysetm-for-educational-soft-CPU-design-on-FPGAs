/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : CPU_main                                                     **
 **                                                                          **
 ******************************************************************************/

module CPU_main( ASYN_CLR,
                 CPU_EN,
                 LOGISIM_CLOCK_TREE_0,
                 DOUT,
                 FLAG_OUT,
                 OUT_RESULT,
                 PC_OUT);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  ASYN_CLR;
   input  CPU_EN;
   input[4:0]  LOGISIM_CLOCK_TREE_0;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output DOUT;
   output[3:0] FLAG_OUT;
   output[7:0] OUT_RESULT;
   output[7:0] PC_OUT;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_10;
   wire[3:0] s_LOGISIM_BUS_13;
   wire[3:0] s_LOGISIM_BUS_15;
   wire[31:0] s_LOGISIM_BUS_16;
   wire[3:0] s_LOGISIM_BUS_18;
   wire[8:0] s_LOGISIM_BUS_19;
   wire[31:0] s_LOGISIM_BUS_21;
   wire[31:0] s_LOGISIM_BUS_24;
   wire[31:0] s_LOGISIM_BUS_27;
   wire[12:0] s_LOGISIM_BUS_29;
   wire[31:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_30;
   wire[31:0] s_LOGISIM_BUS_31;
   wire[31:0] s_LOGISIM_BUS_33;
   wire[3:0] s_LOGISIM_BUS_35;
   wire[1:0] s_LOGISIM_BUS_37;
   wire[9:0] s_LOGISIM_BUS_38;
   wire[7:0] s_LOGISIM_BUS_39;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[3:0] s_LOGISIM_BUS_42;
   wire[31:0] s_LOGISIM_BUS_43;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_8;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_32;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all clock generator connections are defined                      **
    ***************************************************************************/
   assign s_LOGISIM_NET_1                    = LOGISIM_CLOCK_TREE_0[0];

   /***************************************************************************
    ** Here all wiring is defined                                            **
    ***************************************************************************/
   assign s_LOGISIM_BUS_29[0]                = s_LOGISIM_BUS_10[0];
   assign s_LOGISIM_BUS_6[0]                 = s_LOGISIM_BUS_29[0];
   assign s_LOGISIM_BUS_29[1]                = s_LOGISIM_BUS_10[1];
   assign s_LOGISIM_BUS_6[1]                 = s_LOGISIM_BUS_29[1];
   assign s_LOGISIM_BUS_29[2]                = s_LOGISIM_BUS_10[2];
   assign s_LOGISIM_BUS_6[2]                 = s_LOGISIM_BUS_29[2];
   assign s_LOGISIM_BUS_29[3]                = s_LOGISIM_BUS_10[3];
   assign s_LOGISIM_BUS_6[3]                 = s_LOGISIM_BUS_29[3];
   assign s_LOGISIM_BUS_29[4]                = s_LOGISIM_BUS_10[4];
   assign s_LOGISIM_BUS_6[4]                 = s_LOGISIM_BUS_29[4];
   assign s_LOGISIM_BUS_29[5]                = s_LOGISIM_BUS_10[5];
   assign s_LOGISIM_BUS_6[5]                 = s_LOGISIM_BUS_29[5];
   assign s_LOGISIM_BUS_29[6]                = s_LOGISIM_BUS_10[6];
   assign s_LOGISIM_BUS_6[6]                 = s_LOGISIM_BUS_29[6];
   assign s_LOGISIM_BUS_29[7]                = s_LOGISIM_BUS_10[7];
   assign s_LOGISIM_BUS_6[7]                 = s_LOGISIM_BUS_29[7];
   assign s_LOGISIM_BUS_29[8]                = s_LOGISIM_BUS_10[8];
   assign s_LOGISIM_BUS_6[8]                 = s_LOGISIM_BUS_29[8];
   assign s_LOGISIM_BUS_29[9]                = s_LOGISIM_BUS_10[9];
   assign s_LOGISIM_BUS_6[9]                 = s_LOGISIM_BUS_29[9];
   assign s_LOGISIM_BUS_29[10]               = s_LOGISIM_BUS_10[10];
   assign s_LOGISIM_BUS_6[10]                = s_LOGISIM_BUS_29[10];
   assign s_LOGISIM_BUS_29[11]               = s_LOGISIM_BUS_10[11];
   assign s_LOGISIM_BUS_6[11]                = s_LOGISIM_BUS_29[11];
   assign s_LOGISIM_BUS_29[12]               = s_LOGISIM_BUS_10[12];
   assign s_LOGISIM_BUS_6[12]                = s_LOGISIM_BUS_29[12];

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_23                   = CPU_EN;
   assign s_LOGISIM_NET_7                    = ASYN_CLR;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign PC_OUT                             = s_LOGISIM_BUS_21[7:0];
   assign FLAG_OUT                           = s_LOGISIM_BUS_42[3:0];
   assign OUT_RESULT                         = s_LOGISIM_BUS_39[7:0];
   assign DOUT                               = s_LOGISIM_NET_9;

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_31[31:0] = 32'd1;

   assign s_LOGISIM_NET_17 = 1'd0;

   assign s_LOGISIM_BUS_43[31:0] = 32'd-1;

   assign s_LOGISIM_BUS_6[31:13] = 19'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_24[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_3[31:0]),
             .MuxOut(s_LOGISIM_BUS_8[31:0]),
             .Sel(s_LOGISIM_NET_11));

   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_1 (.CarryIn(s_LOGISIM_NET_17),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_21[31:0]),
                 .DataB(s_LOGISIM_BUS_31[31:0]),
                 .Result(s_LOGISIM_BUS_24[31:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(s_LOGISIM_NET_14),
             .MuxIn_0(s_LOGISIM_BUS_3[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_16[31:0]),
             .MuxOut(s_LOGISIM_BUS_27[31:0]),
             .Sel(s_LOGISIM_NET_20));

   Multiplexer_bus_2 #(.NrOfBits(8))
      MUX_3 (.Enable(s_LOGISIM_NET_9),
             .MuxIn_0(8'd0),
             .MuxIn_1(s_LOGISIM_BUS_3[7:0]),
             .MuxOut(s_LOGISIM_BUS_39[7:0]),
             .Sel(s_LOGISIM_NET_9));

   NAND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_BUS_0[0]),
              .Input_2(s_LOGISIM_BUS_0[1]),
              .Input_3(s_LOGISIM_BUS_0[2]),
              .Input_4(s_LOGISIM_BUS_0[3]),
              .Result(s_LOGISIM_NET_14));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_4[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_6[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_43[31:0]),
             .MuxIn_3(32'd0),
             .MuxOut(s_LOGISIM_BUS_33[31:0]),
             .Sel(s_LOGISIM_BUS_37[1:0]));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   ALU      ALU_1 (.ALU_CTRL_BUS(s_LOGISIM_BUS_19[8:0]),
                   .FLAG(s_LOGISIM_BUS_13[3:0]),
                   .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                   .OP0_A_BUS(s_LOGISIM_BUS_30[31:0]),
                   .OP1_B_BUS(s_LOGISIM_BUS_33[31:0]),
                   .RESULT(s_LOGISIM_BUS_3[31:0]));

   PROCESSOR_CTRL_UNIT      PROCESSOR_CTRL_UNIT_1 (.ALU_CTRL(s_LOGISIM_BUS_19[8:0]),
                                                   .ASYS_CLR(s_LOGISIM_NET_7),
                                                   .B_BUS_SRC_SEL(s_LOGISIM_BUS_37[1:0]),
                                                   .CLK(s_LOGISIM_NET_1),
                                                   .CPU_EN(s_LOGISIM_NET_23),
                                                   .DOUT(s_LOGISIM_NET_9),
                                                   .FLAG_OUT(s_LOGISIM_BUS_42[3:0]),
                                                   .INSTRUCTION(s_LOGISIM_BUS_10[31:0]),
                                                   .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                   .OP0_REG_OUT_SEL(s_LOGISIM_BUS_35[3:0]),
                                                   .OP1_REG_OUT_SEL(s_LOGISIM_BUS_15[3:0]),
                                                   .PC_REG_EN(s_LOGISIM_NET_22),
                                                   .PC_SRC_SEL(s_LOGISIM_NET_11),
                                                   .RAM_INT_CTRL(s_LOGISIM_BUS_18[3:0]),
                                                   .REG_IN_BUS_SRC_SEL(s_LOGISIM_NET_20),
                                                   .REG_RD_SEL(s_LOGISIM_BUS_0[3:0]),
                                                   .RESULT_FLAG(s_LOGISIM_BUS_13[3:0]),
                                                   .ROM_CLKEN(s_LOGISIM_NET_12));

   CPU_REGISTERS      CPU_REGISTERS_1 (.CLK(s_LOGISIM_NET_1),
                                       .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                       .OP0_OUT_BUS(s_LOGISIM_BUS_30[31:0]),
                                       .OP0_REG_OUT_SEL(s_LOGISIM_BUS_35[3:0]),
                                       .OP1_OUT_BUS(s_LOGISIM_BUS_4[31:0]),
                                       .OP1_REG_OUT_SEL(s_LOGISIM_BUS_15[3:0]),
                                       .PC_ACLR(s_LOGISIM_NET_7),
                                       .PC_BUS(s_LOGISIM_BUS_21[31:0]),
                                       .PC_IN_BUS(s_LOGISIM_BUS_8[31:0]),
                                       .PC_REG_EN(s_LOGISIM_NET_22),
                                       .REG_ACLR(s_LOGISIM_NET_7),
                                       .REG_INPUT_BUS(s_LOGISIM_BUS_27[31:0]),
                                       .REG_WR_SEL(s_LOGISIM_BUS_0[3:0]));

   ROM_QUARTUS_16      ROM_QUARTUS_16_1 (.ADDR_IN(s_LOGISIM_BUS_21[9:0]),
                                         .CLK(s_LOGISIM_NET_1),
                                         .CLKEN(s_LOGISIM_NET_12),
                                         .DATA_OUT(s_LOGISIM_BUS_10[31:0]),
                                         .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0));

   RAM_QUARTUS_16      RAM_QUARTUS_16_1 (.ACLR(s_LOGISIM_NET_7),
                                         .ADDR_IN(s_LOGISIM_BUS_38[9:0]),
                                         .CLK(s_LOGISIM_NET_1),
                                         .DATA_IN(s_LOGISIM_BUS_3[31:0]),
                                         .DATA_OUT(s_LOGISIM_BUS_16[31:0]),
                                         .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                         .RAM_WREN(s_LOGISIM_NET_32));

   RAM_INTERFACE      RAM_INTERFACE_1 (.ADDR_IN(s_LOGISIM_BUS_3[9:0]),
                                       .ADDR_OUT(s_LOGISIM_BUS_38[9:0]),
                                       .CLK(s_LOGISIM_NET_1),
                                       .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                       .RAM_INT_CTRL(s_LOGISIM_BUS_18[3:0]),
                                       .RAM_WREN(s_LOGISIM_NET_32));



endmodule
