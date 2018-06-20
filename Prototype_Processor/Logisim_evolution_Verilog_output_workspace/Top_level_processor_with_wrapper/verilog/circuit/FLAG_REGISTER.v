/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : FLAG_REGISTER                                                **
 **                                                                          **
 ******************************************************************************/

module FLAG_REGISTER( CLK,
                      CLR_FLAG,
                      FLAG_EN_CTRL,
                      FLAG_IN,
                      LOGISIM_CLOCK_TREE_0,
                      FLAG_OUT);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  CLK;
   input  CLR_FLAG;
   input[2:0]  FLAG_EN_CTRL;
   input[3:0]  FLAG_IN;
   input[4:0]  LOGISIM_CLOCK_TREE_0;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[3:0] FLAG_OUT;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[2:0] s_LOGISIM_BUS_10;
   wire[3:0] s_LOGISIM_BUS_15;
   wire[3:0] s_LOGISIM_BUS_8;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_6;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_0                    = CLK;
   assign s_LOGISIM_BUS_10[2:0]              = FLAG_EN_CTRL;
   assign s_LOGISIM_BUS_15[3:0]              = FLAG_IN;
   assign s_LOGISIM_NET_6                    = CLR_FLAG;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign FLAG_OUT                           = s_LOGISIM_BUS_8[3:0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_1 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_BUS_10[0]),
                       .D(s_LOGISIM_BUS_15[3]),
                       .Q(s_LOGISIM_BUS_8[3]),
                       .Reset(s_LOGISIM_NET_6),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_2 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_BUS_10[1]),
                       .D(s_LOGISIM_BUS_15[1]),
                       .Q(s_LOGISIM_BUS_8[1]),
                       .Reset(s_LOGISIM_NET_6),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_3 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_BUS_10[0]),
                       .D(s_LOGISIM_BUS_15[2]),
                       .Q(s_LOGISIM_BUS_8[2]),
                       .Reset(s_LOGISIM_NET_6),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_4 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_BUS_10[2]),
                       .D(s_LOGISIM_BUS_15[0]),
                       .Q(s_LOGISIM_BUS_8[0]),
                       .Reset(s_LOGISIM_NET_6),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));



endmodule
