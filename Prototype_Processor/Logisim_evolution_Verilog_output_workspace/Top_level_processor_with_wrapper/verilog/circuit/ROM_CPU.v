/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : ROM_CPU                                                      **
 **                                                                          **
 ******************************************************************************/

module ROM_CPU( LOGISIM_CLOCK_TREE_0,
                address,
                clken,
                clock,
                q);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[9:0]  address;
   input  clken;
   input  clock;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] q;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[9:0] s_LOGISIM_BUS_0;
   wire[9:0] s_LOGISIM_BUS_2;
   wire[31:0] s_LOGISIM_BUS_4;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_5;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_1                    = clock;
   assign s_LOGISIM_NET_5                    = clken;
   assign s_LOGISIM_BUS_2[9:0]               = address;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign q                                  = s_LOGISIM_BUS_4[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_3 = 1'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(10))
      REGISTER_FILE_1 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_5),
                       .D(s_LOGISIM_BUS_2[9:0]),
                       .Q(s_LOGISIM_BUS_0[9:0]),
                       .Reset(s_LOGISIM_NET_3),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));



endmodule
