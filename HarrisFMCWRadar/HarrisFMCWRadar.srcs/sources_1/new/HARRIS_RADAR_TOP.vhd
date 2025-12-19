----------------------------------------------------------------------------------
-- Company              : Sitaphal LLC.
-- Engineer             : Murty Malladi
--
-- Create Date          : 12/10/2025
-- Module Name          : HARRIS_RADAR_TOP.vhd
-- Project Name         : Harris Radar
-- Target Devices       : Artix7 - xc7a200tffg1156-1
-- Tool versions        : Vivado 2023.1
--
-- Description          : Top Level RRH module. Contains the following blocks:
--                         * clock_mgmt.vhd    - manages the clocking tree
--                         * design_1.vhd      - contains GPMC controller, beamforming IP
--                         * laysan_cpri.vhd   - CPRI controller interface
--
--
--
-- Revisions            : 0.1 => File Created
--                      : 0.2 => Update of the top level to include all ADI
--                               interfaces. General clean-up and re-organization
--                               to improve code management and readability.
--
----------------------------------------------------------------------------------
-- NOTES          :
----------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Copyright  : (c) Tektelic Communications Limited 2011. All Rights Reserved.
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;

library UNISIM;
use UNISIM.VComponents.all;

--LIBRARY WORK;
--use WORK.DEFN_PKG.all;

