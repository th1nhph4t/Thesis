set moduleName DoCompute_Loop_VITIS_LOOP_268_1_proc24
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
set C_modelName {DoCompute_Loop_VITIS_LOOP_268_1_proc24}
set C_modelType { void 0 }
set C_modelArgList {
	{ totalIters_16_loc int 32 regular {fifo 0}  }
	{ wa_in int 1 regular {fifo 1 volatile }  }
	{ inter10 int 64 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "totalIters_16_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "wa_in", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter10", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ totalIters_16_loc_dout sc_in sc_lv 32 signal 0 } 
	{ totalIters_16_loc_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ totalIters_16_loc_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ totalIters_16_loc_empty_n sc_in sc_logic 1 signal 0 } 
	{ totalIters_16_loc_read sc_out sc_logic 1 signal 0 } 
	{ wa_in_din sc_out sc_lv 1 signal 1 } 
	{ wa_in_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ wa_in_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ wa_in_full_n sc_in sc_logic 1 signal 1 } 
	{ wa_in_write sc_out sc_logic 1 signal 1 } 
	{ inter10_dout sc_in sc_lv 64 signal 2 } 
	{ inter10_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ inter10_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ inter10_empty_n sc_in sc_logic 1 signal 2 } 
	{ inter10_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "totalIters_16_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "totalIters_16_loc", "role": "dout" }} , 
 	{ "name": "totalIters_16_loc_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "totalIters_16_loc", "role": "num_data_valid" }} , 
 	{ "name": "totalIters_16_loc_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "totalIters_16_loc", "role": "fifo_cap" }} , 
 	{ "name": "totalIters_16_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "totalIters_16_loc", "role": "empty_n" }} , 
 	{ "name": "totalIters_16_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "totalIters_16_loc", "role": "read" }} , 
 	{ "name": "wa_in_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wa_in", "role": "din" }} , 
 	{ "name": "wa_in_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wa_in", "role": "num_data_valid" }} , 
 	{ "name": "wa_in_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wa_in", "role": "fifo_cap" }} , 
 	{ "name": "wa_in_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wa_in", "role": "full_n" }} , 
 	{ "name": "wa_in_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wa_in", "role": "write" }} , 
 	{ "name": "inter10_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inter10", "role": "dout" }} , 
 	{ "name": "inter10_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inter10", "role": "num_data_valid" }} , 
 	{ "name": "inter10_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inter10", "role": "fifo_cap" }} , 
 	{ "name": "inter10_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter10", "role": "empty_n" }} , 
 	{ "name": "inter10_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter10", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_268_1_proc24",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "totalIters_16_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_16_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wa_in", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1_fu_38", "Port" : "wa_in", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1_fu_38", "Port" : "inter10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1_fu_38", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1",
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
			{"Name" : "totalIters_16_loc_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "wa_in", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "wa_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter10", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inter10_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_268_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	DoCompute_Loop_VITIS_LOOP_268_1_proc24 {
		totalIters_16_loc {Type I LastRead 0 FirstWrite -1}
		wa_in {Type O LastRead -1 FirstWrite 3}
		inter10 {Type I LastRead 2 FirstWrite -1}}
	DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1 {
		totalIters_16_loc_load {Type I LastRead 0 FirstWrite -1}
		wa_in {Type O LastRead -1 FirstWrite 3}
		inter10 {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	totalIters_16_loc { ap_fifo {  { totalIters_16_loc_dout fifo_data_in 0 32 }  { totalIters_16_loc_num_data_valid fifo_status_num_data_valid 0 3 }  { totalIters_16_loc_fifo_cap fifo_update 0 3 }  { totalIters_16_loc_empty_n fifo_status 0 1 }  { totalIters_16_loc_read fifo_port_we 1 1 } } }
	wa_in { ap_fifo {  { wa_in_din fifo_data_in 1 1 }  { wa_in_num_data_valid fifo_status_num_data_valid 0 3 }  { wa_in_fifo_cap fifo_update 0 3 }  { wa_in_full_n fifo_status 0 1 }  { wa_in_write fifo_port_we 1 1 } } }
	inter10 { ap_fifo {  { inter10_dout fifo_data_in 0 64 }  { inter10_num_data_valid fifo_status_num_data_valid 0 3 }  { inter10_fifo_cap fifo_update 0 3 }  { inter10_empty_n fifo_status 0 1 }  { inter10_read fifo_port_we 1 1 } } }
}
