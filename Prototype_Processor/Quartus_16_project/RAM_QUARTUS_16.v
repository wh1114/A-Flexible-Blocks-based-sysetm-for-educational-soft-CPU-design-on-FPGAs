/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : RAM_QUARTUS_16                                               **
 **                                                                          **
 ******************************************************************************/

module RAM_QUARTUS_16( ACLR,
                       ADDR_IN,
                       CLK,
                       DATA_IN,
                       LOGISIM_CLOCK_TREE_0,
                       RAM_WREN,
                       DATA_OUT);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  ACLR;
   input[9:0]  ADDR_IN;
   input  CLK;
   input[31:0]  DATA_IN;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  RAM_WREN;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] DATA_OUT;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[9:0] s_LOGISIM_BUS_2;
   wire[31:0] s_LOGISIM_BUS_4;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_5;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_0[31:0]              = DATA_IN;
   assign s_LOGISIM_NET_1                    = ACLR;
   assign s_LOGISIM_BUS_2[9:0]               = ADDR_IN;
   assign s_LOGISIM_NET_3                    = CLK;
   assign s_LOGISIM_NET_5                    = RAM_WREN;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign DATA_OUT                           = s_LOGISIM_BUS_4[31:0];

   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   RAM_CPU      RAM_CPU_1 (.aclr(s_LOGISIM_NET_1),
                           .clock(s_LOGISIM_NET_3),
                           .data(s_LOGISIM_BUS_0[31:0]),
                           .q(s_LOGISIM_BUS_4[31:0]),
                           .rdaddress(s_LOGISIM_BUS_2[9:0]),
                           .wraddress(s_LOGISIM_BUS_2[9:0]),
                           .wren(s_LOGISIM_NET_5));



endmodule
