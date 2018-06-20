/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : ALU_ADDER                                                    **
 **                                                                          **
 ******************************************************************************/

module ALU_ADDER( Cin,
                  LOGISIM_CLOCK_TREE_0,
                  OP0,
                  OP1,
                  RSB,
                  SUB,
                  Cout,
                  RESULT,
                  V);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Cin;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[31:0]  OP0;
   input[31:0]  OP1;
   input  RSB;
   input  SUB;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output Cout;
   output[31:0] RESULT;
   output V;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_18;
   wire[31:0] s_LOGISIM_BUS_19;
   wire[31:0] s_LOGISIM_BUS_21;
   wire[31:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_7;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_3[31:0]              = OP0;
   assign s_LOGISIM_NET_10                   = RSB;
   assign s_LOGISIM_NET_9                    = SUB;
   assign s_LOGISIM_BUS_7[31:0]              = OP1;
   assign s_LOGISIM_NET_15                   = Cin;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Cout                               = s_LOGISIM_NET_5;
   assign RESULT                             = s_LOGISIM_BUS_19[31:0];
   assign V                                  = s_LOGISIM_NET_14;

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   XOR_GATE_ONEHOT #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_2),
              .Input_2(s_LOGISIM_NET_5),
              .Result(s_LOGISIM_NET_14));

   NOT_GATE_BUS #(.NrOfBits(32))
      GATE_2 (.Input_1(s_LOGISIM_BUS_7[31:0]),
              .Result(s_LOGISIM_BUS_13[31:0]));

   NOT_GATE      GATE_3 (.Input_1(s_LOGISIM_NET_15),
                         .Result(s_LOGISIM_NET_20));

   NOT_GATE_BUS #(.NrOfBits(32))
      GATE_4 (.Input_1(s_LOGISIM_BUS_3[31:0]),
              .Result(s_LOGISIM_BUS_21[31:0]));

   FullAdder #(.ExtendedBits(2))
      ADDER2C_1 (.CarryIn(s_LOGISIM_NET_2),
                 .CarryOut(s_LOGISIM_NET_5),
                 .DataA(s_LOGISIM_BUS_0[31]),
                 .DataB(s_LOGISIM_BUS_18[31]),
                 .Result(s_LOGISIM_BUS_19[31]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_3[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_21[31:0]),
             .MuxOut(s_LOGISIM_BUS_0[31:0]),
             .Sel(s_LOGISIM_NET_10));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_7[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_13[31:0]),
             .MuxOut(s_LOGISIM_BUS_18[31:0]),
             .Sel(s_LOGISIM_NET_9));

   Multiplexer_2      MUX_3 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_15),
                             .MuxIn_1(s_LOGISIM_NET_20),
                             .MuxOut(s_LOGISIM_NET_11),
                             .Sel(s_LOGISIM_NET_17));

   Adder #(.ExtendedBits(32),
           .NrOfBits(31))
      ADDER2C_2 (.CarryIn(s_LOGISIM_NET_11),
                 .CarryOut(s_LOGISIM_NET_2),
                 .DataA(s_LOGISIM_BUS_0[30:0]),
                 .DataB(s_LOGISIM_BUS_18[30:0]),
                 .Result(s_LOGISIM_BUS_19[30:0]));

   OR_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_10),
              .Input_2(s_LOGISIM_NET_9),
              .Result(s_LOGISIM_NET_17));



endmodule
