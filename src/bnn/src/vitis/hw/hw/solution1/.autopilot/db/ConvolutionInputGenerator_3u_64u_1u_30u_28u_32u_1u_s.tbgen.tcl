set moduleName ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_s
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
set C_modelName {ConvolutionInputGenerator<3u, 64u, 1u, 30u, 28u, 32u, 1u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ wa_in_i126 int 32 regular {fifo 0 volatile }  }
	{ convInp_i3 int 32 regular {fifo 1 volatile }  }
	{ numReps int 32 regular {fifo 0}  }
	{ numReps_c154 int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "wa_in_i126", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "convInp_i3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "numReps", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "numReps_c154", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ wa_in_i126_dout sc_in sc_lv 32 signal 0 } 
	{ wa_in_i126_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ wa_in_i126_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ wa_in_i126_empty_n sc_in sc_logic 1 signal 0 } 
	{ wa_in_i126_read sc_out sc_logic 1 signal 0 } 
	{ convInp_i3_din sc_out sc_lv 32 signal 1 } 
	{ convInp_i3_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ convInp_i3_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ convInp_i3_full_n sc_in sc_logic 1 signal 1 } 
	{ convInp_i3_write sc_out sc_logic 1 signal 1 } 
	{ numReps_dout sc_in sc_lv 32 signal 2 } 
	{ numReps_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ numReps_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ numReps_empty_n sc_in sc_logic 1 signal 2 } 
	{ numReps_read sc_out sc_logic 1 signal 2 } 
	{ numReps_c154_din sc_out sc_lv 32 signal 3 } 
	{ numReps_c154_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ numReps_c154_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ numReps_c154_full_n sc_in sc_logic 1 signal 3 } 
	{ numReps_c154_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "wa_in_i126_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wa_in_i126", "role": "dout" }} , 
 	{ "name": "wa_in_i126_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wa_in_i126", "role": "num_data_valid" }} , 
 	{ "name": "wa_in_i126_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wa_in_i126", "role": "fifo_cap" }} , 
 	{ "name": "wa_in_i126_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wa_in_i126", "role": "empty_n" }} , 
 	{ "name": "wa_in_i126_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wa_in_i126", "role": "read" }} , 
 	{ "name": "convInp_i3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convInp_i3", "role": "din" }} , 
 	{ "name": "convInp_i3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convInp_i3", "role": "num_data_valid" }} , 
 	{ "name": "convInp_i3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convInp_i3", "role": "fifo_cap" }} , 
 	{ "name": "convInp_i3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convInp_i3", "role": "full_n" }} , 
 	{ "name": "convInp_i3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convInp_i3", "role": "write" }} , 
 	{ "name": "numReps_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numReps", "role": "dout" }} , 
 	{ "name": "numReps_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "numReps", "role": "num_data_valid" }} , 
 	{ "name": "numReps_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "numReps", "role": "fifo_cap" }} , 
 	{ "name": "numReps_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numReps", "role": "empty_n" }} , 
 	{ "name": "numReps_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numReps", "role": "read" }} , 
 	{ "name": "numReps_c154_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numReps_c154", "role": "din" }} , 
 	{ "name": "numReps_c154_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "numReps_c154", "role": "num_data_valid" }} , 
 	{ "name": "numReps_c154_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "numReps_c154", "role": "fifo_cap" }} , 
 	{ "name": "numReps_c154_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numReps_c154", "role": "full_n" }} , 
 	{ "name": "numReps_c154_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numReps_c154", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "8"],
		"CDFG" : "ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_s",
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
			{"Name" : "wa_in_i126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52", "Port" : "wa_in_i126", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "convInp_i3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52", "Port" : "convInp_i3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7"],
		"CDFG" : "ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2",
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
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "wa_in_i126", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wa_in_i126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "convInp_i3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "convInp_i3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_1_VITIS_LOOP_105_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.inputBuf_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.inputBuf_1_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.inputBuf_2_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.inputBuf_3_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.sparsemux_9_2_32_1_1_U131", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_15ns_46_2_1_U137", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_s {
		wa_in_i126 {Type I LastRead 3 FirstWrite -1}
		convInp_i3 {Type O LastRead -1 FirstWrite 4}
		numReps {Type I LastRead 0 FirstWrite -1}
		numReps_c154 {Type O LastRead -1 FirstWrite 0}}
	ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2 {
		bound {Type I LastRead 0 FirstWrite -1}
		wa_in_i126 {Type I LastRead 3 FirstWrite -1}
		convInp_i3 {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	wa_in_i126 { ap_fifo {  { wa_in_i126_dout fifo_data_in 0 32 }  { wa_in_i126_num_data_valid fifo_status_num_data_valid 0 3 }  { wa_in_i126_fifo_cap fifo_update 0 3 }  { wa_in_i126_empty_n fifo_status 0 1 }  { wa_in_i126_read fifo_port_we 1 1 } } }
	convInp_i3 { ap_fifo {  { convInp_i3_din fifo_data_in 1 32 }  { convInp_i3_num_data_valid fifo_status_num_data_valid 0 3 }  { convInp_i3_fifo_cap fifo_update 0 3 }  { convInp_i3_full_n fifo_status 0 1 }  { convInp_i3_write fifo_port_we 1 1 } } }
	numReps { ap_fifo {  { numReps_dout fifo_data_in 0 32 }  { numReps_num_data_valid fifo_status_num_data_valid 0 3 }  { numReps_fifo_cap fifo_update 0 3 }  { numReps_empty_n fifo_status 0 1 }  { numReps_read fifo_port_we 1 1 } } }
	numReps_c154 { ap_fifo {  { numReps_c154_din fifo_data_in 1 32 }  { numReps_c154_num_data_valid fifo_status_num_data_valid 0 3 }  { numReps_c154_fifo_cap fifo_update 0 3 }  { numReps_c154_full_n fifo_status 0 1 }  { numReps_c154_write fifo_port_we 1 1 } } }
}
