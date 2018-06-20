/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : RAM_CPU                                                      **
 **                                                                          **
 ******************************************************************************/

module RAM_CPU( LOGISIM_CLOCK_TREE_0,
                aclr,
                clock,
                data,
                rdaddress,
                wraddress,
                wren,
                q);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  aclr;
   input  clock;
   input[31:0]  data;
   input[9:0]  rdaddress;
   input[9:0]  wraddress;
   input  wren;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] q;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[9:0] s_LOGISIM_BUS_5;
   wire[9:0] s_LOGISIM_BUS_6;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_7;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_3                    = clock;
   assign s_LOGISIM_BUS_5[9:0]               = wraddress;
   assign s_LOGISIM_NET_7                    = wren;
   assign s_LOGISIM_BUS_1[31:0]              = data;
   assign s_LOGISIM_BUS_6[9:0]               = rdaddress;
   assign s_LOGISIM_NET_2                    = aclr;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign q                                  = s_LOGISIM_BUS_4[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_0 = 1'd1;



endmodule