entity HARRIS_RADAR_TOP is
  -- Note: Port names will match schematic names for cross-reference
  port (
    ---------------------------------------------------------------------------------------------------
    -- AD9361 XCVR 0 signals
    ---------------------------------------------------------------------------------------------------
--    ADI_RX0_LVDS_DOUT_N         : out std_logic_vector(5 downto 0);  -- XCVR 0 Tx data lines
--    ADI_RX0_LVDS_DOUT_P         : out std_logic_vector(5 downto 0);  -- XCVR 0 Tx data lines
--    ADI_TX0_LVDS_DIN_N          : in  std_logic_vector(5 downto 0);  -- XCVR 0 Rx data lines
--    ADI_TX0_LVDS_DIN_P          : in  std_logic_vector(5 downto 0);  -- XCVR 0 Rx data lines
--    CTRL_IN0_2P5_DOUT           : out std_logic_vector(3 downto 0);  -- XCVR 0 control out lines
--    CTRL_OUT0_2P5_DIN           : in  std_logic_vector(7 downto 0);  -- XCVR 0 control in lines
--    SCAL_CLK_OUT0_2P5_IN        : in  std_logic;                     -- XCVR 0 aux clock (not used)
--    SCAL_DAT_CLK_OUT0_LVDS_IN_N : in  std_logic;                     -- XCVR 0 Rx data clock
--    SCAL_DAT_CLK_OUT0_LVDS_IN_P : in  std_logic;                     -- XCVR 0 Rx data clock
--    SCAL_EN_AGC_IN0_2P5_OUT     : out std_logic;                     -- XCVR 0 AGC enable
--    SCAL_ENABLE_IN0_2P5_OUT     : out std_logic;                     -- XCVR 0 Data enable
--    SCAL_FB_CLK_IN0_LVDS_OUT_N  : out std_logic;                     -- XCVR 0 Tx data clock
--    SCAL_FB_CLK_IN0_LVDS_OUT_P  : out std_logic;                     -- XCVR 0 Tx data clock
--    SCAL_RESET_N_IN0_2P5_OUT    : out std_logic;                     -- XCVR 0 Active low reset
--    SCAL_RX_FRM_OUT0_LVDS_IN_N  : in  std_logic;                     -- XCVR 0 Rx data frame
--    SCAL_RX_FRM_OUT0_LVDS_IN_P  : in  std_logic;                     -- XCVR 0 Rx data frame
    SCAL_SPI_CLK_OUT0_2P5_IN    : out std_logic;                     -- XCVR 0 SPI CLK
    SCAL_SPI_DI_OUT0_2P5_IN     : out std_logic;                     -- XCVR 0 SPI MOSI
    SCAL_SPI_DO_IN0_2P5_OUT     : in  std_logic;                     -- XCVR 0 SPI MISO
    SCAL_SPI_EN_N_OUT0_2P5_IN   : out std_logic;                     -- XCVR 0 SPI CSB
--    SCAL_TX_FRM_IN0_LVDS_OUT_N  : out std_logic;                     -- XCVR 0 Tx data frame
--    SCAL_TX_FRM_IN0_LVDS_OUT_P  : out std_logic;                     -- XCVR 0 Tx data frame
--    SCAL_TXNRX_IN0_2P5_OUT      : out std_logic;                     -- XCVR 0 Data Tx/nRx (for TDD)

    ---------------------------------------------------------------------------------------------------
    -- AD9361 XCVR 1 signals
    ---------------------------------------------------------------------------------------------------
--    ADI_RX1_LVDS_DOUT_N         : out std_logic_vector(5 downto 0);  -- XCVR 1 Tx data lines
--    ADI_RX1_LVDS_DOUT_P         : out std_logic_vector(5 downto 0);  -- XCVR 1 Tx data lines
--    ADI_TX1_LVDS_DIN_N          : in  std_logic_vector(5 downto 0);  -- XCVR 1 Rx data lines
--    ADI_TX1_LVDS_DIN_P          : in  std_logic_vector(5 downto 0);  -- XCVR 1 Rx data lines
--    CTRL_IN1_2P5_DOUT           : out std_logic_vector(3 downto 0);  -- XCVR 1 control out lines
--    CTRL_OUT1_2P5_DIN           : in  std_logic_vector(7 downto 0);  -- XCVR 1 control in lines
--    SCAL_CLK_OUT1_2P5_IN        : in  std_logic;                     -- XCVR 1 aux clock (not used)
--    SCAL_DAT_CLK_OUT1_LVDS_IN_N : in  std_logic;                     -- XCVR 1 Rx data clock
--    SCAL_DAT_CLK_OUT1_LVDS_IN_P : in  std_logic;                     -- XCVR 1 Rx data clock
--    SCAL_EN_AGC_IN1_2P5_OUT     : out std_logic;                     -- XCVR 1 AGC enable
--    SCAL_ENABLE_IN1_2P5_OUT     : out std_logic;                     -- XCVR 1 Data enable
--    SCAL_FB_CLK_IN1_LVDS_OUT_N  : out std_logic;                     -- XCVR 1 Tx data clock
--    SCAL_FB_CLK_IN1_LVDS_OUT_P  : out std_logic;                     -- XCVR 1 Tx data clock
--    SCAL_RESET_N_IN1_2P5_OUT    : out std_logic;                     -- XCVR 1 Active low reset
--    SCAL_RX_FRM_OUT1_LVDS_IN_N  : in  std_logic;                     -- XCVR 1 Rx data frame
--    SCAL_RX_FRM_OUT1_LVDS_IN_P  : in  std_logic;                     -- XCVR 1 Rx data frame
    SCAL_SPI_CLK_OUT1_2P5_IN    : out std_logic;                     -- XCVR 1 SPI CLK
    SCAL_SPI_DI_OUT1_2P5_IN     : out std_logic;                     -- XCVR 1 SPI MOSI
    SCAL_SPI_DO_IN1_2P5_OUT     : in  std_logic;                     -- XCVR 1 SPI MISO
    SCAL_SPI_EN_N_OUT1_2P5_IN   : out std_logic;                     -- XCVR 1 SPI CSB
--    SCAL_TX_FRM_IN1_LVDS_OUT_N  : out std_logic;                     -- XCVR 1 Tx data frame
--    SCAL_TX_FRM_IN1_LVDS_OUT_P  : out std_logic;                     -- XCVR 1 Tx data frame
--    SCAL_TXNRX_IN1_2P5_OUT      : out std_logic;                     -- XCVR 1 Data Tx/nRx (for TDD)

    ---------------------------------------------------------------------------------------------------
    -- AD9361 XCVR 2 signals
    ---------------------------------------------------------------------------------------------------
--    ADI_RX2_LVDS_DOUT_N         : out std_logic_vector(5 downto 0);  -- XCVR 2 Tx data lines
--    ADI_RX2_LVDS_DOUT_P         : out std_logic_vector(5 downto 0);  -- XCVR 2 Tx data lines
--    ADI_TX2_LVDS_DIN_N          : in  std_logic_vector(5 downto 0);  -- XCVR 2 Rx data lines
--    ADI_TX2_LVDS_DIN_P          : in  std_logic_vector(5 downto 0);  -- XCVR 2 Rx data lines
--    CTRL_IN2_2P5_DOUT           : out std_logic_vector(3 downto 0);  -- XCVR 2 control out lines
--    CTRL_OUT2_2P5_DIN           : in  std_logic_vector(7 downto 0);  -- XCVR 2 control in lines
--    SCAL_CLK_OUT2_2P5_IN        : in  std_logic;                     -- XCVR 2 aux clock (not used)
--    SCAL_DAT_CLK_OUT2_LVDS_IN_N : in  std_logic;                     -- XCVR 2 Rx data clock
--    SCAL_DAT_CLK_OUT2_LVDS_IN_P : in  std_logic;                     -- XCVR 2 Rx data clock
--    SCAL_EN_AGC_IN2_2P5_OUT     : out std_logic;                     -- XCVR 2 AGC enable
--    SCAL_ENABLE_IN2_2P5_OUT     : out std_logic;                     -- XCVR 2 Data enable
--    SCAL_FB_CLK_IN2_LVDS_OUT_N  : out std_logic;                     -- XCVR 2 Tx data clock
--    SCAL_FB_CLK_IN2_LVDS_OUT_P  : out std_logic;                     -- XCVR 2 Tx data clock
--    SCAL_RESET_N_IN2_2P5_OUT    : out std_logic;                     -- XCVR 2 Active low reset
--    SCAL_RX_FRM_OUT2_LVDS_IN_N  : in  std_logic;                     -- XCVR 2 Rx data frame
--    SCAL_RX_FRM_OUT2_LVDS_IN_P  : in  std_logic;                     -- XCVR 2 Rx data frame
    SCAL_SPI_CLK_OUT2_2P5_IN    : out std_logic;                     -- XCVR 2 SPI CLK
    SCAL_SPI_DI_OUT2_2P5_IN     : out std_logic;                     -- XCVR 2 SPI MOSI
    SCAL_SPI_DO_IN2_2P5_OUT     : in  std_logic;                     -- XCVR 2 SPI MISO
    SCAL_SPI_EN_N_OUT2_2P5_IN   : out std_logic;                     -- XCVR 2 SPI CSB
--    SCAL_TX_FRM_IN2_LVDS_OUT_N  : out std_logic;                     -- XCVR 2 Tx data frame
--    SCAL_TX_FRM_IN2_LVDS_OUT_P  : out std_logic;                     -- XCVR 2 Tx data frame
--    SCAL_TXNRX_IN2_2P5_OUT      : out std_logic;                     -- XCVR 2 Data Tx/nRx (for TDD)

    ---------------------------------------------------------------------------------------------------
    -- AD9361 XCVR 3 signals
    ---------------------------------------------------------------------------------------------------
--    ADI_RX3_LVDS_DOUT_N         : out std_logic_vector(5 downto 0);  -- XCVR 3 Tx data lines
--    ADI_RX3_LVDS_DOUT_P         : out std_logic_vector(5 downto 0);  -- XCVR 3 Tx data lines
--    ADI_TX3_LVDS_DIN_N          : in  std_logic_vector(5 downto 0);  -- XCVR 3 Rx data lines
--    ADI_TX3_LVDS_DIN_P          : in  std_logic_vector(5 downto 0);  -- XCVR 3 Rx data lines
--    CTRL_IN3_2P5_DOUT           : out std_logic_vector(3 downto 0);  -- XCVR 3 control out lines
--    CTRL_OUT3_2P5_DIN           : in  std_logic_vector(7 downto 0);  -- XCVR 3 control in lines
--    SCAL_CLK_OUT3_2P5_IN        : in  std_logic;                     -- XCVR 3 aux clock (not used)
--    SCAL_DAT_CLK_OUT3_LVDS_IN_N : in  std_logic;                     -- XCVR 3 Rx data clock
--    SCAL_DAT_CLK_OUT3_LVDS_IN_P : in  std_logic;                     -- XCVR 3 Rx data clock
--    SCAL_EN_AGC_IN3_2P5_OUT     : out std_logic;                     -- XCVR 3 AGC enable
--    SCAL_ENABLE_IN3_2P5_OUT     : out std_logic;                     -- XCVR 3 Data enable
--    SCAL_FB_CLK_IN3_LVDS_OUT_N  : out std_logic;                     -- XCVR 3 Tx data clock
--    SCAL_FB_CLK_IN3_LVDS_OUT_P  : out std_logic;                     -- XCVR 3 Tx data clock
--    SCAL_RESET_N_IN3_2P5_OUT    : out std_logic;                     -- XCVR 3 Active low reset
--    SCAL_RX_FRM_OUT3_LVDS_IN_N  : in  std_logic;                     -- XCVR 3 Rx data frame
--    SCAL_RX_FRM_OUT3_LVDS_IN_P  : in  std_logic;                     -- XCVR 3 Rx data frame
    SCAL_SPI_CLK_OUT3_2P5_IN    : out std_logic;                     -- XCVR 3 SPI CLK
    SCAL_SPI_DI_OUT3_2P5_IN     : out std_logic;                     -- XCVR 3 SPI MOSI
    SCAL_SPI_DO_IN3_2P5_OUT     : in  std_logic;                     -- XCVR 3 SPI MISO
    SCAL_SPI_EN_N_OUT3_2P5_IN   : out std_logic;                     -- XCVR 3 SPI CSB
--    SCAL_TX_FRM_IN3_LVDS_OUT_N  : out std_logic;                     -- XCVR 3 Tx data frame
--    SCAL_TX_FRM_IN3_LVDS_OUT_P  : out std_logic;                     -- XCVR 3 Tx data frame
--    SCAL_TXNRX_IN3_2P5_OUT      : out std_logic;                     -- XCVR 3 Data Tx/nRx (for TDD)

    ---------------------------------------------------------------------------------------------------
    -- AD9361 XCVR 4 signals
    ---------------------------------------------------------------------------------------------------
--    ADI_RX4_LVDS_DOUT_N         : out std_logic_vector(5 downto 0);  -- XCVR 4 Tx data lines
--    ADI_RX4_LVDS_DOUT_P         : out std_logic_vector(5 downto 0);  -- XCVR 4 Tx data lines
--    ADI_TX4_LVDS_DIN_N          : in  std_logic_vector(5 downto 0);  -- XCVR 4 Rx data lines
--    ADI_TX4_LVDS_DIN_P          : in  std_logic_vector(5 downto 0);  -- XCVR 4 Rx data lines
--    CTRL_IN4_2P5_DOUT           : out std_logic_vector(3 downto 0);  -- XCVR 4 control out lines
--    CTRL_OUT4_2P5_DIN           : in  std_logic_vector(7 downto 0);  -- XCVR 4 control in lines
--    SCAL_CLK_OUT4_2P5_IN        : in  std_logic;                     -- XCVR 4 aux clock (not used)
--    SCAL_DAT_CLK_OUT4_LVDS_IN_N : in  std_logic;                     -- XCVR 4 Rx data clock
--    SCAL_DAT_CLK_OUT4_LVDS_IN_P : in  std_logic;                     -- XCVR 4 Rx data clock
--    SCAL_EN_AGC_IN4_2P5_OUT     : out std_logic;                     -- XCVR 4 AGC enable
--    SCAL_ENABLE_IN4_2P5_OUT     : out std_logic;                     -- XCVR 4 Data enable
--    SCAL_FB_CLK_IN4_LVDS_OUT_N  : out std_logic;                     -- XCVR 4 Tx data clock
--    SCAL_FB_CLK_IN4_LVDS_OUT_P  : out std_logic;                     -- XCVR 4 Tx data clock
--    SCAL_RESET_N_IN4_2P5_OUT    : out std_logic;                     -- XCVR 4 Active low reset
--    SCAL_RX_FRM_OUT4_LVDS_IN_N  : in  std_logic;                     -- XCVR 4 Rx data frame
--    SCAL_RX_FRM_OUT4_LVDS_IN_P  : in  std_logic;                     -- XCVR 4 Rx data frame
    SCAL_SPI_CLK_OUT4_2P5_IN    : out std_logic;                     -- XCVR 4 SPI CLK
    SCAL_SPI_DI_OUT4_2P5_IN     : out std_logic;                     -- XCVR 4 SPI MOSI
    SCAL_SPI_DO_IN4_2P5_OUT     : in  std_logic;                     -- XCVR 4 SPI MISO
    SCAL_SPI_EN_N_OUT4_2P5_IN   : out std_logic;                     -- XCVR 4 SPI CSB
--    SCAL_TX_FRM_IN4_LVDS_OUT_N  : out std_logic;                     -- XCVR 4 Tx data frame
--    SCAL_TX_FRM_IN4_LVDS_OUT_P  : out std_logic;                     -- XCVR 4 Tx data frame
--    SCAL_TXNRX_IN4_2P5_OUT      : out std_logic;                     -- XCVR 4 Data Tx/nRx (for TDD)

    ---------------------------------------------------------------------------------------------------
    -- microprocessor signals
    ---------------------------------------------------------------------------------------------------
--    AM3357_GMII2_COL   : in    std_logic;
--    AM3357_GMII2_CRS   : out   std_logic; -- interrupt, active high
--    AM3357_GMII2_RXCLK : out   std_logic;
--    AM3357_GMII2_RXD   : out   std_logic_vector(3 downto 0);
--    AM3357_GMII2_RXDV  : out   std_logic;  -- thjs is rx control
--    AM3357_GMII2_RXER  : in    std_logic;  -- dont use
--    AM3357_GMII2_TXCLK : in    std_logic;
--    AM3357_GMII2_TXD   : in    std_logic_vector(3 downto 0);
--    AM3357_GMII2_TXEN  : in    std_logic;
    AM3357_GPIO_2      : inout std_logic_vector(25 downto 22);
    AM3357_GPIO_3      : in    std_logic_vector(18 downto 17);
    GPMC_A             : in    std_logic_vector(18 downto 16);
    GPMC_AD            : inout std_logic_vector(15 downto 0);
    GPMC_ALE           : in    std_logic;
    GPMC_BE_N          : in    std_logic;
    GPMC_CE_N          : in    std_logic;
    GPMC_CLE           : in    std_logic;
    GPMC_CLK           : in    std_logic;
    GPMC_CS_N          : in    std_logic;
    GPMC_RE_N          : in    std_logic;
    GPMC_WAIT          : out   std_logic;
    GPMC_WE_N          : in    std_logic;

    ---------------------------------------------------------------------------------------------------
    -- SPI / LO / Switch control
    ---------------------------------------------------------------------------------------------------
    ARINC_429_CS_N         : out std_logic;
    ARINC_429_SCK          : out std_logic;
    ARINC_429_SDI          : out std_logic;
    ARINC_429_SDO          : in  std_logic;
    CALSW                  : out std_logic_vector(8 downto 1);
    CALSW_TXRX             : out std_logic;
    CLK_DIST_CLK           : out std_logic;
    CLK_DIST_CS            : out std_logic;
    CLK_DIST_LD            : in  std_logic;
    CLK_DIST_SDI           : out std_logic;
    LMK04308_SYNC          : out std_logic;
    LO_CNTRL_3P3_RXLO_CLK  : out std_logic;
    LO_CNTRL_3P3_RXLO_CS   : out std_logic;
    LO_CNTRL_3P3_RXLO_MUTE : out std_logic;
    LO_CNTRL_3P3_RXLO_REF  : out std_logic;
    LO_CNTRL_3P3_RXLO_SDI  : out std_logic;
    LO_CNTRL_3P3_RXLO_SDO  : in  std_logic;
    LO_CNTRL_3P3_RXLO_STAT : in  std_logic;
    LO_CNTRL_3P3_TXLO_CLK  : out std_logic;
    LO_CNTRL_3P3_TXLO_CS   : out std_logic;
    LO_CNTRL_3P3_TXLO_MUTE : out std_logic;
    LO_CNTRL_3P3_TXLO_REF  : out std_logic;
    LO_CNTRL_3P3_TXLO_SDI  : out std_logic;
    LO_CNTRL_3P3_TXLO_SDO  : in  std_logic;
    LO_CNTRL_3P3_TXLO_STAT : in  std_logic;
    POW_DET_SW             : out std_logic_vector(4 downto 0);
    SCAL_SYNC_2P5_OUT      : out std_logic;
    SPI_MUX_SEL            : in  std_logic_vector(4 downto 0);
    TEMP_SENSE_CS_N        : out std_logic;
    TEMP_SENSE_SCK         : out std_logic;
    TEMP_SENSE_SDO         : in  std_logic;
    TX_EN                  : out std_logic_vector(3 downto 0);
    FPGA_SPI_SCK           : in  std_logic;
    FPGA_SPI_CSN           : in  std_logic;
    FPGA_SPI_MOSI          : in  std_logic;
    FPGA_SPI_MISO          : out std_logic;

    ---------------------------------------------------------------------------------------------------
    -- Clocks
    ---------------------------------------------------------------------------------------------------
    CLK_25MHZ_FPGA             : in std_logic;
    CLK_LVDS_FPGA_122MHZ88_0_N : in std_logic;
    CLK_LVDS_FPGA_122MHZ88_0_P : in std_logic;
    CLK_LVDS_FPGA_122MHZ88_1_N : in std_logic;
    CLK_LVDS_FPGA_122MHZ88_1_P : in std_logic;
    CLK_LVDS_FPGA1_30MHZ72_N   : in std_logic;
    CLK_LVDS_FPGA1_30MHZ72_P   : in std_logic;
    --REC_CLK_30P72MHZ_P         : out std_logic;
    --REC_CLK_30P72MHZ_N         : out std_logic;


    ---------------------------------------------------------------------------------------------------
    -- Debug / Other
    ---------------------------------------------------------------------------------------------------
    BOARD_REV              : in     std_logic_vector(2 downto 0);
    CPLD_FPGA_SPARE        : in     std_logic_vector(7 downto 0);
    FPGA_DEBUG_HEAD        : out    std_logic_vector(6 downto 0);
    FPGA_DEBUG_MIC_CLK     : out    std_logic;
    -- FPGA_DEBUG_MIC_CLK_IN  : in     std_logic;
    FPGA_DEBUG_MICA        : out    std_logic_vector(31 downto 0);
    FPGA_DEBUG_MICB        : out    std_logic_vector(31 downto 0);
    FPGA_DEBUG_MICB_CLK    : out    std_logic;
    FPGA_LED               : out    std_logic_vector(2 downto 1)
    );
