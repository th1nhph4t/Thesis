set moduleName DoCompute_Loop_VITIS_LOOP_300_3_proc228
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
set C_modelName {DoCompute_Loop_VITIS_LOOP_300_3_proc228}
set C_modelType { void 0 }
set C_modelArgList {
	{ numReps int 32 regular {fifo 0}  }
	{ mvOut_m_buffer_9 int 32 regular {fifo 0 volatile }  }
	{ inter2 int 64 regular {fifo 1 volatile }  }
	{ numReps_c153 int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "numReps", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mvOut_m_buffer_9", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "inter2", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "numReps_c153", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
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
	{ numReps_dout sc_in sc_lv 32 signal 0 } 
	{ numReps_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ numReps_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ numReps_empty_n sc_in sc_logic 1 signal 0 } 
	{ numReps_read sc_out sc_logic 1 signal 0 } 
	{ mvOut_m_buffer_9_dout sc_in sc_lv 32 signal 1 } 
	{ mvOut_m_buffer_9_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ mvOut_m_buffer_9_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ mvOut_m_buffer_9_empty_n sc_in sc_logic 1 signal 1 } 
	{ mvOut_m_buffer_9_read sc_out sc_logic 1 signal 1 } 
	{ inter2_din sc_out sc_lv 64 signal 2 } 
	{ inter2_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ inter2_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ inter2_full_n sc_in sc_logic 1 signal 2 } 
	{ inter2_write sc_out sc_logic 1 signal 2 } 
	{ numReps_c153_din sc_out sc_lv 32 signal 3 } 
	{ numReps_c153_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ numReps_c153_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ numReps_c153_full_n sc_in sc_logic 1 signal 3 } 
	{ numReps_c153_write sc_out sc_logic 1 signal 3 } 
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
 	{ "name": "numReps_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numReps", "role": "dout" }} , 
 	{ "name": "numReps_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "numReps", "role": "num_data_valid" }} , 
 	{ "name": "numReps_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "numReps", "role": "fifo_cap" }} , 
 	{ "name": "numReps_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numReps", "role": "empty_n" }} , 
 	{ "name": "numReps_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numReps", "role": "read" }} , 
 	{ "name": "mvOut_m_buffer_9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mvOut_m_buffer_9", "role": "dout" }} , 
 	{ "name": "mvOut_m_buffer_9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mvOut_m_buffer_9", "role": "num_data_valid" }} , 
 	{ "name": "mvOut_m_buffer_9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mvOut_m_buffer_9", "role": "fifo_cap" }} , 
 	{ "name": "mvOut_m_buffer_9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mvOut_m_buffer_9", "role": "empty_n" }} , 
 	{ "name": "mvOut_m_buffer_9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mvOut_m_buffer_9", "role": "read" }} , 
 	{ "name": "inter2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inter2", "role": "din" }} , 
 	{ "name": "inter2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inter2", "role": "num_data_valid" }} , 
 	{ "name": "inter2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inter2", "role": "fifo_cap" }} , 
 	{ "name": "inter2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter2", "role": "full_n" }} , 
 	{ "name": "inter2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter2", "role": "write" }} , 
 	{ "name": "numReps_c153_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numReps_c153", "role": "din" }} , 
 	{ "name": "numReps_c153_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "numReps_c153", "role": "num_data_valid" }} , 
 	{ "name": "numReps_c153_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "numReps_c153", "role": "fifo_cap" }} , 
 	{ "name": "numReps_c153_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numReps_c153", "role": "full_n" }} , 
 	{ "name": "numReps_c153_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numReps_c153", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_300_3_proc228",
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
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mvOut_m_buffer_9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3_fu_52", "Port" : "mvOut_m_buffer_9", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "inter2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3_fu_52", "Port" : "inter2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "numReps_c153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c153_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3_fu_52", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3",
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
			{"Name" : "mvOut_m_buffer_9", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mvOut_m_buffer_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inter2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_300_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_12ns_32_2_1_U284", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	DoCompute_Loop_VITIS_LOOP_300_3_proc228 {
		numReps {Type I LastRead 0 FirstWrite -1}
		mvOut_m_buffer_9 {Type I LastRead 2 FirstWrite -1}
		inter2 {Type O LastRead -1 FirstWrite 2}
		numReps_c153 {Type O LastRead -1 FirstWrite 0}}
	DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3 {
		totalIters {Type I LastRead 0 FirstWrite -1}
		mvOut_m_buffer_9 {Type I LastRead 2 FirstWrite -1}
		inter2 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	numReps { ap_fifo {  { numReps_dout fifo_data_in 0 32 }  { numReps_num_data_valid fifo_status_num_data_valid 0 3 }  { numReps_fifo_cap fifo_update 0 3 }  { numReps_empty_n fifo_status 0 1 }  { numReps_read fifo_port_we 1 1 } } }
	mvOut_m_buffer_9 { ap_fifo {  { mvOut_m_buffer_9_dout fifo_data_in 0 32 }  { mvOut_m_buffer_9_num_data_valid fifo_status_num_data_valid 0 3 }  { mvOut_m_buffer_9_fifo_cap fifo_update 0 3 }  { mvOut_m_buffer_9_empty_n fifo_status 0 1 }  { mvOut_m_buffer_9_read fifo_port_we 1 1 } } }
	inter2 { ap_fifo {  { inter2_din fifo_data_in 1 64 }  { inter2_num_data_valid fifo_status_num_data_valid 0 3 }  { inter2_fifo_cap fifo_update 0 3 }  { inter2_full_n fifo_status 0 1 }  { inter2_write fifo_port_we 1 1 } } }
	numReps_c153 { ap_fifo {  { numReps_c153_din fifo_data_in 1 32 }  { numReps_c153_num_data_valid fifo_status_num_data_valid 0 3 }  { numReps_c153_fifo_cap fifo_update 0 3 }  { numReps_c153_full_n fifo_status 0 1 }  { numReps_c153_write fifo_port_we 1 1 } } }
}
