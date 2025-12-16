
# ######################################################
# SYSTEM
# ######################################################

## CLOCKS
create_clock -period 40 -name CLK_25MHZ_FPGA -waveform {0 20} [get_ports CLK_25MHZ_FPGA]
create_clock -period 32.55199813842773400 -name CLK_LVDS_FPGA1_30MHZ72_P -waveform {0 16.27599906921386700} [get_ports CLK_LVDS_FPGA1_30MHZ72_P]

# ######################################################
# CPRI
# ######################################################

## CLOCKS
create_clock -period 8.13799953460693360 -name CLK_LVDS_FPGA_122MHZ88_1_P -waveform {0 4.06899976730346680} [get_ports CLK_LVDS_FPGA_122MHZ88_1_P]
create_clock -period 8.13799953460693360 -name CLK_LVDS_FPGA_122MHZ88_0_P -waveform {0 4.06899976730346680} [get_ports CLK_LVDS_FPGA_122MHZ88_0_P]


# ######################################################
# ADI9361
# ######################################################

## CLOCKS
## clocks at 122.88MHz from the AD9361 transceiver
create_clock -period 8.13799953460693360 -name SCAL_DAT_CLK_OUT0_LVDS_IN_P -waveform {0 4.06899976730346680} [get_ports SCAL_DAT_CLK_OUT0_LVDS_IN_P]
create_clock -period 8.13799953460693360 -name SCAL_DAT_CLK_OUT1_LVDS_IN_P -waveform {0 4.06899976730346680} [get_ports SCAL_DAT_CLK_OUT1_LVDS_IN_P]
create_clock -period 8.13799953460693360 -name SCAL_DAT_CLK_OUT2_LVDS_IN_P -waveform {0 4.06899976730346680} [get_ports SCAL_DAT_CLK_OUT2_LVDS_IN_P]
create_clock -period 8.13799953460693360 -name SCAL_DAT_CLK_OUT3_LVDS_IN_P -waveform {0 4.06899976730346680} [get_ports SCAL_DAT_CLK_OUT3_LVDS_IN_P]
create_clock -period 8.13799953460693360 -name SCAL_DAT_CLK_OUT4_LVDS_IN_P -waveform {0 4.06899976730346680} [get_ports SCAL_DAT_CLK_OUT4_LVDS_IN_P]

# ######################################################
# SoC
# ######################################################

## CLOCKS
create_clock -period 8 -name AM3357_GMII2_TXCLK -waveform {0 4} [get_ports AM3357_GMII2_TXCLK]

# ######################################################
# MICTOR
# ######################################################

## CLOCKS
 create_generated_clock -name FPGA_DEBUG_MIC_CLK -source [get_pins BOARD_SUPPORT_i/DEBUG_BLOCK_I/MIC_CLK_GEN/C] -divide_by 1 -invert [get_ports FPGA_DEBUG_MIC_CLK]
# create_clock -period 8.13799953460693360 -name FPGA_DEBUG_MIC_CLK_IN -waveform {0 4.06899976730346680} [get_ports FPGA_DEBUG_MIC_CLK_IN]


# ######################################################
# I/O Delays
# ######################################################

