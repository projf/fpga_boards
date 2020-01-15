## Project F: Digilent Nexys Video Vivado Board Constraints
## (C)2020 Will Green, Open source hardware released under the MIT License
## Learn more at https://projectf.io

## Clock
set_property -dict {PACKAGE_PIN R4  IOSTANDARD LVCMOS33} [get_ports {CLK}];
create_clock -add -name sys_clk_pin -period 10.00 \
    -waveform {0 5} [get_ports {CLK}];

## Reset Button (active low)
set_property -dict {PACKAGE_PIN G4  IOSTANDARD LVCMOS15} [get_ports {RST_BTN}];

### Push Buttons
#set_property -dict {PACKAGE_PIN B22 IOSTANDARD LVCMOS12} [get_ports {btnc}];
#set_property -dict {PACKAGE_PIN D22 IOSTANDARD LVCMOS12} [get_ports {btnd}];
#set_property -dict {PACKAGE_PIN C22 IOSTANDARD LVCMOS12} [get_ports {btnl}];
#set_property -dict {PACKAGE_PIN D14 IOSTANDARD LVCMOS12} [get_ports {btnr}];
#set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS12} [get_ports {btnu}];

### UART
#set_property -dict {PACKAGE_PIN AA19 IOSTANDARD LVCMOS33} [get_ports {uart_fpga_tx}];
#set_property -dict {PACKAGE_PIN V18  IOSTANDARD LVCMOS33} [get_ports {uart_fpga_rx}];

### HDMI Output (Source)
#set_property -dict {PACKAGE_PIN AA4  IOSTANDARD LVCMOS33} [get_ports {hdmi_tx_cec  }];
#set_property -dict {PACKAGE_PIN U1   IOSTANDARD TMDS_33 } [get_ports {hdmi_tx_clk_n}];
#set_property -dict {PACKAGE_PIN T1   IOSTANDARD TMDS_33 } [get_ports {hdmi_tx_clk_p}];
#set_property -dict {PACKAGE_PIN AB13 IOSTANDARD LVCMOS25} [get_ports {hdmi_tx_hpd  }];
#set_property -dict {PACKAGE_PIN U3   IOSTANDARD LVCMOS33} [get_ports {hdmi_tx_rscl }];
#set_property -dict {PACKAGE_PIN V3   IOSTANDARD LVCMOS33} [get_ports {hdmi_tx_rsda }];
#set_property -dict {PACKAGE_PIN Y1   IOSTANDARD TMDS_33 } [get_ports {hdmi_tx_n[0] }];
#set_property -dict {PACKAGE_PIN W1   IOSTANDARD TMDS_33 } [get_ports {hdmi_tx_p[0] }];
#set_property -dict {PACKAGE_PIN AB1  IOSTANDARD TMDS_33 } [get_ports {hdmi_tx_n[1] }];
#set_property -dict {PACKAGE_PIN AA1  IOSTANDARD TMDS_33 } [get_ports {hdmi_tx_p[1] }];
#set_property -dict {PACKAGE_PIN AB2  IOSTANDARD TMDS_33 } [get_ports {hdmi_tx_n[2] }];
#set_property -dict {PACKAGE_PIN AB3  IOSTANDARD TMDS_33 } [get_ports {hdmi_tx_p[2] }];

### BML 3-bit DVI Pmod Header JB
#set_property -dict {PACKAGE_PIN V9 IOSTANDARD LVCMOS33} [get_ports {DVI_G  }];
#set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVCMOS33} [get_ports {DVI_CLK}];
#set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS33} [get_ports {DVI_HS }];
#set_property -dict {PACKAGE_PIN W9 IOSTANDARD LVCMOS33} [get_ports {DVI_R  }];
#set_property -dict {PACKAGE_PIN Y9 IOSTANDARD LVCMOS33} [get_ports {DVI_B  }];
#set_property -dict {PACKAGE_PIN Y8 IOSTANDARD LVCMOS33} [get_ports {DVI_DE }];
#set_property -dict {PACKAGE_PIN Y7 IOSTANDARD LVCMOS33} [get_ports {DVI_VS }];

### VGA Pmod Header JB
#set_property -dict {PACKAGE_PIN V9 IOSTANDARD LVCMOS33} [get_ports {VGA_R[0]}];
#set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVCMOS33} [get_ports {VGA_R[1]}];
#set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS33} [get_ports {VGA_R[2]}];
#set_property -dict {PACKAGE_PIN W7 IOSTANDARD LVCMOS33} [get_ports {VGA_R[3]}];
#set_property -dict {PACKAGE_PIN W9 IOSTANDARD LVCMOS33} [get_ports {VGA_B[0]}];
#set_property -dict {PACKAGE_PIN Y9 IOSTANDARD LVCMOS33} [get_ports {VGA_B[1]}];
#set_property -dict {PACKAGE_PIN Y8 IOSTANDARD LVCMOS33} [get_ports {VGA_B[2]}];
#set_property -dict {PACKAGE_PIN Y7 IOSTANDARD LVCMOS33} [get_ports {VGA_B[3]}];

### VGA Pmod Header JC
#set_property -dict {PACKAGE_PIN Y6  IOSTANDARD LVCMOS33} [get_ports {VGA_G[0]}];
#set_property -dict {PACKAGE_PIN AA6 IOSTANDARD LVCMOS33} [get_ports {VGA_G[1]}];
#set_property -dict {PACKAGE_PIN AA8 IOSTANDARD LVCMOS33} [get_ports {VGA_G[2]}];
#set_property -dict {PACKAGE_PIN AB8 IOSTANDARD LVCMOS33} [get_ports {VGA_G[3]}];
#set_property -dict {PACKAGE_PIN R6  IOSTANDARD LVCMOS33} [get_ports {VGA_HS  }];
#set_property -dict {PACKAGE_PIN T6  IOSTANDARD LVCMOS33} [get_ports {VGA_VS  }];

## FPGA Configuration I/O Options
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
