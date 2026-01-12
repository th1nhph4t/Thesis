set moduleName Matrix_Vector_Activate_Batch_3
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
set C_modelName {Matrix_Vector_Activate_Batch.3}
set C_modelType { void 0 }
set C_modelArgList {
	{ wa_in_1 int 8 regular {fifo 0 volatile }  }
	{ wa_out_m_buffer int 1 regular {fifo 1 volatile }  }
	{ numReps int 32 regular {fifo 0}  }
	{ numReps_c140 int 32 regular {fifo 1}  }
	{ weights7 int 8 regular {array 32768 { 1 3 } 1 1 } {global 0}  }
	{ threshs7 int 16 regular {array 512 { 1 3 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "wa_in_1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "wa_out_m_buffer", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "numReps", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "numReps_c140", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weights7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "threshs7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 36
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
	{ wa_in_1_dout sc_in sc_lv 8 signal 0 } 
	{ wa_in_1_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ wa_in_1_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ wa_in_1_empty_n sc_in sc_logic 1 signal 0 } 
	{ wa_in_1_read sc_out sc_logic 1 signal 0 } 
	{ wa_out_m_buffer_din sc_out sc_lv 1 signal 1 } 
	{ wa_out_m_buffer_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ wa_out_m_buffer_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ wa_out_m_buffer_full_n sc_in sc_logic 1 signal 1 } 
	{ wa_out_m_buffer_write sc_out sc_logic 1 signal 1 } 
	{ numReps_dout sc_in sc_lv 32 signal 2 } 
	{ numReps_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ numReps_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ numReps_empty_n sc_in sc_logic 1 signal 2 } 
	{ numReps_read sc_out sc_logic 1 signal 2 } 
	{ numReps_c140_din sc_out sc_lv 32 signal 3 } 
	{ numReps_c140_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ numReps_c140_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ numReps_c140_full_n sc_in sc_logic 1 signal 3 } 
	{ numReps_c140_write sc_out sc_logic 1 signal 3 } 
	{ weights7_address0 sc_out sc_lv 15 signal 4 } 
	{ weights7_ce0 sc_out sc_logic 1 signal 4 } 
	{ weights7_q0 sc_in sc_lv 8 signal 4 } 
	{ threshs7_address0 sc_out sc_lv 9 signal 5 } 
	{ threshs7_ce0 sc_out sc_logic 1 signal 5 } 
	{ threshs7_q0 sc_in sc_lv 16 signal 5 } 
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
 	{ "name": "wa_in_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "wa_in_1", "role": "dout" }} , 
 	{ "name": "wa_in_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wa_in_1", "role": "num_data_valid" }} , 
 	{ "name": "wa_in_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wa_in_1", "role": "fifo_cap" }} , 
 	{ "name": "wa_in_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wa_in_1", "role": "empty_n" }} , 
 	{ "name": "wa_in_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wa_in_1", "role": "read" }} , 
 	{ "name": "wa_out_m_buffer_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wa_out_m_buffer", "role": "din" }} , 
 	{ "name": "wa_out_m_buffer_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wa_out_m_buffer", "role": "num_data_valid" }} , 
 	{ "name": "wa_out_m_buffer_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wa_out_m_buffer", "role": "fifo_cap" }} , 
 	{ "name": "wa_out_m_buffer_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wa_out_m_buffer", "role": "full_n" }} , 
 	{ "name": "wa_out_m_buffer_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wa_out_m_buffer", "role": "write" }} , 
 	{ "name": "numReps_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numReps", "role": "dout" }} , 
 	{ "name": "numReps_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "numReps", "role": "num_data_valid" }} , 
 	{ "name": "numReps_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "numReps", "role": "fifo_cap" }} , 
 	{ "name": "numReps_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numReps", "role": "empty_n" }} , 
 	{ "name": "numReps_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numReps", "role": "read" }} , 
 	{ "name": "numReps_c140_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numReps_c140", "role": "din" }} , 
 	{ "name": "numReps_c140_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "numReps_c140", "role": "num_data_valid" }} , 
 	{ "name": "numReps_c140_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "numReps_c140", "role": "fifo_cap" }} , 
 	{ "name": "numReps_c140_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numReps_c140", "role": "full_n" }} , 
 	{ "name": "numReps_c140_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numReps_c140", "role": "write" }} , 
 	{ "name": "weights7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "weights7", "role": "address0" }} , 
 	{ "name": "weights7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights7", "role": "ce0" }} , 
 	{ "name": "weights7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights7", "role": "q0" }} , 
 	{ "name": "threshs7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshs7", "role": "address0" }} , 
 	{ "name": "threshs7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshs7", "role": "ce0" }} , 
 	{ "name": "threshs7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "threshs7", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Matrix_Vector_Activate_Batch_3",
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
			{"Name" : "wa_in_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "wa_in_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "wa_out_m_buffer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "wa_out_m_buffer", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "weights7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "threshs7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "threshs7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1",
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
			{"Name" : "wa_in_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wa_in_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wa_out_m_buffer", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "wa_out_m_buffer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "threshs7", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_122_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56.sparsemux_129_6_8_1_1_U621", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	Matrix_Vector_Activate_Batch_3 {
		wa_in_1 {Type I LastRead 2 FirstWrite -1}
		wa_out_m_buffer {Type O LastRead -1 FirstWrite 5}
		numReps {Type I LastRead 0 FirstWrite -1}
		numReps_c140 {Type O LastRead -1 FirstWrite 0}
		weights7 {Type I LastRead 2 FirstWrite -1}
		threshs7 {Type I LastRead 3 FirstWrite -1}}
	Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1 {
		empty {Type I LastRead 0 FirstWrite -1}
		wa_in_1 {Type I LastRead 2 FirstWrite -1}
		wa_out_m_buffer {Type O LastRead -1 FirstWrite 5}
		weights7 {Type I LastRead 2 FirstWrite -1}
		threshs7 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	wa_in_1 { ap_fifo {  { wa_in_1_dout fifo_data_in 0 8 }  { wa_in_1_num_data_valid fifo_status_num_data_valid 0 3 }  { wa_in_1_fifo_cap fifo_update 0 3 }  { wa_in_1_empty_n fifo_status 0 1 }  { wa_in_1_read fifo_port_we 1 1 } } }
	wa_out_m_buffer { ap_fifo {  { wa_out_m_buffer_din fifo_data_in 1 1 }  { wa_out_m_buffer_num_data_valid fifo_status_num_data_valid 0 3 }  { wa_out_m_buffer_fifo_cap fifo_update 0 3 }  { wa_out_m_buffer_full_n fifo_status 0 1 }  { wa_out_m_buffer_write fifo_port_we 1 1 } } }
	numReps { ap_fifo {  { numReps_dout fifo_data_in 0 32 }  { numReps_num_data_valid fifo_status_num_data_valid 0 3 }  { numReps_fifo_cap fifo_update 0 3 }  { numReps_empty_n fifo_status 0 1 }  { numReps_read fifo_port_we 1 1 } } }
	numReps_c140 { ap_fifo {  { numReps_c140_din fifo_data_in 1 32 }  { numReps_c140_num_data_valid fifo_status_num_data_valid 0 3 }  { numReps_c140_fifo_cap fifo_update 0 3 }  { numReps_c140_full_n fifo_status 0 1 }  { numReps_c140_write fifo_port_we 1 1 } } }
	weights7 { ap_memory {  { weights7_address0 mem_address 1 15 }  { weights7_ce0 mem_ce 1 1 }  { weights7_q0 mem_dout 0 8 } } }
	threshs7 { ap_memory {  { threshs7_address0 mem_address 1 9 }  { threshs7_ce0 mem_ce 1 1 }  { threshs7_q0 mem_dout 0 16 } } }
}
