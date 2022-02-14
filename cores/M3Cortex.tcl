# Creating SmartDesign M3Cortex
set sd_name {M3Cortex}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {DEVRST_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_BTN} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_MII_COL} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_MII_CRS} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_MII_RX_CLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_MII_RX_DV} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_MII_RX_ER} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_MII_TX_CLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_DQS_TMATCH_0_IN} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_0_RXD} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_1_RXD} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_DI} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_DI} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_ULPI_DIR} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_ULPI_NXT} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_ULPI_XCLK} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XTL} -port_direction {IN} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_LED0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_LED1} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_MII_MDC} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_MII_TXD_EN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_CAS_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_CKE} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_CLK_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_CLK} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_CS_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_DQS_TMATCH_0_OUT} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_ODT} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_RAS_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_RESET_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_WE_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_0_TXD} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_1_TXD} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_DO} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_DO} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_ULPI_STP} -port_direction {OUT} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_0_SCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_0_SDA} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_1_SCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_1_SDA} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_MII_MDIO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_CLK} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_SS0} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_CLK} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_SS0} -port_direction {INOUT} -port_is_pad {1}

# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {MAC_MII_RXD} -port_direction {IN} -port_range {[3:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {MAC_MII_TXD} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_ADDR} -port_direction {OUT} -port_range {[15:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_BA} -port_direction {OUT} -port_range {[2:0]} -port_is_pad {1}

sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_DM_RDQS} -port_direction {INOUT} -port_range {[1:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_DQS} -port_direction {INOUT} -port_range {[1:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_DQ} -port_direction {INOUT} -port_range {[15:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {USB_ULPI_DATA} -port_direction {INOUT} -port_range {[7:0]} -port_is_pad {1}

# Add BIBUF_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_0}



# Add CoreConfigP_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CoreConfigP_C0} -instance_name {CoreConfigP_C0_0}



# Add CoreResetP_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CoreResetP_C0} -instance_name {CoreResetP_C0_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreResetP_C0_0:FAB_RESET_N} -value {VCC}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreResetP_C0_0:MSS_HPMS_READY}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreResetP_C0_0:DDR_READY}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreResetP_C0_0:MDDR_DDR_AXI_S_CORE_RESET_N}



# Add FABOSC_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FABOSC_C0} -instance_name {FABOSC_C0_0}



# Add FCCC_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FCCC_C0} -instance_name {FCCC_C0_0}



# Add M3Cortex_MSS_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {M3Cortex_MSS} -instance_name {M3Cortex_MSS_0}
#sd_create_pin_group -sd_name ${sd_name} -group_name {GPIO_FABRIC} -instance_name {M3Cortex_MSS_0} -pin_names {"GPIO_0_F2M" "GPIO_1_M2F" "GPIO_2_M2F" }
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {M3Cortex_MSS_0:MAC_MII_TX_ER}



# Add SYSRESET_POR instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {SYSRESET} -instance_name {SYSRESET_POR}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_0:D" "M3Cortex_MSS_0:MAC_MII_MDO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_0:E" "M3Cortex_MSS_0:MAC_MII_MDO_EN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_0:PAD" "MAC_MII_MDIO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_0:Y" "M3Cortex_MSS_0:MAC_MII_MDI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreConfigP_C0_0:APB_S_PCLK" "M3Cortex_MSS_0:MDDR_APB_S_PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreConfigP_C0_0:APB_S_PRESET_N" "M3Cortex_MSS_0:MDDR_APB_S_PRESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreConfigP_C0_0:CONFIG1_DONE" "CoreResetP_C0_0:CONFIG1_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreConfigP_C0_0:CONFIG2_DONE" "CoreResetP_C0_0:CONFIG2_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreConfigP_C0_0:FIC_2_APB_M_PCLK" "M3Cortex_MSS_0:FIC_2_APB_M_PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreConfigP_C0_0:FIC_2_APB_M_PRESET_N" "CoreResetP_C0_0:FIC_2_APB_M_PRESET_N" "M3Cortex_MSS_0:FIC_2_APB_M_PRESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreConfigP_C0_0:INIT_DONE" "CoreResetP_C0_0:INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreResetP_C0_0:CLK_BASE" "FCCC_C0_0:GL0" "M3Cortex_MSS_0:MCCC_CLK_BASE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreResetP_C0_0:M3_RESET_N" "M3Cortex_MSS_0:M3_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreResetP_C0_0:POWER_ON_RESET_N" "SYSRESET_POR:POWER_ON_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreResetP_C0_0:RCOSC_25_50MHZ" "FABOSC_C0_0:RCOSC_25_50MHZ_O2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreResetP_C0_0:RESET_N_F2M" "M3Cortex_MSS_0:MSS_RESET_N_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreResetP_C0_0:RESET_N_M2F" "M3Cortex_MSS_0:MSS_RESET_N_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DEVRST_N" "SYSRESET_POR:DEVRST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABOSC_C0_0:XTL" "XTL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FCCC_C0_0:LOCK" "M3Cortex_MSS_0:MCCC_CLK_BASE_PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_BTN" "M3Cortex_MSS_0:GPIO_0_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_LED0" "M3Cortex_MSS_0:GPIO_1_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_LED1" "M3Cortex_MSS_0:GPIO_2_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_0_SCL" "M3Cortex_MSS_0:I2C_0_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_0_SDA" "M3Cortex_MSS_0:I2C_0_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_1_SCL" "M3Cortex_MSS_0:I2C_1_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_1_SDA" "M3Cortex_MSS_0:I2C_1_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_MII_COL" "M3Cortex_MSS_0:MAC_MII_COL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_MII_CRS" "M3Cortex_MSS_0:MAC_MII_CRS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_MII_MDC" "M3Cortex_MSS_0:MAC_MII_MDC" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_MII_RX_CLK" "M3Cortex_MSS_0:MAC_MII_RX_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_MII_RX_DV" "M3Cortex_MSS_0:MAC_MII_RX_DV" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_MII_RX_ER" "M3Cortex_MSS_0:MAC_MII_RX_ER" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_MII_TXD_EN" "M3Cortex_MSS_0:MAC_MII_TX_EN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_MII_TX_CLK" "M3Cortex_MSS_0:MAC_MII_TX_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_CAS_N" "M3Cortex_MSS_0:MDDR_CAS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_CKE" "M3Cortex_MSS_0:MDDR_CKE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_CLK" "M3Cortex_MSS_0:MDDR_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_CLK_N" "M3Cortex_MSS_0:MDDR_CLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_CS_N" "M3Cortex_MSS_0:MDDR_CS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_DQS_TMATCH_0_IN" "M3Cortex_MSS_0:MDDR_DQS_TMATCH_0_IN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_DQS_TMATCH_0_OUT" "M3Cortex_MSS_0:MDDR_DQS_TMATCH_0_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_ODT" "M3Cortex_MSS_0:MDDR_ODT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_RAS_N" "M3Cortex_MSS_0:MDDR_RAS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_RESET_N" "M3Cortex_MSS_0:MDDR_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_WE_N" "M3Cortex_MSS_0:MDDR_WE_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_0_RXD" "M3Cortex_MSS_0:MMUART_0_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_0_TXD" "M3Cortex_MSS_0:MMUART_0_TXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_1_RXD" "M3Cortex_MSS_0:MMUART_1_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_1_TXD" "M3Cortex_MSS_0:MMUART_1_TXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_0_CLK" "M3Cortex_MSS_0:SPI_0_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_0_DI" "M3Cortex_MSS_0:SPI_0_DI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_0_DO" "M3Cortex_MSS_0:SPI_0_DO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_0_SS0" "M3Cortex_MSS_0:SPI_0_SS0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_1_CLK" "M3Cortex_MSS_0:SPI_1_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_1_DI" "M3Cortex_MSS_0:SPI_1_DI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_1_DO" "M3Cortex_MSS_0:SPI_1_DO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_1_SS0" "M3Cortex_MSS_0:SPI_1_SS0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_ULPI_DIR" "M3Cortex_MSS_0:USB_ULPI_DIR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_ULPI_NXT" "M3Cortex_MSS_0:USB_ULPI_NXT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_ULPI_STP" "M3Cortex_MSS_0:USB_ULPI_STP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_ULPI_XCLK" "M3Cortex_MSS_0:USB_ULPI_XCLK" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_MII_RXD" "M3Cortex_MSS_0:MAC_MII_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_MII_TXD" "M3Cortex_MSS_0:MAC_MII_TXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_ADDR" "M3Cortex_MSS_0:MDDR_ADDR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_BA" "M3Cortex_MSS_0:MDDR_BA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_DM_RDQS" "M3Cortex_MSS_0:MDDR_DM_RDQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_DQ" "M3Cortex_MSS_0:MDDR_DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_DQS" "M3Cortex_MSS_0:MDDR_DQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_ULPI_DATA" "M3Cortex_MSS_0:USB_ULPI_DATA" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreConfigP_C0_0:FIC_2_APBmmaster" "M3Cortex_MSS_0:FIC_2_APB_MASTER" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreConfigP_C0_0:MDDR_APBmslave" "M3Cortex_MSS_0:MDDR_APB_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABOSC_C0_0:XTLOSC_CCC_OUT" "FCCC_C0_0:XTLOSC_CCC_IN" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign M3Cortex
generate_component -component_name ${sd_name}
