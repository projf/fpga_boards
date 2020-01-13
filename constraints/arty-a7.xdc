## Project F: Digilent Original Arty & Arty A7
## (C)2020 Will Green, Open source hardware released under the MIT License
## Learn more at https://projectf.io

## Clock
set_property -dict {PACKAGE_PIN E3  IOSTANDARD LVCMOS33} [get_ports {CLK}];
create_clock -add -name sys_clk_pin -period 10.00 \
    -waveform {0 5} [get_ports {CLK}];

## Reset Button (active low)
set_property -dict {PACKAGE_PIN C2  IOSTANDARD LVCMOS33} [get_ports {RST_BTN}];

### UART
#set_property -dict {PACKAGE_PIN D10 IOSTANDARD LVCMOS33} [get_ports {uart_fpga_tx}];
#set_property -dict {PACKAGE_PIN A9  IOSTANDARD LVCMOS33} [get_ports {uart_fpga_rx}];

### BML 3-bit DVI Pmod Header JB
#set_property -dict {PACKAGE_PIN E15 IOSTANDARD LVCMOS33} [get_ports {DVI_G  }];
#set_property -dict {PACKAGE_PIN E16 IOSTANDARD LVCMOS33} [get_ports {DVI_CLK}];
#set_property -dict {PACKAGE_PIN D15 IOSTANDARD LVCMOS33} [get_ports {DVI_HS }];
#set_property -dict {PACKAGE_PIN J17 IOSTANDARD LVCMOS33} [get_ports {DVI_R  }];
#set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports {DVI_B  }];
#set_property -dict {PACKAGE_PIN K15 IOSTANDARD LVCMOS33} [get_ports {DVI_DE }];
#set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {DVI_VS }];

### VGA Pmod Header JB
#set_property -dict {PACKAGE_PIN E15 IOSTANDARD LVCMOS33} [get_ports {VGA_R[0]}];
#set_property -dict {PACKAGE_PIN E16 IOSTANDARD LVCMOS33} [get_ports {VGA_R[1]}];
#set_property -dict {PACKAGE_PIN D15 IOSTANDARD LVCMOS33} [get_ports {VGA_R[2]}];
#set_property -dict {PACKAGE_PIN C15 IOSTANDARD LVCMOS33} [get_ports {VGA_R[3]}];
#set_property -dict {PACKAGE_PIN J17 IOSTANDARD LVCMOS33} [get_ports {VGA_B[0]}];
#set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports {VGA_B[1]}];
#set_property -dict {PACKAGE_PIN K15 IOSTANDARD LVCMOS33} [get_ports {VGA_B[2]}];
#set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {VGA_B[3]}];

### VGA Pmod Header JC
#set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports {VGA_G[0]}];
#set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports {VGA_G[1]}];
#set_property -dict {PACKAGE_PIN V10 IOSTANDARD LVCMOS33} [get_ports {VGA_G[2]}];
#set_property -dict {PACKAGE_PIN V11 IOSTANDARD LVCMOS33} [get_ports {VGA_G[3]}];
#set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {VGA_HS  }];
#set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS33} [get_ports {VGA_VS  }];

## FPGA Configuration I/O Options
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