set_output_delay -clock [get_clocks CLK_LVDS_FPGA_122MHZ88_1_P] -clock_fall -min -add_delay 1.5 [get_ports {ADI_RX?_LVDS_DOUT_N[*]}]
set_output_delay -clock [get_clocks CLK_LVDS_FPGA_122MHZ88_1_P] -clock_fall -max -add_delay 2.5 [get_ports {ADI_RX?_LVDS_DOUT_N[*]}]
set_output_delay -clock [get_clocks CLK_LVDS_FPGA_122MHZ88_1_P] -min -add_delay 1.5 [get_ports {ADI_RX?_LVDS_DOUT_N[*]}]
set_output_delay -clock [get_clocks CLK_LVDS_FPGA_122MHZ88_1_P] -max -add_delay 2.5 [get_ports {ADI_RX?_LVDS_DOUT_N[*]}]
set_output_delay -clock [get_clocks CLK_LVDS_FPGA_122MHZ88_1_P] -clock_fall -min -add_delay 1.5 [get_ports {ADI_RX?_LVDS_DOUT_P[*]}]
set_output_delay -clock [get_clocks CLK_LVDS_FPGA_122MHZ88_1_P] -clock_fall -max -add_delay 2.5 [get_ports {ADI_RX?_LVDS_DOUT_P[*]}]
set_output_delay -clock [get_clocks CLK_LVDS_FPGA_122MHZ88_1_P] -min -add_delay 1.5 [get_ports {ADI_RX?_LVDS_DOUT_P[*]}]
set_output_delay -clock [get_clocks CLK_LVDS_FPGA_122MHZ88_1_P] -max -add_delay 2.5 [get_ports {ADI_RX?_LVDS_DOUT_P[*]}]
set_output_delay -clock [get_clocks CLK_LVDS_FPGA_122MHZ88_1_P] -clock_fall -min -add_delay 1.5 [get_ports SCAL_TX_FRM_IN?_LVDS_OUT_N]
set_output_delay -clock [get_clocks CLK_LVDS_FPGA_122MHZ88_1_P] -clock_fall -max -add_delay 2.5 [get_ports SCAL_TX_FRM_IN?_LVDS_OUT_N]
set_output_delay -clock [get_clocks CLK_LVDS_FPGA_122MHZ88_1_P] -min -add_delay 1.5 [get_ports SCAL_TX_FRM_IN?_LVDS_OUT_N]
set_output_delay -clock [get_clocks CLK_LVDS_FPGA_122MHZ88_1_P] -max -add_delay 2.5 [get_ports SCAL_TX_FRM_IN?_LVDS_OUT_N]
set_output_delay -clock [get_clocks CLK_LVDS_FPGA_122MHZ88_1_P] -clock_fall -min -add_delay 1.5 [get_ports SCAL_TX_FRM_IN?_LVDS_OUT_P]
set_output_delay -clock [get_clocks CLK_LVDS_FPGA_122MHZ88_1_P] -clock_fall -max -add_delay 2.5 [get_ports SCAL_TX_FRM_IN?_LVDS_OUT_P]
set_output_delay -clock [get_clocks CLK_LVDS_FPGA_122MHZ88_1_P] -min -add_delay 1.5 [get_ports SCAL_TX_FRM_IN?_LVDS_OUT_P]
set_output_delay -clock [get_clocks CLK_LVDS_FPGA_122MHZ88_1_P] -max -add_delay 2.5 [get_ports SCAL_TX_FRM_IN?_LVDS_OUT_P]
set_output_delay -clock [get_clocks CLK_LVDS_FPGA_122MHZ88_1_P] -min -add_delay 1.5 [get_ports SCAL_ENABLE_IN?_2P5_OUT]
set_output_delay -clock [get_clocks CLK_LVDS_FPGA_122MHZ88_1_P] -max -add_delay 2.5 [get_ports SCAL_ENABLE_IN?_2P5_OUT]


set_false_path -from [get_pins {DATA_PROCESSING_i/board_mgmt/hw_control_0/U0/hw_control_struct/mcode1/register0_43_27_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[7].bit_is_0.fdre_comp/C}] -to [get_ports SCAL_ENABLE_IN?_2P5_OUT]

#RF:---------------------------------------------------------------------------------
#RF: While the CPRI core is (mostly) constrained, the board support package which most designers import into their
#RF: designs is not.  As a matter of policy now, when I generate a new core, I generate the example design, and
#RF: when I bring over the support files, I copy over the relevant constraints for the XDC file.
#RF: If you're upgrading cores, you really should be doing this all over again as well, painful as it is.
#RF:---------------------------------------------------------------------------------

# ###########################################################
# Ignore the timing on the tx_clk_gen_reset signal
# ###########################################################
# set_false_path -to [get_pins -hier -filter {name =~ *cpri_shared_clocks_i/tx_clk_gen_i/mmcm_adv_inst/RST}]
# set_false_path -to [get_pins -hier -filter {name =~ *cpri_shared_clocks_i/tx_clk_gen_i/synch_i/data_sync0_i*R}]
# set_false_path -to [get_pins -hier -filter {name =~ *cpri_shared_clocks_i/tx_clk_gen_i/synch_i/data_sync4_i*R}]
# set_false_path -from [get_cells -hier -filter {name =~ *cpri_shared_alignment_i/tx_sync_i/PHASE_ALIGNMENT_DONE_reg*}] \
               # -to [get_cells -hier -filter {name =~ *cpri_shared_clocks_i/tx_sync_reset_sync_i/async_rst*_reg*}]
