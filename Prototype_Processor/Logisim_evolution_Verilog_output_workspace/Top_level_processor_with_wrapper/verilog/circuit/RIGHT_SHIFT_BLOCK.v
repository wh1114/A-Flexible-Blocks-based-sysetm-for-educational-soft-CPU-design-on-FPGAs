/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : RIGHT_SHIFT_BLOCK                                            **
 **                                                                          **
 ******************************************************************************/

module RIGHT_SHIFT_BLOCK( CIN,
                          LOGISIM_CLOCK_TREE_0,
                          OP_IN,
                          SHIFT_DISTANCE,
                          SHIFT_FUNC_SEL,
                          COUT,
                          RESULT);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  CIN;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[31:0]  OP_IN;
   input[4:0]  SHIFT_DISTANCE;
   input[1:0]  SHIFT_FUNC_SEL;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output COUT;
   output[31:0] RESULT;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_10;
   wire[1:0] s_LOGISIM_BUS_2;
   wire[4:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_7;
   wire[30:0] s_LOGISIM_BUS_9;


   /***************************************************************************
    ** Here all wiring is defined                                            **
    ***************************************************************************/
   assign s_LOGISIM_BUS_9[0]                 = s_LOGISIM_BUS_1[1];
   assign s_LOGISIM_BUS_6[0]                 = s_LOGISIM_BUS_9[0];
   assign s_LOGISIM_BUS_9[1]                 = s_LOGISIM_BUS_1[2];
   assign s_LOGISIM_BUS_6[1]                 = s_LOGISIM_BUS_9[1];
   assign s_LOGISIM_BUS_9[2]                 = s_LOGISIM_BUS_1[3];
   assign s_LOGISIM_BUS_6[2]                 = s_LOGISIM_BUS_9[2];
   assign s_LOGISIM_BUS_9[3]                 = s_LOGISIM_BUS_1[4];
   assign s_LOGISIM_BUS_6[3]                 = s_LOGISIM_BUS_9[3];
   assign s_LOGISIM_BUS_9[4]                 = s_LOGISIM_BUS_1[5];
   assign s_LOGISIM_BUS_6[4]                 = s_LOGISIM_BUS_9[4];
   assign s_LOGISIM_BUS_9[5]                 = s_LOGISIM_BUS_1[6];
   assign s_LOGISIM_BUS_6[5]                 = s_LOGISIM_BUS_9[5];
   assign s_LOGISIM_BUS_9[6]                 = s_LOGISIM_BUS_1[7];
   assign s_LOGISIM_BUS_6[6]                 = s_LOGISIM_BUS_9[6];
   assign s_LOGISIM_BUS_9[7]                 = s_LOGISIM_BUS_1[8];
   assign s_LOGISIM_BUS_6[7]                 = s_LOGISIM_BUS_9[7];
   assign s_LOGISIM_BUS_9[8]                 = s_LOGISIM_BUS_1[9];
   assign s_LOGISIM_BUS_6[8]                 = s_LOGISIM_BUS_9[8];
   assign s_LOGISIM_BUS_9[9]                 = s_LOGISIM_BUS_1[10];
   assign s_LOGISIM_BUS_6[9]                 = s_LOGISIM_BUS_9[9];
   assign s_LOGISIM_BUS_9[10]                = s_LOGISIM_BUS_1[11];
   assign s_LOGISIM_BUS_6[10]                = s_LOGISIM_BUS_9[10];
   assign s_LOGISIM_BUS_9[11]                = s_LOGISIM_BUS_1[12];
   assign s_LOGISIM_BUS_6[11]                = s_LOGISIM_BUS_9[11];
   assign s_LOGISIM_BUS_9[12]                = s_LOGISIM_BUS_1[13];
   assign s_LOGISIM_BUS_6[12]                = s_LOGISIM_BUS_9[12];
   assign s_LOGISIM_BUS_9[13]                = s_LOGISIM_BUS_1[14];
   assign s_LOGISIM_BUS_6[13]                = s_LOGISIM_BUS_9[13];
   assign s_LOGISIM_BUS_9[14]                = s_LOGISIM_BUS_1[15];
   assign s_LOGISIM_BUS_6[14]                = s_LOGISIM_BUS_9[14];
   assign s_LOGISIM_BUS_9[15]                = s_LOGISIM_BUS_1[16];
   assign s_LOGISIM_BUS_6[15]                = s_LOGISIM_BUS_9[15];
   assign s_LOGISIM_BUS_9[16]                = s_LOGISIM_BUS_1[17];
   assign s_LOGISIM_BUS_6[16]                = s_LOGISIM_BUS_9[16];
   assign s_LOGISIM_BUS_9[17]                = s_LOGISIM_BUS_1[18];
   assign s_LOGISIM_BUS_6[17]                = s_LOGISIM_BUS_9[17];
   assign s_LOGISIM_BUS_9[18]                = s_LOGISIM_BUS_1[19];
   assign s_LOGISIM_BUS_6[18]                = s_LOGISIM_BUS_9[18];
   assign s_LOGISIM_BUS_9[19]                = s_LOGISIM_BUS_1[20];
   assign s_LOGISIM_BUS_6[19]                = s_LOGISIM_BUS_9[19];
   assign s_LOGISIM_BUS_9[20]                = s_LOGISIM_BUS_1[21];
   assign s_LOGISIM_BUS_6[20]                = s_LOGISIM_BUS_9[20];
   assign s_LOGISIM_BUS_9[21]                = s_LOGISIM_BUS_1[22];
   assign s_LOGISIM_BUS_6[21]                = s_LOGISIM_BUS_9[21];
   assign s_LOGISIM_BUS_9[22]                = s_LOGISIM_BUS_1[23];
   assign s_LOGISIM_BUS_6[22]                = s_LOGISIM_BUS_9[22];
   assign s_LOGISIM_BUS_9[23]                = s_LOGISIM_BUS_1[24];
   assign s_LOGISIM_BUS_6[23]                = s_LOGISIM_BUS_9[23];
   assign s_LOGISIM_BUS_9[24]                = s_LOGISIM_BUS_1[25];
   assign s_LOGISIM_BUS_6[24]                = s_LOGISIM_BUS_9[24];
   assign s_LOGISIM_BUS_9[25]                = s_LOGISIM_BUS_1[26];
   assign s_LOGISIM_BUS_6[25]                = s_LOGISIM_BUS_9[25];
   assign s_LOGISIM_BUS_9[26]                = s_LOGISIM_BUS_1[27];
   assign s_LOGISIM_BUS_6[26]                = s_LOGISIM_BUS_9[26];
   assign s_LOGISIM_BUS_9[27]                = s_LOGISIM_BUS_1[28];
   assign s_LOGISIM_BUS_6[27]                = s_LOGISIM_BUS_9[27];
   assign s_LOGISIM_BUS_9[28]                = s_LOGISIM_BUS_1[29];
   assign s_LOGISIM_BUS_6[28]                = s_LOGISIM_BUS_9[28];
   assign s_LOGISIM_BUS_9[29]                = s_LOGISIM_BUS_1[30];
   assign s_LOGISIM_BUS_6[29]                = s_LOGISIM_BUS_9[29];
   assign s_LOGISIM_BUS_9[30]                = s_LOGISIM_BUS_1[31];
   assign s_LOGISIM_BUS_6[30]                = s_LOGISIM_BUS_9[30];

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_2[1:0]               = SHIFT_FUNC_SEL;
   assign s_LOGISIM_BUS_6[31]                = CIN;
   assign s_LOGISIM_BUS_3[4:0]               = SHIFT_DISTANCE;
   assign s_LOGISIM_BUS_1[31:0]              = OP_IN;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign COUT                               = s_LOGISIM_BUS_1[0];
   assign RESULT                             = s_LOGISIM_BUS_10[31:0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Shifter_32_bit #(.ShifterMode(4))
      Shifter_1 (.DataA(s_LOGISIM_BUS_1[31:0]),
                 .Result(s_LOGISIM_BUS_7[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_3[4:0]));

   Shifter_32_bit #(.ShifterMode(3))
      Shifter_2 (.DataA(s_LOGISIM_BUS_1[31:0]),
                 .Result(s_LOGISIM_BUS_0[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_3[4:0]));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_4[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_7[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_6[31:0]),
             .MuxOut(s_LOGISIM_BUS_10[31:0]),
             .Sel(s_LOGISIM_BUS_2[1:0]));

   Shifter_32_bit #(.ShifterMode(2))
      Shifter_3 (.DataA(s_LOGISIM_BUS_1[31:0]),
                 .Result(s_LOGISIM_BUS_4[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_3[4:0]));



endmodule
