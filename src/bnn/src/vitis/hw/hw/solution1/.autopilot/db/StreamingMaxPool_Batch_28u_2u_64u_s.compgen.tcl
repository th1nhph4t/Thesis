# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler BlackBoxJam_StreamingMaxPool_Batch_28u_2u_64u_s_buf_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 294 \
    name inter2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inter2 \
    op interface \
    ports { inter2_dout { I 64 vector } inter2_num_data_valid { I 3 vector } inter2_fifo_cap { I 3 vector } inter2_empty_n { I 1 bit } inter2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name inter3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_inter3 \
    op interface \
    ports { inter3_din { O 64 vector } inter3_num_data_valid { I 8 vector } inter3_fifo_cap { I 8 vector } inter3_full_n { I 1 bit } inter3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
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
    id 297 \
    name numReps_c152 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_numReps_c152 \
    op interface \
    ports { numReps_c152_din { O 32 vector } numReps_c152_num_data_valid { I 3 vector } numReps_c152_fifo_cap { I 3 vector } numReps_c152_full_n { I 1 bit } numReps_c152_write { O 1 bit } } \
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