# set_false_path -to [get_cells -hier -filter {name =~ *cpri_shared_alignment_i/tx_sync_i/sync_RESET_PHALIGNMENT/data_sync*_i}]
# set_false_path -from [get_cells -hier -filter {name =~ *cpri_shared_clocks_i/tx_sync_reset_sync_i/sync_rst1_reg}]

#set_false_path -from [get_nets clk_61p44] -to [get_cells {stat_speed_i_rec_reg[*][*]}]
#set_false_path -from [get_cells {stat_speed_i_rec_reg[*][*]}]

set_false_path -from [get_cells -hier -filter {name =~ *cpri_shared_alignment_i/tx_sync_i/PHASE_ALIGNMENT_DONE_reg*}] -to [get_cells -hier -filter {name =~ *cpri_shared_clocks_i/tx_phase_alignment_done_sync_i/async_rst*_reg*}]
set_false_path -from [get_cells -hier -filter {name =~ *cpri_shared_clocks_i/reset_phalignment_out_reg}] -to [get_cells -hier -filter {name =~ *cpri_shared_alignment_i/tx_sync_i/sync_RESET_PHALIGNMENT/data_sync0_i}]
set_false_path -from [get_cells -hier -filter {name =~ *cpri_shared_clocks_i/tx_sync_rst_reg_inv}]

###### Clock crossing constraints #######
# set_false_path -from [get_cells -hier -filter {name =~ *cpri_shared_clocks_i/tx_clk_gen_i/synch_i/data_sync4_i}]  \
#               -to [get_cells -hier -filter {name =~ *cpri_shared_clocks_i/tx_sync_reset_sync_i/async_rst*_reg}]

#RF:---------------------------------------------------------------------------------
#RF: CPRI Core Other Needed Constraints:
#RF: Note that I said "mostly" above.  Even Xilinx is not above messing these up.
#RF: There are constraints that are not in the OOC, but should be; I found them using
#RF: the clock interaction matrix.  Even though they are not properly constrained,
#RF: the crossings are VERIFIED as being CORRECT.
#RF:---------------------------------------------------------------------------------

#set_false_path -to [get_pins {LAYSAN_CPRI_I/CPRI_BLOCK_I/cpri_i/U0/cpri_i/cpri_options.cpri_i/rx_modules_I/RX_ETH_INST.rx_ethernet_I/rx_eth_mii_I/rx_eth_ignore_tx_en_sync_i/data_sync0_i/D} ]
set_false_path -to [get_pins {LAYSAN_CPRI_I/CPRI_BLOCK_I/cpri_i/U0/cpri_i/cpri_options.cpri_i/tx_modules_I/TX_ETH_INST.tx_ethernet_i/tx_eth_mii_I/rx_eth_ignore_tx_en_sync_i/data_sync0_i/D} ]
set_false_path -from [get_pins {LAYSAN_CPRI_I/CPRI_BLOCK_I/cpri_i/U0/cpri_i/cpri_options.cpri_i/mgmnt_i/jam_bytes_int_reg[*]/C} ] \
               -to   [get_pins {LAYSAN_CPRI_I/CPRI_BLOCK_I/cpri_i/U0/cpri_i/cpri_options.cpri_i/rx_modules_I/RX_ETH_INST.rx_ethernet_I/rx_eth_mii_I/jam_count_reg[*]/D}]

#set_false_path -from [get_pins LAYSAN_CPRI_I/CPRI_BLOCK_I/cpri_i/U0/cpri_i/cpri_options.cpri_i/mgmnt_i/mgmnt_addr_d1_reg[2]/C] \
#               -to [get_pins LAYSAN_CPRI_I/CPRI_BLOCK_I/cpri_i/U0/cpri_i/cpri_options.cpri_i/tx_modules_I/reset_tx_eth_d1_clk25_reg/D]

# ---------------------------------------------------------------------------------
# CPRI Cross-Clocking
# ---------------------------------------------------------------------------------

set_false_path -to [get_pins LAYSAN_CPRI_I/CPRI_AXI_S/tx0_write_axi_x0_reg/D]

set_false_path -from [get_pins LAYSAN_CPRI_I/CPRI_AXI_S/TX0_I_CPRI_FIFO/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.gpf.wrpf/gpf2.prog_full_i_reg/C]  \
               -to [get_pins LAYSAN_CPRI_I/CPRI_AXI_S/cpri_0_csl_synchronizer_i/data_sync0_i/D]

