## Generated SDC file "CPU_main.out.sdc"

## Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, the Altera Quartus Prime License Agreement,
## the Altera MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Altera and sold by Altera or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Standard Edition"

## DATE    "Fri Jun 01 21:11:45 2018"

##
## DEVICE  "5CSEMA5F31C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {FPGA_GlobalClock} -period 1.000 -waveform { 0.000 0.500 } [get_ports {FPGA_GlobalClock}]
create_clock -name {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]} -period 1.000 -waveform { 0.000 0.500 } [get_registers {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}]
create_clock -name {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]} -period 1.000 -waveform { 0.000 0.500 } [get_registers {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}] -rise_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}]  0.270  
set_clock_uncertainty -rise_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}] -fall_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}]  0.270  
set_clock_uncertainty -rise_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}] -rise_to [get_clocks {FPGA_GlobalClock}]  0.290  
set_clock_uncertainty -rise_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}] -fall_to [get_clocks {FPGA_GlobalClock}]  0.290  
set_clock_uncertainty -fall_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}] -rise_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}]  0.270  
set_clock_uncertainty -fall_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}] -fall_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}]  0.270  
set_clock_uncertainty -fall_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}] -rise_to [get_clocks {FPGA_GlobalClock}]  0.290  
set_clock_uncertainty -fall_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}] -fall_to [get_clocks {FPGA_GlobalClock}]  0.290  
set_clock_uncertainty -rise_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}] -rise_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}]  0.320  
set_clock_uncertainty -rise_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}] -fall_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}]  0.320  
set_clock_uncertainty -rise_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}] -rise_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}] -fall_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}] -rise_to [get_clocks {FPGA_GlobalClock}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}] -fall_to [get_clocks {FPGA_GlobalClock}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}] -rise_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}]  0.320  
set_clock_uncertainty -fall_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}] -fall_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}]  0.320  
set_clock_uncertainty -fall_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}] -rise_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}] -fall_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}] -rise_to [get_clocks {FPGA_GlobalClock}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}] -fall_to [get_clocks {FPGA_GlobalClock}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {FPGA_GlobalClock}] -rise_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}]  0.290  
set_clock_uncertainty -rise_from [get_clocks {FPGA_GlobalClock}] -fall_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}]  0.290  
set_clock_uncertainty -rise_from [get_clocks {FPGA_GlobalClock}] -rise_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {FPGA_GlobalClock}] -fall_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {FPGA_GlobalClock}] -rise_to [get_clocks {FPGA_GlobalClock}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {FPGA_GlobalClock}] -rise_to [get_clocks {FPGA_GlobalClock}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {FPGA_GlobalClock}] -fall_to [get_clocks {FPGA_GlobalClock}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {FPGA_GlobalClock}] -fall_to [get_clocks {FPGA_GlobalClock}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {FPGA_GlobalClock}] -rise_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}]  0.290  
set_clock_uncertainty -fall_from [get_clocks {FPGA_GlobalClock}] -fall_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[0]}]  0.290  
set_clock_uncertainty -fall_from [get_clocks {FPGA_GlobalClock}] -rise_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {FPGA_GlobalClock}] -fall_to [get_clocks {LogisimClockComponent:CLOCKGEN_0|s_output_regs[1]}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {FPGA_GlobalClock}] -rise_to [get_clocks {FPGA_GlobalClock}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {FPGA_GlobalClock}] -rise_to [get_clocks {FPGA_GlobalClock}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {FPGA_GlobalClock}] -fall_to [get_clocks {FPGA_GlobalClock}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {FPGA_GlobalClock}] -fall_to [get_clocks {FPGA_GlobalClock}] -hold 0.270  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

