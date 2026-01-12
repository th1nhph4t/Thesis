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
    id 9 \
    name hostmem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hostmem \
    op interface \
    ports { m_axi_hostmem_AWVALID { O 1 bit } m_axi_hostmem_AWREADY { I 1 bit } m_axi_hostmem_AWADDR { O 64 vector } m_axi_hostmem_AWID { O 1 vector } m_axi_hostmem_AWLEN { O 32 vector } m_axi_hostmem_AWSIZE { O 3 vector } m_axi_hostmem_AWBURST { O 2 vector } m_axi_hostmem_AWLOCK { O 2 vector } m_axi_hostmem_AWCACHE { O 4 vector } m_axi_hostmem_AWPROT { O 3 vector } m_axi_hostmem_AWQOS { O 4 vector } m_axi_hostmem_AWREGION { O 4 vector } m_axi_hostmem_AWUSER { O 1 vector } m_axi_hostmem_WVALID { O 1 bit } m_axi_hostmem_WREADY { I 1 bit } m_axi_hostmem_WDATA { O 64 vector } m_axi_hostmem_WSTRB { O 8 vector } m_axi_hostmem_WLAST { O 1 bit } m_axi_hostmem_WID { O 1 vector } m_axi_hostmem_WUSER { O 1 vector } m_axi_hostmem_ARVALID { O 1 bit } m_axi_hostmem_ARREADY { I 1 bit } m_axi_hostmem_ARADDR { O 64 vector } m_axi_hostmem_ARID { O 1 vector } m_axi_hostmem_ARLEN { O 32 vector } m_axi_hostmem_ARSIZE { O 3 vector } m_axi_hostmem_ARBURST { O 2 vector } m_axi_hostmem_ARLOCK { O 2 vector } m_axi_hostmem_ARCACHE { O 4 vector } m_axi_hostmem_ARPROT { O 3 vector } m_axi_hostmem_ARQOS { O 4 vector } m_axi_hostmem_ARREGION { O 4 vector } m_axi_hostmem_ARUSER { O 1 vector } m_axi_hostmem_RVALID { I 1 bit } m_axi_hostmem_RREADY { O 1 bit } m_axi_hostmem_RDATA { I 64 vector } m_axi_hostmem_RLAST { I 1 bit } m_axi_hostmem_RID { I 1 vector } m_axi_hostmem_RFIFONUM { I 9 vector } m_axi_hostmem_RUSER { I 1 vector } m_axi_hostmem_RRESP { I 2 vector } m_axi_hostmem_BVALID { I 1 bit } m_axi_hostmem_BREADY { O 1 bit } m_axi_hostmem_BRESP { I 2 vector } m_axi_hostmem_BID { I 1 vector } m_axi_hostmem_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name in_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_r \
    op interface \
    ports { in_r { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name inter0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_inter0 \
    op interface \
    ports { inter0_din { O 64 vector } inter0_num_data_valid { I 3 vector } inter0_fifo_cap { I 3 vector } inter0_full_n { I 1 bit } inter0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name numReps \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_numReps \
    op interface \
    ports { numReps { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name numReps_c160 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_numReps_c160 \
    op interface \
    ports { numReps_c160_din { O 32 vector } numReps_c160_num_data_valid { I 3 vector } numReps_c160_fifo_cap { I 3 vector } numReps_c160_full_n { I 1 bit } numReps_c160_write { O 1 bit } } \
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


