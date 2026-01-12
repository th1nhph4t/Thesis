# This script segment is generated automatically by AutoPilot

set name BlackBoxJam_mul_32ns_13ns_44_2_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name wa_in_i822 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wa_in_i822 \
    op interface \
    ports { wa_in_i822_dout { I 32 vector } wa_in_i822_num_data_valid { I 3 vector } wa_in_i822_fifo_cap { I 3 vector } wa_in_i822_empty_n { I 1 bit } wa_in_i822_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name convInp_i10 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_convInp_i10 \
    op interface \
    ports { convInp_i10_din { O 32 vector } convInp_i10_num_data_valid { I 3 vector } convInp_i10_fifo_cap { I 3 vector } convInp_i10_full_n { I 1 bit } convInp_i10_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
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
    id 317 \
    name numReps_c150 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_numReps_c150 \
    op interface \
    ports { numReps_c150_din { O 32 vector } numReps_c150_num_data_valid { I 3 vector } numReps_c150_fifo_cap { I 3 vector } numReps_c150_full_n { I 1 bit } numReps_c150_write { O 1 bit } } \
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


