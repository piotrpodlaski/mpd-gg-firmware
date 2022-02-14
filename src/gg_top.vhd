----------------------------------------------------------------------
-- Created by SmartDesign Mon Feb 14 11:41:01 2022
-- Version: 2021.3 2021.3.0.10
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library smartfusion2;
use smartfusion2.all;
----------------------------------------------------------------------
-- m2s060_som entity declaration
----------------------------------------------------------------------
entity gg_top is
    -- Port list
    port(
        -- Inputs
        DEVRST_N              : in    std_logic;
        GPIO_BTN              : in    std_logic;
        MAC_MII_COL           : in    std_logic;
        MAC_MII_CRS           : in    std_logic;
        MAC_MII_RXD           : in    std_logic_vector(3 downto 0);
        MAC_MII_RX_CLK        : in    std_logic;
        MAC_MII_RX_DV         : in    std_logic;
        MAC_MII_RX_ER         : in    std_logic;
        MAC_MII_TX_CLK        : in    std_logic;
        MDDR_DQS_TMATCH_0_IN  : in    std_logic;
        MMUART_0_RXD          : in    std_logic;
        MMUART_1_RXD          : in    std_logic;
        SPI_0_DI              : in    std_logic;
        SPI_1_DI              : in    std_logic;
        USB_ULPI_DIR          : in    std_logic;
        USB_ULPI_NXT          : in    std_logic;
        USB_ULPI_XCLK         : in    std_logic;
        XTL                   : in    std_logic;
        -- Outputs
        GPIO_LED0             : out   std_logic;
        GPIO_LED1             : out   std_logic;
        MAC_MII_MDC           : out   std_logic;
        MAC_MII_TXD           : out   std_logic_vector(3 downto 0);
        MAC_MII_TXD_EN        : out   std_logic;
        MDDR_ADDR             : out   std_logic_vector(15 downto 0);
        MDDR_BA               : out   std_logic_vector(2 downto 0);
        MDDR_CAS_N            : out   std_logic;
        MDDR_CKE              : out   std_logic;
        MDDR_CLK              : out   std_logic;
        MDDR_CLK_N            : out   std_logic;
        MDDR_CS_N             : out   std_logic;
        MDDR_DQS_TMATCH_0_OUT : out   std_logic;
        MDDR_ODT              : out   std_logic;
        MDDR_RAS_N            : out   std_logic;
        MDDR_RESET_N          : out   std_logic;
        MDDR_WE_N             : out   std_logic;
        MMUART_0_TXD          : out   std_logic;
        MMUART_1_TXD          : out   std_logic;
        SPI_0_DO              : out   std_logic;
        SPI_1_DO              : out   std_logic;
        USB_ULPI_STP          : out   std_logic;
        -- Inouts
        I2C_0_SCL             : inout std_logic;
        I2C_0_SDA             : inout std_logic;
        I2C_1_SCL             : inout std_logic;
        I2C_1_SDA             : inout std_logic;
        MAC_MII_MDIO          : inout std_logic;
        MDDR_DM_RDQS          : inout std_logic_vector(1 downto 0);
        MDDR_DQ               : inout std_logic_vector(15 downto 0);
        MDDR_DQS              : inout std_logic_vector(1 downto 0);
        SPI_0_CLK             : inout std_logic;
        SPI_0_SS0             : inout std_logic;
        SPI_1_CLK             : inout std_logic;
        SPI_1_SS0             : inout std_logic;
        USB_ULPI_DATA         : inout std_logic_vector(7 downto 0)
        );
