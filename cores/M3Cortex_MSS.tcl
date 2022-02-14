# Exporting Component Description of M3Cortex_MSS to TCL
# Family: SmartFusion2
# Part Number: M2S060-FG484

set mss_name {M3Cortex_MSS}

# Creating the MSS component M3Cortex_MSS
create_and_configure_core -core_vlnv {Actel:SmartFusion2MSS:MSS:1.1.500} -component_name ${mss_name} -params {}

# Enabling/Disabling the instance 'CAN' in the MSS component
mss_disable_instance -component_name ${mss_name} -instance_name {CAN}

# Configuring the instance 'CC' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {CC} -params {\
"CACHE_ENABLED:false" \
"CC_CACHE_REGION:128MB_0001" }
mss_save_instance_config -component_name ${mss_name} -instance_name {CC}

# Configuring the instance 'CCC' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {CCC} -params {\
"FAB_PLL_LOCK_EN:false" \
"FAB_PLL_LOCK_IS_USED:1" \
"FAB_PLL_LOCK_LOST_EN:false" \
"FACC_GLMUX_SEL_IS_USED:false" \
"FCLK_FREQ:142.0" \
"FCLK_PCLK0_DIVISOR:2" \
"FCLK_PCLK1_DIVISOR:2" \
"FIC32_0_DIVISOR:1" \
"FIC32_1_DIVISOR:1" \
"MDDR_CLK_FIC64_DIVISOR:1" \
"MDDR_FCLK_MULT:1" \
"MPLL_LOCK_COUNT:32" \
"MPLL_LOCK_EN:false" \
"MPLL_LOCK_IS_USED:false" \
"MPLL_LOCK_LOST_EN:false" \
"MPLL_LOCK_WINDOW:8000" \
"MPLL_SUPPLY_VOLTAGE:3_3" \
"REFCLK_FREQ:100.0" \
"REFCLK_SRC:CLK_BASE" }
mss_save_instance_config -component_name ${mss_name} -instance_name {CCC}

# Configuring the instance 'CFGM' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {CFGM} -params {\
"CFG_FABRIC:false" \
"CFG_MDDR:1" \
"MASTER:MSS" \
"MDDR_CONFIG_LOCAL:0" \
"PER2_PADDR_MSB:15" }
mss_save_instance_config -component_name ${mss_name} -instance_name {CFGM}

# Configuring the instance 'CM3' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {CM3} -params {\
"MPU_USED:true" \
"RX_EV_USED:false" \
"SLEEPDEEP_USED:false" \
"SLEEPHOLD_USED:false" \
"SLEEPING_USED:false" \
"STCALIB:0x2000000" \
"STCLK_DIVISOR:STCLK_DIVISOR_32" \
"TRACE_USED:false" \
"TRACECLK_DIV2_SEL:false" \
"TX_EV_USED:false" }
mss_save_instance_config -component_name ${mss_name} -instance_name {CM3}

# Configuring the instance 'DDRB' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {DDRB} -params {\
"DDRB_BUF_SZ:32B" \
"DDRB_DS_REN:true" \
"DDRB_DS_WEN:true" \
"DDRB_HPD_ENABLE:false" \
"DDRB_HPD_REN:true" \
"DDRB_HPD_WEN:true" \
"DDRB_IDC_REN:true" \
"DDRB_NB_ADDR:0xA000" \
"DDRB_NB_SZ:64KB" \
"DDRB_SW_REN:true" \
"DDRB_SW_WEN:true" \
"DDRB_TIMER:0x3FF" }
mss_save_instance_config -component_name ${mss_name} -instance_name {DDRB}

# Enabling/Disabling the instance 'DMA' in the MSS component
mss_disable_instance -component_name ${mss_name} -instance_name {DMA}

# Configuring the instance 'EDAC' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {EDAC} -params {\
"EDAC_ENABLE_CAN_EDAC_EN:false" \
"EDAC_ENABLE_CC_EDAC_EN:false" \
"EDAC_ENABLE_ESRAM0_EDAC_EN:false" \
"EDAC_ENABLE_ESRAM1_EDAC_EN:false" \
"EDAC_ENABLE_MAC_EDACRX_EN:false" \
"EDAC_ENABLE_MAC_EDACTX_EN:false" \
"EDAC_ENABLE_USB_EDAC_EN:false" \
"EDAC_INT_ENABLE_CAN:DISABLE_ALL" \
"EDAC_INT_ENABLE_CC:DISABLE_ALL" \
"EDAC_INT_ENABLE_ESRAM0:DISABLE_ALL" \
"EDAC_INT_ENABLE_ESRAM1:DISABLE_ALL" \
"EDAC_INT_ENABLE_MAC_EDACRX:DISABLE_ALL" \
"EDAC_INT_ENABLE_MAC_EDACTX:DISABLE_ALL" \
"EDAC_INT_ENABLE_MDDR_ECC_INT_EN:true" \
"EDAC_INT_ENABLE_USB:DISABLE_ALL" \
"EXPOSE_EDAC_ERROR:false" }
mss_save_instance_config -component_name ${mss_name} -instance_name {EDAC}

# Configuring the instance 'ENVM' in the MSS component
mss_configure_envm -component_name ${mss_name} -cfg_file "$cores_base/ENVM.cfg" 

# Enabling/Disabling the instance 'FIC32_0' in the MSS component
mss_enable_instance -component_name ${mss_name} -instance_name {FIC32_0}

# Configuring the instance 'FIC32_0' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {FIC32_0} -params {\
"EXPOSE_MASTER_IDENTITY:false" \
"FAB_CLK_FREQUENCY:100.000" \
"INTERFACE_MASTER:false" \
"INTERFACE_SLAVE:false" \
"INTERFACE_TYPE:INTERFACE_AHB" \
"MSS_CLK_FREQUENCY:100.000" \
"USE_BYPASS_MODE:false" \
"USE_FAB_REGION_0:true" \
"USE_FAB_REGION_1:true" \
"USE_FAB_REGION_2:true" \
"USE_FAB_REGION_3:false" \
"USE_FAB_REGION_4:false" \
"USE_FAB_REGION_5:false" }
mss_save_instance_config -component_name ${mss_name} -instance_name {FIC32_0}

# Enabling/Disabling the instance 'GPIO' in the MSS component
mss_enable_instance -component_name ${mss_name} -instance_name {GPIO}

