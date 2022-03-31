# Copyright (C) 2021 Xilinx, Inc

# SPDX-License-Identifier: BSD-3-Clause

set vitis_lib_include [lindex $argv 2]

open_project colordetect
set_top colordetect_accel
add_files src/xf_colordetect_accel_stream.cpp -cflags "-I${vitis_lib_include} -D__XF__AXI_SDATA__"
open_solution "colordetect" -flow_target vivado
set_part {zynq}
create_clock -period 10 -name default
set_clock_uncertainty 27.0%

#Synthesize and export IP using Vivado flow
config_export -format ip_catalog -rtl verilog
csynth_design
export_design -format ip_catalog -description "Image Color Detection IP" -display_name "colordetect_accel"
exit
