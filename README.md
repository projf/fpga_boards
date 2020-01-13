# FPGA Board Support

The following FPGA boards have been tested with Project F. You can find [constraints](constraints/) files for these boards in this repository.

Other FPGA boards with similar FPGAs and I/O should be easy to adapt to Project F, but you will have to provide suitable contraints files yourself.

* [Digilent Nexys Video](constraints/nexys_video.xdc) (Xilinx Artix-7 XC7A200T) - [board reference](https://reference.digilentinc.com/reference/programmable-logic/nexys-video/start)
* [Digilent Arty A7](constraints/arty_a7.xdc) (Xilinx Artix-7 XC7A35T) - [board reference](https://reference.digilentinc.com/reference/programmable-logic/arty-a7/start) [1]
* [Digilent Arty Original](constraints/arty_a7.xdc) (Xilinx Artix-7 XC7A35T) - [board reference](https://reference.digilentinc.com/reference/programmable-logic/arty/start) [1]

_[1] The Arty A7 I/O configuration is slightly different from the original Arty, but we don't use any of the affected pins in Project F. You can use the same contraints file with both boards._