# Configuring the instance 'GPIO' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {GPIO} -params {\
"ADVANCED_OPTION:false" \
"GPIO0_FAB_CAPT:false" \
"GPIO0_TYPE:CONNECTION_FABRICA" \
"GPIO0_USAGE:USAGE_INPUT" \
"GPIO1_FAB_CAPT:false" \
"GPIO1_TYPE:CONNECTION_FABRICA" \
"GPIO1_USAGE:USAGE_OUTPUT" \
"GPIO2_FAB_CAPT:false" \
"GPIO2_TYPE:CONNECTION_FABRICA" \
"GPIO2_USAGE:USAGE_OUTPUT" \
"GPIO3_FAB_CAPT:false" \
"GPIO3_TYPE:CONNECTION_IOA" \
"GPIO3_USAGE:NOT_USED" \
"GPIO4_FAB_CAPT:false" \
"GPIO4_TYPE:CONNECTION_IOA" \
"GPIO4_USAGE:NOT_USED" \
"GPIO5_FAB_CAPT:false" \
"GPIO5_TYPE:CONNECTION_IOA" \
"GPIO5_USAGE:NOT_USED" \
"GPIO6_FAB_CAPT:false" \
"GPIO6_TYPE:CONNECTION_IOA" \
"GPIO6_USAGE:NOT_USED" \
"GPIO7_FAB_CAPT:false" \
"GPIO7_TYPE:CONNECTION_IOA" \
"GPIO7_USAGE:NOT_USED" \
"GPIO8_FAB_CAPT:false" \
"GPIO8_TYPE:CONNECTION_IOA" \
"GPIO8_USAGE:NOT_USED" \
"GPIO9_FAB_CAPT:false" \
"GPIO9_TYPE:CONNECTION_IOA" \
"GPIO9_USAGE:NOT_USED" \
"GPIO10_FAB_CAPT:false" \
"GPIO10_TYPE:CONNECTION_IOA" \
"GPIO10_USAGE:NOT_USED" \
"GPIO11_FAB_CAPT:false" \
"GPIO11_TYPE:CONNECTION_IOA" \
"GPIO11_USAGE:NOT_USED" \
"GPIO12_FAB_CAPT:false" \
"GPIO12_TYPE:CONNECTION_IOA" \
"GPIO12_USAGE:NOT_USED" \
"GPIO13_FAB_CAPT:false" \
"GPIO13_TYPE:CONNECTION_IOA" \
"GPIO13_USAGE:NOT_USED" \
"GPIO14_FAB_CAPT:false" \
"GPIO14_TYPE:CONNECTION_IOA" \
"GPIO14_USAGE:NOT_USED" \
"GPIO15_FAB_CAPT:false" \
"GPIO15_TYPE:CONNECTION_IOA" \
"GPIO15_USAGE:NOT_USED" \
"GPIO16_FAB_CAPT:false" \
"GPIO16_TYPE:CONNECTION_IOA" \
"GPIO16_USAGE:NOT_USED" \
"GPIO17_FAB_CAPT:false" \
"GPIO17_TYPE:CONNECTION_IOA" \
"GPIO17_USAGE:NOT_USED" \
"GPIO18_FAB_CAPT:false" \
"GPIO18_TYPE:CONNECTION_IOA" \
"GPIO18_USAGE:NOT_USED" \
"GPIO19_FAB_CAPT:false" \
"GPIO19_TYPE:CONNECTION_IOA" \
"GPIO19_USAGE:NOT_USED" \
"GPIO20_FAB_CAPT:false" \
"GPIO20_TYPE:CONNECTION_IOA" \
"GPIO20_USAGE:NOT_USED" \
"GPIO21_FAB_CAPT:false" \
"GPIO21_TYPE:CONNECTION_IOA" \
"GPIO21_USAGE:NOT_USED" \
"GPIO22_FAB_CAPT:false" \
"GPIO22_TYPE:CONNECTION_IOA" \
"GPIO22_USAGE:NOT_USED" \
"GPIO23_FAB_CAPT:false" \
"GPIO23_TYPE:CONNECTION_IOA" \
"GPIO23_USAGE:NOT_USED" \
"GPIO24_FAB_CAPT:false" \
"GPIO24_TYPE:CONNECTION_IOA" \
"GPIO24_USAGE:NOT_USED" \
"GPIO25_FAB_CAPT:false" \
"GPIO25_TYPE:CONNECTION_IOA" \
"GPIO25_USAGE:NOT_USED" \
"GPIO26_FAB_CAPT:false" \
"GPIO26_TYPE:CONNECTION_IOA" \
"GPIO26_USAGE:NOT_USED" \
"GPIO27_FAB_CAPT:false" \
"GPIO27_TYPE:CONNECTION_IOA" \
"GPIO27_USAGE:NOT_USED" \
"GPIO28_FAB_CAPT:false" \
"GPIO28_TYPE:CONNECTION_IOA" \
"GPIO28_USAGE:NOT_USED" \
"GPIO29_FAB_CAPT:false" \
"GPIO29_TYPE:CONNECTION_IOA" \
"GPIO29_USAGE:NOT_USED" \
"GPIO30_FAB_CAPT:false" \
"GPIO30_TYPE:CONNECTION_IOA" \
"GPIO30_USAGE:NOT_USED" \
"GPIO31_FAB_CAPT:false" \
"GPIO31_TYPE:CONNECTION_IOA" \
"GPIO31_USAGE:NOT_USED" \
"GPIO_7_0_SET_RESET_SRC:GPIO_SYSREG" \
"GPIO_7_0_SET_RESET_VAL:RESET_STATE_0" \
"GPIO_15_8_SET_RESET_SRC:GPIO_SYSREG" \
"GPIO_15_8_SET_RESET_VAL:RESET_STATE_1" \
"GPIO_23_16_SET_RESET_SRC:GPIO_SYSREG" \
"GPIO_23_16_SET_RESET_VAL:RESET_STATE_1" \
"GPIO_31_24_SET_RESET_SRC:GPIO_SYSREG" \
"GPIO_31_24_SET_RESET_VAL:RESET_STATE_1" \
"USE_RESET_FABRIC:false" }
mss_save_instance_config -component_name ${mss_name} -instance_name {GPIO}

# Enabling/Disabling the instance 'I2C_0' in the MSS component
mss_enable_instance -component_name ${mss_name} -instance_name {I2C_0}

# Configuring the instance 'I2C_0' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {I2C_0} -params {\
"ADVANCED_OPTION:false" \
"SCL_CONNECTION:CONNECTION_IO" \
"SCL_FAB_CAPT:false" \
"SCL_GPIO_CAPT:false" \
"SDA_CONNECTION:CONNECTION_IO" \
"SDA_FAB_CAPT:false" \
"SDA_GPIO_CAPT:false" \
"USE_FABRIC_BCLK:false" \
"USE_FABRIC_SMBUS:false" }
mss_save_instance_config -component_name ${mss_name} -instance_name {I2C_0}

