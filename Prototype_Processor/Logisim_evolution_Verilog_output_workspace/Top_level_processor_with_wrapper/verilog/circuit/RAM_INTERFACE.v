/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : RAM_INTERFACE                                                **
 **                                                                          **
 ******************************************************************************/

module RAM_INTERFACE( ADDR_IN,
                      CLK,
                      LOGISIM_CLOCK_TREE_0,
                      RAM_INT_CTRL,
                      ADDR_OUT,
                      RAM_WREN);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[9:0]  ADDR_IN;
   input  CLK;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[3:0]  RAM_INT_CTRL;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[9:0] ADDR_OUT;
   output RAM_WREN;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[9:0] s_LOGISIM_BUS_1;
   wire[9:0] s_LOGISIM_BUS_2;
   wire[9:0] s_LOGISIM_BUS_8;
   wire[3:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_7;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_2[9:0]               = ADDR_IN;
   assign s_LOGISIM_BUS_9[3:0]               = RAM_INT_CTRL;
   assign s_LOGISIM_NET_7                    = CLK;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign RAM_WREN                           = s_LOGISIM_BUS_9[0];
   assign ADDR_OUT                           = s_LOGISIM_BUS_8[9:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_0 = 1'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(10))
      REGISTER_FILE_1 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_BUS_9[1]),
                       .D(s_LOGISIM_BUS_2[9:0]),
                       .Q(s_LOGISIM_BUS_1[9:0]),
                       .Reset(s_LOGISIM_NET_0),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   Multiplexer_bus_2 #(.NrOfBits(10))
      MUX_1 (.Enable(s_LOGISIM_BUS_9[3]),
             .MuxIn_0(s_LOGISIM_BUS_2[9:0]),
             .MuxIn_1(s_LOGISIM_BUS_1[9:0]),
             .MuxOut(s_LOGISIM_BUS_8[9:0]),
             .Sel(s_LOGISIM_BUS_9[2]));



endmodule
