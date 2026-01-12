set moduleName Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {Matrix_Vector_Activate_Batch.7_Pipeline_VITIS_LOOP_122_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ mul_i int 32 regular  }
	{ convInp_1 int 32 regular {fifo 0 volatile }  }
	{ mvOut_m_buffer_6 int 4 regular {fifo 1 volatile }  }
	{ p_ZL8weights4_0 int 32 regular {array 2304 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights4_1 int 32 regular {array 2304 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights4_2 int 32 regular {array 2304 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights4_3 int 32 regular {array 2304 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs4_0 int 16 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs4_1 int 16 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs4_2 int 16 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs4_3 int 16 regular {array 64 { 1 3 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "mul_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "convInp_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mvOut_m_buffer_6", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_ZL8weights4_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights4_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights4_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights4_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs4_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs4_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs4_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs4_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ convInp_1_dout sc_in sc_lv 32 signal 1 } 
	{ convInp_1_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ convInp_1_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ convInp_1_empty_n sc_in sc_logic 1 signal 1 } 
	{ convInp_1_read sc_out sc_logic 1 signal 1 } 
	{ mvOut_m_buffer_6_din sc_out sc_lv 4 signal 2 } 
	{ mvOut_m_buffer_6_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ mvOut_m_buffer_6_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ mvOut_m_buffer_6_full_n sc_in sc_logic 1 signal 2 } 
	{ mvOut_m_buffer_6_write sc_out sc_logic 1 signal 2 } 
	{ mul_i sc_in sc_lv 32 signal 0 } 
	{ p_ZL8weights4_0_address0 sc_out sc_lv 12 signal 3 } 
	{ p_ZL8weights4_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ p_ZL8weights4_0_q0 sc_in sc_lv 32 signal 3 } 
	{ p_ZL8weights4_1_address0 sc_out sc_lv 12 signal 4 } 
	{ p_ZL8weights4_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ p_ZL8weights4_1_q0 sc_in sc_lv 32 signal 4 } 
	{ p_ZL8weights4_2_address0 sc_out sc_lv 12 signal 5 } 
	{ p_ZL8weights4_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ p_ZL8weights4_2_q0 sc_in sc_lv 32 signal 5 } 
	{ p_ZL8weights4_3_address0 sc_out sc_lv 12 signal 6 } 
	{ p_ZL8weights4_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ p_ZL8weights4_3_q0 sc_in sc_lv 32 signal 6 } 
	{ p_ZL8threshs4_0_address0 sc_out sc_lv 6 signal 7 } 
	{ p_ZL8threshs4_0_ce0 sc_out sc_logic 1 signal 7 } 
	{ p_ZL8threshs4_0_q0 sc_in sc_lv 16 signal 7 } 
	{ p_ZL8threshs4_1_address0 sc_out sc_lv 6 signal 8 } 
	{ p_ZL8threshs4_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ p_ZL8threshs4_1_q0 sc_in sc_lv 16 signal 8 } 
	{ p_ZL8threshs4_2_address0 sc_out sc_lv 6 signal 9 } 
	{ p_ZL8threshs4_2_ce0 sc_out sc_logic 1 signal 9 } 
	{ p_ZL8threshs4_2_q0 sc_in sc_lv 16 signal 9 } 
	{ p_ZL8threshs4_3_address0 sc_out sc_lv 6 signal 10 } 
	{ p_ZL8threshs4_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ p_ZL8threshs4_3_q0 sc_in sc_lv 16 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "convInp_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convInp_1", "role": "dout" }} , 
 	{ "name": "convInp_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convInp_1", "role": "num_data_valid" }} , 
 	{ "name": "convInp_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convInp_1", "role": "fifo_cap" }} , 
 	{ "name": "convInp_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convInp_1", "role": "empty_n" }} , 
 	{ "name": "convInp_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convInp_1", "role": "read" }} , 
 	{ "name": "mvOut_m_buffer_6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mvOut_m_buffer_6", "role": "din" }} , 
 	{ "name": "mvOut_m_buffer_6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mvOut_m_buffer_6", "role": "num_data_valid" }} , 
 	{ "name": "mvOut_m_buffer_6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mvOut_m_buffer_6", "role": "fifo_cap" }} , 
 	{ "name": "mvOut_m_buffer_6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mvOut_m_buffer_6", "role": "full_n" }} , 
 	{ "name": "mvOut_m_buffer_6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mvOut_m_buffer_6", "role": "write" }} , 
 	{ "name": "mul_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul_i", "role": "default" }} , 
 	{ "name": "p_ZL8weights4_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_ZL8weights4_0", "role": "address0" }} , 
 	{ "name": "p_ZL8weights4_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_0", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights4_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_0", "role": "q0" }} , 
 	{ "name": "p_ZL8weights4_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_ZL8weights4_1", "role": "address0" }} , 
 	{ "name": "p_ZL8weights4_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_1", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights4_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_1", "role": "q0" }} , 
 	{ "name": "p_ZL8weights4_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_ZL8weights4_2", "role": "address0" }} , 
 	{ "name": "p_ZL8weights4_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_2", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights4_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_2", "role": "q0" }} , 
 	{ "name": "p_ZL8weights4_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_ZL8weights4_3", "role": "address0" }} , 
 	{ "name": "p_ZL8weights4_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_3", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights4_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_3", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs4_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8threshs4_0", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs4_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_0", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs4_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_0", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs4_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8threshs4_1", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs4_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_1", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs4_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_1", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs4_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8threshs4_2", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs4_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_2", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs4_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_2", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs4_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8threshs4_3", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs4_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_3", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs4_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1",
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
			{"Name" : "convInp_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "convInp_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mvOut_m_buffer_6", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mvOut_m_buffer_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_ZL8weights4_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights4_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights4_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights4_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs4_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs4_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs4_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs4_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_122_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_73_6_32_1_1_U522", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1 {
		mul_i {Type I LastRead 0 FirstWrite -1}
		convInp_1 {Type I LastRead 2 FirstWrite -1}
		mvOut_m_buffer_6 {Type O LastRead -1 FirstWrite 4}
		p_ZL8weights4_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights4_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights4_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights4_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs4_0 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs4_1 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs4_2 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs4_3 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mul_i { ap_none {  { mul_i in_data 0 32 } } }
	convInp_1 { ap_fifo {  { convInp_1_dout fifo_data_in 0 32 }  { convInp_1_num_data_valid fifo_status_num_data_valid 0 3 }  { convInp_1_fifo_cap fifo_update 0 3 }  { convInp_1_empty_n fifo_status 0 1 }  { convInp_1_read fifo_port_we 1 1 } } }
	mvOut_m_buffer_6 { ap_fifo {  { mvOut_m_buffer_6_din fifo_data_in 1 4 }  { mvOut_m_buffer_6_num_data_valid fifo_status_num_data_valid 0 3 }  { mvOut_m_buffer_6_fifo_cap fifo_update 0 3 }  { mvOut_m_buffer_6_full_n fifo_status 0 1 }  { mvOut_m_buffer_6_write fifo_port_we 1 1 } } }
	p_ZL8weights4_0 { ap_memory {  { p_ZL8weights4_0_address0 mem_address 1 12 }  { p_ZL8weights4_0_ce0 mem_ce 1 1 }  { p_ZL8weights4_0_q0 in_data 0 32 } } }
	p_ZL8weights4_1 { ap_memory {  { p_ZL8weights4_1_address0 mem_address 1 12 }  { p_ZL8weights4_1_ce0 mem_ce 1 1 }  { p_ZL8weights4_1_q0 in_data 0 32 } } }
	p_ZL8weights4_2 { ap_memory {  { p_ZL8weights4_2_address0 mem_address 1 12 }  { p_ZL8weights4_2_ce0 mem_ce 1 1 }  { p_ZL8weights4_2_q0 in_data 0 32 } } }
	p_ZL8weights4_3 { ap_memory {  { p_ZL8weights4_3_address0 mem_address 1 12 }  { p_ZL8weights4_3_ce0 mem_ce 1 1 }  { p_ZL8weights4_3_q0 in_data 0 32 } } }
	p_ZL8threshs4_0 { ap_memory {  { p_ZL8threshs4_0_address0 mem_address 1 6 }  { p_ZL8threshs4_0_ce0 mem_ce 1 1 }  { p_ZL8threshs4_0_q0 in_data 0 16 } } }
	p_ZL8threshs4_1 { ap_memory {  { p_ZL8threshs4_1_address0 mem_address 1 6 }  { p_ZL8threshs4_1_ce0 mem_ce 1 1 }  { p_ZL8threshs4_1_q0 in_data 0 16 } } }
	p_ZL8threshs4_2 { ap_memory {  { p_ZL8threshs4_2_address0 mem_address 1 6 }  { p_ZL8threshs4_2_ce0 mem_ce 1 1 }  { p_ZL8threshs4_2_q0 in_data 0 16 } } }
	p_ZL8threshs4_3 { ap_memory {  { p_ZL8threshs4_3_address0 mem_address 1 6 }  { p_ZL8threshs4_3_ce0 mem_ce 1 1 }  { p_ZL8threshs4_3_q0 in_data 0 16 } } }
}
