set moduleName DoCompute_Loop_VITIS_LOOP_300_3_proc18
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
set C_modelName {DoCompute_Loop_VITIS_LOOP_300_3_proc18}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read int 32 regular  }
	{ wa_out_m_buffer_2 int 1 regular {fifo 0 volatile }  }
	{ inter9 int 64 regular {fifo 1 volatile }  }
	{ totalIters_16_loc_c138 int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "wa_out_m_buffer_2", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "inter9", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "totalIters_16_loc_c138", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
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
	{ p_read sc_in sc_lv 32 signal 0 } 
	{ wa_out_m_buffer_2_dout sc_in sc_lv 1 signal 1 } 
	{ wa_out_m_buffer_2_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ wa_out_m_buffer_2_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ wa_out_m_buffer_2_empty_n sc_in sc_logic 1 signal 1 } 
	{ wa_out_m_buffer_2_read sc_out sc_logic 1 signal 1 } 
	{ inter9_din sc_out sc_lv 64 signal 2 } 
	{ inter9_num_data_valid sc_in sc_lv 8 signal 2 } 
	{ inter9_fifo_cap sc_in sc_lv 8 signal 2 } 
	{ inter9_full_n sc_in sc_logic 1 signal 2 } 
	{ inter9_write sc_out sc_logic 1 signal 2 } 
	{ totalIters_16_loc_c138_din sc_out sc_lv 32 signal 3 } 
	{ totalIters_16_loc_c138_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ totalIters_16_loc_c138_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ totalIters_16_loc_c138_full_n sc_in sc_logic 1 signal 3 } 
	{ totalIters_16_loc_c138_write sc_out sc_logic 1 signal 3 } 
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
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "wa_out_m_buffer_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wa_out_m_buffer_2", "role": "dout" }} , 
 	{ "name": "wa_out_m_buffer_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wa_out_m_buffer_2", "role": "num_data_valid" }} , 
 	{ "name": "wa_out_m_buffer_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wa_out_m_buffer_2", "role": "fifo_cap" }} , 
 	{ "name": "wa_out_m_buffer_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wa_out_m_buffer_2", "role": "empty_n" }} , 
 	{ "name": "wa_out_m_buffer_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wa_out_m_buffer_2", "role": "read" }} , 
 	{ "name": "inter9_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inter9", "role": "din" }} , 
 	{ "name": "inter9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter9", "role": "num_data_valid" }} , 
 	{ "name": "inter9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter9", "role": "fifo_cap" }} , 
 	{ "name": "inter9_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter9", "role": "full_n" }} , 
 	{ "name": "inter9_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter9", "role": "write" }} , 
 	{ "name": "totalIters_16_loc_c138_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "totalIters_16_loc_c138", "role": "din" }} , 
 	{ "name": "totalIters_16_loc_c138_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "totalIters_16_loc_c138", "role": "num_data_valid" }} , 
 	{ "name": "totalIters_16_loc_c138_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "totalIters_16_loc_c138", "role": "fifo_cap" }} , 
 	{ "name": "totalIters_16_loc_c138_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "totalIters_16_loc_c138", "role": "full_n" }} , 
 	{ "name": "totalIters_16_loc_c138_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "totalIters_16_loc_c138", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_300_3_proc18",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "31", "DependentChanType" : "1"},
			{"Name" : "wa_out_m_buffer_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3_fu_50", "Port" : "wa_out_m_buffer_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3_fu_50", "Port" : "inter9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "totalIters_16_loc_c138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_16_loc_c138_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3_fu_50", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "wa_out_m_buffer_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wa_out_m_buffer_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter9", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inter9_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_300_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	DoCompute_Loop_VITIS_LOOP_300_3_proc18 {
		p_read {Type I LastRead 0 FirstWrite -1}
		wa_out_m_buffer_2 {Type I LastRead 2 FirstWrite -1}
		inter9 {Type O LastRead -1 FirstWrite 2}
		totalIters_16_loc_c138 {Type O LastRead -1 FirstWrite 0}}
	DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3 {
		p_read {Type I LastRead 0 FirstWrite -1}
		wa_out_m_buffer_2 {Type I LastRead 2 FirstWrite -1}
		inter9 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 32 } } }
	wa_out_m_buffer_2 { ap_fifo {  { wa_out_m_buffer_2_dout fifo_data_in 0 1 }  { wa_out_m_buffer_2_num_data_valid fifo_status_num_data_valid 0 3 }  { wa_out_m_buffer_2_fifo_cap fifo_update 0 3 }  { wa_out_m_buffer_2_empty_n fifo_status 0 1 }  { wa_out_m_buffer_2_read fifo_port_we 1 1 } } }
	inter9 { ap_fifo {  { inter9_din fifo_data_in 1 64 }  { inter9_num_data_valid fifo_status_num_data_valid 0 8 }  { inter9_fifo_cap fifo_update 0 8 }  { inter9_full_n fifo_status 0 1 }  { inter9_write fifo_port_we 1 1 } } }
	totalIters_16_loc_c138 { ap_fifo {  { totalIters_16_loc_c138_din fifo_data_in 1 32 }  { totalIters_16_loc_c138_num_data_valid fifo_status_num_data_valid 0 3 }  { totalIters_16_loc_c138_fifo_cap fifo_update 0 3 }  { totalIters_16_loc_c138_full_n fifo_status 0 1 }  { totalIters_16_loc_c138_write fifo_port_we 1 1 } } }
}
