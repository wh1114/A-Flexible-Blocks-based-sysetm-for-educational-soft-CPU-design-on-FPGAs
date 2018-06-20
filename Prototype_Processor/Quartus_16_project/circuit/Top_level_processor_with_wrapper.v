/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Top_level_processor_with_wrapper                             **
 **                                                                          **
 ******************************************************************************/

module Top_level_processor_with_wrapper( Input_1,
                                         Input_2,
                                         LOGISIM_CLOCK_TREE_0,
                                         Output_1,
                                         Output_2,
                                         Output_3);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Input_1;
   input  Input_2;
   input[4:0]  LOGISIM_CLOCK_TREE_0;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output Output_1;
   output Output_2;
   output Output_3;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_2;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_0                    = Input_1;
   assign s_LOGISIM_NET_1                    = Input_2;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Output_3                           = s_LOGISIM_NET_2;
   assign Output_2                           = s_LOGISIM_NET_2;
   assign Output_1                           = s_LOGISIM_NET_2;

   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   CPU_main      CPU_main_1 (.ASYN_CLR(s_LOGISIM_NET_1),
                             .CPU_EN(s_LOGISIM_NET_0),
                             .DOUT(s_LOGISIM_NET_2),
                             .FLAG_OUT(),
                             .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                             .OUT_RESULT(),
                             .PC_OUT());



endmodule
