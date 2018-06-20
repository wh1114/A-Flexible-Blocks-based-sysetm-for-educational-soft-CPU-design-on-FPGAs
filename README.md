# A-Flexible-Blocks-based-system-for-educational-soft-CPU-design-on-FPGAs
====================================================================================

This project is the final year project of a student from Imperial College London. 
The name of the project is A Flexible Blocks based system for educational soft CPU design on FPGAs.
This project is to develop a development environment where future first-year students in Imperial can build a RISC soft-core CPU on.

This project is separated into two parts. The graphical implementation and the Verilog implementation.
The graphical implementation use a software called [Logisim Evolution](https://github.com/reds-heig/logisim-evolution) which is developed by [reds-heig](https://github.com/reds-heig), while Logisim Evolution is succeeded from the software [Logisim](http://www.cburch.com/logisim/) developed by Dr Carl Burch.
This software can transform the graphical logic blocks in Logisim Evolution into Verilog HDL, which is used to implement the processor onto Cyclone V SE series on a [DE1 board](http://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=836#section).
The implementation from Verilog HDL programme of the soft-core CPU onto DE1 uses [Quartus 16.0](http://dl.altera.com/16.0/?edition=standard&platform=windows&download_manager=dlm3) for compiling and download onto the DE1 board.

This project is structured as following:

- [Prototype processor](Prototype_Processor): a prototype processor created as a reference for the development environment.

- [Development Environment](Development_Environment) : the resultant development environment that students will use to build the processor.

- [Logisim Evolution launch bat files](Logisim_Evolution_launch_bat_files) : it contains the bat files that students need to launch Logisim Evolution since combinational analysis is needed for students to construct logic.

- [Documents](Documents) : it contains an example programme written for the prototype processor, which was used to verify the functionalities of the RISC processor.

- [Simple assembler for prototype processor](Simple_assembler_for_prototype_processor/Simple_assembler.cpp) : a simple C++ programme that can be used to generate 32-bit instruction designed uniquely for the prototype processor.

It is worth mentioning that the prototype processor is not pipelined. This is the same for the processor framework provided in the Development Environment. 
Students have the flexibility to modify their processor once their processors can run the programme in the Documents. Since the prototype processor and the framework provided by the development environment are both in [Harvard structure](https://en.wikipedia.org/wiki/Harvard_architecture), students can modify their processor to implement a [von Neumann architecture](https://en.wikipedia.org/wiki/Von_Neumann_architecture).

## Credits
The development of this development environment cannot come true without the following people/organisation:
* Carl Burch - Hendrix College - USA
* [reds-heig](https://github.com/reds-heig)
* Thomas Clarke - Imperial College London - UK
* Edward Stott - Imperial College London - UK