# Enabling/Disabling the instance 'I2C_1' in the MSS component
mss_enable_instance -component_name ${mss_name} -instance_name {I2C_1}

# Configuring the instance 'I2C_1' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {I2C_1} -params {\
"ADVANCED_OPTION:false" \
"SCL_CONNECTION:CONNECTION_IO" \
"SCL_FAB_CAPT:false" \
"SCL_GPIO_CAPT:false" \
"SDA_CONNECTION:CONNECTION_IO" \
"SDA_FAB_CAPT:false" \
"SDA_GPIO_CAPT:false" \
"USE_FABRIC_BCLK:false" \
"USE_FABRIC_SMBUS:false" }
mss_save_instance_config -component_name ${mss_name} -instance_name {I2C_1}

# Configuring the instance 'INTR' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {INTR} -params {\
"CC_INTERRUPT_EN:0x7" \
"DDRB_INTERRUPT_EN:0x3FF" \
"F2H_INTERRUPT_USED:false" \
"H2F_INTERRUPT_USED:false" \
"SW_INTERRUPT_EN:0x7F" }
mss_save_instance_config -component_name ${mss_name} -instance_name {INTR}

# Enabling/Disabling the instance 'MAC' in the MSS component
mss_enable_instance -component_name ${mss_name} -instance_name {MAC}

# Configuring the instance 'MAC' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {MAC} -params {\
"GMII_FABRIC_INTERFACE_EXPOSED:false" \
"LINE_SPEED:LINE_SPEED_100" \
"MAC_1588:false" \
"MANAGMENT:true" \
"MII_FABRIC_INTERFACE_EXPOSED:true" \
"PHY_MODE:PHY_MODE_MII" \
"RGMII_FABRIC_INTERFACE_EXPOSED:false" \
"RGMII_INTERFACE_EXPOSED:false" \
"RMII_FABRIC_INTERFACE_EXPOSED:false" \
"RMII_INTERFACE_EXPOSED:false" \
"TBI_FABRIC_INTERFACE_EXPOSED:false" }
mss_save_instance_config -component_name ${mss_name} -instance_name {MAC}

# Enabling/Disabling the instance 'MDDR' in the MSS component
mss_enable_instance -component_name ${mss_name} -instance_name {MDDR}

