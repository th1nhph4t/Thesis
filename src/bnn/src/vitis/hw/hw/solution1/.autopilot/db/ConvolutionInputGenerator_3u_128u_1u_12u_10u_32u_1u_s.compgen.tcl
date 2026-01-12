# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 412 \
    name wa_in_i1518 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wa_in_i1518 \
    op interface \
    ports { wa_in_i1518_dout { I 32 vector } wa_in_i1518_num_data_valid { I 3 vector } wa_in_i1518_fifo_cap { I 3 vector } wa_in_i1518_empty_n { I 1 bit } wa_in_i1518_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 413 \
    name convInp_i17 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_convInp_i17 \
    op interface \
    ports { convInp_i17_din { O 32 vector } convInp_i17_num_data_valid { I 3 vector } convInp_i17_fifo_cap { I 3 vector } convInp_i17_full_n { I 1 bit } convInp_i17_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
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
    id 415 \
    name numReps_c148 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_numReps_c148 \
    op interface \
    ports { numReps_c148_din { O 32 vector } numReps_c148_num_data_valid { I 3 vector } numReps_c148_fifo_cap { I 3 vector } numReps_c148_full_n { I 1 bit } numReps_c148_write { O 1 bit } } \
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