end gg_top;
----------------------------------------------------------------------
-- gg_top architecture body
----------------------------------------------------------------------
architecture RTL of gg_top is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- M3Cortex
component M3Cortex
    -- Port list
    port(
        -- Inputs
        DEVRST_N              : in    std_logic;
        GPIO_BTN              : in    std_logic;
        MAC_MII_COL           : in    std_logic;
        MAC_MII_CRS           : in    std_logic;
        MAC_MII_RXD           : in    std_logic_vector(3 downto 0);
        MAC_MII_RX_CLK        : in    std_logic;
        MAC_MII_RX_DV         : in    std_logic;
        MAC_MII_RX_ER         : in    std_logic;
        MAC_MII_TX_CLK        : in    std_logic;
        MDDR_DQS_TMATCH_0_IN  : in    std_logic;
        MMUART_0_RXD          : in    std_logic;
        MMUART_1_RXD          : in    std_logic;
        SPI_0_DI              : in    std_logic;
        SPI_1_DI              : in    std_logic;
        USB_ULPI_DIR          : in    std_logic;
        USB_ULPI_NXT          : in    std_logic;
        USB_ULPI_XCLK         : in    std_logic;
        XTL                   : in    std_logic;
        -- Outputs
        GPIO_LED0             : out   std_logic;
        GPIO_LED1             : out   std_logic;
        MAC_MII_MDC           : out   std_logic;
        MAC_MII_TXD           : out   std_logic_vector(3 downto 0);
        MAC_MII_TXD_EN        : out   std_logic;
        MDDR_ADDR             : out   std_logic_vector(15 downto 0);
        MDDR_BA               : out   std_logic_vector(2 downto 0);
        MDDR_CAS_N            : out   std_logic;
        MDDR_CKE              : out   std_logic;
        MDDR_CLK              : out   std_logic;
        MDDR_CLK_N            : out   std_logic;
        MDDR_CS_N             : out   std_logic;
        MDDR_DQS_TMATCH_0_OUT : out   std_logic;
        MDDR_ODT              : out   std_logic;
        MDDR_RAS_N            : out   std_logic;
        MDDR_RESET_N          : out   std_logic;
        MDDR_WE_N             : out   std_logic;
        MMUART_0_TXD          : out   std_logic;
        MMUART_1_TXD          : out   std_logic;
        SPI_0_DO              : out   std_logic;
        SPI_1_DO              : out   std_logic;
        USB_ULPI_STP          : out   std_logic;
        -- Inouts
        I2C_0_SCL             : inout std_logic;
        I2C_0_SDA             : inout std_logic;
        I2C_1_SCL             : inout std_logic;
        I2C_1_SDA             : inout std_logic;
        MAC_MII_MDIO          : inout std_logic;
        MDDR_DM_RDQS          : inout std_logic_vector(1 downto 0);
        MDDR_DQ               : inout std_logic_vector(15 downto 0);
        MDDR_DQS              : inout std_logic_vector(1 downto 0);
        SPI_0_CLK             : inout std_logic;
        SPI_0_SS0             : inout std_logic;
        SPI_1_CLK             : inout std_logic;
        SPI_1_SS0             : inout std_logic;
        USB_ULPI_DATA         : inout std_logic_vector(7 downto 0)
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal GPIO_LED0_net_0             : std_logic;
signal GPIO_LED1_net_0             : std_logic;
signal MAC_MII_MDC_net_0           : std_logic;
signal MAC_MII_TXD_net_0           : std_logic_vector(3 downto 0);
signal MAC_MII_TXD_EN_net_0        : std_logic;
signal MDDR_ADDR_net_0             : std_logic_vector(15 downto 0);
signal MDDR_BA_net_0               : std_logic_vector(2 downto 0);
signal MDDR_CAS_N_net_0            : std_logic;
signal MDDR_CKE_net_0              : std_logic;
signal MDDR_CLK_net_0              : std_logic;
signal MDDR_CLK_N_net_0            : std_logic;
signal MDDR_CS_N_net_0             : std_logic;
signal MDDR_DQS_TMATCH_0_OUT_net_0 : std_logic;
signal MDDR_ODT_net_0              : std_logic;
signal MDDR_RAS_N_net_0            : std_logic;
signal MDDR_RESET_N_net_0          : std_logic;
signal MDDR_WE_N_net_0             : std_logic;
signal MMUART_0_TXD_net_0          : std_logic;
signal MMUART_1_TXD_net_0          : std_logic;
signal SPI_0_DO_net_0              : std_logic;
signal SPI_1_DO_net_0              : std_logic;
signal USB_ULPI_STP_net_0          : std_logic;
signal SPI_0_DO_net_1              : std_logic;
signal SPI_1_DO_net_1              : std_logic;
signal MMUART_1_TXD_net_1          : std_logic;
signal MMUART_0_TXD_net_1          : std_logic;
signal USB_ULPI_STP_net_1          : std_logic;
signal MDDR_DQS_TMATCH_0_OUT_net_1 : std_logic;
signal MDDR_CAS_N_net_1            : std_logic;
signal MDDR_CLK_net_1              : std_logic;
signal MDDR_CLK_N_net_1            : std_logic;
signal MDDR_CKE_net_1              : std_logic;
signal MDDR_CS_N_net_1             : std_logic;
signal MDDR_ODT_net_1              : std_logic;
signal MDDR_RAS_N_net_1            : std_logic;
signal MDDR_RESET_N_net_1          : std_logic;
signal MDDR_WE_N_net_1             : std_logic;
signal MAC_MII_MDC_net_1           : std_logic;
signal GPIO_LED1_net_1             : std_logic;
signal GPIO_LED0_net_1             : std_logic;
signal MAC_MII_TXD_EN_net_1        : std_logic;
signal MDDR_ADDR_net_1             : std_logic_vector(15 downto 0);
signal MDDR_BA_net_1               : std_logic_vector(2 downto 0);
signal MAC_MII_TXD_net_1           : std_logic_vector(3 downto 0);

begin
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 SPI_0_DO_net_1              <= SPI_0_DO_net_0;
 SPI_0_DO                    <= SPI_0_DO_net_1;
 SPI_1_DO_net_1              <= SPI_1_DO_net_0;
 SPI_1_DO                    <= SPI_1_DO_net_1;
 MMUART_1_TXD_net_1          <= MMUART_1_TXD_net_0;
 MMUART_1_TXD                <= MMUART_1_TXD_net_1;
 MMUART_0_TXD_net_1          <= MMUART_0_TXD_net_0;
 MMUART_0_TXD                <= MMUART_0_TXD_net_1;
 USB_ULPI_STP_net_1          <= USB_ULPI_STP_net_0;
 USB_ULPI_STP                <= USB_ULPI_STP_net_1;
 MDDR_DQS_TMATCH_0_OUT_net_1 <= MDDR_DQS_TMATCH_0_OUT_net_0;
 MDDR_DQS_TMATCH_0_OUT       <= MDDR_DQS_TMATCH_0_OUT_net_1;
 MDDR_CAS_N_net_1            <= MDDR_CAS_N_net_0;
 MDDR_CAS_N                  <= MDDR_CAS_N_net_1;
 MDDR_CLK_net_1              <= MDDR_CLK_net_0;
 MDDR_CLK                    <= MDDR_CLK_net_1;
 MDDR_CLK_N_net_1            <= MDDR_CLK_N_net_0;
 MDDR_CLK_N                  <= MDDR_CLK_N_net_1;
 MDDR_CKE_net_1              <= MDDR_CKE_net_0;
 MDDR_CKE                    <= MDDR_CKE_net_1;
 MDDR_CS_N_net_1             <= MDDR_CS_N_net_0;
 MDDR_CS_N                   <= MDDR_CS_N_net_1;
 MDDR_ODT_net_1              <= MDDR_ODT_net_0;
 MDDR_ODT                    <= MDDR_ODT_net_1;
 MDDR_RAS_N_net_1            <= MDDR_RAS_N_net_0;
 MDDR_RAS_N                  <= MDDR_RAS_N_net_1;
 MDDR_RESET_N_net_1          <= MDDR_RESET_N_net_0;
 MDDR_RESET_N                <= MDDR_RESET_N_net_1;
 MDDR_WE_N_net_1             <= MDDR_WE_N_net_0;
 MDDR_WE_N                   <= MDDR_WE_N_net_1;
 MAC_MII_MDC_net_1           <= MAC_MII_MDC_net_0;
 MAC_MII_MDC                 <= MAC_MII_MDC_net_1;
 GPIO_LED1_net_1             <= GPIO_LED1_net_0;
 GPIO_LED1                   <= GPIO_LED1_net_1;
 GPIO_LED0_net_1             <= GPIO_LED0_net_0;
 GPIO_LED0                   <= GPIO_LED0_net_1;
 MAC_MII_TXD_EN_net_1        <= MAC_MII_TXD_EN_net_0;
 MAC_MII_TXD_EN              <= MAC_MII_TXD_EN_net_1;
 MDDR_ADDR_net_1             <= MDDR_ADDR_net_0;
 MDDR_ADDR(15 downto 0)      <= MDDR_ADDR_net_1;
 MDDR_BA_net_1               <= MDDR_BA_net_0;
 MDDR_BA(2 downto 0)         <= MDDR_BA_net_1;
 MAC_MII_TXD_net_1           <= MAC_MII_TXD_net_0;
 MAC_MII_TXD(3 downto 0)     <= MAC_MII_TXD_net_1;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- M3Cortex_0
M3Cortex_0 : M3Cortex
    port map( 
        -- Inputs
        SPI_0_DI              => SPI_0_DI,
        SPI_1_DI              => SPI_1_DI,
        MMUART_1_RXD          => MMUART_1_RXD,
        MMUART_0_RXD          => MMUART_0_RXD,
        USB_ULPI_DIR          => USB_ULPI_DIR,
        USB_ULPI_NXT          => USB_ULPI_NXT,
        USB_ULPI_XCLK         => USB_ULPI_XCLK,
        MDDR_DQS_TMATCH_0_IN  => MDDR_DQS_TMATCH_0_IN,
        DEVRST_N              => DEVRST_N,
        XTL                   => XTL,
        MAC_MII_RX_ER         => MAC_MII_RX_ER,
        MAC_MII_RX_DV         => MAC_MII_RX_DV,
        MAC_MII_CRS           => MAC_MII_CRS,
        MAC_MII_COL           => MAC_MII_COL,
        MAC_MII_RX_CLK        => MAC_MII_RX_CLK,
        MAC_MII_TX_CLK        => MAC_MII_TX_CLK,
        GPIO_BTN              => GPIO_BTN,
        MAC_MII_RXD           => MAC_MII_RXD,
        -- Outputs
        SPI_0_DO              => SPI_0_DO_net_0,
        SPI_1_DO              => SPI_1_DO_net_0,
        MMUART_1_TXD          => MMUART_1_TXD_net_0,
        MMUART_0_TXD          => MMUART_0_TXD_net_0,
        USB_ULPI_STP          => USB_ULPI_STP_net_0,
        MDDR_DQS_TMATCH_0_OUT => MDDR_DQS_TMATCH_0_OUT_net_0,
        MDDR_CAS_N            => MDDR_CAS_N_net_0,
        MDDR_CLK              => MDDR_CLK_net_0,
        MDDR_CLK_N            => MDDR_CLK_N_net_0,
        MDDR_CKE              => MDDR_CKE_net_0,
        MDDR_CS_N             => MDDR_CS_N_net_0,
        MDDR_ODT              => MDDR_ODT_net_0,
        MDDR_RAS_N            => MDDR_RAS_N_net_0,
        MDDR_RESET_N          => MDDR_RESET_N_net_0,
        MDDR_WE_N             => MDDR_WE_N_net_0,
        MAC_MII_TXD_EN        => MAC_MII_TXD_EN_net_0,
        MAC_MII_MDC           => MAC_MII_MDC_net_0,
        GPIO_LED1             => GPIO_LED1_net_0,
        GPIO_LED0             => GPIO_LED0_net_0,
        MDDR_ADDR             => MDDR_ADDR_net_0,
        MDDR_BA               => MDDR_BA_net_0,
        MAC_MII_TXD           => MAC_MII_TXD_net_0,
        -- Inouts
        I2C_0_SDA             => I2C_0_SDA,
        I2C_0_SCL             => I2C_0_SCL,
        I2C_1_SDA             => I2C_1_SDA,
        I2C_1_SCL             => I2C_1_SCL,
        SPI_0_CLK             => SPI_0_CLK,
        SPI_0_SS0             => SPI_0_SS0,
        SPI_1_CLK             => SPI_1_CLK,
        SPI_1_SS0             => SPI_1_SS0,
        MAC_MII_MDIO          => MAC_MII_MDIO,
        USB_ULPI_DATA         => USB_ULPI_DATA,
        MDDR_DM_RDQS          => MDDR_DM_RDQS,
        MDDR_DQ               => MDDR_DQ,
        MDDR_DQS              => MDDR_DQS 
        );

end RTL;