# Configuring the instance 'MDDR' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {MDDR} -params {\
"DDR_FIC_ERR_INT_ENABLE_CR:0x0" \
"DDR_FIC_HPB_ERR_ADDR_1_SR:0x0" \
"DDR_FIC_HPB_ERR_ADDR_2_SR:0x0" \
"DDR_FIC_HPD_SW_RW_EN_CR:0x0" \
"DDR_FIC_HPD_SW_RW_INVAL_CR:0x0" \
"DDR_FIC_HPD_SW_WRB_EMPTY_SR:0x0" \
"DDR_FIC_LOCK_TIMEOUT_EN_CR:0x0" \
"DDR_FIC_LOCK_TIMEOUTVAL_1_CR:0x0" \
"DDR_FIC_LOCK_TIMEOUTVAL_2_CR:0x0" \
"DDR_FIC_NB_ADDR_CR:0x0" \
"DDR_FIC_NBRWB_SIZE_CR:0x0" \
"DDR_FIC_NUM_AHB_MASTERS_CR:0x0" \
"DDR_FIC_RDWR_ERR_SR:0x0" \
"DDR_FIC_SW_ERR_ADDR_1_SR:0x0" \
"DDR_FIC_SW_ERR_ADDR_2_SR:0x0" \
"DDR_FIC_SW_HPB_LOCKOUT_SR:0x0" \
"DDR_FIC_SW_HPD_WERR_SR:0x0" \
"DDR_FIC_SW_WR_ERCLR_CR:0x0" \
"DDR_FIC_WB_TIMEOUT_CR:0x0" \
"DDRC_ADDR_MAP_BANK_CR:0x99f" \
"DDRC_ADDR_MAP_COL_1_CR:0x3333" \
"DDRC_ADDR_MAP_COL_2_CR:0xffff" \
"DDRC_ADDR_MAP_COL_3_CR:0x3300" \
"DDRC_ADDR_MAP_ROW_1_CR:0x7777" \
"DDRC_ADDR_MAP_ROW_2_CR:0xfff" \
"DDRC_AXI_FABRIC_PRI_ID_CR:0x10" \
"DDRC_CKE_RSTN_CYCLES_1_CR:0x4200" \
"DDRC_CKE_RSTN_CYCLES_2_CR:0x8" \
"DDRC_DEBUG_CR:0x3300" \
"DDRC_DFI_CTRLUPD_TIME_INTERVAL_CR:0x309" \
"DDRC_DFI_MAX_CTRLUPD_TIMING_CR:0x40" \
"DDRC_DFI_MIN_CTRLUPD_TIMING_CR:0x3" \
"DDRC_DFI_RD_LVL_CONTROL_1_CR:0x0" \
"DDRC_DFI_RD_LVL_CONTROL_2_CR:0x0" \
"DDRC_DFI_RDDATA_EN_CR:0x3" \
"DDRC_DFI_WR_LVL_CONTROL_1_CR:0x0" \
"DDRC_DFI_WR_LVL_CONTROL_2_CR:0x0" \
"DDRC_DOUBLE_ERR_CNT_SR:0x0" \
"DDRC_DRAM_BANK_ACT_TIMING_CR:0xd33" \
"DDRC_DRAM_BANK_TIMING_PARAM_CR:0x241" \
"DDRC_DRAM_MR_TIMING_PARAM_CR:0x2" \
"DDRC_DRAM_RAS_TIMING_CR:0x27" \
"DDRC_DRAM_RD_WR_LATENCY_CR:0x23" \
"DDRC_DRAM_RD_WR_PRE_CR:0x235" \
"DDRC_DRAM_RD_WR_TRNARND_TIME_CR:0x178" \
"DDRC_DRAM_T_PD_CR:0x21" \
"DDRC_DYN_DEBUG_CR:0x0" \
"DDRC_DYN_POWERDOWN_CR:0x0" \
"DDRC_DYN_REFRESH_1_CR:0x588" \
"DDRC_DYN_REFRESH_2_CR:0x291" \
"DDRC_DYN_SOFT_RESET_ALIAS_CR:0x1" \
"DDRC_DYN_SOFT_RESET_CR:0x0" \
"DDRC_ECC_DATA_MASK_CR:0x0" \
"DDRC_ECC_INT_CLR_REG:0x0" \
"DDRC_ECC_INT_SR:0x0" \
"DDRC_ECC_OUTPUT_DATA_SR:0x0" \
"DDRC_HPR_QUEUE_PARAM_1_CR:0x80f8" \
"DDRC_HPR_QUEUE_PARAM_2_CR:0x7" \
"DDRC_INIT_1_CR:0x1" \
"DDRC_INIT_EMR2_CR:0x0" \
"DDRC_INIT_EMR3_CR:0x0" \
"DDRC_INIT_EMR_CR:0x22" \
"DDRC_INIT_MR_CR:0x33" \
"DDRC_LCB_MASK_1_SR:0x0" \
"DDRC_LCB_MASK_2_SR:0x0" \
"DDRC_LCB_MASK_3_SR:0x0" \
"DDRC_LCB_MASK_4_SR:0x0" \
"DDRC_LCB_NUMBER_SR:0x0" \
"DDRC_LCE_ADDRESS_1_SR:0x0" \
"DDRC_LCE_ADDRESS_2_SR:0x0" \
"DDRC_LCE_SYNDROME_1_SR:0x0" \
"DDRC_LCE_SYNDROME_2_SR:0x0" \
"DDRC_LCE_SYNDROME_3_SR:0x0" \
"DDRC_LCE_SYNDROME_4_SR:0x0" \
"DDRC_LCE_SYNDROME_5_SR:0x0" \
"DDRC_LPR_QUEUE_PARAM_1_CR:0x80f8" \
"DDRC_LPR_QUEUE_PARAM_2_CR:0x7" \
"DDRC_LUE_ADDRESS_1_SR:0x0" \
"DDRC_LUE_ADDRESS_2_SR:0x0" \
"DDRC_LUE_SYNDROME_1_SR:0x0" \
"DDRC_LUE_SYNDROME_2_SR:0x0" \
"DDRC_LUE_SYNDROME_3_SR:0x0" \
"DDRC_LUE_SYNDROME_4_SR:0x0" \
"DDRC_LUE_SYNDROME_5_SR:0x0" \
"DDRC_MODE_CR:0x81" \
"DDRC_MODE_REG_DATA_CR:0x0" \
"DDRC_MODE_REG_RD_WR_CR:0x0" \
"DDRC_ODT_PARAM_1_CR:0x14" \
"DDRC_ODT_PARAM_2_CR:0x10" \
"DDRC_PERF_PARAM_1_CR:0x4080" \
"DDRC_PERF_PARAM_2_CR:0x0" \
"DDRC_PERF_PARAM_3_CR:0x0" \
"DDRC_PWR_SAVE_1_CR:0x40c" \
"DDRC_PWR_SAVE_2_CR:0x0" \
"DDRC_RESERVED0:0x0" \
"DDRC_SINGLE_ERR_CNT_SR:0x0" \
"DDRC_SR:0x0" \
"DDRC_WR_QUEUE_PARAM_CR:0x200" \
"DDRC_ZQ_LONG_TIME_CR:0x0" \
"DDRC_ZQ_SHORT_INT_REFRESH_MARGIN_1_CR:0x2" \
"DDRC_ZQ_SHORT_INT_REFRESH_MARGIN_2_CR:0x0" \
"DDRC_ZQ_SHORT_TIME_CR:0x0" \
"DM_WIDTH:1" \
"DQ_ECC_WIDTH:1" \
"DQ_WIDTH:15" \
"DQS_WIDTH:1" \
"MEMORY_ECC:NO" \
"MEMORY_TYPE:LPDDR_LVCMOS18_NO_CALIBRATION" \
"MEMORY_WIDTH:16" \
"MODE:MODE_DDR" \
"NUMBER_OF_BANK_BITS:2" \
"NUMBER_OF_COLUMN_BITS:10" \
"NUMBER_OF_ROW_BITS:13" \
"PHY_BIST_ERROR_1_SR:0x0" \
"PHY_BIST_ERROR_2_SR:0x0" \
"PHY_BIST_ERROR_3_SR:0x0" \
"PHY_BIST_TEST_SHIFT_PATTERN_1_CR:0x0" \
"PHY_BIST_TEST_SHIFT_PATTERN_2_CR:0x0" \
"PHY_BIST_TEST_SHIFT_PATTERN_3_CR:0x0" \
"PHY_BOARD_LOOPBACK_CR:0x0" \
"PHY_CTRL_OF_OUTPUT_DELAY_SR:0x0" \
"PHY_CTRL_OUTPUT_FILTER_SR:0x0" \
"PHY_CTRL_SLAVE_DELAY_CR:0x0" \
"PHY_CTRL_SLAVE_DLL_VAL_SR:0x0" \
"PHY_CTRL_SLAVE_FORCE_CR:0x0" \
"PHY_CTRL_SLAVE_RATIO_CR:0x80" \
"PHY_DATA_SLICE_IN_USE_CR:0x3" \
"PHY_DIS_CALIB_RST_CR:0x0" \
"PHY_DLL_LOCK_AND_SLAVE_VAL_SR:0x0" \
"PHY_DLL_LOCK_DIFF_CR:0xb" \
"PHY_DLL_SLAVE_VALUE_1_SR:0x0" \
"PHY_DLL_SLAVE_VALUE_2_SR:0x0" \
"PHY_DQ_OFFSET_1_CR:0x0" \
"PHY_DQ_OFFSET_2_CR:0x0" \
"PHY_DQ_OFFSET_3_CR:0x0" \
"PHY_DYN_BIST_TEST_CR:0x0" \
"PHY_DYN_BIST_TEST_ERRCLR_1_CR:0x0" \
"PHY_DYN_BIST_TEST_ERRCLR_2_CR:0x0" \
"PHY_DYN_BIST_TEST_ERRCLR_3_CR:0x0" \
"PHY_DYN_CONFIG_CR:0x9" \
"PHY_DYN_RESET_CR:0x1" \
"PHY_FIFO_1_SR:0x0" \
"PHY_FIFO_2_SR:0x0" \
"PHY_FIFO_3_SR:0x0" \
"PHY_FIFO_4_SR:0x0" \
"PHY_FIFO_WE_IN_DELAY_1_CR:0x0" \
"PHY_FIFO_WE_IN_DELAY_2_CR:0x0" \
"PHY_FIFO_WE_IN_DELAY_3_CR:0x0" \
"PHY_FIFO_WE_IN_FORCE_CR:0x0" \
"PHY_FIFO_WE_SLAVE_DLL_VAL_1_SR:0x0" \
"PHY_FIFO_WE_SLAVE_DLL_VAL_2_SR:0x0" \
"PHY_FIFO_WE_SLAVE_DLL_VAL_3_SR:0x0" \
"PHY_FIFO_WE_SLAVE_RATIO_1_CR:0x40" \
"PHY_FIFO_WE_SLAVE_RATIO_2_CR:0x401" \
"PHY_FIFO_WE_SLAVE_RATIO_3_CR:0x4010" \
"PHY_FIFO_WE_SLAVE_RATIO_4_CR:0x0" \
"PHY_GATELVL_INIT_MODE_CR:0x0" \
"PHY_GATELVL_INIT_RATIO_1_CR:0x0" \
"PHY_GATELVL_INIT_RATIO_2_CR:0x0" \
"PHY_GATELVL_INIT_RATIO_3_CR:0x0" \
"PHY_GATELVL_INIT_RATIO_4_CR:0x0" \
"PHY_INVERT_CLKOUT_CR:0x0" \
"PHY_LEVELLING_FAILURE_SR:0x0" \
"PHY_LOCAL_ODT_CR:0x0" \
"PHY_LOOPBACK_TEST_CR:0x0" \
"PHY_LVL_NUM_OF_DQ0_CR:0x0" \
"PHY_MASTER_DLL_SR:0x0" \
"PHY_RD_DQS_SLAVE_DELAY_1_CR:0x0" \
"PHY_RD_DQS_SLAVE_DELAY_2_CR:0x0" \
"PHY_RD_DQS_SLAVE_DELAY_3_CR:0x0" \
"PHY_RD_DQS_SLAVE_DLL_VAL_1_SR:0x0" \
"PHY_RD_DQS_SLAVE_DLL_VAL_2_SR:0x0" \
"PHY_RD_DQS_SLAVE_DLL_VAL_3_SR:0x0" \
"PHY_RD_DQS_SLAVE_FORCE_CR:0x0" \
"PHY_RD_DQS_SLAVE_RATIO_1_CR:0x40" \
"PHY_RD_DQS_SLAVE_RATIO_2_CR:0x401" \
"PHY_RD_DQS_SLAVE_RATIO_3_CR:0x4010" \
"PHY_RD_DQS_SLAVE_RATIO_4_CR:0x0" \
"PHY_RD_WR_GATE_LVL_CR:0x0" \
"PHY_RDC_FIFO_RST_ERR_CNT_CLR_CR:0x0" \
"PHY_RDC_WE_TO_RE_DELAY_CR:0x3" \
"PHY_RDLVL_DQS_RATIO_1_SR:0x0" \
"PHY_RDLVL_DQS_RATIO_2_SR:0x0" \
"PHY_RDLVL_DQS_RATIO_3_SR:0x0" \
"PHY_RDLVL_DQS_RATIO_4_SR:0x0" \
"PHY_STATUS_OF_IN_DELAY_VAL_1_SR:0x0" \
"PHY_STATUS_OF_IN_DELAY_VAL_2_SR:0x0" \
"PHY_STATUS_OF_OUT_DELAY_VAL_1_SR:0x0" \
"PHY_STATUS_OF_OUT_DELAY_VAL_2_SR:0x0" \
"PHY_USE_FIXED_RE_CR:0x1" \
"PHY_USE_LVL_TRNG_LEVEL_CR:0x0" \
"PHY_USE_RANK0_DELAYS_CR:0x1" \
"PHY_WR_DATA_SLAVE_DELAY_1_CR:0x0" \
"PHY_WR_DATA_SLAVE_DELAY_2_CR:0x0" \
"PHY_WR_DATA_SLAVE_DELAY_3_CR:0x0" \
"PHY_WR_DATA_SLAVE_DLL_VAL_1_SR:0x0" \
"PHY_WR_DATA_SLAVE_DLL_VAL_2_SR:0x0" \
"PHY_WR_DATA_SLAVE_DLL_VAL_3_SR:0x0" \
"PHY_WR_DATA_SLAVE_FORCE_CR:0x0" \
"PHY_WR_DATA_SLAVE_RATIO_1_CR:0x40" \
"PHY_WR_DATA_SLAVE_RATIO_2_CR:0x401" \
"PHY_WR_DATA_SLAVE_RATIO_3_CR:0x4010" \
"PHY_WR_DATA_SLAVE_RATIO_4_CR:0x0" \
"PHY_WR_DQS_SLAVE_DELAY_1_CR:0x0" \
"PHY_WR_DQS_SLAVE_DELAY_2_CR:0x0" \
"PHY_WR_DQS_SLAVE_DELAY_3_CR:0x0" \
"PHY_WR_DQS_SLAVE_DLL_VAL_1_SR:0x0" \
"PHY_WR_DQS_SLAVE_DLL_VAL_2_SR:0x0" \
"PHY_WR_DQS_SLAVE_DLL_VAL_3_SR:0x0" \
"PHY_WR_DQS_SLAVE_FORCE_CR:0x0" \
"PHY_WR_DQS_SLAVE_RATIO_1_CR:0x0" \
"PHY_WR_DQS_SLAVE_RATIO_2_CR:0x0" \
"PHY_WR_DQS_SLAVE_RATIO_3_CR:0x0" \
"PHY_WR_DQS_SLAVE_RATIO_4_CR:0x0" \
"PHY_WR_RD_RL_CR:0x21" \
"PHY_WRLVL_DQ_RATIO_1_SR:0x0" \
"PHY_WRLVL_DQ_RATIO_2_SR:0x0" \
"PHY_WRLVL_DQ_RATIO_3_SR:0x0" \
"PHY_WRLVL_DQ_RATIO_4_SR:0x0" \
"PHY_WRLVL_DQS_RATIO_1_SR:0x0" \
"PHY_WRLVL_DQS_RATIO_2_SR:0x0" \
"PHY_WRLVL_DQS_RATIO_3_SR:0x0" \
"PHY_WRLVL_DQS_RATIO_4_SR:0x0" \
"PHY_WRLVL_INIT_MODE_CR:0x0" \
"PHY_WRLVL_INIT_RATIO_1_CR:0x0" \
"PHY_WRLVL_INIT_RATIO_2_CR:0x0" \
"PHY_WRLVL_INIT_RATIO_3_CR:0x0" \
"PHY_WRLVL_INIT_RATIO_4_CR:0x0" }
mss_save_instance_config -component_name ${mss_name} -instance_name {MDDR}

