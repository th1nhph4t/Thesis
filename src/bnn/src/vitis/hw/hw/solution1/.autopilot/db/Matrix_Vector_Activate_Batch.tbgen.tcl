set moduleName Matrix_Vector_Activate_Batch
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {Matrix_Vector_Activate_Batch}
set C_modelType { void 0 }
set C_modelArgList {
	{ convInp_4 int 32 regular {fifo 0 volatile }  }
	{ mvOut_m_buffer_9 int 32 regular {fifo 1 volatile }  }
	{ p_read int 30 regular  }
	{ p_ZL8weights1_0 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_1 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_2 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_3 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_4 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_5 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_6 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_7 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_8 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_9 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_10 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_11 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_12 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_13 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_14 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_15 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_16 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_17 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_18 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_19 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_20 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_21 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_22 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_23 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_24 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_25 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_26 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_27 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_28 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_29 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_30 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights1_31 int 32 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_0 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_1 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_2 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_3 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_4 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_5 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_6 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_7 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_8 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_9 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_10 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_11 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_12 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_13 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_14 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_15 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_16 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_17 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_18 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_19 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_20 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_21 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_22 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_23 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_24 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_25 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_26 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_27 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_28 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_29 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_30 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs1_31 int 16 regular {array 2 { 1 3 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "convInp_4", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mvOut_m_buffer_9", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "p_ZL8weights1_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_16", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_17", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_18", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_19", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_20", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_21", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_22", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_23", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_24", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_25", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_26", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_27", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_28", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_29", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_30", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights1_31", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_16", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_17", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_18", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_19", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_20", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_21", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_22", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_23", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_24", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_25", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_26", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_27", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_28", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_29", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_30", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs1_31", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 213
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ convInp_4_dout sc_in sc_lv 32 signal 0 } 
	{ convInp_4_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ convInp_4_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ convInp_4_empty_n sc_in sc_logic 1 signal 0 } 
	{ convInp_4_read sc_out sc_logic 1 signal 0 } 
	{ mvOut_m_buffer_9_din sc_out sc_lv 32 signal 1 } 
	{ mvOut_m_buffer_9_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ mvOut_m_buffer_9_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ mvOut_m_buffer_9_full_n sc_in sc_logic 1 signal 1 } 
	{ mvOut_m_buffer_9_write sc_out sc_logic 1 signal 1 } 
	{ p_read sc_in sc_lv 30 signal 2 } 
	{ p_ZL8weights1_0_address0 sc_out sc_lv 6 signal 3 } 
	{ p_ZL8weights1_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ p_ZL8weights1_0_q0 sc_in sc_lv 32 signal 3 } 
	{ p_ZL8weights1_1_address0 sc_out sc_lv 6 signal 4 } 
	{ p_ZL8weights1_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ p_ZL8weights1_1_q0 sc_in sc_lv 32 signal 4 } 
	{ p_ZL8weights1_2_address0 sc_out sc_lv 6 signal 5 } 
	{ p_ZL8weights1_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ p_ZL8weights1_2_q0 sc_in sc_lv 32 signal 5 } 
	{ p_ZL8weights1_3_address0 sc_out sc_lv 6 signal 6 } 
	{ p_ZL8weights1_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ p_ZL8weights1_3_q0 sc_in sc_lv 32 signal 6 } 
	{ p_ZL8weights1_4_address0 sc_out sc_lv 6 signal 7 } 
	{ p_ZL8weights1_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ p_ZL8weights1_4_q0 sc_in sc_lv 32 signal 7 } 
	{ p_ZL8weights1_5_address0 sc_out sc_lv 6 signal 8 } 
	{ p_ZL8weights1_5_ce0 sc_out sc_logic 1 signal 8 } 
	{ p_ZL8weights1_5_q0 sc_in sc_lv 32 signal 8 } 
	{ p_ZL8weights1_6_address0 sc_out sc_lv 6 signal 9 } 
	{ p_ZL8weights1_6_ce0 sc_out sc_logic 1 signal 9 } 
	{ p_ZL8weights1_6_q0 sc_in sc_lv 32 signal 9 } 
	{ p_ZL8weights1_7_address0 sc_out sc_lv 6 signal 10 } 
	{ p_ZL8weights1_7_ce0 sc_out sc_logic 1 signal 10 } 
	{ p_ZL8weights1_7_q0 sc_in sc_lv 32 signal 10 } 
	{ p_ZL8weights1_8_address0 sc_out sc_lv 6 signal 11 } 
	{ p_ZL8weights1_8_ce0 sc_out sc_logic 1 signal 11 } 
	{ p_ZL8weights1_8_q0 sc_in sc_lv 32 signal 11 } 
	{ p_ZL8weights1_9_address0 sc_out sc_lv 6 signal 12 } 
	{ p_ZL8weights1_9_ce0 sc_out sc_logic 1 signal 12 } 
	{ p_ZL8weights1_9_q0 sc_in sc_lv 32 signal 12 } 
	{ p_ZL8weights1_10_address0 sc_out sc_lv 6 signal 13 } 
	{ p_ZL8weights1_10_ce0 sc_out sc_logic 1 signal 13 } 
	{ p_ZL8weights1_10_q0 sc_in sc_lv 32 signal 13 } 
	{ p_ZL8weights1_11_address0 sc_out sc_lv 6 signal 14 } 
	{ p_ZL8weights1_11_ce0 sc_out sc_logic 1 signal 14 } 
	{ p_ZL8weights1_11_q0 sc_in sc_lv 32 signal 14 } 
	{ p_ZL8weights1_12_address0 sc_out sc_lv 6 signal 15 } 
	{ p_ZL8weights1_12_ce0 sc_out sc_logic 1 signal 15 } 
	{ p_ZL8weights1_12_q0 sc_in sc_lv 32 signal 15 } 
	{ p_ZL8weights1_13_address0 sc_out sc_lv 6 signal 16 } 
	{ p_ZL8weights1_13_ce0 sc_out sc_logic 1 signal 16 } 
	{ p_ZL8weights1_13_q0 sc_in sc_lv 32 signal 16 } 
	{ p_ZL8weights1_14_address0 sc_out sc_lv 6 signal 17 } 
	{ p_ZL8weights1_14_ce0 sc_out sc_logic 1 signal 17 } 
	{ p_ZL8weights1_14_q0 sc_in sc_lv 32 signal 17 } 
	{ p_ZL8weights1_15_address0 sc_out sc_lv 6 signal 18 } 
	{ p_ZL8weights1_15_ce0 sc_out sc_logic 1 signal 18 } 
	{ p_ZL8weights1_15_q0 sc_in sc_lv 32 signal 18 } 
	{ p_ZL8weights1_16_address0 sc_out sc_lv 6 signal 19 } 
	{ p_ZL8weights1_16_ce0 sc_out sc_logic 1 signal 19 } 
	{ p_ZL8weights1_16_q0 sc_in sc_lv 32 signal 19 } 
	{ p_ZL8weights1_17_address0 sc_out sc_lv 6 signal 20 } 
	{ p_ZL8weights1_17_ce0 sc_out sc_logic 1 signal 20 } 
	{ p_ZL8weights1_17_q0 sc_in sc_lv 32 signal 20 } 
	{ p_ZL8weights1_18_address0 sc_out sc_lv 6 signal 21 } 
	{ p_ZL8weights1_18_ce0 sc_out sc_logic 1 signal 21 } 
	{ p_ZL8weights1_18_q0 sc_in sc_lv 32 signal 21 } 
	{ p_ZL8weights1_19_address0 sc_out sc_lv 6 signal 22 } 
	{ p_ZL8weights1_19_ce0 sc_out sc_logic 1 signal 22 } 
	{ p_ZL8weights1_19_q0 sc_in sc_lv 32 signal 22 } 
	{ p_ZL8weights1_20_address0 sc_out sc_lv 6 signal 23 } 
	{ p_ZL8weights1_20_ce0 sc_out sc_logic 1 signal 23 } 
	{ p_ZL8weights1_20_q0 sc_in sc_lv 32 signal 23 } 
	{ p_ZL8weights1_21_address0 sc_out sc_lv 6 signal 24 } 
	{ p_ZL8weights1_21_ce0 sc_out sc_logic 1 signal 24 } 
	{ p_ZL8weights1_21_q0 sc_in sc_lv 32 signal 24 } 
	{ p_ZL8weights1_22_address0 sc_out sc_lv 6 signal 25 } 
	{ p_ZL8weights1_22_ce0 sc_out sc_logic 1 signal 25 } 
	{ p_ZL8weights1_22_q0 sc_in sc_lv 32 signal 25 } 
	{ p_ZL8weights1_23_address0 sc_out sc_lv 6 signal 26 } 
	{ p_ZL8weights1_23_ce0 sc_out sc_logic 1 signal 26 } 
	{ p_ZL8weights1_23_q0 sc_in sc_lv 32 signal 26 } 
	{ p_ZL8weights1_24_address0 sc_out sc_lv 6 signal 27 } 
	{ p_ZL8weights1_24_ce0 sc_out sc_logic 1 signal 27 } 
	{ p_ZL8weights1_24_q0 sc_in sc_lv 32 signal 27 } 
	{ p_ZL8weights1_25_address0 sc_out sc_lv 6 signal 28 } 
	{ p_ZL8weights1_25_ce0 sc_out sc_logic 1 signal 28 } 
	{ p_ZL8weights1_25_q0 sc_in sc_lv 32 signal 28 } 
	{ p_ZL8weights1_26_address0 sc_out sc_lv 6 signal 29 } 
	{ p_ZL8weights1_26_ce0 sc_out sc_logic 1 signal 29 } 
	{ p_ZL8weights1_26_q0 sc_in sc_lv 32 signal 29 } 
	{ p_ZL8weights1_27_address0 sc_out sc_lv 6 signal 30 } 
	{ p_ZL8weights1_27_ce0 sc_out sc_logic 1 signal 30 } 
	{ p_ZL8weights1_27_q0 sc_in sc_lv 32 signal 30 } 
	{ p_ZL8weights1_28_address0 sc_out sc_lv 6 signal 31 } 
	{ p_ZL8weights1_28_ce0 sc_out sc_logic 1 signal 31 } 
	{ p_ZL8weights1_28_q0 sc_in sc_lv 32 signal 31 } 
	{ p_ZL8weights1_29_address0 sc_out sc_lv 6 signal 32 } 
	{ p_ZL8weights1_29_ce0 sc_out sc_logic 1 signal 32 } 
	{ p_ZL8weights1_29_q0 sc_in sc_lv 32 signal 32 } 
	{ p_ZL8weights1_30_address0 sc_out sc_lv 6 signal 33 } 
	{ p_ZL8weights1_30_ce0 sc_out sc_logic 1 signal 33 } 
	{ p_ZL8weights1_30_q0 sc_in sc_lv 32 signal 33 } 
	{ p_ZL8weights1_31_address0 sc_out sc_lv 6 signal 34 } 
	{ p_ZL8weights1_31_ce0 sc_out sc_logic 1 signal 34 } 
	{ p_ZL8weights1_31_q0 sc_in sc_lv 32 signal 34 } 
	{ p_ZL8threshs1_0_address0 sc_out sc_lv 1 signal 35 } 
	{ p_ZL8threshs1_0_ce0 sc_out sc_logic 1 signal 35 } 
	{ p_ZL8threshs1_0_q0 sc_in sc_lv 16 signal 35 } 
	{ p_ZL8threshs1_1_address0 sc_out sc_lv 1 signal 36 } 
	{ p_ZL8threshs1_1_ce0 sc_out sc_logic 1 signal 36 } 
	{ p_ZL8threshs1_1_q0 sc_in sc_lv 16 signal 36 } 
	{ p_ZL8threshs1_2_address0 sc_out sc_lv 1 signal 37 } 
	{ p_ZL8threshs1_2_ce0 sc_out sc_logic 1 signal 37 } 
	{ p_ZL8threshs1_2_q0 sc_in sc_lv 16 signal 37 } 
	{ p_ZL8threshs1_3_address0 sc_out sc_lv 1 signal 38 } 
	{ p_ZL8threshs1_3_ce0 sc_out sc_logic 1 signal 38 } 
	{ p_ZL8threshs1_3_q0 sc_in sc_lv 16 signal 38 } 
	{ p_ZL8threshs1_4_address0 sc_out sc_lv 1 signal 39 } 
	{ p_ZL8threshs1_4_ce0 sc_out sc_logic 1 signal 39 } 
	{ p_ZL8threshs1_4_q0 sc_in sc_lv 16 signal 39 } 
	{ p_ZL8threshs1_5_address0 sc_out sc_lv 1 signal 40 } 
	{ p_ZL8threshs1_5_ce0 sc_out sc_logic 1 signal 40 } 
	{ p_ZL8threshs1_5_q0 sc_in sc_lv 16 signal 40 } 
	{ p_ZL8threshs1_6_address0 sc_out sc_lv 1 signal 41 } 
	{ p_ZL8threshs1_6_ce0 sc_out sc_logic 1 signal 41 } 
	{ p_ZL8threshs1_6_q0 sc_in sc_lv 16 signal 41 } 
	{ p_ZL8threshs1_7_address0 sc_out sc_lv 1 signal 42 } 
	{ p_ZL8threshs1_7_ce0 sc_out sc_logic 1 signal 42 } 
	{ p_ZL8threshs1_7_q0 sc_in sc_lv 16 signal 42 } 
	{ p_ZL8threshs1_8_address0 sc_out sc_lv 1 signal 43 } 
	{ p_ZL8threshs1_8_ce0 sc_out sc_logic 1 signal 43 } 
	{ p_ZL8threshs1_8_q0 sc_in sc_lv 16 signal 43 } 
	{ p_ZL8threshs1_9_address0 sc_out sc_lv 1 signal 44 } 
	{ p_ZL8threshs1_9_ce0 sc_out sc_logic 1 signal 44 } 
	{ p_ZL8threshs1_9_q0 sc_in sc_lv 16 signal 44 } 
	{ p_ZL8threshs1_10_address0 sc_out sc_lv 1 signal 45 } 
	{ p_ZL8threshs1_10_ce0 sc_out sc_logic 1 signal 45 } 
	{ p_ZL8threshs1_10_q0 sc_in sc_lv 16 signal 45 } 
	{ p_ZL8threshs1_11_address0 sc_out sc_lv 1 signal 46 } 
	{ p_ZL8threshs1_11_ce0 sc_out sc_logic 1 signal 46 } 
	{ p_ZL8threshs1_11_q0 sc_in sc_lv 16 signal 46 } 
	{ p_ZL8threshs1_12_address0 sc_out sc_lv 1 signal 47 } 
	{ p_ZL8threshs1_12_ce0 sc_out sc_logic 1 signal 47 } 
	{ p_ZL8threshs1_12_q0 sc_in sc_lv 16 signal 47 } 
	{ p_ZL8threshs1_13_address0 sc_out sc_lv 1 signal 48 } 
	{ p_ZL8threshs1_13_ce0 sc_out sc_logic 1 signal 48 } 
	{ p_ZL8threshs1_13_q0 sc_in sc_lv 16 signal 48 } 
	{ p_ZL8threshs1_14_address0 sc_out sc_lv 1 signal 49 } 
	{ p_ZL8threshs1_14_ce0 sc_out sc_logic 1 signal 49 } 
	{ p_ZL8threshs1_14_q0 sc_in sc_lv 16 signal 49 } 
	{ p_ZL8threshs1_15_address0 sc_out sc_lv 1 signal 50 } 
	{ p_ZL8threshs1_15_ce0 sc_out sc_logic 1 signal 50 } 
	{ p_ZL8threshs1_15_q0 sc_in sc_lv 16 signal 50 } 
	{ p_ZL8threshs1_16_address0 sc_out sc_lv 1 signal 51 } 
	{ p_ZL8threshs1_16_ce0 sc_out sc_logic 1 signal 51 } 
	{ p_ZL8threshs1_16_q0 sc_in sc_lv 16 signal 51 } 
	{ p_ZL8threshs1_17_address0 sc_out sc_lv 1 signal 52 } 
	{ p_ZL8threshs1_17_ce0 sc_out sc_logic 1 signal 52 } 
	{ p_ZL8threshs1_17_q0 sc_in sc_lv 16 signal 52 } 
	{ p_ZL8threshs1_18_address0 sc_out sc_lv 1 signal 53 } 
	{ p_ZL8threshs1_18_ce0 sc_out sc_logic 1 signal 53 } 
	{ p_ZL8threshs1_18_q0 sc_in sc_lv 16 signal 53 } 
	{ p_ZL8threshs1_19_address0 sc_out sc_lv 1 signal 54 } 
	{ p_ZL8threshs1_19_ce0 sc_out sc_logic 1 signal 54 } 
	{ p_ZL8threshs1_19_q0 sc_in sc_lv 16 signal 54 } 
	{ p_ZL8threshs1_20_address0 sc_out sc_lv 1 signal 55 } 
	{ p_ZL8threshs1_20_ce0 sc_out sc_logic 1 signal 55 } 
	{ p_ZL8threshs1_20_q0 sc_in sc_lv 16 signal 55 } 
	{ p_ZL8threshs1_21_address0 sc_out sc_lv 1 signal 56 } 
	{ p_ZL8threshs1_21_ce0 sc_out sc_logic 1 signal 56 } 
	{ p_ZL8threshs1_21_q0 sc_in sc_lv 16 signal 56 } 
	{ p_ZL8threshs1_22_address0 sc_out sc_lv 1 signal 57 } 
	{ p_ZL8threshs1_22_ce0 sc_out sc_logic 1 signal 57 } 
	{ p_ZL8threshs1_22_q0 sc_in sc_lv 16 signal 57 } 
	{ p_ZL8threshs1_23_address0 sc_out sc_lv 1 signal 58 } 
	{ p_ZL8threshs1_23_ce0 sc_out sc_logic 1 signal 58 } 
	{ p_ZL8threshs1_23_q0 sc_in sc_lv 16 signal 58 } 
	{ p_ZL8threshs1_24_address0 sc_out sc_lv 1 signal 59 } 
	{ p_ZL8threshs1_24_ce0 sc_out sc_logic 1 signal 59 } 
	{ p_ZL8threshs1_24_q0 sc_in sc_lv 16 signal 59 } 
	{ p_ZL8threshs1_25_address0 sc_out sc_lv 1 signal 60 } 
	{ p_ZL8threshs1_25_ce0 sc_out sc_logic 1 signal 60 } 
	{ p_ZL8threshs1_25_q0 sc_in sc_lv 16 signal 60 } 
	{ p_ZL8threshs1_26_address0 sc_out sc_lv 1 signal 61 } 
	{ p_ZL8threshs1_26_ce0 sc_out sc_logic 1 signal 61 } 
	{ p_ZL8threshs1_26_q0 sc_in sc_lv 16 signal 61 } 
	{ p_ZL8threshs1_27_address0 sc_out sc_lv 1 signal 62 } 
	{ p_ZL8threshs1_27_ce0 sc_out sc_logic 1 signal 62 } 
	{ p_ZL8threshs1_27_q0 sc_in sc_lv 16 signal 62 } 
	{ p_ZL8threshs1_28_address0 sc_out sc_lv 1 signal 63 } 
	{ p_ZL8threshs1_28_ce0 sc_out sc_logic 1 signal 63 } 
	{ p_ZL8threshs1_28_q0 sc_in sc_lv 16 signal 63 } 
	{ p_ZL8threshs1_29_address0 sc_out sc_lv 1 signal 64 } 
	{ p_ZL8threshs1_29_ce0 sc_out sc_logic 1 signal 64 } 
	{ p_ZL8threshs1_29_q0 sc_in sc_lv 16 signal 64 } 
	{ p_ZL8threshs1_30_address0 sc_out sc_lv 1 signal 65 } 
	{ p_ZL8threshs1_30_ce0 sc_out sc_logic 1 signal 65 } 
	{ p_ZL8threshs1_30_q0 sc_in sc_lv 16 signal 65 } 
	{ p_ZL8threshs1_31_address0 sc_out sc_lv 1 signal 66 } 
	{ p_ZL8threshs1_31_ce0 sc_out sc_logic 1 signal 66 } 
	{ p_ZL8threshs1_31_q0 sc_in sc_lv 16 signal 66 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "convInp_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convInp_4", "role": "dout" }} , 
 	{ "name": "convInp_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convInp_4", "role": "num_data_valid" }} , 
 	{ "name": "convInp_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convInp_4", "role": "fifo_cap" }} , 
 	{ "name": "convInp_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convInp_4", "role": "empty_n" }} , 
 	{ "name": "convInp_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convInp_4", "role": "read" }} , 
 	{ "name": "mvOut_m_buffer_9_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mvOut_m_buffer_9", "role": "din" }} , 
 	{ "name": "mvOut_m_buffer_9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mvOut_m_buffer_9", "role": "num_data_valid" }} , 
 	{ "name": "mvOut_m_buffer_9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mvOut_m_buffer_9", "role": "fifo_cap" }} , 
 	{ "name": "mvOut_m_buffer_9_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mvOut_m_buffer_9", "role": "full_n" }} , 
 	{ "name": "mvOut_m_buffer_9_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mvOut_m_buffer_9", "role": "write" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_ZL8weights1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_0", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_0", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_0", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_1", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_1", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_1", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_2", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_2", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_2", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_3", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_3", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_3", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_4", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_4", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_4", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_5", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_5", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_5", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_6", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_6", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_6", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_7", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_7", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_7", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_8", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_8", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_8", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_9", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_9", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_9", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_10", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_10", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_10", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_11", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_11", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_11", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_12", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_12", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_12", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_13", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_13", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_13", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_14", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_14", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_14", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_15", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_15", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_15", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_16", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_16", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_16", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_17", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_17", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_17", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_18", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_18", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_18", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_19", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_19", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_19", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_20", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_20", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_20", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_21", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_21", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_21", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_22", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_22", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_22", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_23", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_23", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_23", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_24", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_24", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_24", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_25", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_25", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_25", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_26", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_26", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_26", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_27", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_27", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_27", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_28", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_28", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_28", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_29", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_29", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_29", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_30", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_30", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_30", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_31", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_31", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_31", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_0", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_0", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_0", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_1", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_1", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_1", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_2", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_2", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_2", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_3", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_3", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_3", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_4", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_4", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_4", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_5", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_5", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_5", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_6", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_6", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_6", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_7", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_7", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_7", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_8", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_8", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_8", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_9", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_9", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_9", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_10", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_10", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_10", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_11", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_11", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_11", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_12", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_12", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_12", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_13", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_13", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_13", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_14", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_14", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_14", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_15", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_15", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_15", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_16", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_16", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_16", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_17", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_17", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_17", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_18", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_18", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_18", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_19", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_19", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_19", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_20", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_20", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_20", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_21", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_21", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_21", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_22", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_22", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_22", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_23", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_23", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_23", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_24", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_24", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_24", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_25", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_25", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_25", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_26", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_26", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_26", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_27", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_27", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_27", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_28", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_28", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_28", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_29", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_29", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_29", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_30", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_30", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_30", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_31", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_31", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_31", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Matrix_Vector_Activate_Batch",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "convInp_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "convInp_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mvOut_m_buffer_9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "mvOut_m_buffer_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "1"},
			{"Name" : "p_ZL8weights1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_17", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_18", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_19", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_20", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_21", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_22", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_23", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_24", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_25", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_26", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_27", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_28", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_29", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_30", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_31", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_17", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_18", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_19", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_20", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_21", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_22", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_23", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_24", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_25", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_26", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_27", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_28", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_29", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_30", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_31", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "convInp_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "convInp_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mvOut_m_buffer_9", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mvOut_m_buffer_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_ZL8weights1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights1_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs1_31", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_122_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164.sparsemux_37_5_32_1_1_U145", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	Matrix_Vector_Activate_Batch {
		convInp_4 {Type I LastRead 2 FirstWrite -1}
		mvOut_m_buffer_9 {Type O LastRead -1 FirstWrite 4}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_ZL8weights1_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_4 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_5 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_6 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_7 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_8 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_9 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_10 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_11 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_12 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_13 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_14 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_15 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_16 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_17 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_18 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_19 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_20 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_21 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_22 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_23 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_24 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_25 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_26 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_27 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_28 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_29 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_30 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_31 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_4 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_5 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_6 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_7 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_8 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_9 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_10 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_11 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_12 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_13 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_14 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_15 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_16 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_17 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_18 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_19 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_20 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_21 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_22 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_23 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_24 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_25 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_26 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_27 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_28 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_29 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_30 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_31 {Type I LastRead 1 FirstWrite -1}}
	Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1 {
		mul_i {Type I LastRead 0 FirstWrite -1}
		convInp_4 {Type I LastRead 2 FirstWrite -1}
		mvOut_m_buffer_9 {Type O LastRead -1 FirstWrite 4}
		p_ZL8weights1_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_4 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_5 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_6 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_7 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_8 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_9 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_10 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_11 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_12 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_13 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_14 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_15 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_16 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_17 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_18 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_19 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_20 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_21 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_22 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_23 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_24 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_25 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_26 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_27 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_28 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_29 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_30 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights1_31 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_4 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_5 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_6 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_7 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_8 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_9 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_10 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_11 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_12 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_13 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_14 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_15 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_16 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_17 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_18 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_19 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_20 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_21 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_22 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_23 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_24 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_25 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_26 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_27 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_28 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_29 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_30 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs1_31 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	convInp_4 { ap_fifo {  { convInp_4_dout fifo_data_in 0 32 }  { convInp_4_num_data_valid fifo_status_num_data_valid 0 3 }  { convInp_4_fifo_cap fifo_update 0 3 }  { convInp_4_empty_n fifo_status 0 1 }  { convInp_4_read fifo_port_we 1 1 } } }
	mvOut_m_buffer_9 { ap_fifo {  { mvOut_m_buffer_9_din fifo_data_in 1 32 }  { mvOut_m_buffer_9_num_data_valid fifo_status_num_data_valid 0 3 }  { mvOut_m_buffer_9_fifo_cap fifo_update 0 3 }  { mvOut_m_buffer_9_full_n fifo_status 0 1 }  { mvOut_m_buffer_9_write fifo_port_we 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 30 } } }
	p_ZL8weights1_0 { ap_memory {  { p_ZL8weights1_0_address0 mem_address 1 6 }  { p_ZL8weights1_0_ce0 mem_ce 1 1 }  { p_ZL8weights1_0_q0 mem_dout 0 32 } } }
	p_ZL8weights1_1 { ap_memory {  { p_ZL8weights1_1_address0 mem_address 1 6 }  { p_ZL8weights1_1_ce0 mem_ce 1 1 }  { p_ZL8weights1_1_q0 mem_dout 0 32 } } }
	p_ZL8weights1_2 { ap_memory {  { p_ZL8weights1_2_address0 mem_address 1 6 }  { p_ZL8weights1_2_ce0 mem_ce 1 1 }  { p_ZL8weights1_2_q0 mem_dout 0 32 } } }
	p_ZL8weights1_3 { ap_memory {  { p_ZL8weights1_3_address0 mem_address 1 6 }  { p_ZL8weights1_3_ce0 mem_ce 1 1 }  { p_ZL8weights1_3_q0 mem_dout 0 32 } } }
	p_ZL8weights1_4 { ap_memory {  { p_ZL8weights1_4_address0 mem_address 1 6 }  { p_ZL8weights1_4_ce0 mem_ce 1 1 }  { p_ZL8weights1_4_q0 mem_dout 0 32 } } }
	p_ZL8weights1_5 { ap_memory {  { p_ZL8weights1_5_address0 mem_address 1 6 }  { p_ZL8weights1_5_ce0 mem_ce 1 1 }  { p_ZL8weights1_5_q0 mem_dout 0 32 } } }
	p_ZL8weights1_6 { ap_memory {  { p_ZL8weights1_6_address0 mem_address 1 6 }  { p_ZL8weights1_6_ce0 mem_ce 1 1 }  { p_ZL8weights1_6_q0 mem_dout 0 32 } } }
	p_ZL8weights1_7 { ap_memory {  { p_ZL8weights1_7_address0 mem_address 1 6 }  { p_ZL8weights1_7_ce0 mem_ce 1 1 }  { p_ZL8weights1_7_q0 mem_dout 0 32 } } }
	p_ZL8weights1_8 { ap_memory {  { p_ZL8weights1_8_address0 mem_address 1 6 }  { p_ZL8weights1_8_ce0 mem_ce 1 1 }  { p_ZL8weights1_8_q0 mem_dout 0 32 } } }
	p_ZL8weights1_9 { ap_memory {  { p_ZL8weights1_9_address0 mem_address 1 6 }  { p_ZL8weights1_9_ce0 mem_ce 1 1 }  { p_ZL8weights1_9_q0 mem_dout 0 32 } } }
	p_ZL8weights1_10 { ap_memory {  { p_ZL8weights1_10_address0 mem_address 1 6 }  { p_ZL8weights1_10_ce0 mem_ce 1 1 }  { p_ZL8weights1_10_q0 mem_dout 0 32 } } }
	p_ZL8weights1_11 { ap_memory {  { p_ZL8weights1_11_address0 mem_address 1 6 }  { p_ZL8weights1_11_ce0 mem_ce 1 1 }  { p_ZL8weights1_11_q0 mem_dout 0 32 } } }
	p_ZL8weights1_12 { ap_memory {  { p_ZL8weights1_12_address0 mem_address 1 6 }  { p_ZL8weights1_12_ce0 mem_ce 1 1 }  { p_ZL8weights1_12_q0 mem_dout 0 32 } } }
	p_ZL8weights1_13 { ap_memory {  { p_ZL8weights1_13_address0 mem_address 1 6 }  { p_ZL8weights1_13_ce0 mem_ce 1 1 }  { p_ZL8weights1_13_q0 mem_dout 0 32 } } }
	p_ZL8weights1_14 { ap_memory {  { p_ZL8weights1_14_address0 mem_address 1 6 }  { p_ZL8weights1_14_ce0 mem_ce 1 1 }  { p_ZL8weights1_14_q0 mem_dout 0 32 } } }
	p_ZL8weights1_15 { ap_memory {  { p_ZL8weights1_15_address0 mem_address 1 6 }  { p_ZL8weights1_15_ce0 mem_ce 1 1 }  { p_ZL8weights1_15_q0 mem_dout 0 32 } } }
	p_ZL8weights1_16 { ap_memory {  { p_ZL8weights1_16_address0 mem_address 1 6 }  { p_ZL8weights1_16_ce0 mem_ce 1 1 }  { p_ZL8weights1_16_q0 mem_dout 0 32 } } }
	p_ZL8weights1_17 { ap_memory {  { p_ZL8weights1_17_address0 mem_address 1 6 }  { p_ZL8weights1_17_ce0 mem_ce 1 1 }  { p_ZL8weights1_17_q0 mem_dout 0 32 } } }
	p_ZL8weights1_18 { ap_memory {  { p_ZL8weights1_18_address0 mem_address 1 6 }  { p_ZL8weights1_18_ce0 mem_ce 1 1 }  { p_ZL8weights1_18_q0 mem_dout 0 32 } } }
	p_ZL8weights1_19 { ap_memory {  { p_ZL8weights1_19_address0 mem_address 1 6 }  { p_ZL8weights1_19_ce0 mem_ce 1 1 }  { p_ZL8weights1_19_q0 mem_dout 0 32 } } }
	p_ZL8weights1_20 { ap_memory {  { p_ZL8weights1_20_address0 mem_address 1 6 }  { p_ZL8weights1_20_ce0 mem_ce 1 1 }  { p_ZL8weights1_20_q0 mem_dout 0 32 } } }
	p_ZL8weights1_21 { ap_memory {  { p_ZL8weights1_21_address0 mem_address 1 6 }  { p_ZL8weights1_21_ce0 mem_ce 1 1 }  { p_ZL8weights1_21_q0 mem_dout 0 32 } } }
	p_ZL8weights1_22 { ap_memory {  { p_ZL8weights1_22_address0 mem_address 1 6 }  { p_ZL8weights1_22_ce0 mem_ce 1 1 }  { p_ZL8weights1_22_q0 mem_dout 0 32 } } }
	p_ZL8weights1_23 { ap_memory {  { p_ZL8weights1_23_address0 mem_address 1 6 }  { p_ZL8weights1_23_ce0 mem_ce 1 1 }  { p_ZL8weights1_23_q0 mem_dout 0 32 } } }
	p_ZL8weights1_24 { ap_memory {  { p_ZL8weights1_24_address0 mem_address 1 6 }  { p_ZL8weights1_24_ce0 mem_ce 1 1 }  { p_ZL8weights1_24_q0 mem_dout 0 32 } } }
	p_ZL8weights1_25 { ap_memory {  { p_ZL8weights1_25_address0 mem_address 1 6 }  { p_ZL8weights1_25_ce0 mem_ce 1 1 }  { p_ZL8weights1_25_q0 mem_dout 0 32 } } }
	p_ZL8weights1_26 { ap_memory {  { p_ZL8weights1_26_address0 mem_address 1 6 }  { p_ZL8weights1_26_ce0 mem_ce 1 1 }  { p_ZL8weights1_26_q0 mem_dout 0 32 } } }
	p_ZL8weights1_27 { ap_memory {  { p_ZL8weights1_27_address0 mem_address 1 6 }  { p_ZL8weights1_27_ce0 mem_ce 1 1 }  { p_ZL8weights1_27_q0 mem_dout 0 32 } } }
	p_ZL8weights1_28 { ap_memory {  { p_ZL8weights1_28_address0 mem_address 1 6 }  { p_ZL8weights1_28_ce0 mem_ce 1 1 }  { p_ZL8weights1_28_q0 mem_dout 0 32 } } }
	p_ZL8weights1_29 { ap_memory {  { p_ZL8weights1_29_address0 mem_address 1 6 }  { p_ZL8weights1_29_ce0 mem_ce 1 1 }  { p_ZL8weights1_29_q0 mem_dout 0 32 } } }
	p_ZL8weights1_30 { ap_memory {  { p_ZL8weights1_30_address0 mem_address 1 6 }  { p_ZL8weights1_30_ce0 mem_ce 1 1 }  { p_ZL8weights1_30_q0 mem_dout 0 32 } } }
	p_ZL8weights1_31 { ap_memory {  { p_ZL8weights1_31_address0 mem_address 1 6 }  { p_ZL8weights1_31_ce0 mem_ce 1 1 }  { p_ZL8weights1_31_q0 mem_dout 0 32 } } }
	p_ZL8threshs1_0 { ap_memory {  { p_ZL8threshs1_0_address0 mem_address 1 1 }  { p_ZL8threshs1_0_ce0 mem_ce 1 1 }  { p_ZL8threshs1_0_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_1 { ap_memory {  { p_ZL8threshs1_1_address0 mem_address 1 1 }  { p_ZL8threshs1_1_ce0 mem_ce 1 1 }  { p_ZL8threshs1_1_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_2 { ap_memory {  { p_ZL8threshs1_2_address0 mem_address 1 1 }  { p_ZL8threshs1_2_ce0 mem_ce 1 1 }  { p_ZL8threshs1_2_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_3 { ap_memory {  { p_ZL8threshs1_3_address0 mem_address 1 1 }  { p_ZL8threshs1_3_ce0 mem_ce 1 1 }  { p_ZL8threshs1_3_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_4 { ap_memory {  { p_ZL8threshs1_4_address0 mem_address 1 1 }  { p_ZL8threshs1_4_ce0 mem_ce 1 1 }  { p_ZL8threshs1_4_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_5 { ap_memory {  { p_ZL8threshs1_5_address0 mem_address 1 1 }  { p_ZL8threshs1_5_ce0 mem_ce 1 1 }  { p_ZL8threshs1_5_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_6 { ap_memory {  { p_ZL8threshs1_6_address0 mem_address 1 1 }  { p_ZL8threshs1_6_ce0 mem_ce 1 1 }  { p_ZL8threshs1_6_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_7 { ap_memory {  { p_ZL8threshs1_7_address0 mem_address 1 1 }  { p_ZL8threshs1_7_ce0 mem_ce 1 1 }  { p_ZL8threshs1_7_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_8 { ap_memory {  { p_ZL8threshs1_8_address0 mem_address 1 1 }  { p_ZL8threshs1_8_ce0 mem_ce 1 1 }  { p_ZL8threshs1_8_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_9 { ap_memory {  { p_ZL8threshs1_9_address0 mem_address 1 1 }  { p_ZL8threshs1_9_ce0 mem_ce 1 1 }  { p_ZL8threshs1_9_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_10 { ap_memory {  { p_ZL8threshs1_10_address0 mem_address 1 1 }  { p_ZL8threshs1_10_ce0 mem_ce 1 1 }  { p_ZL8threshs1_10_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_11 { ap_memory {  { p_ZL8threshs1_11_address0 mem_address 1 1 }  { p_ZL8threshs1_11_ce0 mem_ce 1 1 }  { p_ZL8threshs1_11_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_12 { ap_memory {  { p_ZL8threshs1_12_address0 mem_address 1 1 }  { p_ZL8threshs1_12_ce0 mem_ce 1 1 }  { p_ZL8threshs1_12_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_13 { ap_memory {  { p_ZL8threshs1_13_address0 mem_address 1 1 }  { p_ZL8threshs1_13_ce0 mem_ce 1 1 }  { p_ZL8threshs1_13_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_14 { ap_memory {  { p_ZL8threshs1_14_address0 mem_address 1 1 }  { p_ZL8threshs1_14_ce0 mem_ce 1 1 }  { p_ZL8threshs1_14_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_15 { ap_memory {  { p_ZL8threshs1_15_address0 mem_address 1 1 }  { p_ZL8threshs1_15_ce0 mem_ce 1 1 }  { p_ZL8threshs1_15_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_16 { ap_memory {  { p_ZL8threshs1_16_address0 mem_address 1 1 }  { p_ZL8threshs1_16_ce0 mem_ce 1 1 }  { p_ZL8threshs1_16_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_17 { ap_memory {  { p_ZL8threshs1_17_address0 mem_address 1 1 }  { p_ZL8threshs1_17_ce0 mem_ce 1 1 }  { p_ZL8threshs1_17_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_18 { ap_memory {  { p_ZL8threshs1_18_address0 mem_address 1 1 }  { p_ZL8threshs1_18_ce0 mem_ce 1 1 }  { p_ZL8threshs1_18_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_19 { ap_memory {  { p_ZL8threshs1_19_address0 mem_address 1 1 }  { p_ZL8threshs1_19_ce0 mem_ce 1 1 }  { p_ZL8threshs1_19_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_20 { ap_memory {  { p_ZL8threshs1_20_address0 mem_address 1 1 }  { p_ZL8threshs1_20_ce0 mem_ce 1 1 }  { p_ZL8threshs1_20_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_21 { ap_memory {  { p_ZL8threshs1_21_address0 mem_address 1 1 }  { p_ZL8threshs1_21_ce0 mem_ce 1 1 }  { p_ZL8threshs1_21_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_22 { ap_memory {  { p_ZL8threshs1_22_address0 mem_address 1 1 }  { p_ZL8threshs1_22_ce0 mem_ce 1 1 }  { p_ZL8threshs1_22_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_23 { ap_memory {  { p_ZL8threshs1_23_address0 mem_address 1 1 }  { p_ZL8threshs1_23_ce0 mem_ce 1 1 }  { p_ZL8threshs1_23_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_24 { ap_memory {  { p_ZL8threshs1_24_address0 mem_address 1 1 }  { p_ZL8threshs1_24_ce0 mem_ce 1 1 }  { p_ZL8threshs1_24_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_25 { ap_memory {  { p_ZL8threshs1_25_address0 mem_address 1 1 }  { p_ZL8threshs1_25_ce0 mem_ce 1 1 }  { p_ZL8threshs1_25_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_26 { ap_memory {  { p_ZL8threshs1_26_address0 mem_address 1 1 }  { p_ZL8threshs1_26_ce0 mem_ce 1 1 }  { p_ZL8threshs1_26_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_27 { ap_memory {  { p_ZL8threshs1_27_address0 mem_address 1 1 }  { p_ZL8threshs1_27_ce0 mem_ce 1 1 }  { p_ZL8threshs1_27_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_28 { ap_memory {  { p_ZL8threshs1_28_address0 mem_address 1 1 }  { p_ZL8threshs1_28_ce0 mem_ce 1 1 }  { p_ZL8threshs1_28_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_29 { ap_memory {  { p_ZL8threshs1_29_address0 mem_address 1 1 }  { p_ZL8threshs1_29_ce0 mem_ce 1 1 }  { p_ZL8threshs1_29_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_30 { ap_memory {  { p_ZL8threshs1_30_address0 mem_address 1 1 }  { p_ZL8threshs1_30_ce0 mem_ce 1 1 }  { p_ZL8threshs1_30_q0 mem_dout 0 16 } } }
	p_ZL8threshs1_31 { ap_memory {  { p_ZL8threshs1_31_address0 mem_address 1 1 }  { p_ZL8threshs1_31_ce0 mem_ce 1 1 }  { p_ZL8threshs1_31_q0 mem_dout 0 16 } } }
}
