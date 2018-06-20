/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : ROM_QUARTUS_16                                               **
 **                                                                          **
 ******************************************************************************/

module ROM_QUARTUS_16( ADDR_IN,
                       CLK,
                       CLKEN,
                       LOGISIM_CLOCK_TREE_0,
                       DATA_OUT);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[9:0]  ADDR_IN;
   input  CLK;
   input  CLKEN;
   input[4:0]  LOGISIM_CLOCK_TREE_0;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] DATA_OUT;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[9:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_3;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_2;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_1                    = CLK;
   assign s_LOGISIM_BUS_0[9:0]               = ADDR_IN;
   assign s_LOGISIM_NET_2                    = CLKEN;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign DATA_OUT                           = s_LOGISIM_BUS_3[31:0];

   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   ROM_CPU      ROM_CPU_1 (.address(s_LOGISIM_BUS_0[9:0]),
                           .clken(s_LOGISIM_NET_2),
                           .clock(s_LOGISIM_NET_1),
                           .q(s_LOGISIM_BUS_3[31:0]));



endmodule