# Enabling/Disabling the instance 'MMUART_0' in the MSS component
mss_enable_instance -component_name ${mss_name} -instance_name {MMUART_0}

# Configuring the instance 'MMUART_0' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {MMUART_0} -params {\
"ADVANCED_OPTION:false" \
"CLK_CONNECTION:CONNECTION_IO" \
"CLK_FAB_CAPT:false" \
"CLK_GPIO_CAPT:false" \
"CTS_CONNECTION:CONNECTION_IO" \
"CTS_FAB_CAPT:false" \
"CTS_GPIO_CAPT:false" \
"DCD_CONNECTION:CONNECTION_IO" \
"DCD_FAB_CAPT:false" \
"DCD_GPIO_CAPT:false" \
"DSR_CONNECTION:CONNECTION_IO" \
"DSR_FAB_CAPT:false" \
"DSR_GPIO_CAPT:false" \
"DTR_CONNECTION:CONNECTION_IO" \
"DTR_FAB_CAPT:false" \
"DTR_GPIO_CAPT:false" \
"MODE:MODE_ASYNC" \
"MODE_DUPLEX:MODE_FULL" \
"RI_CONNECTION:CONNECTION_IO" \
"RI_FAB_CAPT:false" \
"RI_GPIO_CAPT:false" \
"RTS_CONNECTION:CONNECTION_IO" \
"RTS_FAB_CAPT:false" \
"RTS_GPIO_CAPT:false" \
"RXD_CONNECTION:CONNECTION_IO" \
"RXD_FAB_CAPT:false" \
"RXD_GPIO_CAPT:false" \
"TXD_CONNECTION:CONNECTION_IO" \
"TXD_FAB_CAPT:false" \
"TXD_GPIO_CAPT:false" \
"TXD_RXD_CONNECTION:CONNECTION_IO" \
"TXD_RXD_FAB_CAPT:false" \
"TXD_RXD_GPIO_CAPT:false" \
"USE_MODEM:false" }
mss_save_instance_config -component_name ${mss_name} -instance_name {MMUART_0}

