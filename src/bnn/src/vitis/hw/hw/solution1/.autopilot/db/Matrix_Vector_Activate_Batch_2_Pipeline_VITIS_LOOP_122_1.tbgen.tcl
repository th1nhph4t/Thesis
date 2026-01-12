set moduleName Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1
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
set C_modelName {Matrix_Vector_Activate_Batch.2_Pipeline_VITIS_LOOP_122_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ empty int 32 regular  }
	{ wa_in int 1 regular {fifo 0 volatile }  }
	{ memOutStrm int 64 regular {fifo 1 volatile }  }
	{ p_ZL8weights8_0 int 1 regular {array 8192 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights8_1 int 1 regular {array 8192 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights8_2 int 1 regular {array 8192 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights8_3 int 1 regular {array 8192 { 1 3 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "wa_in", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "memOutStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_ZL8weights8_0", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights8_1", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights8_2", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights8_3", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ wa_in_dout sc_in sc_lv 1 signal 1 } 
	{ wa_in_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ wa_in_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ wa_in_empty_n sc_in sc_logic 1 signal 1 } 
	{ wa_in_read sc_out sc_logic 1 signal 1 } 
	{ memOutStrm_din sc_out sc_lv 64 signal 2 } 
	{ memOutStrm_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ memOutStrm_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ memOutStrm_full_n sc_in sc_logic 1 signal 2 } 
	{ memOutStrm_write sc_out sc_logic 1 signal 2 } 
	{ empty sc_in sc_lv 32 signal 0 } 
	{ p_ZL8weights8_0_address0 sc_out sc_lv 13 signal 3 } 
	{ p_ZL8weights8_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ p_ZL8weights8_0_q0 sc_in sc_lv 1 signal 3 } 
	{ p_ZL8weights8_1_address0 sc_out sc_lv 13 signal 4 } 
	{ p_ZL8weights8_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ p_ZL8weights8_1_q0 sc_in sc_lv 1 signal 4 } 
	{ p_ZL8weights8_2_address0 sc_out sc_lv 13 signal 5 } 
	{ p_ZL8weights8_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ p_ZL8weights8_2_q0 sc_in sc_lv 1 signal 5 } 
	{ p_ZL8weights8_3_address0 sc_out sc_lv 13 signal 6 } 
	{ p_ZL8weights8_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ p_ZL8weights8_3_q0 sc_in sc_lv 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "wa_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wa_in", "role": "dout" }} , 
 	{ "name": "wa_in_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wa_in", "role": "num_data_valid" }} , 
 	{ "name": "wa_in_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wa_in", "role": "fifo_cap" }} , 
 	{ "name": "wa_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wa_in", "role": "empty_n" }} , 
 	{ "name": "wa_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wa_in", "role": "read" }} , 
 	{ "name": "memOutStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "memOutStrm", "role": "din" }} , 
 	{ "name": "memOutStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "memOutStrm", "role": "num_data_valid" }} , 
 	{ "name": "memOutStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "memOutStrm", "role": "fifo_cap" }} , 
 	{ "name": "memOutStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memOutStrm", "role": "full_n" }} , 
 	{ "name": "memOutStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memOutStrm", "role": "write" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "p_ZL8weights8_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "p_ZL8weights8_0", "role": "address0" }} , 
 	{ "name": "p_ZL8weights8_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_0", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights8_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_0", "role": "q0" }} , 
 	{ "name": "p_ZL8weights8_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "p_ZL8weights8_1", "role": "address0" }} , 
 	{ "name": "p_ZL8weights8_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_1", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights8_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_1", "role": "q0" }} , 
 	{ "name": "p_ZL8weights8_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "p_ZL8weights8_2", "role": "address0" }} , 
 	{ "name": "p_ZL8weights8_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_2", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights8_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_2", "role": "q0" }} , 
 	{ "name": "p_ZL8weights8_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "p_ZL8weights8_3", "role": "address0" }} , 
 	{ "name": "p_ZL8weights8_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_3", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights8_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "wa_in", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wa_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "memOutStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "memOutStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_ZL8weights8_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights8_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights8_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights8_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_122_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_1025_9_1_1_1_U647", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1 {
		empty {Type I LastRead 0 FirstWrite -1}
		wa_in {Type I LastRead 2 FirstWrite -1}
		memOutStrm {Type O LastRead -1 FirstWrite 4}
		p_ZL8weights8_0 {Type I LastRead 3 FirstWrite -1}
		p_ZL8weights8_1 {Type I LastRead 3 FirstWrite -1}
		p_ZL8weights8_2 {Type I LastRead 3 FirstWrite -1}
		p_ZL8weights8_3 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	empty { ap_none {  { empty in_data 0 32 } } }
	wa_in { ap_fifo {  { wa_in_dout fifo_data_in 0 1 }  { wa_in_num_data_valid fifo_status_num_data_valid 0 3 }  { wa_in_fifo_cap fifo_update 0 3 }  { wa_in_empty_n fifo_status 0 1 }  { wa_in_read fifo_port_we 1 1 } } }
	memOutStrm { ap_fifo {  { memOutStrm_din fifo_data_in 1 64 }  { memOutStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { memOutStrm_fifo_cap fifo_update 0 3 }  { memOutStrm_full_n fifo_status 0 1 }  { memOutStrm_write fifo_port_we 1 1 } } }
	p_ZL8weights8_0 { ap_memory {  { p_ZL8weights8_0_address0 mem_address 1 13 }  { p_ZL8weights8_0_ce0 mem_ce 1 1 }  { p_ZL8weights8_0_q0 mem_dout 0 1 } } }
	p_ZL8weights8_1 { ap_memory {  { p_ZL8weights8_1_address0 mem_address 1 13 }  { p_ZL8weights8_1_ce0 mem_ce 1 1 }  { p_ZL8weights8_1_q0 mem_dout 0 1 } } }
	p_ZL8weights8_2 { ap_memory {  { p_ZL8weights8_2_address0 mem_address 1 13 }  { p_ZL8weights8_2_ce0 mem_ce 1 1 }  { p_ZL8weights8_2_q0 mem_dout 0 1 } } }
	p_ZL8weights8_3 { ap_memory {  { p_ZL8weights8_3_address0 mem_address 1 13 }  { p_ZL8weights8_3_ce0 mem_ce 1 1 }  { p_ZL8weights8_3_q0 mem_dout 0 1 } } }
}
