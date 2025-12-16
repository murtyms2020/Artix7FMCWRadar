transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/proc_sys_reset_v5_0_17
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_36
vlib riviera/fifo_generator_v13_2_14
vlib riviera/axi_data_fifo_v2_1_36
vlib riviera/axi_crossbar_v2_1_38

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap proc_sys_reset_v5_0_17 riviera/proc_sys_reset_v5_0_17
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_36 riviera/axi_register_slice_v2_1_36
vmap fifo_generator_v13_2_14 riviera/fifo_generator_v13_2_14
vmap axi_data_fifo_v2_1_36 riviera/axi_data_fifo_v2_1_36
vmap axi_crossbar_v2_1_38 riviera/axi_crossbar_v2_1_38

vlog -work xpm  -incr "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"/home/murtyms/Vivado/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/murtyms/Vivado/2025.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/home/murtyms/Vivado/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_gpmc_axi_bridge_0_1/sim/design_1_gpmc_axi_bridge_0_1.vhd" \
"../../../bd/design_1/ip/design_1_ad9361_spi_generic_0_0/sim/design_1_ad9361_spi_generic_0_0.vhd" \
"../../../bd/design_1/ip/design_1_ad9361_spi_generic_0_1/sim/design_1_ad9361_spi_generic_0_1.vhd" \
"../../../bd/design_1/ip/design_1_ad9361_spi_generic_1_0/sim/design_1_ad9361_spi_generic_1_0.vhd" \
"../../../bd/design_1/ip/design_1_ad9361_spi_generic_2_0/sim/design_1_ad9361_spi_generic_2_0.vhd" \
"../../../bd/design_1/ip/design_1_ad9361_spi_generic_3_1/sim/design_1_ad9361_spi_generic_3_1.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work proc_sys_reset_v5_0_17 -93  -incr \
"../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_36  -incr -v2k5 "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_14  -incr -v2k5 "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/d654/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_14 -93  -incr \
"../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/d654/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_14  -incr -v2k5 "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/d654/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_36  -incr -v2k5 "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/fb46/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_38  -incr -v2k5 "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/f084/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../HarrisFMCWRadar.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Vivado/2025.2/data/rsb/busdef" -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../bd/design_1/ip/design_1_axi_crossbar_0_0/sim/design_1_axi_crossbar_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/sim/design_1.vhd" \
"../../../bd/design_1/ip/design_1_Blinky_0_0/sim/design_1_Blinky_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