end HARRIS_RADAR_TOP;

architecture RTL of HARRIS_RADAR_TOP is
----------------------------------------------------------------------------------
-- SIGNALS
----------------------------------------------------------------------------------
  signal din    : std_logic_vector(15 downto 0);
  signal dout   : std_logic_vector(15 downto 0);
  
BEGIN
  ----------------------------------------------------------------------------------
  -- TOP LEVEL OUTPUT MAPPING
  ----------------------------------------------------------------------------------
  
  Radar_Design_i : entity work.design_1_wrapper
  port map (
      CSN_0             => SCAL_SPI_EN_N_OUT0_2P5_IN,
      CSN_1             => SCAL_SPI_EN_N_OUT1_2P5_IN,
      CSN_2             => SCAL_SPI_EN_N_OUT2_2P5_IN,
      CSN_3             => SCAL_SPI_EN_N_OUT3_2P5_IN,
      CSN_4             => SCAL_SPI_EN_N_OUT4_2P5_IN,
      MISO_0            => SCAL_SPI_DO_IN0_2P5_OUT,
      MISO_1            => SCAL_SPI_DO_IN1_2P5_OUT,
      MISO_2            => SCAL_SPI_DO_IN2_2P5_OUT,
      MISO_3            => SCAL_SPI_DO_IN3_2P5_OUT,
      MISO_4            => SCAL_SPI_DO_IN4_2P5_OUT,
      MOSI_0            => SCAL_SPI_DI_OUT0_2P5_IN,
      MOSI_1            => SCAL_SPI_DI_OUT1_2P5_IN,
      MOSI_2            => SCAL_SPI_DI_OUT2_2P5_IN,
      MOSI_3            => SCAL_SPI_DI_OUT3_2P5_IN,
      MOSI_4            => SCAL_SPI_DI_OUT4_2P5_IN,
      SCLK_0            => SCAL_SPI_CLK_OUT0_2P5_IN,
      SCLK_1            => SCAL_SPI_CLK_OUT1_2P5_IN,
      SCLK_2            => SCAL_SPI_CLK_OUT2_2P5_IN,
      SCLK_3            => SCAL_SPI_CLK_OUT3_2P5_IN,
      SCLK_4            => SCAL_SPI_CLK_OUT4_2P5_IN,  
      clk_25MHZ         => CLK_25MHZ_FPGA,
      ext_reset_in_0    => AM3357_GPIO_3(17),
      gpio_io_o_0 (6 downto 0) => FPGA_DEBUG_HEAD (6 downto 0),
      ----------------------
      --Debug LED
      ----------------------
      fpga_led(1 downto 0)         => FPGA_LED(2 downto 1),
      -- -------------------
      -- GPMC interface
      -- -------------------
      a(2 downto 0)                 => GPMC_A(18 downto 16),
      a_d(15 downto 0)              => din(15 downto 0),
      read_data_out(15 downto 0)    => dout(15 downto 0),
      oen                           => GPMC_RE_N,
      wen                           => GPMC_WE_N,
      advn                          => GPMC_ALE,
      csn                           => GPMC_CS_N
  );
  

  ----------------------------------------------------------------------------------
  -- IOBUF_data: Generates a tri-state buffer for the bi-directional GPMC shared
  --             address/data bus configuration.
  ----------------------------------------------------------------------------------
  GEN1 : for ix in 0 to 15 generate
    IOBUF_data : IOBUF
      port map (
        O  => din(ix),                  -- Buffer output
        IO => GPMC_AD(ix),              -- Buffer inout port (connect directly to top-level port)
        I  => dout(ix),                 -- Buffer input
        T  => GPMC_RE_N                 -- 3-state enable input, high=input, low=output
        );
  end generate GEN1;
end RTL;