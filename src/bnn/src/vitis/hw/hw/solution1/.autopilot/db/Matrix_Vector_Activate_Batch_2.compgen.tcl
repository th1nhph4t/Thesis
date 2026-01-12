# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 660 \
    name p_ZL8weights8_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL8weights8_0 \
    op interface \
    ports { p_ZL8weights8_0_address0 { O 13 vector } p_ZL8weights8_0_ce0 { O 1 bit } p_ZL8weights8_0_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL8weights8_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 661 \
    name p_ZL8weights8_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL8weights8_1 \
    op interface \
    ports { p_ZL8weights8_1_address0 { O 13 vector } p_ZL8weights8_1_ce0 { O 1 bit } p_ZL8weights8_1_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL8weights8_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 662 \
    name p_ZL8weights8_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL8weights8_2 \
    op interface \
    ports { p_ZL8weights8_2_address0 { O 13 vector } p_ZL8weights8_2_ce0 { O 1 bit } p_ZL8weights8_2_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL8weights8_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 663 \
    name p_ZL8weights8_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL8weights8_3 \
    op interface \
    ports { p_ZL8weights8_3_address0 { O 13 vector } p_ZL8weights8_3_ce0 { O 1 bit } p_ZL8weights8_3_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL8weights8_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 656 \
    name wa_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wa_in \
    op interface \
    ports { wa_in_dout { I 1 vector } wa_in_num_data_valid { I 3 vector } wa_in_fifo_cap { I 3 vector } wa_in_empty_n { I 1 bit } wa_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 657 \
    name memOutStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_memOutStrm \
    op interface \
    ports { memOutStrm_din { O 64 vector } memOutStrm_num_data_valid { I 3 vector } memOutStrm_fifo_cap { I 3 vector } memOutStrm_full_n { I 1 bit } memOutStrm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 658 \
    name numReps \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_numReps \
    op interface \
    ports { numReps_dout { I 32 vector } numReps_num_data_valid { I 3 vector } numReps_fifo_cap { I 3 vector } numReps_empty_n { I 1 bit } numReps_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 659 \
    name numReps_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_numReps_c \
    op interface \
    ports { numReps_c_din { O 32 vector } numReps_c_num_data_valid { I 3 vector } numReps_c_fifo_cap { I 3 vector } numReps_c_full_n { I 1 bit } numReps_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