# Enabling/Disabling the instance 'MMUART_1' in the MSS component
mss_enable_instance -component_name ${mss_name} -instance_name {MMUART_1}

# Configuring the instance 'MMUART_1' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {MMUART_1} -params {\
"ADVANCED_OPTION:false" \
"CLK_CONNECTION:CONNECTION_IO" \
"CLK_FAB_CAPT:false" \
"CLK_GPIO_CAPT:false" \
"CTS_CONNECTION:CONNECTION_IO" \
"CTS_FAB_CAPT:false" \
"CTS_GPIO_CAPT:false" \
"DCD_CONNECTION:CONNECTION_IO" \
"DCD_FAB_CAPT:false" \
"DCD_GPIO_CAPT:false" \
"DSR_CONNECTION:CONNECTION_IO" \
"DSR_FAB_CAPT:false" \
"DSR_GPIO_CAPT:false" \
"DTR_CONNECTION:CONNECTION_IO" \
"DTR_FAB_CAPT:false" \
"DTR_GPIO_CAPT:false" \
"MODE:MODE_ASYNC" \
"MODE_DUPLEX:MODE_FULL" \
"RI_CONNECTION:CONNECTION_IO" \
"RI_FAB_CAPT:false" \
"RI_GPIO_CAPT:false" \
"RTS_CONNECTION:CONNECTION_IO" \
"RTS_FAB_CAPT:false" \
"RTS_GPIO_CAPT:false" \
"RXD_CONNECTION:CONNECTION_IO" \
"RXD_FAB_CAPT:false" \
"RXD_GPIO_CAPT:false" \
"TXD_CONNECTION:CONNECTION_IO" \
"TXD_FAB_CAPT:false" \
"TXD_GPIO_CAPT:false" \
"TXD_RXD_CONNECTION:CONNECTION_IO" \
"TXD_RXD_FAB_CAPT:false" \
"TXD_RXD_GPIO_CAPT:false" \
"USE_MODEM:false" }
mss_save_instance_config -component_name ${mss_name} -instance_name {MMUART_1}

# Configuring the instance 'RESET' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {RESET} -params {\
"FAB_M3_RESET_N_USED:true" \
"FPGA_RESET_N_USED:true" \
"USER_MSS_RESET_N_USED:true" }
mss_save_instance_config -component_name ${mss_name} -instance_name {RESET}

# Enabling/Disabling the instance 'RTC' in the MSS component
mss_enable_instance -component_name ${mss_name} -instance_name {RTC}

# Configuring the instance 'RTC' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {RTC} -params {\
"CLK_SEL:RTC_CLK_SEL_XTAL" \
"MAIN_XTLOSC_FREQ:20.00" \
"RTC_MATCH_USED:false" \
"RTC_WAKEUP_FAB:false" \
"RTC_WAKEUP_M3:false" }
mss_save_instance_config -component_name ${mss_name} -instance_name {RTC}

