set moduleName BlackBoxJam
set isTopModule 1
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
set C_modelName {BlackBoxJam}
set C_modelType { void 0 }
set C_modelArgList {
	{ hostmem int 64 regular {axi_master 2}  }
	{ in_r int 64 regular {axi_slave 0}  }
	{ out_r int 64 regular {axi_slave 0}  }
	{ doInit uint 1 regular {axi_slave 0}  }
	{ targetLayer int 32 regular {axi_slave 0}  }
	{ targetMem int 32 regular {axi_slave 0}  }
	{ targetInd int 32 regular {axi_slave 0}  }
	{ targetThresh int 32 unused {axi_slave 0}  }
	{ val_r int 64 regular {axi_slave 0}  }
	{ numReps int 32 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "hostmem", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"},{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "in_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "out_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "doInit", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "targetLayer", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "targetMem", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "targetInd", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "targetThresh", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "val_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":91}} , 
 	{ "Name" : "numReps", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":92}, "offset_end" : {"in":99}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_hostmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_hostmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_hostmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_hostmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_hostmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_hostmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_hostmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_hostmem_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_hostmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_hostmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_hostmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_hostmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_hostmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_hostmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_hostmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_hostmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_hostmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_hostmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_hostmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_hostmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_hostmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"BlackBoxJam","role":"start","value":"0","valid_bit":"0"},{"name":"BlackBoxJam","role":"continue","value":"0","valid_bit":"4"},{"name":"BlackBoxJam","role":"auto_start","value":"0","valid_bit":"7"},{"name":"in_r","role":"data","value":"16"},{"name":"out_r","role":"data","value":"28"},{"name":"doInit","role":"data","value":"40"},{"name":"targetLayer","role":"data","value":"48"},{"name":"targetMem","role":"data","value":"56"},{"name":"targetInd","role":"data","value":"64"},{"name":"targetThresh","role":"data","value":"72"},{"name":"val_r","role":"data","value":"80"},{"name":"numReps","role":"data","value":"92"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"BlackBoxJam","role":"start","value":"0","valid_bit":"0"},{"name":"BlackBoxJam","role":"done","value":"0","valid_bit":"1"},{"name":"BlackBoxJam","role":"idle","value":"0","valid_bit":"2"},{"name":"BlackBoxJam","role":"ready","value":"0","valid_bit":"3"},{"name":"BlackBoxJam","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_hostmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_hostmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_hostmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hostmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_hostmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "AWID" }} , 
 	{ "name": "m_axi_hostmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hostmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_hostmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hostmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_hostmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_hostmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_hostmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_hostmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hostmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_hostmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_hostmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_hostmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_hostmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_hostmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_hostmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hostmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_hostmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hostmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_hostmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_hostmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "WID" }} , 
 	{ "name": "m_axi_hostmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_hostmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_hostmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_hostmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hostmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_hostmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "ARID" }} , 
 	{ "name": "m_axi_hostmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hostmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_hostmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hostmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_hostmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_hostmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_hostmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_hostmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hostmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_hostmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_hostmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_hostmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_hostmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_hostmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_hostmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hostmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_hostmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_hostmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "RID" }} , 
 	{ "name": "m_axi_hostmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_hostmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_hostmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_hostmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_hostmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_hostmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "BID" }} , 
 	{ "name": "m_axi_hostmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "455", "456"],
		"CDFG" : "BlackBoxJam",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "hostmem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "hostmem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "doInit", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetLayer", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetMem", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetThresh", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "numReps", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL8weights0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights0_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights0_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights0_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights0_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights0_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights0_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights0_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights0_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights0_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights0_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights0_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights0_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights0_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights0_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights0_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights0_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs0_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs0_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs0_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs0_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs0_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs0_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs0_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs0_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs0_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs0_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs0_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs0_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs0_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs0_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs0_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs0_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_17", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_18", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_19", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_20", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_21", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_22", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_22", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_23", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_23", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_24", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_24", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_25", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_25", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_26", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_26", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_27", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_27", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_28", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_29", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_30", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_31", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights1_31", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_17", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_18", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_19", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_20", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_21", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_22", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_22", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_23", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_23", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_24", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_24", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_25", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_25", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_26", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_26", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_27", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_27", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_28", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_29", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_30", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_31", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs1_31", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights2_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights2_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights2_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights2_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights2_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights2_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights2_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights2_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights2_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights2_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights2_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights2_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights2_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights2_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights2_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights2_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs2_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs2_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs2_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs2_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs2_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs2_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs2_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs2_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs2_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs2_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs2_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs2_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs2_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs2_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs2_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs2_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights3_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights3_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights3_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights3_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights3_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights3_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights3_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights3_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights3_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights3_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights3_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights3_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights3_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights3_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights3_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights3_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs3_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs3_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs3_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs3_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs3_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs3_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs3_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs3_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs3_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs3_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs3_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs3_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs3_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs3_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs3_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs3_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights4_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights4_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights4_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights4_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights4_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights4_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights4_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights4_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs4_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs4_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs4_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs4_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs4_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs4_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs4_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8threshs4_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "weights5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "weights5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "threshs5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "threshs5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "weights6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "weights6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "threshs6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "threshs6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "weights7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "weights7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "threshs7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "threshs7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights8_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights8_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights8_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights8_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights8_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights8_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights8_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_DoCompute_fu_2926", "Port" : "p_ZL8weights8_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights0_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights0_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights0_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights0_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights0_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights0_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights0_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights0_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights0_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights0_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights0_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights0_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights0_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights0_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights0_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs0_0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs0_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs0_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs0_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs0_4_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs0_5_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs0_6_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs0_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs0_8_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs0_9_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs0_10_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs0_11_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs0_12_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs0_13_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs0_14_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs0_15_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_0_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_8_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_9_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_10_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_11_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_12_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_13_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_14_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_15_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_16_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_17_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_18_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_19_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_20_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_21_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_22_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_23_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_24_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_25_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_26_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_27_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_28_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_29_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_30_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights1_31_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_0_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_1_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_2_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_3_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_4_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_5_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_6_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_7_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_8_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_9_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_10_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_11_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_12_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_13_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_14_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_15_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_16_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_17_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_18_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_19_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_20_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_21_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_22_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_23_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_24_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_25_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_26_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_27_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_28_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_29_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_30_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs1_31_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights2_0_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights2_1_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights2_2_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights2_3_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights2_4_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights2_5_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights2_6_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights2_7_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights2_8_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights2_9_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights2_10_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights2_11_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights2_12_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights2_13_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights2_14_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights2_15_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs2_0_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs2_1_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs2_2_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs2_3_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs2_4_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs2_5_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs2_6_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs2_7_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs2_8_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs2_9_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs2_10_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs2_11_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs2_12_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs2_13_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs2_14_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs2_15_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights3_0_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights3_1_U", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights3_2_U", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights3_3_U", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights3_4_U", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights3_5_U", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights3_6_U", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights3_7_U", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights3_8_U", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights3_9_U", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights3_10_U", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights3_11_U", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights3_12_U", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights3_13_U", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights3_14_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights3_15_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs3_0_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs3_1_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs3_2_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs3_3_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs3_4_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs3_5_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs3_6_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs3_7_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs3_8_U", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs3_9_U", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs3_10_U", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs3_11_U", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs3_12_U", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs3_13_U", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs3_14_U", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs3_15_U", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights4_0_U", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights4_1_U", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights4_2_U", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights4_3_U", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs4_0_U", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs4_1_U", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs4_2_U", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8threshs4_3_U", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights5_U", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.threshs5_U", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights6_U", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.threshs6_U", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights7_U", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.threshs7_U", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights8_0_U", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights8_1_U", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights8_2_U", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL8weights8_3_U", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926", "Parent" : "0", "Child" : ["180", "181", "186", "189", "192", "200", "202", "206", "210", "214", "223", "225", "229", "233", "239", "243", "252", "253", "257", "260", "261", "264", "273", "275", "279", "283", "289", "291", "299", "300", "304", "307", "310", "318", "322", "325", "328", "332", "335", "338", "342", "345", "348", "352", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451", "452", "453", "454"],
		"CDFG" : "DoCompute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "180", "Name" : "entry_proc_U0"},
			{"ID" : "181", "Name" : "Mem2Stream_Batch_64u_3072u_U0"},
			{"ID" : "200", "Name" : "DoCompute_Block_entry5993_proc_U0"},
			{"ID" : "202", "Name" : "Matrix_Vector_Activate_Batch_4_U0"},
			{"ID" : "225", "Name" : "Matrix_Vector_Activate_Batch_U0"},
			{"ID" : "252", "Name" : "DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0"},
			{"ID" : "253", "Name" : "Matrix_Vector_Activate_Batch_1_U0"},
			{"ID" : "260", "Name" : "DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0"},
			{"ID" : "273", "Name" : "DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0"},
			{"ID" : "275", "Name" : "Matrix_Vector_Activate_Batch_8_U0"},
			{"ID" : "299", "Name" : "DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0"},
			{"ID" : "300", "Name" : "Matrix_Vector_Activate_Batch_7_U0"},
			{"ID" : "318", "Name" : "Matrix_Vector_Activate_Batch_6_U0"},
			{"ID" : "328", "Name" : "Matrix_Vector_Activate_Batch_5_U0"},
			{"ID" : "338", "Name" : "Matrix_Vector_Activate_Batch_3_U0"},
			{"ID" : "348", "Name" : "Matrix_Vector_Activate_Batch_2_U0"}],
		"OutputProcess" : [
			{"ID" : "352", "Name" : "Stream2Mem_Batch_64u_128u_U0"}],
		"Port" : [
			{"Name" : "hostmem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "Mem2Stream_Batch_64u_3072u_U0", "Port" : "hostmem"},
					{"ID" : "352", "SubInstance" : "Stream2Mem_Batch_64u_128u_U0", "Port" : "hostmem"}]},
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "numReps", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL8weights0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_0"}]},
			{"Name" : "p_ZL8weights0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_1"}]},
			{"Name" : "p_ZL8weights0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_2"}]},
			{"Name" : "p_ZL8weights0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_3"}]},
			{"Name" : "p_ZL8weights0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_4"}]},
			{"Name" : "p_ZL8weights0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_5"}]},
			{"Name" : "p_ZL8weights0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_6"}]},
			{"Name" : "p_ZL8weights0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_7"}]},
			{"Name" : "p_ZL8weights0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_8"}]},
			{"Name" : "p_ZL8weights0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_9"}]},
			{"Name" : "p_ZL8weights0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_10"}]},
			{"Name" : "p_ZL8weights0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_11"}]},
			{"Name" : "p_ZL8weights0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_12"}]},
			{"Name" : "p_ZL8weights0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_13"}]},
			{"Name" : "p_ZL8weights0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_14"}]},
			{"Name" : "p_ZL8weights0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_15"}]},
			{"Name" : "p_ZL8threshs0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_0"}]},
			{"Name" : "p_ZL8threshs0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_1"}]},
			{"Name" : "p_ZL8threshs0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_2"}]},
			{"Name" : "p_ZL8threshs0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_3"}]},
			{"Name" : "p_ZL8threshs0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_4"}]},
			{"Name" : "p_ZL8threshs0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_5"}]},
			{"Name" : "p_ZL8threshs0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_6"}]},
			{"Name" : "p_ZL8threshs0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_7"}]},
			{"Name" : "p_ZL8threshs0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_8"}]},
			{"Name" : "p_ZL8threshs0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_9"}]},
			{"Name" : "p_ZL8threshs0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_10"}]},
			{"Name" : "p_ZL8threshs0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_11"}]},
			{"Name" : "p_ZL8threshs0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_12"}]},
			{"Name" : "p_ZL8threshs0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_13"}]},
			{"Name" : "p_ZL8threshs0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_14"}]},
			{"Name" : "p_ZL8threshs0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_15"}]},
			{"Name" : "p_ZL8weights1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_0"}]},
			{"Name" : "p_ZL8weights1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_1"}]},
			{"Name" : "p_ZL8weights1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_2"}]},
			{"Name" : "p_ZL8weights1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_3"}]},
			{"Name" : "p_ZL8weights1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_4"}]},
			{"Name" : "p_ZL8weights1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_5"}]},
			{"Name" : "p_ZL8weights1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_6"}]},
			{"Name" : "p_ZL8weights1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_7"}]},
			{"Name" : "p_ZL8weights1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_8"}]},
			{"Name" : "p_ZL8weights1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_9"}]},
			{"Name" : "p_ZL8weights1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_10"}]},
			{"Name" : "p_ZL8weights1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_11"}]},
			{"Name" : "p_ZL8weights1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_12"}]},
			{"Name" : "p_ZL8weights1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_13"}]},
			{"Name" : "p_ZL8weights1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_14"}]},
			{"Name" : "p_ZL8weights1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_15"}]},
			{"Name" : "p_ZL8weights1_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_16"}]},
			{"Name" : "p_ZL8weights1_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_17"}]},
			{"Name" : "p_ZL8weights1_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_18"}]},
			{"Name" : "p_ZL8weights1_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_19"}]},
			{"Name" : "p_ZL8weights1_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_20"}]},
			{"Name" : "p_ZL8weights1_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_21"}]},
			{"Name" : "p_ZL8weights1_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_22"}]},
			{"Name" : "p_ZL8weights1_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_23"}]},
			{"Name" : "p_ZL8weights1_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_24"}]},
			{"Name" : "p_ZL8weights1_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_25"}]},
			{"Name" : "p_ZL8weights1_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_26"}]},
			{"Name" : "p_ZL8weights1_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_27"}]},
			{"Name" : "p_ZL8weights1_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_28"}]},
			{"Name" : "p_ZL8weights1_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_29"}]},
			{"Name" : "p_ZL8weights1_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_30"}]},
			{"Name" : "p_ZL8weights1_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_31"}]},
			{"Name" : "p_ZL8threshs1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_0"}]},
			{"Name" : "p_ZL8threshs1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_1"}]},
			{"Name" : "p_ZL8threshs1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_2"}]},
			{"Name" : "p_ZL8threshs1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_3"}]},
			{"Name" : "p_ZL8threshs1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_4"}]},
			{"Name" : "p_ZL8threshs1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_5"}]},
			{"Name" : "p_ZL8threshs1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_6"}]},
			{"Name" : "p_ZL8threshs1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_7"}]},
			{"Name" : "p_ZL8threshs1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_8"}]},
			{"Name" : "p_ZL8threshs1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_9"}]},
			{"Name" : "p_ZL8threshs1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_10"}]},
			{"Name" : "p_ZL8threshs1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_11"}]},
			{"Name" : "p_ZL8threshs1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_12"}]},
			{"Name" : "p_ZL8threshs1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_13"}]},
			{"Name" : "p_ZL8threshs1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_14"}]},
			{"Name" : "p_ZL8threshs1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_15"}]},
			{"Name" : "p_ZL8threshs1_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_16"}]},
			{"Name" : "p_ZL8threshs1_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_17"}]},
			{"Name" : "p_ZL8threshs1_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_18"}]},
			{"Name" : "p_ZL8threshs1_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_19"}]},
			{"Name" : "p_ZL8threshs1_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_20"}]},
			{"Name" : "p_ZL8threshs1_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_21"}]},
			{"Name" : "p_ZL8threshs1_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_22"}]},
			{"Name" : "p_ZL8threshs1_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_23"}]},
			{"Name" : "p_ZL8threshs1_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_24"}]},
			{"Name" : "p_ZL8threshs1_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_25"}]},
			{"Name" : "p_ZL8threshs1_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_26"}]},
			{"Name" : "p_ZL8threshs1_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_27"}]},
			{"Name" : "p_ZL8threshs1_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_28"}]},
			{"Name" : "p_ZL8threshs1_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_29"}]},
			{"Name" : "p_ZL8threshs1_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_30"}]},
			{"Name" : "p_ZL8threshs1_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_31"}]},
			{"Name" : "p_ZL8weights2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_0"}]},
			{"Name" : "p_ZL8weights2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_1"}]},
			{"Name" : "p_ZL8weights2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_2"}]},
			{"Name" : "p_ZL8weights2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_3"}]},
			{"Name" : "p_ZL8weights2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_4"}]},
			{"Name" : "p_ZL8weights2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_5"}]},
			{"Name" : "p_ZL8weights2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_6"}]},
			{"Name" : "p_ZL8weights2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_7"}]},
			{"Name" : "p_ZL8weights2_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_8"}]},
			{"Name" : "p_ZL8weights2_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_9"}]},
			{"Name" : "p_ZL8weights2_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_10"}]},
			{"Name" : "p_ZL8weights2_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_11"}]},
			{"Name" : "p_ZL8weights2_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_12"}]},
			{"Name" : "p_ZL8weights2_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_13"}]},
			{"Name" : "p_ZL8weights2_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_14"}]},
			{"Name" : "p_ZL8weights2_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_15"}]},
			{"Name" : "p_ZL8threshs2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_0"}]},
			{"Name" : "p_ZL8threshs2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_1"}]},
			{"Name" : "p_ZL8threshs2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_2"}]},
			{"Name" : "p_ZL8threshs2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_3"}]},
			{"Name" : "p_ZL8threshs2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_4"}]},
			{"Name" : "p_ZL8threshs2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_5"}]},
			{"Name" : "p_ZL8threshs2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_6"}]},
			{"Name" : "p_ZL8threshs2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_7"}]},
			{"Name" : "p_ZL8threshs2_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_8"}]},
			{"Name" : "p_ZL8threshs2_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_9"}]},
			{"Name" : "p_ZL8threshs2_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_10"}]},
			{"Name" : "p_ZL8threshs2_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_11"}]},
			{"Name" : "p_ZL8threshs2_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_12"}]},
			{"Name" : "p_ZL8threshs2_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_13"}]},
			{"Name" : "p_ZL8threshs2_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_14"}]},
			{"Name" : "p_ZL8threshs2_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_15"}]},
			{"Name" : "p_ZL8weights3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_0"}]},
			{"Name" : "p_ZL8weights3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_1"}]},
			{"Name" : "p_ZL8weights3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_2"}]},
			{"Name" : "p_ZL8weights3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_3"}]},
			{"Name" : "p_ZL8weights3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_4"}]},
			{"Name" : "p_ZL8weights3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_5"}]},
			{"Name" : "p_ZL8weights3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_6"}]},
			{"Name" : "p_ZL8weights3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_7"}]},
			{"Name" : "p_ZL8weights3_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_8"}]},
			{"Name" : "p_ZL8weights3_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_9"}]},
			{"Name" : "p_ZL8weights3_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_10"}]},
			{"Name" : "p_ZL8weights3_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_11"}]},
			{"Name" : "p_ZL8weights3_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_12"}]},
			{"Name" : "p_ZL8weights3_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_13"}]},
			{"Name" : "p_ZL8weights3_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_14"}]},
			{"Name" : "p_ZL8weights3_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_15"}]},
			{"Name" : "p_ZL8threshs3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_0"}]},
			{"Name" : "p_ZL8threshs3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_1"}]},
			{"Name" : "p_ZL8threshs3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_2"}]},
			{"Name" : "p_ZL8threshs3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_3"}]},
			{"Name" : "p_ZL8threshs3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_4"}]},
			{"Name" : "p_ZL8threshs3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_5"}]},
			{"Name" : "p_ZL8threshs3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_6"}]},
			{"Name" : "p_ZL8threshs3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_7"}]},
			{"Name" : "p_ZL8threshs3_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_8"}]},
			{"Name" : "p_ZL8threshs3_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_9"}]},
			{"Name" : "p_ZL8threshs3_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_10"}]},
			{"Name" : "p_ZL8threshs3_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_11"}]},
			{"Name" : "p_ZL8threshs3_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_12"}]},
			{"Name" : "p_ZL8threshs3_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_13"}]},
			{"Name" : "p_ZL8threshs3_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_14"}]},
			{"Name" : "p_ZL8threshs3_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_15"}]},
			{"Name" : "p_ZL8weights4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "Matrix_Vector_Activate_Batch_7_U0", "Port" : "p_ZL8weights4_0"}]},
			{"Name" : "p_ZL8weights4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "Matrix_Vector_Activate_Batch_7_U0", "Port" : "p_ZL8weights4_1"}]},
			{"Name" : "p_ZL8weights4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "Matrix_Vector_Activate_Batch_7_U0", "Port" : "p_ZL8weights4_2"}]},
			{"Name" : "p_ZL8weights4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "Matrix_Vector_Activate_Batch_7_U0", "Port" : "p_ZL8weights4_3"}]},
			{"Name" : "p_ZL8threshs4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "Matrix_Vector_Activate_Batch_7_U0", "Port" : "p_ZL8threshs4_0"}]},
			{"Name" : "p_ZL8threshs4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "Matrix_Vector_Activate_Batch_7_U0", "Port" : "p_ZL8threshs4_1"}]},
			{"Name" : "p_ZL8threshs4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "Matrix_Vector_Activate_Batch_7_U0", "Port" : "p_ZL8threshs4_2"}]},
			{"Name" : "p_ZL8threshs4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "Matrix_Vector_Activate_Batch_7_U0", "Port" : "p_ZL8threshs4_3"}]},
			{"Name" : "weights5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "318", "SubInstance" : "Matrix_Vector_Activate_Batch_6_U0", "Port" : "weights5"}]},
			{"Name" : "threshs5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "318", "SubInstance" : "Matrix_Vector_Activate_Batch_6_U0", "Port" : "threshs5"}]},
			{"Name" : "weights6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "328", "SubInstance" : "Matrix_Vector_Activate_Batch_5_U0", "Port" : "weights6"}]},
			{"Name" : "threshs6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "328", "SubInstance" : "Matrix_Vector_Activate_Batch_5_U0", "Port" : "threshs6"}]},
			{"Name" : "weights7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "338", "SubInstance" : "Matrix_Vector_Activate_Batch_3_U0", "Port" : "weights7"}]},
			{"Name" : "threshs7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "338", "SubInstance" : "Matrix_Vector_Activate_Batch_3_U0", "Port" : "threshs7"}]},
			{"Name" : "p_ZL8weights8_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "348", "SubInstance" : "Matrix_Vector_Activate_Batch_2_U0", "Port" : "p_ZL8weights8_0"}]},
			{"Name" : "p_ZL8weights8_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "348", "SubInstance" : "Matrix_Vector_Activate_Batch_2_U0", "Port" : "p_ZL8weights8_1"}]},
			{"Name" : "p_ZL8weights8_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "348", "SubInstance" : "Matrix_Vector_Activate_Batch_2_U0", "Port" : "p_ZL8weights8_2"}]},
			{"Name" : "p_ZL8weights8_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "348", "SubInstance" : "Matrix_Vector_Activate_Batch_2_U0", "Port" : "p_ZL8weights8_3"}]}]},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.entry_proc_U0", "Parent" : "179",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["352"], "DependentChan" : "357", "DependentChanDepth" : "38", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0", "Parent" : "179", "Child" : ["182", "184"],
		"CDFG" : "Mem2Stream_Batch_64u_3072u_s",
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
			{"Name" : "hostmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "hostmem_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_1_fu_117", "Port" : "hostmem", "Inst_start_state" : "20", "Inst_end_state" : "12"},
					{"ID" : "182", "SubInstance" : "grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_16_fu_108", "Port" : "hostmem", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "inter0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["186"], "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_1_fu_117", "Port" : "inter0", "Inst_start_state" : "20", "Inst_end_state" : "12"},
					{"ID" : "182", "SubInstance" : "grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_16_fu_108", "Port" : "inter0", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "numReps", "Type" : "None", "Direction" : "I"},
			{"Name" : "numReps_c160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["186"], "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c160_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_166_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_16_fu_108", "Parent" : "181", "Child" : ["183"],
		"CDFG" : "Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "387", "EstimateLatencyMax" : "387",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "hostmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "hostmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln140", "Type" : "None", "Direction" : "I"},
			{"Name" : "inter0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inter0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_140_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_16_fu_108.flow_control_loop_pipe_sequential_init_U", "Parent" : "182"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_1_fu_117", "Parent" : "181", "Child" : ["185"],
		"CDFG" : "Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6147", "EstimateLatencyMax" : "6147",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "hostmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "hostmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln140", "Type" : "None", "Direction" : "I"},
			{"Name" : "inter0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inter0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_140_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_1_fu_117.flow_control_loop_pipe_sequential_init_U", "Parent" : "184"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0", "Parent" : "179", "Child" : ["187"],
		"CDFG" : "StreamingDataWidthConverter_Batch_64u_192u_384u_s",
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
		"StartSource" : "181",
		"StartFifo" : "start_for_StreamingDataWidthConverter_Batch_64u_192u_384u_U0_U",
		"Port" : [
			{"Name" : "inter0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["181"], "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "grp_StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3_fu_54", "Port" : "inter0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter0_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["189"], "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "grp_StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3_fu_54", "Port" : "inter0_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["181"], "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["189"], "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c159_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.grp_StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3_fu_54", "Parent" : "186", "Child" : ["188"],
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
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.grp_StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "187"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0", "Parent" : "179", "Child" : ["190"],
		"CDFG" : "StreamingDataWidthConverter_Batch_192u_24u_128u_s",
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
		"StartSource" : "186",
		"StartFifo" : "start_for_StreamingDataWidthConverter_Batch_192u_24u_128u_U0_U",
		"Port" : [
			{"Name" : "inter0_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["186"], "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_StreamingDataWidthConverter_Batch_192u_24u_128u_Pipeline_VITIS_LOOP_268_1_fu_52", "Port" : "inter0_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter0_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["192"], "DependentChan" : "362", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_StreamingDataWidthConverter_Batch_192u_24u_128u_Pipeline_VITIS_LOOP_268_1_fu_52", "Port" : "inter0_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["186"], "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["192"], "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c158_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.grp_StreamingDataWidthConverter_Batch_192u_24u_128u_Pipeline_VITIS_LOOP_268_1_fu_52", "Parent" : "189", "Child" : ["191"],
		"CDFG" : "StreamingDataWidthConverter_Batch_192u_24u_128u_Pipeline_VITIS_LOOP_268_1",
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
			{"Name" : "inter0_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inter0_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter0_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inter0_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_268_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.grp_StreamingDataWidthConverter_Batch_192u_24u_128u_Pipeline_VITIS_LOOP_268_1_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0", "Parent" : "179", "Child" : ["193"],
		"CDFG" : "ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_s",
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
		"StartSource" : "189",
		"StartFifo" : "start_for_ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0_U",
		"Port" : [
			{"Name" : "inter0_233", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["189"], "DependentChan" : "362", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58", "Port" : "inter0_233", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "convInp_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["202"], "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58", "Port" : "convInp_i", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["189"], "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["206"], "DependentChan" : "365", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c157_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58", "Parent" : "192", "Child" : ["194", "195", "196", "197", "198", "199"],
		"CDFG" : "ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2",
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
			{"Name" : "inter0_233", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inter0_233_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "convInp_i", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "convInp_i_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_1_VITIS_LOOP_105_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58.inputBuf_U", "Parent" : "193"},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58.inputBuf_1_U", "Parent" : "193"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58.inputBuf_2_U", "Parent" : "193"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58.inputBuf_3_U", "Parent" : "193"},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58.sparsemux_9_2_24_1_1_U28", "Parent" : "193"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "193"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0", "Parent" : "179", "Child" : ["201"],
		"CDFG" : "DoCompute_Block_entry5993_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "numReps", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.mul_30s_11ns_30_2_1_U38", "Parent" : "200"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0", "Parent" : "179", "Child" : ["203"],
		"CDFG" : "Matrix_Vector_Activate_Batch_4",
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
			{"Name" : "convInp_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["192"], "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "convInp_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mvOut_m_buffer_10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["206"], "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "mvOut_m_buffer_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["200"], "DependentChan" : "367", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "p_ZL8weights0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Parent" : "202", "Child" : ["204", "205"],
		"CDFG" : "Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1",
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
			{"Name" : "convInp_5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "convInp_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mvOut_m_buffer_10", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mvOut_m_buffer_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_ZL8weights0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights0_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights0_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights0_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights0_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights0_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights0_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights0_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights0_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights0_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs0_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs0_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs0_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs0_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs0_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs0_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs0_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs0_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs0_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_122_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "204", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100.sparsemux_19_4_24_1_1_U41", "Parent" : "203"},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "203"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0", "Parent" : "179", "Child" : ["207", "209"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_300_3_proc26",
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
		"StartSource" : "202",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0_U",
		"Port" : [
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["192"], "DependentChan" : "365", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mvOut_m_buffer_10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["202"], "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc26_Pipeline_VITIS_LOOP_300_3_fu_52", "Port" : "mvOut_m_buffer_10", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "inter1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["210"], "DependentChan" : "369", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc26_Pipeline_VITIS_LOOP_300_3_fu_52", "Port" : "inter1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "numReps_c156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["210"], "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c156_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc26_Pipeline_VITIS_LOOP_300_3_fu_52", "Parent" : "206", "Child" : ["208"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_300_3_proc26_Pipeline_VITIS_LOOP_300_3",
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
			{"Name" : "mvOut_m_buffer_10", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mvOut_m_buffer_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inter1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_300_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc26_Pipeline_VITIS_LOOP_300_3_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "207"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.mul_32s_13ns_32_2_1_U116", "Parent" : "206"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0", "Parent" : "179", "Child" : ["211", "213"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_268_1_proc27",
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
		"StartSource" : "206",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0_U",
		"Port" : [
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["206"], "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wa_in_12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["214"], "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc27_Pipeline_VITIS_LOOP_268_1_fu_52", "Port" : "wa_in_12", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "inter1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["206"], "DependentChan" : "369", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc27_Pipeline_VITIS_LOOP_268_1_fu_52", "Port" : "inter1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "numReps_c155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["214"], "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc27_Pipeline_VITIS_LOOP_268_1_fu_52", "Parent" : "210", "Child" : ["212"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_268_1_proc27_Pipeline_VITIS_LOOP_268_1",
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
			{"Name" : "wa_in_12", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "wa_in_12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inter1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_268_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc27_Pipeline_VITIS_LOOP_268_1_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.mul_32s_12ns_32_2_1_U125", "Parent" : "210"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0", "Parent" : "179", "Child" : ["215", "222"],
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
		"StartSource" : "210",
		"StartFifo" : "start_for_ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0_U",
		"Port" : [
			{"Name" : "wa_in_i126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["210"], "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52", "Port" : "wa_in_i126", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "convInp_i3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["225"], "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52", "Port" : "convInp_i3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["210"], "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["229"], "DependentChan" : "374", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52", "Parent" : "214", "Child" : ["216", "217", "218", "219", "220", "221"],
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
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.inputBuf_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.inputBuf_1_U", "Parent" : "215"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.inputBuf_2_U", "Parent" : "215"},
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.inputBuf_3_U", "Parent" : "215"},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.sparsemux_9_2_32_1_1_U131", "Parent" : "215"},
	{"ID" : "221", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "215"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.mul_32ns_15ns_46_2_1_U137", "Parent" : "214"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj900EEC2ERN3hls6streamI_U0", "Parent" : "179", "Child" : ["224"],
		"CDFG" : "DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj900EEC2ERN3hls6streamI",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["200"], "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj900EEC2ERN3hls6streamI_U0.mul_30s_11ns_30_2_1_U143", "Parent" : "223"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0", "Parent" : "179", "Child" : ["226"],
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
			{"Name" : "convInp_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["214"], "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "convInp_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mvOut_m_buffer_9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["229"], "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "mvOut_m_buffer_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["223"], "DependentChan" : "375", "DependentChanDepth" : "8", "DependentChanType" : "1"},
			{"Name" : "p_ZL8weights1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_17", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_18", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_19", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_20", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_21", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_22", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_23", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_24", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_25", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_26", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_27", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_28", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_29", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_30", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_31", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_17", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_18", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_19", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_20", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_21", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_22", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_23", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_24", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_25", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_26", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_27", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_28", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_29", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_30", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_31", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Parent" : "225", "Child" : ["227", "228"],
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
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164.sparsemux_37_5_32_1_1_U145", "Parent" : "226"},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164.flow_control_loop_pipe_sequential_init_U", "Parent" : "226"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0", "Parent" : "179", "Child" : ["230", "232"],
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
		"StartSource" : "225",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0_U",
		"Port" : [
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["214"], "DependentChan" : "374", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mvOut_m_buffer_9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["225"], "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "230", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3_fu_52", "Port" : "mvOut_m_buffer_9", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "inter2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["233"], "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "230", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3_fu_52", "Port" : "inter2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "numReps_c153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["233"], "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c153_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3_fu_52", "Parent" : "229", "Child" : ["231"],
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
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "230"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.mul_32s_12ns_32_2_1_U284", "Parent" : "229"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0", "Parent" : "179", "Child" : ["234", "235", "237"],
		"CDFG" : "StreamingMaxPool_Batch_28u_2u_64u_s",
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
		"StartSource" : "229",
		"StartFifo" : "start_for_StreamingMaxPool_Batch_28u_2u_64u_U0_U",
		"Port" : [
			{"Name" : "inter2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["229"], "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "235", "SubInstance" : "grp_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4_fu_240", "Port" : "inter2", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "inter3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["239"], "DependentChan" : "379", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_85_6_fu_247", "Port" : "inter3", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["229"], "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["239"], "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c152_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_73_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state9"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_109_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.buf_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.grp_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4_fu_240", "Parent" : "233", "Child" : ["236"],
		"CDFG" : "StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58", "EstimateLatencyMax" : "58",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inter2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inter2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_3_VITIS_LOOP_75_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.grp_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4_fu_240.flow_control_loop_pipe_sequential_init_U", "Parent" : "235"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.grp_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_85_6_fu_247", "Parent" : "233", "Child" : ["238"],
		"CDFG" : "StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_85_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "inter3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inter3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.grp_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_85_6_fu_247.flow_control_loop_pipe_sequential_init_U", "Parent" : "237"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0", "Parent" : "179", "Child" : ["240", "242"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_268_1_proc329",
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
		"StartSource" : "233",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0_U",
		"Port" : [
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["233"], "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wa_in_11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["243"], "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "240", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc329_Pipeline_VITIS_LOOP_268_1_fu_52", "Port" : "wa_in_11", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "inter3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["233"], "DependentChan" : "379", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "240", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc329_Pipeline_VITIS_LOOP_268_1_fu_52", "Port" : "inter3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "numReps_c151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["243"], "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc329_Pipeline_VITIS_LOOP_268_1_fu_52", "Parent" : "239", "Child" : ["241"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_268_1_proc329_Pipeline_VITIS_LOOP_268_1",
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
			{"Name" : "wa_in_11", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "wa_in_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inter3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_268_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc329_Pipeline_VITIS_LOOP_268_1_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "240"},
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.mul_32s_10ns_32_2_1_U301", "Parent" : "239"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0", "Parent" : "179", "Child" : ["244", "251"],
		"CDFG" : "ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_s",
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
		"StartSource" : "239",
		"StartFifo" : "start_for_ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0_U",
		"Port" : [
			{"Name" : "wa_in_i822", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["239"], "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "244", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52", "Port" : "wa_in_i822", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "convInp_i10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["253"], "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "244", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52", "Port" : "convInp_i10", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["239"], "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["257"], "DependentChan" : "384", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c150_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52", "Parent" : "243", "Child" : ["245", "246", "247", "248", "249", "250"],
		"CDFG" : "ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1",
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
			{"Name" : "wa_in_i822", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wa_in_i822_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "convInp_i10", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "convInp_i10_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_1_VITIS_LOOP_105_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52.inputBuf_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52.inputBuf_1_U", "Parent" : "244"},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52.inputBuf_2_U", "Parent" : "244"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52.inputBuf_3_U", "Parent" : "244"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52.sparsemux_9_2_32_1_1_U307", "Parent" : "244"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "244"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.mul_32ns_13ns_44_2_1_U312", "Parent" : "243"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0", "Parent" : "179",
		"CDFG" : "DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "numReps", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0", "Parent" : "179", "Child" : ["254"],
		"CDFG" : "Matrix_Vector_Activate_Batch_1",
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
			{"Name" : "convInp_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["243"], "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "convInp_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mvOut_m_buffer_8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["257"], "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "mvOut_m_buffer_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["252"], "DependentChan" : "386", "DependentChanDepth" : "14", "DependentChanType" : "1"},
			{"Name" : "p_ZL8weights2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Parent" : "253", "Child" : ["255", "256"],
		"CDFG" : "Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1",
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
			{"Name" : "convInp_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "convInp_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mvOut_m_buffer_8", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mvOut_m_buffer_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_ZL8weights2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights2_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights2_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights2_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights2_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights2_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights2_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights2_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights2_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights2_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs2_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs2_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs2_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs2_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs2_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs2_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs2_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs2_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs2_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_122_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100.sparsemux_37_5_32_1_1_U319", "Parent" : "254"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "254"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0", "Parent" : "179", "Child" : ["258"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_300_3_proc4",
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
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["243"], "DependentChan" : "384", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["252"], "DependentChan" : "385", "DependentChanDepth" : "15", "DependentChanType" : "1"},
			{"Name" : "mvOut_m_buffer_8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["253"], "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "258", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc4_Pipeline_VITIS_LOOP_300_3_fu_62", "Port" : "mvOut_m_buffer_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["261"], "DependentChan" : "388", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "258", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc4_Pipeline_VITIS_LOOP_300_3_fu_62", "Port" : "inter4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps_c149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["264"], "DependentChan" : "389", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc4_Pipeline_VITIS_LOOP_300_3_fu_62", "Parent" : "257", "Child" : ["259"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_300_3_proc4_Pipeline_VITIS_LOOP_300_3",
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
			{"Name" : "mvOut_m_buffer_8", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mvOut_m_buffer_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inter4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_300_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc4_Pipeline_VITIS_LOOP_300_3_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "258"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0", "Parent" : "179",
		"CDFG" : "DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "numReps", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0", "Parent" : "179", "Child" : ["262"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_268_1_proc6",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["260"], "DependentChan" : "390", "DependentChanDepth" : "16", "DependentChanType" : "1"},
			{"Name" : "wa_in_10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["264"], "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "262", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc6_Pipeline_VITIS_LOOP_268_1_fu_50", "Port" : "wa_in_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["257"], "DependentChan" : "388", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "262", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc6_Pipeline_VITIS_LOOP_268_1_fu_50", "Port" : "inter4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "totalIters_11_loc_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["304"], "DependentChan" : "394", "DependentChanDepth" : "9", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_11_loc_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc6_Pipeline_VITIS_LOOP_268_1_fu_50", "Parent" : "261", "Child" : ["263"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_268_1_proc6_Pipeline_VITIS_LOOP_268_1",
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
			{"Name" : "wa_in_10", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "wa_in_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inter4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_268_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc6_Pipeline_VITIS_LOOP_268_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0", "Parent" : "179", "Child" : ["265", "272"],
		"CDFG" : "ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_s",
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
		"StartSource" : "257",
		"StartFifo" : "start_for_ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0_U",
		"Port" : [
			{"Name" : "wa_in_i1518", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["261"], "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52", "Port" : "wa_in_i1518", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "convInp_i17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["275"], "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52", "Port" : "convInp_i17", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["257"], "DependentChan" : "389", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["279"], "DependentChan" : "396", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52", "Parent" : "264", "Child" : ["266", "267", "268", "269", "270", "271"],
		"CDFG" : "ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5",
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
			{"Name" : "wa_in_i1518", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wa_in_i1518_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "convInp_i17", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "convInp_i17_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_1_VITIS_LOOP_105_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52.inputBuf_U", "Parent" : "265"},
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52.inputBuf_1_U", "Parent" : "265"},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52.inputBuf_2_U", "Parent" : "265"},
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52.inputBuf_3_U", "Parent" : "265"},
	{"ID" : "270", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52.sparsemux_9_2_32_1_1_U406", "Parent" : "265"},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "265"},
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.mul_32ns_13ns_44_2_1_U411", "Parent" : "264"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0", "Parent" : "179", "Child" : ["274"],
		"CDFG" : "DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "numReps", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.mul_32s_8ns_32_2_1_U416", "Parent" : "273"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0", "Parent" : "179", "Child" : ["276"],
		"CDFG" : "Matrix_Vector_Activate_Batch_8",
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
			{"Name" : "convInp_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["264"], "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "convInp_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mvOut_m_buffer_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["279"], "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "mvOut_m_buffer_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["273"], "DependentChan" : "398", "DependentChanDepth" : "18", "DependentChanType" : "1"},
			{"Name" : "p_ZL8weights3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Parent" : "275", "Child" : ["277", "278"],
		"CDFG" : "Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1",
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
			{"Name" : "convInp_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "convInp_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mvOut_m_buffer_7", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mvOut_m_buffer_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_ZL8weights3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights3_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights3_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights3_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights3_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights3_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights3_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights3_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights3_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights3_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights3_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8weights3_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs3_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs3_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs3_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs3_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs3_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs3_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs3_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs3_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs3_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs3_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL8threshs3_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_122_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100.sparsemux_73_6_32_1_1_U419", "Parent" : "276"},
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "276"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0", "Parent" : "179", "Child" : ["280", "282"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_300_3_proc830",
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
		"StartSource" : "275",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0_U",
		"Port" : [
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["264"], "DependentChan" : "396", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mvOut_m_buffer_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["275"], "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "280", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc830_Pipeline_VITIS_LOOP_300_3_fu_52", "Port" : "mvOut_m_buffer_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "inter5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["283"], "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "280", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc830_Pipeline_VITIS_LOOP_300_3_fu_52", "Port" : "inter5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "numReps_c147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["283"], "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c147_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc830_Pipeline_VITIS_LOOP_300_3_fu_52", "Parent" : "279", "Child" : ["281"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_300_3_proc830_Pipeline_VITIS_LOOP_300_3",
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
			{"Name" : "mvOut_m_buffer_7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mvOut_m_buffer_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter5", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inter5_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_300_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc830_Pipeline_VITIS_LOOP_300_3_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.mul_32s_11ns_32_2_1_U494", "Parent" : "279"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0", "Parent" : "179", "Child" : ["284", "285", "287"],
		"CDFG" : "StreamingMaxPool_Batch_10u_2u_128u_s",
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
		"StartSource" : "279",
		"StartFifo" : "start_for_StreamingMaxPool_Batch_10u_2u_128u_U0_U",
		"Port" : [
			{"Name" : "inter5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["279"], "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "285", "SubInstance" : "grp_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4_fu_152", "Port" : "inter5", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "inter6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["289"], "DependentChan" : "402", "DependentChanDepth" : "81", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "grp_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_85_6_fu_159", "Port" : "inter6", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["279"], "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["291"], "DependentChan" : "403", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c146_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_73_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_109_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0.buf_U", "Parent" : "283"},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0.grp_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4_fu_152", "Parent" : "283", "Child" : ["286"],
		"CDFG" : "StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inter5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inter5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_3_VITIS_LOOP_75_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0.grp_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "285"},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0.grp_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_85_6_fu_159", "Parent" : "283", "Child" : ["288"],
		"CDFG" : "StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_85_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "inter6", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inter6_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0.grp_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_85_6_fu_159.flow_control_loop_pipe_sequential_init_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0", "Parent" : "179", "Child" : ["290"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_268_1_proc9",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["273"], "DependentChan" : "397", "DependentChanDepth" : "21", "DependentChanType" : "1"},
			{"Name" : "wa_in_9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["291"], "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "wa_in_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["283"], "DependentChan" : "402", "DependentChanDepth" : "81", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "inter6_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_268_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0.flow_control_loop_pipe_U", "Parent" : "289"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0", "Parent" : "179", "Child" : ["292"],
		"CDFG" : "ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_s",
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
		"StartSource" : "289",
		"StartFifo" : "start_for_ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0_U",
		"Port" : [
			{"Name" : "wa_in_i2214", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["289"], "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "292", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58", "Port" : "wa_in_i2214", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "convInp_i24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["300"], "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "292", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58", "Port" : "convInp_i24", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["283"], "DependentChan" : "403", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["310"], "DependentChan" : "406", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "292", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58", "Parent" : "291", "Child" : ["293", "294", "295", "296", "297", "298"],
		"CDFG" : "ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4",
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
			{"Name" : "wa_in_i2214", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wa_in_i2214_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "convInp_i24", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "convInp_i24_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_1_VITIS_LOOP_105_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58.inputBuf_U", "Parent" : "292"},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58.inputBuf_1_U", "Parent" : "292"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58.inputBuf_2_U", "Parent" : "292"},
	{"ID" : "296", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58.inputBuf_3_U", "Parent" : "292"},
	{"ID" : "297", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58.sparsemux_9_2_32_1_1_U512", "Parent" : "292"},
	{"ID" : "298", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "292"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0", "Parent" : "179",
		"CDFG" : "DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "numReps", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0", "Parent" : "179", "Child" : ["301"],
		"CDFG" : "Matrix_Vector_Activate_Batch_7",
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
			{"Name" : "convInp_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["291"], "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "301", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "convInp_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mvOut_m_buffer_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["304"], "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "301", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "mvOut_m_buffer_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["299"], "DependentChan" : "408", "DependentChanDepth" : "23", "DependentChanType" : "1"},
			{"Name" : "p_ZL8weights4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "301", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "p_ZL8weights4_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "301", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "p_ZL8weights4_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "301", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "p_ZL8weights4_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "301", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "p_ZL8weights4_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "301", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "p_ZL8threshs4_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "301", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "p_ZL8threshs4_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "301", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "p_ZL8threshs4_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "301", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "p_ZL8threshs4_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Parent" : "300", "Child" : ["302", "303"],
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
	{"ID" : "302", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52.sparsemux_73_6_32_1_1_U522", "Parent" : "301"},
	{"ID" : "303", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "301"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0", "Parent" : "179", "Child" : ["305"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_300_3_proc11",
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
		"StartSource" : "300",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0_U",
		"Port" : [
			{"Name" : "totalIters_11_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["261"], "DependentChan" : "394", "DependentChanDepth" : "9", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_11_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mvOut_m_buffer_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["300"], "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc11_Pipeline_VITIS_LOOP_300_3_fu_38", "Port" : "mvOut_m_buffer_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["307"], "DependentChan" : "410", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc11_Pipeline_VITIS_LOOP_300_3_fu_38", "Port" : "inter7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc11_Pipeline_VITIS_LOOP_300_3_fu_38", "Parent" : "304", "Child" : ["306"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_300_3_proc11_Pipeline_VITIS_LOOP_300_3",
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
			{"Name" : "totalIters_11_loc_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "mvOut_m_buffer_6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mvOut_m_buffer_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter7", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inter7_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_300_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "306", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc11_Pipeline_VITIS_LOOP_300_3_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0", "Parent" : "179", "Child" : ["308"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_268_1_proc13",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["260"], "DependentChan" : "391", "DependentChanDepth" : "25", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["299"], "DependentChan" : "407", "DependentChanDepth" : "25", "DependentChanType" : "1"},
			{"Name" : "wa_in_8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["310"], "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "308", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc13_Pipeline_VITIS_LOOP_268_1_fu_58", "Port" : "wa_in_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["304"], "DependentChan" : "410", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "308", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc13_Pipeline_VITIS_LOOP_268_1_fu_58", "Port" : "inter7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "totalIters_10_loc_c136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["325"], "DependentChan" : "412", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_10_loc_c136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc13_Pipeline_VITIS_LOOP_268_1_fu_58", "Parent" : "307", "Child" : ["309"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_268_1_proc13_Pipeline_VITIS_LOOP_268_1",
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
			{"Name" : "wa_in_8", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "wa_in_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inter7_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_268_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "309", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc13_Pipeline_VITIS_LOOP_268_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "308"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0", "Parent" : "179", "Child" : ["311"],
		"CDFG" : "ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_s",
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
		"StartSource" : "307",
		"StartFifo" : "start_for_ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0_U",
		"Port" : [
			{"Name" : "wa_in_i2910", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["307"], "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58", "Port" : "wa_in_i2910", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "convInp_i31", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["318"], "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58", "Port" : "convInp_i31", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["291"], "DependentChan" : "406", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["318"], "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c144_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58", "Parent" : "310", "Child" : ["312", "313", "314", "315", "316", "317"],
		"CDFG" : "ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3",
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
			{"Name" : "wa_in_i2910", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wa_in_i2910_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "convInp_i31", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "convInp_i31_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_1_VITIS_LOOP_105_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "312", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58.inputBuf_U", "Parent" : "311"},
	{"ID" : "313", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58.inputBuf_1_U", "Parent" : "311"},
	{"ID" : "314", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58.inputBuf_2_U", "Parent" : "311"},
	{"ID" : "315", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58.inputBuf_3_U", "Parent" : "311"},
	{"ID" : "316", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58.sparsemux_9_2_32_1_1_U559", "Parent" : "311"},
	{"ID" : "317", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "311"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0", "Parent" : "179", "Child" : ["319"],
		"CDFG" : "Matrix_Vector_Activate_Batch_6",
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
			{"Name" : "convInp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["310"], "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "319", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58", "Port" : "convInp", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mvOut_m_buffer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["322"], "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "319", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58", "Port" : "mvOut_m_buffer", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["310"], "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["322"], "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "319", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58", "Port" : "weights5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "threshs5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "319", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58", "Port" : "threshs5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58", "Parent" : "318", "Child" : ["320", "321"],
		"CDFG" : "Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1",
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
			{"Name" : "convInp", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "convInp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mvOut_m_buffer", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mvOut_m_buffer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "threshs5", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_122_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "320", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58.sparsemux_145_7_32_1_1_U568", "Parent" : "319"},
	{"ID" : "321", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "319"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0", "Parent" : "179", "Child" : ["323"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_300_3_proc1531",
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
		"StartSource" : "318",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0_U",
		"Port" : [
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["318"], "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mvOut_m_buffer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["318"], "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "323", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_Pipeline_VITIS_LOOP_300_3_fu_52", "Port" : "mvOut_m_buffer", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["325"], "DependentChan" : "417", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "323", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_Pipeline_VITIS_LOOP_300_3_fu_52", "Port" : "inter8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps_c142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["328"], "DependentChan" : "418", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_Pipeline_VITIS_LOOP_300_3_fu_52", "Parent" : "322", "Child" : ["324"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_300_3_proc1531_Pipeline_VITIS_LOOP_300_3",
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
			{"Name" : "mvOut_m_buffer", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mvOut_m_buffer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter8", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inter8_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_300_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "324", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_Pipeline_VITIS_LOOP_300_3_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "323"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0", "Parent" : "179", "Child" : ["326"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_268_1_proc16",
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
		"StartSource" : "307",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0_U",
		"Port" : [
			{"Name" : "totalIters_10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["307"], "DependentChan" : "412", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_10_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wa_in_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["328"], "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "326", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc16_Pipeline_VITIS_LOOP_268_1_fu_50", "Port" : "wa_in_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["322"], "DependentChan" : "417", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "326", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc16_Pipeline_VITIS_LOOP_268_1_fu_50", "Port" : "inter8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "totalIters_10_loc_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["335"], "DependentChan" : "420", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_10_loc_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc16_Pipeline_VITIS_LOOP_268_1_fu_50", "Parent" : "325", "Child" : ["327"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_268_1_proc16_Pipeline_VITIS_LOOP_268_1",
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
			{"Name" : "totalIters_10_loc_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "wa_in_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "wa_in_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter8", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inter8_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_268_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "327", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc16_Pipeline_VITIS_LOOP_268_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "326"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0", "Parent" : "179", "Child" : ["329"],
		"CDFG" : "Matrix_Vector_Activate_Batch_5",
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
			{"Name" : "wa_in_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["325"], "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "329", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "wa_in_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "wa_out_m_buffer_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["332"], "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "329", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "wa_out_m_buffer_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["322"], "DependentChan" : "418", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["338"], "DependentChan" : "422", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "329", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "weights6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "threshs6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "329", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "threshs6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56", "Parent" : "328", "Child" : ["330", "331"],
		"CDFG" : "Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1",
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
			{"Name" : "wa_in_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wa_in_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wa_out_m_buffer_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "wa_out_m_buffer_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "threshs6", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_122_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "330", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56.sparsemux_129_6_4_1_1_U595", "Parent" : "329"},
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "329"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0", "Parent" : "179", "Child" : ["333"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["260"], "DependentChan" : "392", "DependentChanDepth" : "31", "DependentChanType" : "1"},
			{"Name" : "wa_out_m_buffer_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["328"], "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3_fu_50", "Port" : "wa_out_m_buffer_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["335"], "DependentChan" : "423", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3_fu_50", "Port" : "inter9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "totalIters_16_loc_c138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["342"], "DependentChan" : "424", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_16_loc_c138_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3_fu_50", "Parent" : "332", "Child" : ["334"],
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
	{"ID" : "334", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "333"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0", "Parent" : "179", "Child" : ["336"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_268_1_proc20",
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
		"StartSource" : "332",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0_U",
		"Port" : [
			{"Name" : "totalIters_10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["325"], "DependentChan" : "420", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_10_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wa_in_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["338"], "DependentChan" : "425", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "336", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc20_Pipeline_VITIS_LOOP_268_1_fu_38", "Port" : "wa_in_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["332"], "DependentChan" : "423", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "336", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc20_Pipeline_VITIS_LOOP_268_1_fu_38", "Port" : "inter9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc20_Pipeline_VITIS_LOOP_268_1_fu_38", "Parent" : "335", "Child" : ["337"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_268_1_proc20_Pipeline_VITIS_LOOP_268_1",
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
			{"Name" : "totalIters_10_loc_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "wa_in_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "wa_in_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter9", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inter9_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_268_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "337", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc20_Pipeline_VITIS_LOOP_268_1_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "336"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0", "Parent" : "179", "Child" : ["339"],
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
			{"Name" : "wa_in_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["335"], "DependentChan" : "425", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "wa_in_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "wa_out_m_buffer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["342"], "DependentChan" : "426", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "wa_out_m_buffer", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["328"], "DependentChan" : "422", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["348"], "DependentChan" : "427", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "weights7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "threshs7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "threshs7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "339", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56", "Parent" : "338", "Child" : ["340", "341"],
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
	{"ID" : "340", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56.sparsemux_129_6_8_1_1_U621", "Parent" : "339"},
	{"ID" : "341", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "339"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0", "Parent" : "179", "Child" : ["343"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_300_3_proc22",
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
		"StartSource" : "338",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0_U",
		"Port" : [
			{"Name" : "totalIters_16_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["332"], "DependentChan" : "424", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_16_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wa_out_m_buffer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["338"], "DependentChan" : "426", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "343", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc22_Pipeline_VITIS_LOOP_300_3_fu_50", "Port" : "wa_out_m_buffer", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["345"], "DependentChan" : "428", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "343", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc22_Pipeline_VITIS_LOOP_300_3_fu_50", "Port" : "inter10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "totalIters_16_loc_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["345"], "DependentChan" : "429", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_16_loc_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "343", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc22_Pipeline_VITIS_LOOP_300_3_fu_50", "Parent" : "342", "Child" : ["344"],
		"CDFG" : "DoCompute_Loop_VITIS_LOOP_300_3_proc22_Pipeline_VITIS_LOOP_300_3",
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
			{"Name" : "wa_out_m_buffer", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wa_out_m_buffer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter10", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inter10_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_300_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "344", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc22_Pipeline_VITIS_LOOP_300_3_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "343"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0", "Parent" : "179", "Child" : ["346"],
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
		"StartSource" : "342",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0_U",
		"Port" : [
			{"Name" : "totalIters_16_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["342"], "DependentChan" : "429", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_16_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wa_in", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["348"], "DependentChan" : "430", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "346", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1_fu_38", "Port" : "wa_in", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["342"], "DependentChan" : "428", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "346", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1_fu_38", "Port" : "inter10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "346", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1_fu_38", "Parent" : "345", "Child" : ["347"],
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
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "346"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0", "Parent" : "179", "Child" : ["349"],
		"CDFG" : "Matrix_Vector_Activate_Batch_2",
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
			{"Name" : "wa_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["345"], "DependentChan" : "430", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "349", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60", "Port" : "wa_in", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "memOutStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["352"], "DependentChan" : "431", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "349", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60", "Port" : "memOutStrm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["338"], "DependentChan" : "427", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["352"], "DependentChan" : "432", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_ZL8weights8_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "349", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60", "Port" : "p_ZL8weights8_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights8_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "349", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60", "Port" : "p_ZL8weights8_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights8_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "349", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60", "Port" : "p_ZL8weights8_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights8_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "349", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60", "Port" : "p_ZL8weights8_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60", "Parent" : "348", "Child" : ["350", "351"],
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
	{"ID" : "350", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60.sparsemux_1025_9_1_1_1_U647", "Parent" : "349"},
	{"ID" : "351", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "349"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0", "Parent" : "179", "Child" : ["353", "355"],
		"CDFG" : "Stream2Mem_Batch_64u_128u_s",
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
		"StartSource" : "180",
		"StartFifo" : "start_for_Stream2Mem_Batch_64u_128u_U0_U",
		"Port" : [
			{"Name" : "memOutStrm34", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["348"], "DependentChan" : "431", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_15_fu_93", "Port" : "memOutStrm34", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "355", "SubInstance" : "grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_1_fu_102", "Port" : "memOutStrm34", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "hostmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "hostmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "hostmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_15_fu_93", "Port" : "hostmem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "355", "SubInstance" : "grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_1_fu_102", "Port" : "hostmem", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "out_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["180"], "DependentChan" : "357", "DependentChanDepth" : "38", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["348"], "DependentChan" : "432", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "353", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0.grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_15_fu_93", "Parent" : "352", "Child" : ["354"],
		"CDFG" : "Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "hostmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "hostmem_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln153", "Type" : "None", "Direction" : "I"},
			{"Name" : "memOutStrm34", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "memOutStrm34_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_153_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "354", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0.grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_15_fu_93.flow_control_loop_pipe_sequential_init_U", "Parent" : "353"},
	{"ID" : "355", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0.grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_1_fu_102", "Parent" : "352", "Child" : ["356"],
		"CDFG" : "Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "hostmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "hostmem_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln153", "Type" : "None", "Direction" : "I"},
			{"Name" : "memOutStrm34", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "memOutStrm34_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_153_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "356", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0.grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_1_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "355"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.out_c_U", "Parent" : "179"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.inter0_U", "Parent" : "179"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c160_U", "Parent" : "179"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.inter0_1_U", "Parent" : "179"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c159_U", "Parent" : "179"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.inter0_2_U", "Parent" : "179"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c158_U", "Parent" : "179"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.convInp_5_U", "Parent" : "179"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c157_U", "Parent" : "179"},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.p_loc_channel_U", "Parent" : "179"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.mul_ln121_cast_loc_channel_U", "Parent" : "179"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.mvOut_m_buffer_5_U", "Parent" : "179"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.inter1_U", "Parent" : "179"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c156_U", "Parent" : "179"},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.wa_in_7_U", "Parent" : "179"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c155_U", "Parent" : "179"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.convInp_4_U", "Parent" : "179"},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c154_U", "Parent" : "179"},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.mul_ln121_1_cast_loc_channel_U", "Parent" : "179"},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.mvOut_m_buffer_4_U", "Parent" : "179"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.inter2_U", "Parent" : "179"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c153_U", "Parent" : "179"},
	{"ID" : "379", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.inter3_U", "Parent" : "179"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c152_U", "Parent" : "179"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.wa_in_6_U", "Parent" : "179"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c151_U", "Parent" : "179"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.convInp_3_U", "Parent" : "179"},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c150_U", "Parent" : "179"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.shl_ln121_loc_channel_U", "Parent" : "179"},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.add_ln121_loc_channel_U", "Parent" : "179"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.mvOut_m_buffer_3_U", "Parent" : "179"},
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.inter4_U", "Parent" : "179"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c149_U", "Parent" : "179"},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.totalIters_11_loc_c135_channel_U", "Parent" : "179"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.totalIters_10_loc_c137_channel_U", "Parent" : "179"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.totalIters_16_loc_c139_channel_U", "Parent" : "179"},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.wa_in_5_U", "Parent" : "179"},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.totalIters_11_loc_c_U", "Parent" : "179"},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.convInp_2_U", "Parent" : "179"},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c148_U", "Parent" : "179"},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.totalIters_13_loc_channel_U", "Parent" : "179"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.totalIters_13_cast_loc_channel_U", "Parent" : "179"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.mvOut_m_buffer_2_U", "Parent" : "179"},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.inter5_U", "Parent" : "179"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c147_U", "Parent" : "179"},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.inter6_U", "Parent" : "179"},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c146_U", "Parent" : "179"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.wa_in_4_U", "Parent" : "179"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.convInp_1_U", "Parent" : "179"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c145_U", "Parent" : "179"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.shl_ln121_2_loc_channel_U", "Parent" : "179"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.add_ln121_1_loc_channel_U", "Parent" : "179"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.mvOut_m_buffer_1_U", "Parent" : "179"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.inter7_U", "Parent" : "179"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.wa_in_3_U", "Parent" : "179"},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.totalIters_10_loc_c136_U", "Parent" : "179"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.convInp_U", "Parent" : "179"},
	{"ID" : "414", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c144_U", "Parent" : "179"},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.mvOut_m_buffer_U", "Parent" : "179"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c143_U", "Parent" : "179"},
	{"ID" : "417", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.inter8_U", "Parent" : "179"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c142_U", "Parent" : "179"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.wa_in_2_U", "Parent" : "179"},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.totalIters_10_loc_c_U", "Parent" : "179"},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.wa_out_m_buffer_1_U", "Parent" : "179"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c141_U", "Parent" : "179"},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.inter9_U", "Parent" : "179"},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.totalIters_16_loc_c138_U", "Parent" : "179"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.wa_in_1_U", "Parent" : "179"},
	{"ID" : "426", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.wa_out_m_buffer_U", "Parent" : "179"},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c140_U", "Parent" : "179"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.inter10_U", "Parent" : "179"},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.totalIters_16_loc_c_U", "Parent" : "179"},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.wa_in_U", "Parent" : "179"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.memOutStrm_U", "Parent" : "179"},
	{"ID" : "432", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.numReps_c_U", "Parent" : "179"},
	{"ID" : "433", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_Stream2Mem_Batch_64u_128u_U0_U", "Parent" : "179"},
	{"ID" : "434", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_64u_192u_384u_U0_U", "Parent" : "179"},
	{"ID" : "435", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_192u_24u_128u_U0_U", "Parent" : "179"},
	{"ID" : "436", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0_U", "Parent" : "179"},
	{"ID" : "437", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0_U", "Parent" : "179"},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0_U", "Parent" : "179"},
	{"ID" : "439", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0_U", "Parent" : "179"},
	{"ID" : "440", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0_U", "Parent" : "179"},
	{"ID" : "441", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_28u_2u_64u_U0_U", "Parent" : "179"},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0_U", "Parent" : "179"},
	{"ID" : "443", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0_U", "Parent" : "179"},
	{"ID" : "444", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0_U", "Parent" : "179"},
	{"ID" : "445", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0_U", "Parent" : "179"},
	{"ID" : "446", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_10u_2u_128u_U0_U", "Parent" : "179"},
	{"ID" : "447", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0_U", "Parent" : "179"},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0_U", "Parent" : "179"},
	{"ID" : "449", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0_U", "Parent" : "179"},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0_U", "Parent" : "179"},
	{"ID" : "451", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0_U", "Parent" : "179"},
	{"ID" : "452", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0_U", "Parent" : "179"},
	{"ID" : "453", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0_U", "Parent" : "179"},
	{"ID" : "454", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0_U", "Parent" : "179"},
	{"ID" : "455", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "456", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hostmem_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	BlackBoxJam {
		hostmem {Type IO LastRead 9 FirstWrite -1}
		in_r {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}
		doInit {Type I LastRead 0 FirstWrite -1}
		targetLayer {Type I LastRead 0 FirstWrite -1}
		targetMem {Type I LastRead 0 FirstWrite -1}
		targetInd {Type I LastRead 0 FirstWrite -1}
		targetThresh {Type I LastRead -1 FirstWrite -1}
		val_r {Type I LastRead 0 FirstWrite -1}
		numReps {Type I LastRead 0 FirstWrite -1}
		p_ZL8weights0_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights0_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights0_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights0_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights0_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights0_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights0_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights0_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights0_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights0_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights0_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights0_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights0_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights0_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights0_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights0_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs0_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs0_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs0_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs0_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs0_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs0_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs0_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs0_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs0_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs0_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs0_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs0_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs0_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs0_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs0_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs0_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_28 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_29 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights1_31 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_28 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_29 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs1_31 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights2_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights2_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights2_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights2_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights2_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights2_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights2_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights2_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights2_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights2_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights2_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights2_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights2_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights2_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights2_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights2_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs2_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs2_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs2_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs2_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs2_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs2_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs2_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs2_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs2_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs2_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs2_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs2_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs2_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs2_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs2_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs2_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights3_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights3_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights3_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights3_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights3_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights3_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights3_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights3_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights3_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights3_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights3_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights3_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights3_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights3_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights3_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights3_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs3_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs3_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs3_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs3_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs3_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs3_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs3_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs3_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs3_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs3_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs3_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs3_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs3_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs3_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs3_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs3_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights4_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights4_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights4_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights4_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs4_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs4_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs4_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8threshs4_3 {Type IO LastRead -1 FirstWrite -1}
		weights5 {Type IO LastRead -1 FirstWrite -1}
		threshs5 {Type IO LastRead -1 FirstWrite -1}
		weights6 {Type IO LastRead -1 FirstWrite -1}
		threshs6 {Type IO LastRead -1 FirstWrite -1}
		weights7 {Type IO LastRead -1 FirstWrite -1}
		threshs7 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights8_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights8_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights8_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL8weights8_3 {Type IO LastRead -1 FirstWrite -1}}
	DoCompute {
		hostmem {Type IO LastRead 9 FirstWrite -1}
		in_r {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 71 FirstWrite -1}
		numReps {Type I LastRead 0 FirstWrite -1}
		p_ZL8weights0_0 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_1 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_2 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_3 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_4 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_5 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_6 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_7 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_8 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_9 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_10 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_11 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_12 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_13 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_14 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_15 {Type I LastRead 2 FirstWrite -1}
		p_ZL8threshs0_0 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_1 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_2 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_3 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_4 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_5 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_6 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_7 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_8 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_9 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_10 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_11 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_12 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_13 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_14 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_15 {Type I LastRead 3 FirstWrite -1}
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
		p_ZL8threshs1_31 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_4 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_5 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_6 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_7 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_8 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_9 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_10 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_11 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_12 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_13 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_14 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_15 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_4 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_5 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_6 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_7 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_8 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_9 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_10 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_11 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_12 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_13 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_14 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_15 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_4 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_5 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_6 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_7 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_8 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_9 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_10 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_11 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_12 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_13 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_14 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_15 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_4 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_5 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_6 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_7 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_8 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_9 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_10 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_11 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_12 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_13 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_14 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_15 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights4_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights4_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights4_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights4_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs4_0 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs4_1 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs4_2 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs4_3 {Type I LastRead 3 FirstWrite -1}
		weights5 {Type I LastRead 1 FirstWrite -1}
		threshs5 {Type I LastRead 3 FirstWrite -1}
		weights6 {Type I LastRead 2 FirstWrite -1}
		threshs6 {Type I LastRead 3 FirstWrite -1}
		weights7 {Type I LastRead 2 FirstWrite -1}
		threshs7 {Type I LastRead 3 FirstWrite -1}
		p_ZL8weights8_0 {Type I LastRead 3 FirstWrite -1}
		p_ZL8weights8_1 {Type I LastRead 3 FirstWrite -1}
		p_ZL8weights8_2 {Type I LastRead 3 FirstWrite -1}
		p_ZL8weights8_3 {Type I LastRead 3 FirstWrite -1}}
	entry_proc {
		out_r {Type I LastRead 0 FirstWrite -1}
		out_c {Type O LastRead -1 FirstWrite 0}}
	Mem2Stream_Batch_64u_3072u_s {
		hostmem {Type I LastRead 3 FirstWrite -1}
		in_r {Type I LastRead 0 FirstWrite -1}
		inter0 {Type O LastRead -1 FirstWrite 2}
		numReps {Type I LastRead 0 FirstWrite -1}
		numReps_c160 {Type O LastRead -1 FirstWrite 0}}
	Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_16 {
		hostmem {Type I LastRead 1 FirstWrite -1}
		sext_ln140 {Type I LastRead 0 FirstWrite -1}
		inter0 {Type O LastRead -1 FirstWrite 2}}
	Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_1 {
		hostmem {Type I LastRead 1 FirstWrite -1}
		sext_ln140 {Type I LastRead 0 FirstWrite -1}
		inter0 {Type O LastRead -1 FirstWrite 2}}
	StreamingDataWidthConverter_Batch_64u_192u_384u_s {
		inter0 {Type I LastRead 2 FirstWrite -1}
		inter0_1 {Type O LastRead -1 FirstWrite 2}
		numReps {Type I LastRead 0 FirstWrite -1}
		numReps_c159 {Type O LastRead -1 FirstWrite 0}}
	StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3 {
		totalIters {Type I LastRead 0 FirstWrite -1}
		inter0 {Type I LastRead 2 FirstWrite -1}
		inter0_1 {Type O LastRead -1 FirstWrite 2}}
	StreamingDataWidthConverter_Batch_192u_24u_128u_s {
		inter0_1 {Type I LastRead 2 FirstWrite -1}
		inter0_2 {Type O LastRead -1 FirstWrite 3}
		numReps {Type I LastRead 0 FirstWrite -1}
		numReps_c158 {Type O LastRead -1 FirstWrite 0}}
	StreamingDataWidthConverter_Batch_192u_24u_128u_Pipeline_VITIS_LOOP_268_1 {
		empty {Type I LastRead 0 FirstWrite -1}
		inter0_2 {Type O LastRead -1 FirstWrite 3}
		inter0_1 {Type I LastRead 2 FirstWrite -1}}
	ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_s {
		inter0_233 {Type I LastRead 3 FirstWrite -1}
		convInp_i {Type O LastRead -1 FirstWrite 4}
		numReps {Type I LastRead 0 FirstWrite -1}
		numReps_c157 {Type O LastRead -1 FirstWrite 0}}
	ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2 {
		bound {Type I LastRead 0 FirstWrite -1}
		inter0_233 {Type I LastRead 3 FirstWrite -1}
		convInp_i {Type O LastRead -1 FirstWrite 4}}
	DoCompute_Block_entry5993_proc {
		numReps {Type I LastRead 0 FirstWrite -1}}
	Matrix_Vector_Activate_Batch_4 {
		convInp_5 {Type I LastRead 2 FirstWrite -1}
		mvOut_m_buffer_10 {Type O LastRead -1 FirstWrite 5}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_ZL8weights0_0 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_1 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_2 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_3 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_4 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_5 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_6 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_7 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_8 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_9 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_10 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_11 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_12 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_13 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_14 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_15 {Type I LastRead 2 FirstWrite -1}
		p_ZL8threshs0_0 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_1 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_2 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_3 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_4 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_5 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_6 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_7 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_8 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_9 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_10 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_11 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_12 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_13 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_14 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_15 {Type I LastRead 3 FirstWrite -1}}
	Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1 {
		mul_i {Type I LastRead 0 FirstWrite -1}
		convInp_5 {Type I LastRead 2 FirstWrite -1}
		mvOut_m_buffer_10 {Type O LastRead -1 FirstWrite 5}
		p_ZL8weights0_0 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_1 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_2 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_3 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_4 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_5 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_6 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_7 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_8 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_9 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_10 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_11 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_12 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_13 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_14 {Type I LastRead 2 FirstWrite -1}
		p_ZL8weights0_15 {Type I LastRead 2 FirstWrite -1}
		p_ZL8threshs0_0 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_1 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_2 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_3 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_4 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_5 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_6 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_7 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_8 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_9 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_10 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_11 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_12 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_13 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_14 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs0_15 {Type I LastRead 3 FirstWrite -1}}
	DoCompute_Loop_VITIS_LOOP_300_3_proc26 {
		numReps {Type I LastRead 0 FirstWrite -1}
		mvOut_m_buffer_10 {Type I LastRead 2 FirstWrite -1}
		inter1 {Type O LastRead -1 FirstWrite 2}
		numReps_c156 {Type O LastRead -1 FirstWrite 0}}
	DoCompute_Loop_VITIS_LOOP_300_3_proc26_Pipeline_VITIS_LOOP_300_3 {
		totalIters {Type I LastRead 0 FirstWrite -1}
		mvOut_m_buffer_10 {Type I LastRead 2 FirstWrite -1}
		inter1 {Type O LastRead -1 FirstWrite 2}}
	DoCompute_Loop_VITIS_LOOP_268_1_proc27 {
		numReps {Type I LastRead 0 FirstWrite -1}
		wa_in_12 {Type O LastRead -1 FirstWrite 3}
		inter1 {Type I LastRead 2 FirstWrite -1}
		numReps_c155 {Type O LastRead -1 FirstWrite 0}}
	DoCompute_Loop_VITIS_LOOP_268_1_proc27_Pipeline_VITIS_LOOP_268_1 {
		totalIters {Type I LastRead 0 FirstWrite -1}
		wa_in_12 {Type O LastRead -1 FirstWrite 3}
		inter1 {Type I LastRead 2 FirstWrite -1}}
	ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_s {
		wa_in_i126 {Type I LastRead 3 FirstWrite -1}
		convInp_i3 {Type O LastRead -1 FirstWrite 4}
		numReps {Type I LastRead 0 FirstWrite -1}
		numReps_c154 {Type O LastRead -1 FirstWrite 0}}
	ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2 {
		bound {Type I LastRead 0 FirstWrite -1}
		wa_in_i126 {Type I LastRead 3 FirstWrite -1}
		convInp_i3 {Type O LastRead -1 FirstWrite 4}}
	DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj900EEC2ERN3hls6streamI {
		p_read {Type I LastRead 0 FirstWrite -1}}
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
		p_ZL8threshs1_31 {Type I LastRead 1 FirstWrite -1}}
	DoCompute_Loop_VITIS_LOOP_300_3_proc228 {
		numReps {Type I LastRead 0 FirstWrite -1}
		mvOut_m_buffer_9 {Type I LastRead 2 FirstWrite -1}
		inter2 {Type O LastRead -1 FirstWrite 2}
		numReps_c153 {Type O LastRead -1 FirstWrite 0}}
	DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3 {
		totalIters {Type I LastRead 0 FirstWrite -1}
		mvOut_m_buffer_9 {Type I LastRead 2 FirstWrite -1}
		inter2 {Type O LastRead -1 FirstWrite 2}}
	StreamingMaxPool_Batch_28u_2u_64u_s {
		inter2 {Type I LastRead 2 FirstWrite -1}
		inter3 {Type O LastRead -1 FirstWrite 1}
		numReps {Type I LastRead 0 FirstWrite -1}
		numReps_c152 {Type O LastRead -1 FirstWrite 0}}
	StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4 {
		inter2 {Type I LastRead 2 FirstWrite -1}
		buf_r {Type IO LastRead 0 FirstWrite 2}}
	StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_85_6 {
		buf_r {Type IO LastRead 0 FirstWrite 0}
		inter3 {Type O LastRead -1 FirstWrite 1}}
	DoCompute_Loop_VITIS_LOOP_268_1_proc329 {
		numReps {Type I LastRead 0 FirstWrite -1}
		wa_in_11 {Type O LastRead -1 FirstWrite 3}
		inter3 {Type I LastRead 2 FirstWrite -1}
		numReps_c151 {Type O LastRead -1 FirstWrite 0}}
	DoCompute_Loop_VITIS_LOOP_268_1_proc329_Pipeline_VITIS_LOOP_268_1 {
		totalIters {Type I LastRead 0 FirstWrite -1}
		wa_in_11 {Type O LastRead -1 FirstWrite 3}
		inter3 {Type I LastRead 2 FirstWrite -1}}
	ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_s {
		wa_in_i822 {Type I LastRead 3 FirstWrite -1}
		convInp_i10 {Type O LastRead -1 FirstWrite 4}
		numReps {Type I LastRead 0 FirstWrite -1}
		numReps_c150 {Type O LastRead -1 FirstWrite 0}}
	ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1 {
		bound {Type I LastRead 0 FirstWrite -1}
		wa_in_i822 {Type I LastRead 3 FirstWrite -1}
		convInp_i10 {Type O LastRead -1 FirstWrite 4}}
	DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI {
		numReps {Type I LastRead 0 FirstWrite -1}}
	Matrix_Vector_Activate_Batch_1 {
		convInp_3 {Type I LastRead 2 FirstWrite -1}
		mvOut_m_buffer_8 {Type O LastRead -1 FirstWrite 4}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_ZL8weights2_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_4 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_5 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_6 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_7 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_8 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_9 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_10 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_11 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_12 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_13 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_14 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_15 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_4 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_5 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_6 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_7 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_8 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_9 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_10 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_11 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_12 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_13 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_14 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_15 {Type I LastRead 1 FirstWrite -1}}
	Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1 {
		mul_i {Type I LastRead 0 FirstWrite -1}
		convInp_3 {Type I LastRead 2 FirstWrite -1}
		mvOut_m_buffer_8 {Type O LastRead -1 FirstWrite 4}
		p_ZL8weights2_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_4 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_5 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_6 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_7 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_8 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_9 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_10 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_11 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_12 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_13 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_14 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights2_15 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_4 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_5 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_6 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_7 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_8 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_9 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_10 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_11 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_12 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_13 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_14 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs2_15 {Type I LastRead 1 FirstWrite -1}}
	DoCompute_Loop_VITIS_LOOP_300_3_proc4 {
		numReps {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		mvOut_m_buffer_8 {Type I LastRead 2 FirstWrite -1}
		inter4 {Type O LastRead -1 FirstWrite 2}
		numReps_c149 {Type O LastRead -1 FirstWrite 0}}
	DoCompute_Loop_VITIS_LOOP_300_3_proc4_Pipeline_VITIS_LOOP_300_3 {
		totalIters {Type I LastRead 0 FirstWrite -1}
		mvOut_m_buffer_8 {Type I LastRead 2 FirstWrite -1}
		inter4 {Type O LastRead -1 FirstWrite 2}}
	DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop {
		numReps {Type I LastRead 0 FirstWrite -1}}
	DoCompute_Loop_VITIS_LOOP_268_1_proc6 {
		p_read {Type I LastRead 0 FirstWrite -1}
		wa_in_10 {Type O LastRead -1 FirstWrite 3}
		inter4 {Type I LastRead 2 FirstWrite -1}
		totalIters_11_loc_c {Type O LastRead -1 FirstWrite 0}}
	DoCompute_Loop_VITIS_LOOP_268_1_proc6_Pipeline_VITIS_LOOP_268_1 {
		p_read {Type I LastRead 0 FirstWrite -1}
		wa_in_10 {Type O LastRead -1 FirstWrite 3}
		inter4 {Type I LastRead 2 FirstWrite -1}}
	ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_s {
		wa_in_i1518 {Type I LastRead 3 FirstWrite -1}
		convInp_i17 {Type O LastRead -1 FirstWrite 4}
		numReps {Type I LastRead 0 FirstWrite -1}
		numReps_c148 {Type O LastRead -1 FirstWrite 0}}
	ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5 {
		bound {Type I LastRead 0 FirstWrite -1}
		wa_in_i1518 {Type I LastRead 3 FirstWrite -1}
		convInp_i17 {Type O LastRead -1 FirstWrite 4}}
	DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream {
		numReps {Type I LastRead 0 FirstWrite -1}}
	Matrix_Vector_Activate_Batch_8 {
		convInp_2 {Type I LastRead 2 FirstWrite -1}
		mvOut_m_buffer_7 {Type O LastRead -1 FirstWrite 4}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_ZL8weights3_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_4 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_5 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_6 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_7 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_8 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_9 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_10 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_11 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_12 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_13 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_14 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_15 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_4 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_5 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_6 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_7 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_8 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_9 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_10 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_11 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_12 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_13 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_14 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_15 {Type I LastRead 1 FirstWrite -1}}
	Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1 {
		mul_i {Type I LastRead 0 FirstWrite -1}
		convInp_2 {Type I LastRead 2 FirstWrite -1}
		mvOut_m_buffer_7 {Type O LastRead -1 FirstWrite 4}
		p_ZL8weights3_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_4 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_5 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_6 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_7 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_8 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_9 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_10 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_11 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_12 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_13 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_14 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights3_15 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_4 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_5 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_6 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_7 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_8 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_9 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_10 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_11 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_12 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_13 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_14 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs3_15 {Type I LastRead 1 FirstWrite -1}}
	DoCompute_Loop_VITIS_LOOP_300_3_proc830 {
		numReps {Type I LastRead 0 FirstWrite -1}
		mvOut_m_buffer_7 {Type I LastRead 2 FirstWrite -1}
		inter5 {Type O LastRead -1 FirstWrite 2}
		numReps_c147 {Type O LastRead -1 FirstWrite 0}}
	DoCompute_Loop_VITIS_LOOP_300_3_proc830_Pipeline_VITIS_LOOP_300_3 {
		totalIters {Type I LastRead 0 FirstWrite -1}
		mvOut_m_buffer_7 {Type I LastRead 2 FirstWrite -1}
		inter5 {Type O LastRead -1 FirstWrite 2}}
	StreamingMaxPool_Batch_10u_2u_128u_s {
		inter5 {Type I LastRead 2 FirstWrite -1}
		inter6 {Type O LastRead -1 FirstWrite 1}
		numReps {Type I LastRead 0 FirstWrite -1}
		numReps_c146 {Type O LastRead -1 FirstWrite 0}}
	StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4 {
		inter5 {Type I LastRead 2 FirstWrite -1}
		buf_r {Type IO LastRead 0 FirstWrite 2}}
	StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_85_6 {
		buf_r {Type IO LastRead 0 FirstWrite 0}
		inter6 {Type O LastRead -1 FirstWrite 1}}
	DoCompute_Loop_VITIS_LOOP_268_1_proc9 {
		p_read {Type I LastRead 0 FirstWrite -1}
		wa_in_9 {Type O LastRead -1 FirstWrite 2}
		inter6 {Type I LastRead 1 FirstWrite -1}}
	ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_s {
		wa_in_i2214 {Type I LastRead 3 FirstWrite -1}
		convInp_i24 {Type O LastRead -1 FirstWrite 4}
		numReps {Type I LastRead 0 FirstWrite -1}
		numReps_c145 {Type O LastRead -1 FirstWrite 0}}
	ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4 {
		bound {Type I LastRead 0 FirstWrite -1}
		wa_in_i2214 {Type I LastRead 3 FirstWrite -1}
		convInp_i24 {Type O LastRead -1 FirstWrite 4}}
	DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI {
		numReps {Type I LastRead 0 FirstWrite -1}}
	Matrix_Vector_Activate_Batch_7 {
		convInp_1 {Type I LastRead 2 FirstWrite -1}
		mvOut_m_buffer_6 {Type O LastRead -1 FirstWrite 4}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_ZL8weights4_0 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights4_1 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights4_2 {Type I LastRead 1 FirstWrite -1}
		p_ZL8weights4_3 {Type I LastRead 1 FirstWrite -1}
		p_ZL8threshs4_0 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs4_1 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs4_2 {Type I LastRead 3 FirstWrite -1}
		p_ZL8threshs4_3 {Type I LastRead 3 FirstWrite -1}}
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
		p_ZL8threshs4_3 {Type I LastRead 3 FirstWrite -1}}
	DoCompute_Loop_VITIS_LOOP_300_3_proc11 {
		totalIters_11_loc {Type I LastRead 0 FirstWrite -1}
		mvOut_m_buffer_6 {Type I LastRead 2 FirstWrite -1}
		inter7 {Type O LastRead -1 FirstWrite 2}}
	DoCompute_Loop_VITIS_LOOP_300_3_proc11_Pipeline_VITIS_LOOP_300_3 {
		totalIters_11_loc_load {Type I LastRead 0 FirstWrite -1}
		mvOut_m_buffer_6 {Type I LastRead 2 FirstWrite -1}
		inter7 {Type O LastRead -1 FirstWrite 2}}
	DoCompute_Loop_VITIS_LOOP_268_1_proc13 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		wa_in_8 {Type O LastRead -1 FirstWrite 3}
		inter7 {Type I LastRead 2 FirstWrite -1}
		totalIters_10_loc_c136 {Type O LastRead -1 FirstWrite 0}}
	DoCompute_Loop_VITIS_LOOP_268_1_proc13_Pipeline_VITIS_LOOP_268_1 {
		totalIters {Type I LastRead 0 FirstWrite -1}
		wa_in_8 {Type O LastRead -1 FirstWrite 3}
		inter7 {Type I LastRead 2 FirstWrite -1}}
	ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_s {
		wa_in_i2910 {Type I LastRead 3 FirstWrite -1}
		convInp_i31 {Type O LastRead -1 FirstWrite 4}
		numReps {Type I LastRead 0 FirstWrite -1}
		numReps_c144 {Type O LastRead -1 FirstWrite 0}}
	ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3 {
		bound {Type I LastRead 0 FirstWrite -1}
		wa_in_i2910 {Type I LastRead 3 FirstWrite -1}
		convInp_i31 {Type O LastRead -1 FirstWrite 4}}
	Matrix_Vector_Activate_Batch_6 {
		convInp {Type I LastRead 2 FirstWrite -1}
		mvOut_m_buffer {Type O LastRead -1 FirstWrite 4}
		numReps {Type I LastRead 0 FirstWrite -1}
		numReps_c143 {Type O LastRead -1 FirstWrite 0}
		weights5 {Type I LastRead 1 FirstWrite -1}
		threshs5 {Type I LastRead 3 FirstWrite -1}}
	Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1 {
		mul_i {Type I LastRead 0 FirstWrite -1}
		convInp {Type I LastRead 2 FirstWrite -1}
		mvOut_m_buffer {Type O LastRead -1 FirstWrite 4}
		weights5 {Type I LastRead 1 FirstWrite -1}
		threshs5 {Type I LastRead 3 FirstWrite -1}}
	DoCompute_Loop_VITIS_LOOP_300_3_proc1531 {
		numReps {Type I LastRead 0 FirstWrite -1}
		mvOut_m_buffer {Type I LastRead 2 FirstWrite -1}
		inter8 {Type O LastRead -1 FirstWrite 2}
		numReps_c142 {Type O LastRead -1 FirstWrite 0}}
	DoCompute_Loop_VITIS_LOOP_300_3_proc1531_Pipeline_VITIS_LOOP_300_3 {
		empty {Type I LastRead 0 FirstWrite -1}
		mvOut_m_buffer {Type I LastRead 2 FirstWrite -1}
		inter8 {Type O LastRead -1 FirstWrite 2}}
	DoCompute_Loop_VITIS_LOOP_268_1_proc16 {
		totalIters_10_loc {Type I LastRead 0 FirstWrite -1}
		wa_in_2 {Type O LastRead -1 FirstWrite 3}
		inter8 {Type I LastRead 2 FirstWrite -1}
		totalIters_10_loc_c {Type O LastRead -1 FirstWrite 0}}
	DoCompute_Loop_VITIS_LOOP_268_1_proc16_Pipeline_VITIS_LOOP_268_1 {
		totalIters_10_loc_load {Type I LastRead 0 FirstWrite -1}
		wa_in_2 {Type O LastRead -1 FirstWrite 3}
		inter8 {Type I LastRead 2 FirstWrite -1}}
	Matrix_Vector_Activate_Batch_5 {
		wa_in_2 {Type I LastRead 2 FirstWrite -1}
		wa_out_m_buffer_2 {Type O LastRead -1 FirstWrite 5}
		numReps {Type I LastRead 0 FirstWrite -1}
		numReps_c141 {Type O LastRead -1 FirstWrite 0}
		weights6 {Type I LastRead 2 FirstWrite -1}
		threshs6 {Type I LastRead 3 FirstWrite -1}}
	Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1 {
		empty {Type I LastRead 0 FirstWrite -1}
		wa_in_2 {Type I LastRead 2 FirstWrite -1}
		wa_out_m_buffer_2 {Type O LastRead -1 FirstWrite 5}
		weights6 {Type I LastRead 2 FirstWrite -1}
		threshs6 {Type I LastRead 3 FirstWrite -1}}
	DoCompute_Loop_VITIS_LOOP_300_3_proc18 {
		p_read {Type I LastRead 0 FirstWrite -1}
		wa_out_m_buffer_2 {Type I LastRead 2 FirstWrite -1}
		inter9 {Type O LastRead -1 FirstWrite 2}
		totalIters_16_loc_c138 {Type O LastRead -1 FirstWrite 0}}
	DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3 {
		p_read {Type I LastRead 0 FirstWrite -1}
		wa_out_m_buffer_2 {Type I LastRead 2 FirstWrite -1}
		inter9 {Type O LastRead -1 FirstWrite 2}}
	DoCompute_Loop_VITIS_LOOP_268_1_proc20 {
		totalIters_10_loc {Type I LastRead 0 FirstWrite -1}
		wa_in_1 {Type O LastRead -1 FirstWrite 3}
		inter9 {Type I LastRead 2 FirstWrite -1}}
	DoCompute_Loop_VITIS_LOOP_268_1_proc20_Pipeline_VITIS_LOOP_268_1 {
		totalIters_10_loc_load {Type I LastRead 0 FirstWrite -1}
		wa_in_1 {Type O LastRead -1 FirstWrite 3}
		inter9 {Type I LastRead 2 FirstWrite -1}}
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
		threshs7 {Type I LastRead 3 FirstWrite -1}}
	DoCompute_Loop_VITIS_LOOP_300_3_proc22 {
		totalIters_16_loc {Type I LastRead 0 FirstWrite -1}
		wa_out_m_buffer {Type I LastRead 2 FirstWrite -1}
		inter10 {Type O LastRead -1 FirstWrite 2}
		totalIters_16_loc_c {Type O LastRead -1 FirstWrite 0}}
	DoCompute_Loop_VITIS_LOOP_300_3_proc22_Pipeline_VITIS_LOOP_300_3 {
		totalIters_16_loc_load {Type I LastRead 0 FirstWrite -1}
		wa_out_m_buffer {Type I LastRead 2 FirstWrite -1}
		inter10 {Type O LastRead -1 FirstWrite 2}}
	DoCompute_Loop_VITIS_LOOP_268_1_proc24 {
		totalIters_16_loc {Type I LastRead 0 FirstWrite -1}
		wa_in {Type O LastRead -1 FirstWrite 3}
		inter10 {Type I LastRead 2 FirstWrite -1}}
	DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1 {
		totalIters_16_loc_load {Type I LastRead 0 FirstWrite -1}
		wa_in {Type O LastRead -1 FirstWrite 3}
		inter10 {Type I LastRead 2 FirstWrite -1}}
	Matrix_Vector_Activate_Batch_2 {
		wa_in {Type I LastRead 2 FirstWrite -1}
		memOutStrm {Type O LastRead -1 FirstWrite 4}
		numReps {Type I LastRead 0 FirstWrite -1}
		numReps_c {Type O LastRead -1 FirstWrite 0}
		p_ZL8weights8_0 {Type I LastRead 3 FirstWrite -1}
		p_ZL8weights8_1 {Type I LastRead 3 FirstWrite -1}
		p_ZL8weights8_2 {Type I LastRead 3 FirstWrite -1}
		p_ZL8weights8_3 {Type I LastRead 3 FirstWrite -1}}
	Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1 {
		empty {Type I LastRead 0 FirstWrite -1}
		wa_in {Type I LastRead 2 FirstWrite -1}
		memOutStrm {Type O LastRead -1 FirstWrite 4}
		p_ZL8weights8_0 {Type I LastRead 3 FirstWrite -1}
		p_ZL8weights8_1 {Type I LastRead 3 FirstWrite -1}
		p_ZL8weights8_2 {Type I LastRead 3 FirstWrite -1}
		p_ZL8weights8_3 {Type I LastRead 3 FirstWrite -1}}
	Stream2Mem_Batch_64u_128u_s {
		memOutStrm34 {Type I LastRead 1 FirstWrite -1}
		hostmem {Type O LastRead 9 FirstWrite 2}
		out_r {Type I LastRead 0 FirstWrite -1}
		numReps {Type I LastRead 0 FirstWrite -1}}
	Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_15 {
		hostmem {Type O LastRead -1 FirstWrite 2}
		sext_ln153 {Type I LastRead 0 FirstWrite -1}
		memOutStrm34 {Type I LastRead 1 FirstWrite -1}}
	Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_1 {
		hostmem {Type O LastRead -1 FirstWrite 2}
		sext_ln153 {Type I LastRead 0 FirstWrite -1}
		memOutStrm34 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	hostmem { m_axi {  { m_axi_hostmem_AWVALID VALID 1 1 }  { m_axi_hostmem_AWREADY READY 0 1 }  { m_axi_hostmem_AWADDR ADDR 1 64 }  { m_axi_hostmem_AWID ID 1 1 }  { m_axi_hostmem_AWLEN SIZE 1 8 }  { m_axi_hostmem_AWSIZE BURST 1 3 }  { m_axi_hostmem_AWBURST LOCK 1 2 }  { m_axi_hostmem_AWLOCK CACHE 1 2 }  { m_axi_hostmem_AWCACHE PROT 1 4 }  { m_axi_hostmem_AWPROT QOS 1 3 }  { m_axi_hostmem_AWQOS REGION 1 4 }  { m_axi_hostmem_AWREGION USER 1 4 }  { m_axi_hostmem_AWUSER DATA 1 1 }  { m_axi_hostmem_WVALID VALID 1 1 }  { m_axi_hostmem_WREADY READY 0 1 }  { m_axi_hostmem_WDATA FIFONUM 1 64 }  { m_axi_hostmem_WSTRB STRB 1 8 }  { m_axi_hostmem_WLAST LAST 1 1 }  { m_axi_hostmem_WID ID 1 1 }  { m_axi_hostmem_WUSER DATA 1 1 }  { m_axi_hostmem_ARVALID VALID 1 1 }  { m_axi_hostmem_ARREADY READY 0 1 }  { m_axi_hostmem_ARADDR ADDR 1 64 }  { m_axi_hostmem_ARID ID 1 1 }  { m_axi_hostmem_ARLEN SIZE 1 8 }  { m_axi_hostmem_ARSIZE BURST 1 3 }  { m_axi_hostmem_ARBURST LOCK 1 2 }  { m_axi_hostmem_ARLOCK CACHE 1 2 }  { m_axi_hostmem_ARCACHE PROT 1 4 }  { m_axi_hostmem_ARPROT QOS 1 3 }  { m_axi_hostmem_ARQOS REGION 1 4 }  { m_axi_hostmem_ARREGION USER 1 4 }  { m_axi_hostmem_ARUSER DATA 1 1 }  { m_axi_hostmem_RVALID VALID 0 1 }  { m_axi_hostmem_RREADY READY 1 1 }  { m_axi_hostmem_RDATA FIFONUM 0 64 }  { m_axi_hostmem_RLAST LAST 0 1 }  { m_axi_hostmem_RID ID 0 1 }  { m_axi_hostmem_RUSER DATA 0 1 }  { m_axi_hostmem_RRESP RESP 0 2 }  { m_axi_hostmem_BVALID VALID 0 1 }  { m_axi_hostmem_BREADY READY 1 1 }  { m_axi_hostmem_BRESP RESP 0 2 }  { m_axi_hostmem_BID ID 0 1 }  { m_axi_hostmem_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict hostmem {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ hostmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ hostmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
