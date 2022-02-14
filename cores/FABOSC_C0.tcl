# Exporting Component Description of FABOSC_C0 to TCL
# Family: SmartFusion2
# Part Number: M2S060-FG484
# Create and Configure the core component FABOSC_C0
create_and_configure_core -core_vlnv {Actel:SgCore:OSC:2.0.101} -component_name {FABOSC_C0} -params {\
"RCOSC_1MHZ_DRIVES_CCC:false"  \
"RCOSC_1MHZ_DRIVES_FAB:false"  \
"RCOSC_1MHZ_IS_USED:false"  \
"RCOSC_25_50MHZ_DRIVES_CCC:false"  \
"RCOSC_25_50MHZ_DRIVES_FAB:1"  \
"RCOSC_25_50MHZ_IS_USED:1"  \
"VOLTAGE_IS_1_2:true"  \
"XTLOSC_DRIVES_CCC:1"  \
"XTLOSC_DRIVES_FAB:false"  \
"XTLOSC_FREQ:12.0"  \
"XTLOSC_IS_USED:1"  \
"XTLOSC_SRC:CRYSTAL"   }
# Exporting Component Description of FABOSC_C0 to TCL done