# Configuring the instance 'SECURITY' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {SECURITY} -params {\
"CC_CACHEREGION_OVERRIDE:true" \
"CC_CONFIG_OVERRIDE:true" \
"CC_FLUSHINDX_OVERRIDE:true" \
"CC_LOCKBASEADDR_OVERRIDE:true" \
"DDR_CONFIG_OVERRIDE:true" \
"DDRB_BUF_TIMER_OVERRIDE:true" \
"DDRB_CONFIG_OVERRIDE:true" \
"DDRB_NB_ADR_OVERRIDE:true" \
"DDRB_NB_SIZE_OVERRIDE:true" \
"EDAC_ENABLE_OVERRIDE:true" \
"EDAC_INT_ENABLE_OVERRIDE:true" \
"ENVM_CONFIG_OVERRIDE:true" \
"ENVM_FAB_REMAP_OVERRIDE:true" \
"ENVM_REMAP_BASE_OVERRIDE:true" \
"ESRAM_CONFIG_OVERRIDE:true" \
"ESRAM_MAX_LAT_OVERRIDE:true" \
"ESRAM_PIPELINE_CONFIG_OVERRIDE:true" \
"FAB_IF_OVERRIDE:true" \
"FABRIC_MEMPROT_BASE_ADDRESS:0x00000000" \
"FABRIC_MEMPROT_IS_USED:false" \
"FABRIC_MEMPROT_REGION_SIZE:8MB" \
"GPIN_SRC_SEL_OVERRIDE:true" \
"GPIO_SYSRESET_SEL_OVERRIDE:true" \
"LOOPBACK_CTRL_OVERRIDE:true" \
"M3_CONFIG_OVERRIDE:true" \
"MAC_CONFIG_OVERRIDE:true" \
"MASTER_WEIGHT_CONFIG0_OVERRIDE:true" \
"MASTER_WEIGHT_CONFIG1_OVERRIDE:true" \
"MDDR_CONFIG_OVERRIDE:true" \
"MDDR_IO_CALIB_OVERRIDE:true" \
"MM0_1_2_MS0_ALLOWED_R:true" \
"MM0_1_2_MS0_ALLOWED_W:true" \
"MM0_1_2_MS1_ALLOWED_R:true" \
"MM0_1_2_MS1_ALLOWED_W:true" \
"MM0_1_2_MS2_ALLOWED_R:true" \
"MM0_1_2_MS2_ALLOWED_W:true" \
"MM0_1_2_MS3_ALLOWED_R:true" \
"MM0_1_2_MS3_ALLOWED_W:true" \
"MM0_1_2_MS6_ALLOWED_R:true" \
"MM0_1_2_MS6_ALLOWED_W:true" \
"MM3_6_7_8_MS0_ALLOWED_R:true" \
"MM3_6_7_8_MS0_ALLOWED_W:true" \
"MM3_6_7_8_MS1_ALLOWED_R:true" \
"MM3_6_7_8_MS1_ALLOWED_W:true" \
"MM3_6_7_8_MS2_ALLOWED_R:true" \
"MM3_6_7_8_MS2_ALLOWED_W:true" \
"MM3_6_7_8_MS3_ALLOWED_R:true" \
"MM3_6_7_8_MS3_ALLOWED_W:true" \
"MM3_6_7_8_MS6_ALLOWED_R:true" \
"MM3_6_7_8_MS6_ALLOWED_W:true" \
"MM4_5_FIC64_MS0_ALLOWED_R:true" \
"MM4_5_FIC64_MS0_ALLOWED_W:true" \
"MM4_5_FIC64_MS1_ALLOWED_R:true" \
"MM4_5_FIC64_MS1_ALLOWED_W:true" \
"MM4_5_FIC64_MS2_ALLOWED_R:true" \
"MM4_5_FIC64_MS2_ALLOWED_W:true" \
"MM4_5_FIC64_MS3_ALLOWED_R:true" \
"MM4_5_FIC64_MS3_ALLOWED_W:true" \
"MM4_5_FIC64_MS6_ALLOWED_R:true" \
"MM4_5_FIC64_MS6_ALLOWED_W:true" \
"MM9_MS0_ALLOWED_R:true" \
"MM9_MS0_ALLOWED_W:true" \
"MM9_MS1_ALLOWED_R:true" \
"MM9_MS1_ALLOWED_W:true" \
"MM9_MS2_ALLOWED_R:true" \
"MM9_MS2_ALLOWED_W:true" \
"MM9_MS3_ALLOWED_R:true" \
"MM9_MS3_ALLOWED_W:true" \
"MM9_MS6_ALLOWED_R:true" \
"MM9_MS6_ALLOWED_W:true" \
"MSS_INTERRUPT_ENABLE_OVERRIDE:true" \
"MSSDDR_CLK_CALIB_CONFIG_OVERRIDE:true" \
"MSSDDR_FACC_CONFIG_1_OVERRIDE:true" \
"MSSDDR_FACC_CONFIG_2_OVERRIDE:true" \
"MSSDDR_PLL_STATUS_HIGH_OVERRIDE:true" \
"MSSDDR_PLL_STATUS_LOW_OVERRIDE:true" \
"NVM0_LOWER_ALLOWED:true" \
"NVM0_LOWER_FABRIC_ACCESS:true" \
"NVM0_LOWER_M3ACCESS:true" \
"NVM0_LOWER_OTHERS_ACCESS:true" \
"NVM0_UPPER_ALLOWED:true" \
"NVM0_UPPER_FABRIC_ACCESS:true" \
"NVM0_UPPER_M3ACCESS:true" \
"NVM0_UPPER_OTHERS_ACCESS:true" \
"NVM1_LOWER_ALLOWED:true" \
"NVM1_LOWER_FABRIC_ACCESS:true" \
"NVM1_LOWER_M3ACCESS:true" \
"NVM1_LOWER_OTHERS_ACCESS:true" \
"NVM1_UPPER_ALLOWED:true" \
"NVM1_UPPER_FABRIC_ACCESS:true" \
"NVM1_UPPER_M3ACCESS:true" \
"NVM1_UPPER_OTHERS_ACCESS:true" \
"PERIPH_CLOCK_MUX_SEL_OVERRIDE:true" \
"PLL_LOCK_EN_OVERRIDE:true" \
"RTC_WAKEUP_CONFIG_OVERRIDE:true" \
"SOFT_INTERRUPT_OVERRIDE:true" \
"SOFTRESET_CAN_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_COMBLK_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_ENVM0_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_ENVM1_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_ESRAM0_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_ESRAM1_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_FIC32_0_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_FIC32_1_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_FPGA_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_G4SPI0_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_G4SPI1_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_HPDMA_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_I2C0_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_I2C1_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_MAC_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_MDDR_CTLR_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_MDDR_FIC64_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_MMUART0_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_MMUART1_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_MSS_GPIO_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_MSS_GPOUT_7_0_SOFT_RESET_OVERRIDE:true" \
"SOFTRESET_MSS_GPOUT_15_8_SOFT_RESET_OVERRIDE:true" \
"SOFTRESET_MSS_GPOUT_23_16_SOFT_RESET_OVERRIDE:true" \
"SOFTRESET_MSS_GPOUT_31_24_SOFT_RESET_OVERRIDE:true" \
"SOFTRESET_PDMA_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_TIMER_SOFTRESET_OVERRIDE:true" \
"SOFTRESET_USB_SOFTRESET_OVERRIDE:true" \
"SPARE_OUT_OVERRIDE:true" \
"USB_CONFIG_OVERRIDE:true" \
"USB_IO_INPUT_SEL_OVERRIDE:true" \
"WDOGCONFIG_OVERRIDE:true" }
mss_save_instance_config -component_name ${mss_name} -instance_name {SECURITY}

# Enabling/Disabling the instance 'SPI_0' in the MSS component
mss_enable_instance -component_name ${mss_name} -instance_name {SPI_0}