set_false_path -from [get_pins LAYSAN_CPRI_I/CPRI_AXI_S/RX0_I_CPRI_FIFO/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.gpf.wrpf/gpf2.prog_full_i_reg/C] \
               -to [get_pins LAYSAN_CPRI_I/CPRI_AXI_S/cpri_0_csl_synchronizer_i1/data_sync0_i/D]

set_false_path -from [get_pins LAYSAN_CPRI_I/CPRI_AXI_S/CTRL_I_CPRI_FIFO/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.gpf.wrpf/gpf2.prog_full_i_reg/C] \
               -to [get_pins LAYSAN_CPRI_I/CPRI_AXI_S/cpri_0_csl_synchronizer_i2/data_sync0_i/D]

set_false_path -from [get_pins {LAYSAN_CPRI_I/CPRI_AXI_S/RX_AXI_FIFO_I/U0/rx_axi_fifo_struct/sr_flop2/register_x0/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[0].bit_is_0.fdre_comp/C}]  \
               -to [get_pins LAYSAN_CPRI_I/CPRI_AXI_S/rx_fifo_reset_76_x0_reg/D]

set_false_path -from [get_pins {LAYSAN_CPRI_I/CPRI_AXI_S/RX_AXI_FIFO_I/U0/rx_axi_fifo_struct/sr_flop5/register_x0/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[0].bit_is_0.fdre_comp/C}] \
               -to  [get_pins LAYSAN_CPRI_I/CPRI_AXI_S/rx_fifo_reset_76_ctrl_x0_reg/D]

set_false_path -from [get_pins {reset_iq_if_reg*/C}]

set_false_path -from [get_pins {rst_reg_x2_reg[31]/C}] -to [get_pins ad9361_sync_reg/D]
set_false_path -from [get_pins {rst_reg_x2_reg[31]/C}] -to [get_pins SCAL_SYNC_2P5_OUT_i_reg/D]

# ---------------------------------------------------------------------------------
# THE AD9361 Module - all of crossings I have VERIFED as being CORRECT
# ---------------------------------------------------------------------------------
#XFER STATUS
set_false_path -to   [get_pins {DATA_PROCESSING_i/ad9361_if/radio_block*/axi_ad9361_0/inst/i_rx/i_rx_channel*/i_up_adc_channel/i_adc_xfer_status/up_xfer_toggle_m1_reg/D} ]
set_false_path -from [get_pins {DATA_PROCESSING_i/ad9361_if/radio_block*/axi_ad9361_0/inst/i_rx/i_rx_channel*/i_up_adc_channel/i_adc_xfer_status/d_xfer_data_reg[*]/C} ]  \
               -to   [get_pins {DATA_PROCESSING_i/ad9361_if/radio_block*/axi_ad9361_0/inst/i_rx/i_rx_channel*/i_up_adc_channel/i_adc_xfer_status/up_data_status_reg[*]/D} ]

set_false_path -to   [get_pins {DATA_PROCESSING_i/ad9361_if/radio_block*/axi_ad9361_0/inst/i_rx/i_up_adc_common/i_adc_xfer_status/up_xfer_toggle_m1_reg/D} ]
set_false_path -from [get_pins {DATA_PROCESSING_i/ad9361_if/radio_block*/axi_ad9361_0/inst/i_rx/i_up_adc_common/i_adc_xfer_status/d_xfer_data_reg[*]/C} ]  \
               -to   [get_pins {DATA_PROCESSING_i/ad9361_if/radio_block*/axi_ad9361_0/inst/i_rx/i_up_adc_common/i_adc_xfer_status/up_data_status_reg[*]/D} ]

# XFER_CNTRL
set_false_path -to   [get_pins {DATA_PROCESSING_i/ad9361_if/radio_block*/axi_ad9361_0/inst/i_rx/i_rx_channel*/i_up_adc_channel/i_adc_xfer_cntrl/d_xfer_toggle_m1_reg/D}]
set_false_path -to   [get_pins {DATA_PROCESSING_i/ad9361_if/radio_block*/axi_ad9361_0/inst/i_rx/i_rx_channel*/i_up_adc_channel/i_adc_xfer_cntrl/d_data_cntrl_reg[*]/D}]

set_false_path -to   [get_pins {DATA_PROCESSING_i/ad9361_if/radio_block*/axi_ad9361_0/inst/i_rx/i_up_adc_common/i_adc_xfer_cntrl/d_xfer_toggle_m1_reg/D}]
set_false_path -from [get_pins {DATA_PROCESSING_i/ad9361_if/radio_block*/axi_ad9361_0/inst/i_rx/i_up_adc_common/i_adc_xfer_cntrl/up_xfer_data_reg[*]/C}] \
               -to   [get_pins {DATA_PROCESSING_i/ad9361_if/radio_block*/axi_ad9361_0/inst/i_rx/i_up_adc_common/i_adc_xfer_cntrl/d_data_cntrl_reg[*]/D}]

