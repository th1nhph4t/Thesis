set moduleName StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3
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
set C_modelName {StreamingDataWidthConverter_Batch<64u, 192u, 384u>_Pipeline_VITIS_LOOP_300_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ totalIters int 32 regular  }
	{ inter0 int 64 regular {fifo 0 volatile }  }
	{ inter0_1 int 192 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "totalIters", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "inter0", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "inter0_1", "interface" : "fifo", "bitwidth" : 192, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inter0_dout sc_in sc_lv 64 signal 1 } 
	{ inter0_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ inter0_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ inter0_empty_n sc_in sc_logic 1 signal 1 } 
	{ inter0_read sc_out sc_logic 1 signal 1 } 
	{ inter0_1_din sc_out sc_lv 192 signal 2 } 
	{ inter0_1_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ inter0_1_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ inter0_1_full_n sc_in sc_logic 1 signal 2 } 
	{ inter0_1_write sc_out sc_logic 1 signal 2 } 
	{ totalIters sc_in sc_lv 32 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inter0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inter0", "role": "dout" }} , 
 	{ "name": "inter0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inter0", "role": "num_data_valid" }} , 
 	{ "name": "inter0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inter0", "role": "fifo_cap" }} , 
 	{ "name": "inter0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter0", "role": "empty_n" }} , 
 	{ "name": "inter0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter0", "role": "read" }} , 
 	{ "name": "inter0_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "inter0_1", "role": "din" }} , 
 	{ "name": "inter0_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inter0_1", "role": "num_data_valid" }} , 
 	{ "name": "inter0_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inter0_1", "role": "fifo_cap" }} , 
 	{ "name": "inter0_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter0_1", "role": "full_n" }} , 
 	{ "name": "inter0_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter0_1", "role": "write" }} , 
 	{ "name": "totalIters", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "totalIters", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3",
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
			{"Name" : "totalIters", "Type" : "None", "Direction" : "I"},
			{"Name" : "inter0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inter0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter0_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inter0_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_300_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3 {
		totalIters {Type I LastRead 0 FirstWrite -1}
		inter0 {Type I LastRead 2 FirstWrite -1}
		inter0_1 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	totalIters { ap_none {  { totalIters in_data 0 32 } } }
	inter0 { ap_fifo {  { inter0_dout fifo_data_in 0 64 }  { inter0_num_data_valid fifo_status_num_data_valid 0 3 }  { inter0_fifo_cap fifo_update 0 3 }  { inter0_empty_n fifo_status 0 1 }  { inter0_read fifo_port_we 1 1 } } }
	inter0_1 { ap_fifo {  { inter0_1_din fifo_data_in 1 192 }  { inter0_1_num_data_valid fifo_status_num_data_valid 0 3 }  { inter0_1_fifo_cap fifo_update 0 3 }  { inter0_1_full_n fifo_status 0 1 }  { inter0_1_write fifo_port_we 1 1 } } }
}
