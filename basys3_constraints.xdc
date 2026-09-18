## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
#set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports clk]
#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]


## Switches
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports s2]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports s1]
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports I3]
set_property -dict { PACKAGE_PIN W17   IOSTANDARD LVCMOS33 } [get_ports I2]
set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports I1]
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports I0]

## LEDs
set_property -dict { PACKAGE_PIN L1   IOSTANDARD LVCMOS33 } [get_ports y]

## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## SPI configuration mode options for QSPI boot, can be used for all designs
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]