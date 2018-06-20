/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : ALU_RIGHT_SHIFT                                              **
 **                                                                          **
 ******************************************************************************/

module ALU_RIGHT_SHIFT( C,
                        LOGISIM_CLOCK_TREE_0,
                        Op_Input,
                        Shift_distance,
                        Shift_func_sel,
                        Shift_Out);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  C;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[31:0]  Op_Input;
   input[4:0]  Shift_distance;
   input[1:0]  Shift_func_sel;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] Shift_Out;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_1;
   wire[1:0] s_LOGISIM_BUS_2;
   wire[4:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[31:0] s_LOGISIM_BUS_5;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[30:0] s_LOGISIM_BUS_8;
   wire[31:0] s_LOGISIM_BUS_9;


   /***************************************************************************
    ** Here all wiring is defined                                            **
    ***************************************************************************/
   assign s_LOGISIM_BUS_8[0]                 = s_LOGISIM_BUS_1[1];
   assign s_LOGISIM_BUS_5[0]                 = s_LOGISIM_BUS_8[0];
   assign s_LOGISIM_BUS_8[1]                 = s_LOGISIM_BUS_1[2];
   assign s_LOGISIM_BUS_5[1]                 = s_LOGISIM_BUS_8[1];
   assign s_LOGISIM_BUS_8[2]                 = s_LOGISIM_BUS_1[3];
   assign s_LOGISIM_BUS_5[2]                 = s_LOGISIM_BUS_8[2];
   assign s_LOGISIM_BUS_8[3]                 = s_LOGISIM_BUS_1[4];
   assign s_LOGISIM_BUS_5[3]                 = s_LOGISIM_BUS_8[3];
   assign s_LOGISIM_BUS_8[4]                 = s_LOGISIM_BUS_1[5];
   assign s_LOGISIM_BUS_5[4]                 = s_LOGISIM_BUS_8[4];
   assign s_LOGISIM_BUS_8[5]                 = s_LOGISIM_BUS_1[6];
   assign s_LOGISIM_BUS_5[5]                 = s_LOGISIM_BUS_8[5];
   assign s_LOGISIM_BUS_8[6]                 = s_LOGISIM_BUS_1[7];
   assign s_LOGISIM_BUS_5[6]                 = s_LOGISIM_BUS_8[6];
   assign s_LOGISIM_BUS_8[7]                 = s_LOGISIM_BUS_1[8];
   assign s_LOGISIM_BUS_5[7]                 = s_LOGISIM_BUS_8[7];
   assign s_LOGISIM_BUS_8[8]                 = s_LOGISIM_BUS_1[9];
   assign s_LOGISIM_BUS_5[8]                 = s_LOGISIM_BUS_8[8];
   assign s_LOGISIM_BUS_8[9]                 = s_LOGISIM_BUS_1[10];
   assign s_LOGISIM_BUS_5[9]                 = s_LOGISIM_BUS_8[9];
   assign s_LOGISIM_BUS_8[10]                = s_LOGISIM_BUS_1[11];
   assign s_LOGISIM_BUS_5[10]                = s_LOGISIM_BUS_8[10];
   assign s_LOGISIM_BUS_8[11]                = s_LOGISIM_BUS_1[12];
   assign s_LOGISIM_BUS_5[11]                = s_LOGISIM_BUS_8[11];
   assign s_LOGISIM_BUS_8[12]                = s_LOGISIM_BUS_1[13];
   assign s_LOGISIM_BUS_5[12]                = s_LOGISIM_BUS_8[12];
   assign s_LOGISIM_BUS_8[13]                = s_LOGISIM_BUS_1[14];
   assign s_LOGISIM_BUS_5[13]                = s_LOGISIM_BUS_8[13];
   assign s_LOGISIM_BUS_8[14]                = s_LOGISIM_BUS_1[15];
   assign s_LOGISIM_BUS_5[14]                = s_LOGISIM_BUS_8[14];
   assign s_LOGISIM_BUS_8[15]                = s_LOGISIM_BUS_1[16];
   assign s_LOGISIM_BUS_5[15]                = s_LOGISIM_BUS_8[15];
   assign s_LOGISIM_BUS_8[16]                = s_LOGISIM_BUS_1[17];
   assign s_LOGISIM_BUS_5[16]                = s_LOGISIM_BUS_8[16];
   assign s_LOGISIM_BUS_8[17]                = s_LOGISIM_BUS_1[18];
   assign s_LOGISIM_BUS_5[17]                = s_LOGISIM_BUS_8[17];
   assign s_LOGISIM_BUS_8[18]                = s_LOGISIM_BUS_1[19];
   assign s_LOGISIM_BUS_5[18]                = s_LOGISIM_BUS_8[18];
   assign s_LOGISIM_BUS_8[19]                = s_LOGISIM_BUS_1[20];
   assign s_LOGISIM_BUS_5[19]                = s_LOGISIM_BUS_8[19];
   assign s_LOGISIM_BUS_8[20]                = s_LOGISIM_BUS_1[21];
   assign s_LOGISIM_BUS_5[20]                = s_LOGISIM_BUS_8[20];
   assign s_LOGISIM_BUS_8[21]                = s_LOGISIM_BUS_1[22];
   assign s_LOGISIM_BUS_5[21]                = s_LOGISIM_BUS_8[21];
   assign s_LOGISIM_BUS_8[22]                = s_LOGISIM_BUS_1[23];
   assign s_LOGISIM_BUS_5[22]                = s_LOGISIM_BUS_8[22];
   assign s_LOGISIM_BUS_8[23]                = s_LOGISIM_BUS_1[24];
   assign s_LOGISIM_BUS_5[23]                = s_LOGISIM_BUS_8[23];
   assign s_LOGISIM_BUS_8[24]                = s_LOGISIM_BUS_1[25];
   assign s_LOGISIM_BUS_5[24]                = s_LOGISIM_BUS_8[24];
   assign s_LOGISIM_BUS_8[25]                = s_LOGISIM_BUS_1[26];
   assign s_LOGISIM_BUS_5[25]                = s_LOGISIM_BUS_8[25];
   assign s_LOGISIM_BUS_8[26]                = s_LOGISIM_BUS_1[27];
   assign s_LOGISIM_BUS_5[26]                = s_LOGISIM_BUS_8[26];
   assign s_LOGISIM_BUS_8[27]                = s_LOGISIM_BUS_1[28];
   assign s_LOGISIM_BUS_5[27]                = s_LOGISIM_BUS_8[27];
   assign s_LOGISIM_BUS_8[28]                = s_LOGISIM_BUS_1[29];
   assign s_LOGISIM_BUS_5[28]                = s_LOGISIM_BUS_8[28];
   assign s_LOGISIM_BUS_8[29]                = s_LOGISIM_BUS_1[30];
   assign s_LOGISIM_BUS_5[29]                = s_LOGISIM_BUS_8[29];
   assign s_LOGISIM_BUS_8[30]                = s_LOGISIM_BUS_1[31];
   assign s_LOGISIM_BUS_5[30]                = s_LOGISIM_BUS_8[30];

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_2[1:0]               = Shift_func_sel;
   assign s_LOGISIM_BUS_1[31:0]              = Op_Input;
   assign s_LOGISIM_BUS_5[31]                = C;
   assign s_LOGISIM_BUS_3[4:0]               = Shift_distance;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Shift_Out                          = s_LOGISIM_BUS_9[31:0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Shifter_32_bit #(.ShifterMode(3))
      Shifter_1 (.DataA(s_LOGISIM_BUS_1[31:0]),
                 .Result(s_LOGISIM_BUS_0[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_3[4:0]));

   Shifter_32_bit #(.ShifterMode(4))
      Shifter_2 (.DataA(s_LOGISIM_BUS_1[31:0]),
                 .Result(s_LOGISIM_BUS_6[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_3[4:0]));

   Shifter_32_bit #(.ShifterMode(2))
      Shifter_3 (.DataA(s_LOGISIM_BUS_1[31:0]),
                 .Result(s_LOGISIM_BUS_4[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_3[4:0]));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_4[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_6[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_5[31:0]),
             .MuxOut(s_LOGISIM_BUS_9[31:0]),
             .Sel(s_LOGISIM_BUS_2[1:0]));



endmodule
