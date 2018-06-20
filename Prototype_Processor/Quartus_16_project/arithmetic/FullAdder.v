/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : FullAdder                                                    **
 **                                                                          **
 ******************************************************************************/

module FullAdder( CarryIn,
                  DataA,
                  DataB,
                  CarryOut,
                  Result);

   /***************************************************************************
    ** Here all module parameters are defined with a dummy value             **
    ***************************************************************************/
   parameter ExtendedBits = 1;


   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  CarryIn;
   input  DataA;
   input  DataB;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output CarryOut;
   output Result;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[ExtendedBits-1:0] s_extended_dataA;
   wire[ExtendedBits-1:0] s_extended_dataB;
   wire[ExtendedBits-1:0] s_sum_result;

    assign   {CarryOut,Result} = DataA + DataB + CarryIn;

endmodule
