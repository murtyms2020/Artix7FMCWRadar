vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/proc_sys_reset_v5_0_17
vlib modelsim_lib/msim/generic_baseblocks_v2_1_2
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_36
vlib modelsim_lib/msim/fifo_generator_v13_2_14
vlib modelsim_lib/msim/axi_data_fifo_v2_1_36
vlib modelsim_lib/msim/axi_crossbar_v2_1_38

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap proc_sys_reset_v5_0_17 modelsim_lib/msim/proc_sys_reset_v5_0_17
vmap generic_baseblocks_v2_1_2 modelsim_lib/msim/generic_baseblocks_v2_1_2
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_36 modelsim_lib/msim/axi_register_slice_v2_1_36
vmap fifo_generator_v13_2_14 modelsim_lib/msim/fifo_generator_v13_2_14
vmap axi_data_fifo_v2_1_36 modelsim_lib/msim/axi_data_fifo_v2_1_36
vmap axi_crossbar_v2_1_38 modelsim_lib/msim/axi_crossbar_v2_1_38

vlog -work xpm -64 -incr -mfcu  -sv "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" \
"/home/murtyms/Vivado/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/murtyms/Vivado/2025.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/murtyms/Vivado/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_gpmc_axi_bridge_0_1/sim/design_1_gpmc_axi_bridge_0_1.vhd" \
"../../../bd/design_1/ip/design_1_ad9361_spi_generic_0_0/sim/design_1_ad9361_spi_generic_0_0.vhd" \
"../../../bd/design_1/ip/design_1_ad9361_spi_generic_0_1/sim/design_1_ad9361_spi_generic_0_1.vhd" \
"../../../bd/design_1/ip/design_1_ad9361_spi_generic_1_0/sim/design_1_ad9361_spi_generic_1_0.vhd" \
"../../../bd/design_1/ip/design_1_ad9361_spi_generic_2_0/sim/design_1_ad9361_spi_generic_2_0.vhd" \
"../../../bd/design_1/ip/design_1_ad9361_spi_generic_3_1/sim/design_1_ad9361_spi_generic_3_1.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work proc_sys_reset_v5_0_17 -64 -93  \
"../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_2 -64 -incr -mfcu  "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" \
"../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" \
"../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_36 -64 -incr -mfcu  "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" \
"../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_14 -64 -incr -mfcu  "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" \
"../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/d654/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_14 -64 -93  \
"../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/d654/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_14 -64 -incr -mfcu  "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" \
"../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/d654/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_36 -64 -incr -mfcu  "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" \
"../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/fb46/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_38 -64 -incr -mfcu  "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" \
"../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/f084/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" \
"../../../bd/design_1/ip/design_1_axi_crossbar_0_0/sim/design_1_axi_crossbar_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/sim/design_1.vhd" \
"../../../bd/design_1/ip/design_1_Blinky_0_0/sim/design_1_Blinky_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