# ADC_CLOCK_MON
set_false_path -to   [get_pins {DATA_PROCESSING_i/ad9361_if/radio_block*/axi_ad9361_0/inst/i_rx/i_up_adc_common/i_adc_clock_mon/d_count_toggle_m1_reg/D}]
set_false_path -to   [get_pins {DATA_PROCESSING_i/ad9361_if/radio_block*/axi_ad9361_0/inst/i_rx/i_up_adc_common/i_adc_clock_mon/up_count_toggle_m1_reg/D}]
set_false_path -to   [get_pins {DATA_PROCESSING_i/ad9361_if/radio_block*/axi_ad9361_0/inst/i_rx/i_up_adc_common/i_adc_clock_mon/up_d_count_reg[*]/D}]

# MISC
set_false_path -from [get_pins {DATA_PROCESSING_i/ad9361_if/radio_block*/axi_ad9361_0/inst/i_rx/i_up_adc_common/up_resetn_reg/C}]  \
			   -to   [get_pins {DATA_PROCESSING_i/ad9361_if/radio_block*/axi_ad9361_0/inst/i_rx/i_up_adc_common/i_adc_rst_reg/i_rst_reg/PRE}]

# Ethernet phase relationship timing measurement
set_false_path -from [get_pins LAYSAN_CPRI_I/CPRI_BLOCK_I/tready_not_sync_i_reg/C]
set_false_path -from [get_pins {DATA_PROCESSING_i/board_mgmt/hw_control_0/U0/hw_control_struct/mcode1/register38_57_28_reg[*]/C}]
 
set_max_delay -from [get_pins {rst_reg_x2_reg[4]/C}] -to [get_pins LAYSAN_CPRI_I/CPRI_BLOCK_I/tready_not_sync_i_reg/D] 13.020 -datapath_only
set_max_delay -from [get_pins {DATA_PROCESSING_i/board_mgmt/hw_control_0/U0/hw_control_struct/mcode1/register34_56_28_reg[*]/C}] -to [get_pins LAYSAN_CPRI_I/CPRI_BLOCK_I/basic_frm_sync_reg/D] 13.020 -datapath_only
 
set_false_path -from [get_pins {DATA_PROCESSING_i/board_mgmt/hw_control_0/U0/hw_control_struct/mcode1/register34_56_28_reg[4]/C}] -to [get_pins LAYSAN_CPRI_I/CPRI_BLOCK_I/basic_frm_sync_reg/D]
set_false_path -from [get_pins {rst_reg_x2_reg[4]/C}] -to [get_pins LAYSAN_CPRI_I/CPRI_BLOCK_I/tready_not_sync_i_reg/D]

# Ethernet phase relationship timing measurement
set_false_path -from [get_pins LAYSAN_CPRI_I/CPRI_BLOCK_I/tready_not_sync_i_reg/C]
set_false_path -from [get_pins {DATA_PROCESSING_i/board_mgmt/hw_control_0/U0/hw_control_struct/mcode1/register38_57_28_reg[*]/C}]
 
set_max_delay -from [get_pins {rst_reg_x2_reg[4]/C}] -to [get_pins LAYSAN_CPRI_I/CPRI_BLOCK_I/tready_not_sync_i_reg/D] 13.020 -datapath_only
set_max_delay -from [get_pins {DATA_PROCESSING_i/board_mgmt/hw_control_0/U0/hw_control_struct/mcode1/register34_56_28_reg[*]/C}] -to [get_pins LAYSAN_CPRI_I/CPRI_BLOCK_I/basic_frm_sync_reg/D] 13.020 -datapath_only
 
set_false_path -from [get_pins {DATA_PROCESSING_i/board_mgmt/hw_control_0/U0/hw_control_struct/mcode1/register34_56_28_reg[4]/C}] -to [get_pins LAYSAN_CPRI_I/CPRI_BLOCK_I/basic_frm_sync_reg/D]
set_false_path -from [get_pins {rst_reg_x2_reg[4]/C}] -to [get_pins LAYSAN_CPRI_I/CPRI_BLOCK_I/tready_not_sync_i_reg/D]