# Configuring the instance 'SPI_0' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {SPI_0} -params {\
"ADVANCED_OPTION:false" \
"CLK_CONNECTION:CONNECTION_IO" \
"CLK_FAB_CAPT:false" \
"CLK_GPIO_CAPT:false" \
"DI_CONNECTION:CONNECTION_IO" \
"DI_FAB_CAPT:false" \
"DI_GPIO_CAPT:false" \
"DO_CONNECTION:CONNECTION_IO" \
"DO_FAB_CAPT:false" \
"DO_GPIO_CAPT:false" \
"NB_SLAVES:1" \
"SS0_CONNECTION:CONNECTION_IO" \
"SS0_FAB_CAPT:false" \
"SS0_GPIO_CAPT:false" \
"SS1_CONNECTION:CONNECTION_IO" \
"SS1_FAB_CAPT:false" \
"SS1_GPIO_CAPT:false" \
"SS1_USED:false" \
"SS2_CONNECTION:CONNECTION_IO" \
"SS2_FAB_CAPT:false" \
"SS2_GPIO_CAPT:false" \
"SS2_USED:false" \
"SS3_CONNECTION:CONNECTION_IO" \
"SS3_FAB_CAPT:false" \
"SS3_GPIO_CAPT:false" \
"SS3_USED:false" \
"SS4_CONNECTION:CONNECTION_IO" \
"SS4_FAB_CAPT:false" \
"SS4_GPIO_CAPT:false" \
"SS4_USED:false" \
"SS5_CONNECTION:CONNECTION_IO" \
"SS5_FAB_CAPT:false" \
"SS5_GPIO_CAPT:false" \
"SS5_USED:false" \
"SS6_CONNECTION:CONNECTION_IO" \
"SS6_FAB_CAPT:false" \
"SS6_GPIO_CAPT:false" \
"SS6_USED:false" \
"SS7_CONNECTION:CONNECTION_IO" \
"SS7_FAB_CAPT:false" \
"SS7_GPIO_CAPT:false" \
"SS7_USED:false" }
mss_save_instance_config -component_name ${mss_name} -instance_name {SPI_0}

# Enabling/Disabling the instance 'SPI_1' in the MSS component
mss_enable_instance -component_name ${mss_name} -instance_name {SPI_1}

# Configuring the instance 'SPI_1' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {SPI_1} -params {\
"ADVANCED_OPTION:false" \
"CLK_CONNECTION:CONNECTION_IO" \
"CLK_FAB_CAPT:false" \
"CLK_GPIO_CAPT:false" \
"DI_CONNECTION:CONNECTION_IO" \
"DI_FAB_CAPT:false" \
"DI_GPIO_CAPT:false" \
"DO_CONNECTION:CONNECTION_IO" \
"DO_FAB_CAPT:false" \
"DO_GPIO_CAPT:false" \
"NB_SLAVES:1" \
"SS0_CONNECTION:CONNECTION_IO" \
"SS0_FAB_CAPT:false" \
"SS0_GPIO_CAPT:false" \
"SS1_CONNECTION:CONNECTION_IO" \
"SS1_FAB_CAPT:false" \
"SS1_GPIO_CAPT:false" \
"SS1_USED:false" \
"SS2_CONNECTION:CONNECTION_IO" \
"SS2_FAB_CAPT:false" \
"SS2_GPIO_CAPT:false" \
"SS2_USED:false" \
"SS3_CONNECTION:CONNECTION_IO" \
"SS3_FAB_CAPT:false" \
"SS3_GPIO_CAPT:false" \
"SS3_USED:false" \
"SS4_CONNECTION:CONNECTION_IO" \
"SS4_FAB_CAPT:false" \
"SS4_GPIO_CAPT:false" \
"SS4_USED:false" \
"SS5_CONNECTION:CONNECTION_IO" \
"SS5_FAB_CAPT:false" \
"SS5_GPIO_CAPT:false" \
"SS5_USED:false" \
"SS6_CONNECTION:CONNECTION_IO" \
"SS6_FAB_CAPT:false" \
"SS6_GPIO_CAPT:false" \
"SS6_USED:false" \
"SS7_CONNECTION:CONNECTION_IO" \
"SS7_FAB_CAPT:false" \
"SS7_GPIO_CAPT:false" \
"SS7_USED:false" }
mss_save_instance_config -component_name ${mss_name} -instance_name {SPI_1}

# Configuring the instance 'SWITCH' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {SWITCH} -params {\
"CORTEXM3_REMAP:ENVM" \
"ENVM_REMAP_BASE_ADDRESS:0x00000000" \
"ENVM_REMAP_FABRIC_BASE_ADDRESS:0x00000000" \
"ENVM_REMAP_FABRIC_IS_USED:false" \
"ENVM_REMAP_REGION_SIZE:256" \
"ESRAM_MAX_LAT_SW_MAX_LATENCY_ESRAM0:8" \
"ESRAM_MAX_LAT_SW_MAX_LATENCY_ESRAM1:8" \
"SW_WEIGHT_FAB_0:1" \
"SW_WEIGHT_FAB_1:1" \
"SW_WEIGHT_G:1" \
"SW_WEIGHT_GIGE:1" \
"SW_WEIGHT_HPDMA:1" \
"SW_WEIGHT_IC:1" \
"SW_WEIGHT_PDMA:1" \
"SW_WEIGHT_S:1" \
"SW_WEIGHT_USB:1" }
mss_save_instance_config -component_name ${mss_name} -instance_name {SWITCH}

# Enabling/Disabling the instance 'USB' in the MSS component
mss_enable_instance -component_name ${mss_name} -instance_name {USB}

# Configuring the instance 'USB' in the MSS component
mss_configure_instance -component_name ${mss_name} -instance_name {USB} -params {\
"DATA0_CONNECTION:DATA0_B" \
"DATA1_CONNECTION:DATA1_B" \
"DATA2_CONNECTION:DATA2_B" \
"DATA3_CONNECTION:DATA3_B" \
"DATA4_CONNECTION:DATA4_B" \
"DATA5_CONNECTION:DATA5_B" \
"DATA6_CONNECTION:DATA6_B" \
"DATA7_CONNECTION:DATA7_B" \
"DATA_WIDTH:7" \
"DDR_SELECT:DDR_SELECT_SDR" \
"DIR_CONNECTION:DIR_B" \
"NXT_CONNECTION:NXT_B" \
"STP_CONNECTION:STP_B" \
"ULPI_DDR_SELECTED:true" \
"ULPI_SELECTED:true" \
"USB_CONFIG:CONFIG_ULPI_B" \
"XCLK_CONNECTION:XCLK_B" }
mss_save_instance_config -component_name ${mss_name} -instance_name {USB}

# Enabling/Disabling the instance 'WATCHDOG' in the MSS component
mss_disable_instance -component_name ${mss_name} -instance_name {WATCHDOG}

# Generating the MSS component
generate_component -component_name ${mss_name}

# Exporting Component Description of M3Cortex_MSS to TCL done
