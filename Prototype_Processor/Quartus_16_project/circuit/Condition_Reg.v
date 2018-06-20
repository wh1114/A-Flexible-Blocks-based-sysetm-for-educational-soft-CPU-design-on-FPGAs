/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Condition_Reg                                                **
 **                                                                          **
 ******************************************************************************/

module Condition_Reg( CLEAR_FLG,
                      Clock,
                      FLAG_CTRL,
                      Flag_in,
                      LOGISIM_CLOCK_TREE_0,
                      Flag_reg);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  CLEAR_FLG;
   input  Clock;
   input[2:0]  FLAG_CTRL;
   input[3:0]  Flag_in;
   input[4:0]  LOGISIM_CLOCK_TREE_0;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[3:0] Flag_reg;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_10;
   wire[3:0] s_LOGISIM_BUS_13;
   wire[2:0] s_LOGISIM_BUS_14;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_6;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_14[2:0]              = FLAG_CTRL;
   assign s_LOGISIM_BUS_10[3:0]              = Flag_in;
   assign s_LOGISIM_NET_6                    = CLEAR_FLG;
   assign s_LOGISIM_NET_4                    = Clock;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Flag_reg                           = s_LOGISIM_BUS_13[3:0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_1 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_BUS_14[0]),
                       .D(s_LOGISIM_BUS_10[2]),
                       .Q(s_LOGISIM_BUS_13[2]),
                       .Reset(s_LOGISIM_NET_6),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_2 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_BUS_14[1]),
                       .D(s_LOGISIM_BUS_10[1]),
                       .Q(s_LOGISIM_BUS_13[1]),
                       .Reset(s_LOGISIM_NET_6),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_3 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_BUS_14[2]),
                       .D(s_LOGISIM_BUS_10[0]),
                       .Q(s_LOGISIM_BUS_13[0]),
                       .Reset(s_LOGISIM_NET_6),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_4 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_BUS_14[0]),
                       .D(s_LOGISIM_BUS_10[3]),
                       .Q(s_LOGISIM_BUS_13[3]),
                       .Reset(s_LOGISIM_NET_6),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));



endmodule
