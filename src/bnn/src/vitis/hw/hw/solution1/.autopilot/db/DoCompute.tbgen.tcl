set moduleName DoCompute
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {DoCompute}
set C_modelType { void 0 }
set C_modelArgList {
	{ hostmem int 64 regular {axi_master 2}  }
	{ in_r int 64 regular  }
	{ out_r int 64 regular  }
	{ numReps int 32 regular  }
	{ p_ZL8weights0_0 int 3 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights0_1 int 3 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights0_2 int 3 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights0_3 int 3 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights0_4 int 3 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights0_5 int 3 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights0_6 int 3 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights0_7 int 3 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights0_8 int 3 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights0_9 int 3 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights0_10 int 3 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights0_11 int 3 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights0_12 int 3 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights0_13 int 3 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights0_14 int 3 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights0_15 int 3 regular {array 36 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs0_0 int 24 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs0_1 int 24 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs0_2 int 24 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs0_3 int 24 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs0_4 int 24 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs0_5 int 24 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs0_6 int 24 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs0_7 int 24 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs0_8 int 24 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs0_9 int 24 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs0_10 int 24 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs0_11 int 24 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs0_12 int 24 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs0_13 int 24 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs0_14 int 24 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs0_15 int 24 regular {array 4 { 1 3 } 1 1 } {global 0}  }
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
	{ p_ZL8weights2_0 int 32 regular {array 144 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights2_1 int 32 regular {array 144 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights2_2 int 32 regular {array 144 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights2_3 int 32 regular {array 144 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights2_4 int 32 regular {array 144 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights2_5 int 32 regular {array 144 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights2_6 int 32 regular {array 144 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights2_7 int 32 regular {array 144 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights2_8 int 32 regular {array 144 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights2_9 int 32 regular {array 144 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights2_10 int 32 regular {array 144 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights2_11 int 32 regular {array 144 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights2_12 int 32 regular {array 144 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights2_13 int 32 regular {array 144 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights2_14 int 32 regular {array 144 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights2_15 int 32 regular {array 144 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs2_0 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs2_1 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs2_2 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs2_3 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs2_4 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs2_5 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs2_6 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs2_7 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs2_8 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs2_9 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs2_10 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs2_11 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs2_12 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs2_13 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs2_14 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs2_15 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights3_0 int 32 regular {array 288 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights3_1 int 32 regular {array 288 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights3_2 int 32 regular {array 288 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights3_3 int 32 regular {array 288 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights3_4 int 32 regular {array 288 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights3_5 int 32 regular {array 288 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights3_6 int 32 regular {array 288 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights3_7 int 32 regular {array 288 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights3_8 int 32 regular {array 288 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights3_9 int 32 regular {array 288 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights3_10 int 32 regular {array 288 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights3_11 int 32 regular {array 288 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights3_12 int 32 regular {array 288 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights3_13 int 32 regular {array 288 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights3_14 int 32 regular {array 288 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights3_15 int 32 regular {array 288 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs3_0 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs3_1 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs3_2 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs3_3 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs3_4 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs3_5 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs3_6 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs3_7 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs3_8 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs3_9 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs3_10 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs3_11 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs3_12 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs3_13 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs3_14 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs3_15 int 16 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights4_0 int 32 regular {array 2304 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights4_1 int 32 regular {array 2304 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights4_2 int 32 regular {array 2304 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights4_3 int 32 regular {array 2304 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs4_0 int 16 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs4_1 int 16 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs4_2 int 16 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8threshs4_3 int 16 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ weights5 int 32 regular {array 18432 { 1 3 } 1 1 } {global 0}  }
	{ threshs5 int 16 regular {array 256 { 1 3 } 1 1 } {global 0}  }
	{ weights6 int 4 regular {array 32768 { 1 3 } 1 1 } {global 0}  }
	{ threshs6 int 16 regular {array 512 { 1 3 } 1 1 } {global 0}  }
	{ weights7 int 8 regular {array 32768 { 1 3 } 1 1 } {global 0}  }
	{ threshs7 int 16 regular {array 512 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights8_0 int 1 regular {array 8192 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights8_1 int 1 regular {array 8192 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights8_2 int 1 regular {array 8192 { 1 3 } 1 1 } {global 0}  }
	{ p_ZL8weights8_3 int 1 regular {array 8192 { 1 3 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "hostmem", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"},{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "in_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "numReps", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_ZL8weights0_0", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights0_1", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights0_2", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights0_3", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights0_4", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights0_5", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights0_6", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights0_7", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights0_8", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights0_9", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights0_10", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights0_11", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights0_12", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights0_13", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights0_14", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights0_15", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs0_0", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs0_1", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs0_2", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs0_3", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs0_4", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs0_5", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs0_6", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs0_7", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs0_8", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs0_9", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs0_10", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs0_11", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs0_12", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs0_13", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs0_14", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs0_15", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY", "extern" : 0} , 
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
 	{ "Name" : "p_ZL8threshs1_31", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights2_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights2_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights2_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights2_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights2_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights2_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights2_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights2_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights2_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights2_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights2_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights2_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights2_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights2_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights2_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights2_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs2_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs2_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs2_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs2_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs2_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs2_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs2_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs2_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs2_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs2_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs2_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs2_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs2_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs2_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs2_14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs2_15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights3_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights3_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights3_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights3_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights3_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights3_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights3_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights3_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights3_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights3_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights3_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights3_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights3_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights3_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights3_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights3_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs3_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs3_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs3_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs3_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs3_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs3_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs3_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs3_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs3_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs3_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs3_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs3_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs3_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs3_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs3_14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs3_15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights4_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights4_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights4_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights4_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs4_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs4_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs4_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8threshs4_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "weights5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "threshs5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "weights6", "interface" : "memory", "bitwidth" : 4, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "threshs6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "weights7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "threshs7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights8_0", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights8_1", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights8_2", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL8weights8_3", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 1839
set portList { 
	{ m_axi_hostmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_hostmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_AWLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_hostmem_ARLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_hostmem_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_hostmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_hostmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_hostmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_hostmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_hostmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ in_r sc_in sc_lv 64 signal 1 } 
	{ out_r sc_in sc_lv 64 signal 2 } 
	{ numReps sc_in sc_lv 32 signal 3 } 
	{ p_ZL8weights0_0_address0 sc_out sc_lv 6 signal 4 } 
	{ p_ZL8weights0_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ p_ZL8weights0_0_d0 sc_out sc_lv 3 signal 4 } 
	{ p_ZL8weights0_0_q0 sc_in sc_lv 3 signal 4 } 
	{ p_ZL8weights0_0_we0 sc_out sc_logic 1 signal 4 } 
	{ p_ZL8weights0_0_address1 sc_out sc_lv 6 signal 4 } 
	{ p_ZL8weights0_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ p_ZL8weights0_0_d1 sc_out sc_lv 3 signal 4 } 
	{ p_ZL8weights0_0_q1 sc_in sc_lv 3 signal 4 } 
	{ p_ZL8weights0_0_we1 sc_out sc_logic 1 signal 4 } 
	{ p_ZL8weights0_1_address0 sc_out sc_lv 6 signal 5 } 
	{ p_ZL8weights0_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ p_ZL8weights0_1_d0 sc_out sc_lv 3 signal 5 } 
	{ p_ZL8weights0_1_q0 sc_in sc_lv 3 signal 5 } 
	{ p_ZL8weights0_1_we0 sc_out sc_logic 1 signal 5 } 
	{ p_ZL8weights0_1_address1 sc_out sc_lv 6 signal 5 } 
	{ p_ZL8weights0_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ p_ZL8weights0_1_d1 sc_out sc_lv 3 signal 5 } 
	{ p_ZL8weights0_1_q1 sc_in sc_lv 3 signal 5 } 
	{ p_ZL8weights0_1_we1 sc_out sc_logic 1 signal 5 } 
	{ p_ZL8weights0_2_address0 sc_out sc_lv 6 signal 6 } 
	{ p_ZL8weights0_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ p_ZL8weights0_2_d0 sc_out sc_lv 3 signal 6 } 
	{ p_ZL8weights0_2_q0 sc_in sc_lv 3 signal 6 } 
	{ p_ZL8weights0_2_we0 sc_out sc_logic 1 signal 6 } 
	{ p_ZL8weights0_2_address1 sc_out sc_lv 6 signal 6 } 
	{ p_ZL8weights0_2_ce1 sc_out sc_logic 1 signal 6 } 
	{ p_ZL8weights0_2_d1 sc_out sc_lv 3 signal 6 } 
	{ p_ZL8weights0_2_q1 sc_in sc_lv 3 signal 6 } 
	{ p_ZL8weights0_2_we1 sc_out sc_logic 1 signal 6 } 
	{ p_ZL8weights0_3_address0 sc_out sc_lv 6 signal 7 } 
	{ p_ZL8weights0_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ p_ZL8weights0_3_d0 sc_out sc_lv 3 signal 7 } 
	{ p_ZL8weights0_3_q0 sc_in sc_lv 3 signal 7 } 
	{ p_ZL8weights0_3_we0 sc_out sc_logic 1 signal 7 } 
	{ p_ZL8weights0_3_address1 sc_out sc_lv 6 signal 7 } 
	{ p_ZL8weights0_3_ce1 sc_out sc_logic 1 signal 7 } 
	{ p_ZL8weights0_3_d1 sc_out sc_lv 3 signal 7 } 
	{ p_ZL8weights0_3_q1 sc_in sc_lv 3 signal 7 } 
	{ p_ZL8weights0_3_we1 sc_out sc_logic 1 signal 7 } 
	{ p_ZL8weights0_4_address0 sc_out sc_lv 6 signal 8 } 
	{ p_ZL8weights0_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ p_ZL8weights0_4_d0 sc_out sc_lv 3 signal 8 } 
	{ p_ZL8weights0_4_q0 sc_in sc_lv 3 signal 8 } 
	{ p_ZL8weights0_4_we0 sc_out sc_logic 1 signal 8 } 
	{ p_ZL8weights0_4_address1 sc_out sc_lv 6 signal 8 } 
	{ p_ZL8weights0_4_ce1 sc_out sc_logic 1 signal 8 } 
	{ p_ZL8weights0_4_d1 sc_out sc_lv 3 signal 8 } 
	{ p_ZL8weights0_4_q1 sc_in sc_lv 3 signal 8 } 
	{ p_ZL8weights0_4_we1 sc_out sc_logic 1 signal 8 } 
	{ p_ZL8weights0_5_address0 sc_out sc_lv 6 signal 9 } 
	{ p_ZL8weights0_5_ce0 sc_out sc_logic 1 signal 9 } 
	{ p_ZL8weights0_5_d0 sc_out sc_lv 3 signal 9 } 
	{ p_ZL8weights0_5_q0 sc_in sc_lv 3 signal 9 } 
	{ p_ZL8weights0_5_we0 sc_out sc_logic 1 signal 9 } 
	{ p_ZL8weights0_5_address1 sc_out sc_lv 6 signal 9 } 
	{ p_ZL8weights0_5_ce1 sc_out sc_logic 1 signal 9 } 
	{ p_ZL8weights0_5_d1 sc_out sc_lv 3 signal 9 } 
	{ p_ZL8weights0_5_q1 sc_in sc_lv 3 signal 9 } 
	{ p_ZL8weights0_5_we1 sc_out sc_logic 1 signal 9 } 
	{ p_ZL8weights0_6_address0 sc_out sc_lv 6 signal 10 } 
	{ p_ZL8weights0_6_ce0 sc_out sc_logic 1 signal 10 } 
	{ p_ZL8weights0_6_d0 sc_out sc_lv 3 signal 10 } 
	{ p_ZL8weights0_6_q0 sc_in sc_lv 3 signal 10 } 
	{ p_ZL8weights0_6_we0 sc_out sc_logic 1 signal 10 } 
	{ p_ZL8weights0_6_address1 sc_out sc_lv 6 signal 10 } 
	{ p_ZL8weights0_6_ce1 sc_out sc_logic 1 signal 10 } 
	{ p_ZL8weights0_6_d1 sc_out sc_lv 3 signal 10 } 
	{ p_ZL8weights0_6_q1 sc_in sc_lv 3 signal 10 } 
	{ p_ZL8weights0_6_we1 sc_out sc_logic 1 signal 10 } 
	{ p_ZL8weights0_7_address0 sc_out sc_lv 6 signal 11 } 
	{ p_ZL8weights0_7_ce0 sc_out sc_logic 1 signal 11 } 
	{ p_ZL8weights0_7_d0 sc_out sc_lv 3 signal 11 } 
	{ p_ZL8weights0_7_q0 sc_in sc_lv 3 signal 11 } 
	{ p_ZL8weights0_7_we0 sc_out sc_logic 1 signal 11 } 
	{ p_ZL8weights0_7_address1 sc_out sc_lv 6 signal 11 } 
	{ p_ZL8weights0_7_ce1 sc_out sc_logic 1 signal 11 } 
	{ p_ZL8weights0_7_d1 sc_out sc_lv 3 signal 11 } 
	{ p_ZL8weights0_7_q1 sc_in sc_lv 3 signal 11 } 
	{ p_ZL8weights0_7_we1 sc_out sc_logic 1 signal 11 } 
	{ p_ZL8weights0_8_address0 sc_out sc_lv 6 signal 12 } 
	{ p_ZL8weights0_8_ce0 sc_out sc_logic 1 signal 12 } 
	{ p_ZL8weights0_8_d0 sc_out sc_lv 3 signal 12 } 
	{ p_ZL8weights0_8_q0 sc_in sc_lv 3 signal 12 } 
	{ p_ZL8weights0_8_we0 sc_out sc_logic 1 signal 12 } 
	{ p_ZL8weights0_8_address1 sc_out sc_lv 6 signal 12 } 
	{ p_ZL8weights0_8_ce1 sc_out sc_logic 1 signal 12 } 
	{ p_ZL8weights0_8_d1 sc_out sc_lv 3 signal 12 } 
	{ p_ZL8weights0_8_q1 sc_in sc_lv 3 signal 12 } 
	{ p_ZL8weights0_8_we1 sc_out sc_logic 1 signal 12 } 
	{ p_ZL8weights0_9_address0 sc_out sc_lv 6 signal 13 } 
	{ p_ZL8weights0_9_ce0 sc_out sc_logic 1 signal 13 } 
	{ p_ZL8weights0_9_d0 sc_out sc_lv 3 signal 13 } 
	{ p_ZL8weights0_9_q0 sc_in sc_lv 3 signal 13 } 
	{ p_ZL8weights0_9_we0 sc_out sc_logic 1 signal 13 } 
	{ p_ZL8weights0_9_address1 sc_out sc_lv 6 signal 13 } 
	{ p_ZL8weights0_9_ce1 sc_out sc_logic 1 signal 13 } 
	{ p_ZL8weights0_9_d1 sc_out sc_lv 3 signal 13 } 
	{ p_ZL8weights0_9_q1 sc_in sc_lv 3 signal 13 } 
	{ p_ZL8weights0_9_we1 sc_out sc_logic 1 signal 13 } 
	{ p_ZL8weights0_10_address0 sc_out sc_lv 6 signal 14 } 
	{ p_ZL8weights0_10_ce0 sc_out sc_logic 1 signal 14 } 
	{ p_ZL8weights0_10_d0 sc_out sc_lv 3 signal 14 } 
	{ p_ZL8weights0_10_q0 sc_in sc_lv 3 signal 14 } 
	{ p_ZL8weights0_10_we0 sc_out sc_logic 1 signal 14 } 
	{ p_ZL8weights0_10_address1 sc_out sc_lv 6 signal 14 } 
	{ p_ZL8weights0_10_ce1 sc_out sc_logic 1 signal 14 } 
	{ p_ZL8weights0_10_d1 sc_out sc_lv 3 signal 14 } 
	{ p_ZL8weights0_10_q1 sc_in sc_lv 3 signal 14 } 
	{ p_ZL8weights0_10_we1 sc_out sc_logic 1 signal 14 } 
	{ p_ZL8weights0_11_address0 sc_out sc_lv 6 signal 15 } 
	{ p_ZL8weights0_11_ce0 sc_out sc_logic 1 signal 15 } 
	{ p_ZL8weights0_11_d0 sc_out sc_lv 3 signal 15 } 
	{ p_ZL8weights0_11_q0 sc_in sc_lv 3 signal 15 } 
	{ p_ZL8weights0_11_we0 sc_out sc_logic 1 signal 15 } 
	{ p_ZL8weights0_11_address1 sc_out sc_lv 6 signal 15 } 
	{ p_ZL8weights0_11_ce1 sc_out sc_logic 1 signal 15 } 
	{ p_ZL8weights0_11_d1 sc_out sc_lv 3 signal 15 } 
	{ p_ZL8weights0_11_q1 sc_in sc_lv 3 signal 15 } 
	{ p_ZL8weights0_11_we1 sc_out sc_logic 1 signal 15 } 
	{ p_ZL8weights0_12_address0 sc_out sc_lv 6 signal 16 } 
	{ p_ZL8weights0_12_ce0 sc_out sc_logic 1 signal 16 } 
	{ p_ZL8weights0_12_d0 sc_out sc_lv 3 signal 16 } 
	{ p_ZL8weights0_12_q0 sc_in sc_lv 3 signal 16 } 
	{ p_ZL8weights0_12_we0 sc_out sc_logic 1 signal 16 } 
	{ p_ZL8weights0_12_address1 sc_out sc_lv 6 signal 16 } 
	{ p_ZL8weights0_12_ce1 sc_out sc_logic 1 signal 16 } 
	{ p_ZL8weights0_12_d1 sc_out sc_lv 3 signal 16 } 
	{ p_ZL8weights0_12_q1 sc_in sc_lv 3 signal 16 } 
	{ p_ZL8weights0_12_we1 sc_out sc_logic 1 signal 16 } 
	{ p_ZL8weights0_13_address0 sc_out sc_lv 6 signal 17 } 
	{ p_ZL8weights0_13_ce0 sc_out sc_logic 1 signal 17 } 
	{ p_ZL8weights0_13_d0 sc_out sc_lv 3 signal 17 } 
	{ p_ZL8weights0_13_q0 sc_in sc_lv 3 signal 17 } 
	{ p_ZL8weights0_13_we0 sc_out sc_logic 1 signal 17 } 
	{ p_ZL8weights0_13_address1 sc_out sc_lv 6 signal 17 } 
	{ p_ZL8weights0_13_ce1 sc_out sc_logic 1 signal 17 } 
	{ p_ZL8weights0_13_d1 sc_out sc_lv 3 signal 17 } 
	{ p_ZL8weights0_13_q1 sc_in sc_lv 3 signal 17 } 
	{ p_ZL8weights0_13_we1 sc_out sc_logic 1 signal 17 } 
	{ p_ZL8weights0_14_address0 sc_out sc_lv 6 signal 18 } 
	{ p_ZL8weights0_14_ce0 sc_out sc_logic 1 signal 18 } 
	{ p_ZL8weights0_14_d0 sc_out sc_lv 3 signal 18 } 
	{ p_ZL8weights0_14_q0 sc_in sc_lv 3 signal 18 } 
	{ p_ZL8weights0_14_we0 sc_out sc_logic 1 signal 18 } 
	{ p_ZL8weights0_14_address1 sc_out sc_lv 6 signal 18 } 
	{ p_ZL8weights0_14_ce1 sc_out sc_logic 1 signal 18 } 
	{ p_ZL8weights0_14_d1 sc_out sc_lv 3 signal 18 } 
	{ p_ZL8weights0_14_q1 sc_in sc_lv 3 signal 18 } 
	{ p_ZL8weights0_14_we1 sc_out sc_logic 1 signal 18 } 
	{ p_ZL8weights0_15_address0 sc_out sc_lv 6 signal 19 } 
	{ p_ZL8weights0_15_ce0 sc_out sc_logic 1 signal 19 } 
	{ p_ZL8weights0_15_d0 sc_out sc_lv 3 signal 19 } 
	{ p_ZL8weights0_15_q0 sc_in sc_lv 3 signal 19 } 
	{ p_ZL8weights0_15_we0 sc_out sc_logic 1 signal 19 } 
	{ p_ZL8weights0_15_address1 sc_out sc_lv 6 signal 19 } 
	{ p_ZL8weights0_15_ce1 sc_out sc_logic 1 signal 19 } 
	{ p_ZL8weights0_15_d1 sc_out sc_lv 3 signal 19 } 
	{ p_ZL8weights0_15_q1 sc_in sc_lv 3 signal 19 } 
	{ p_ZL8weights0_15_we1 sc_out sc_logic 1 signal 19 } 
	{ p_ZL8threshs0_0_address0 sc_out sc_lv 2 signal 20 } 
	{ p_ZL8threshs0_0_ce0 sc_out sc_logic 1 signal 20 } 
	{ p_ZL8threshs0_0_d0 sc_out sc_lv 24 signal 20 } 
	{ p_ZL8threshs0_0_q0 sc_in sc_lv 24 signal 20 } 
	{ p_ZL8threshs0_0_we0 sc_out sc_logic 1 signal 20 } 
	{ p_ZL8threshs0_0_address1 sc_out sc_lv 2 signal 20 } 
	{ p_ZL8threshs0_0_ce1 sc_out sc_logic 1 signal 20 } 
	{ p_ZL8threshs0_0_d1 sc_out sc_lv 24 signal 20 } 
	{ p_ZL8threshs0_0_q1 sc_in sc_lv 24 signal 20 } 
	{ p_ZL8threshs0_0_we1 sc_out sc_logic 1 signal 20 } 
	{ p_ZL8threshs0_1_address0 sc_out sc_lv 2 signal 21 } 
	{ p_ZL8threshs0_1_ce0 sc_out sc_logic 1 signal 21 } 
	{ p_ZL8threshs0_1_d0 sc_out sc_lv 24 signal 21 } 
	{ p_ZL8threshs0_1_q0 sc_in sc_lv 24 signal 21 } 
	{ p_ZL8threshs0_1_we0 sc_out sc_logic 1 signal 21 } 
	{ p_ZL8threshs0_1_address1 sc_out sc_lv 2 signal 21 } 
	{ p_ZL8threshs0_1_ce1 sc_out sc_logic 1 signal 21 } 
	{ p_ZL8threshs0_1_d1 sc_out sc_lv 24 signal 21 } 
	{ p_ZL8threshs0_1_q1 sc_in sc_lv 24 signal 21 } 
	{ p_ZL8threshs0_1_we1 sc_out sc_logic 1 signal 21 } 
	{ p_ZL8threshs0_2_address0 sc_out sc_lv 2 signal 22 } 
	{ p_ZL8threshs0_2_ce0 sc_out sc_logic 1 signal 22 } 
	{ p_ZL8threshs0_2_d0 sc_out sc_lv 24 signal 22 } 
	{ p_ZL8threshs0_2_q0 sc_in sc_lv 24 signal 22 } 
	{ p_ZL8threshs0_2_we0 sc_out sc_logic 1 signal 22 } 
	{ p_ZL8threshs0_2_address1 sc_out sc_lv 2 signal 22 } 
	{ p_ZL8threshs0_2_ce1 sc_out sc_logic 1 signal 22 } 
	{ p_ZL8threshs0_2_d1 sc_out sc_lv 24 signal 22 } 
	{ p_ZL8threshs0_2_q1 sc_in sc_lv 24 signal 22 } 
	{ p_ZL8threshs0_2_we1 sc_out sc_logic 1 signal 22 } 
	{ p_ZL8threshs0_3_address0 sc_out sc_lv 2 signal 23 } 
	{ p_ZL8threshs0_3_ce0 sc_out sc_logic 1 signal 23 } 
	{ p_ZL8threshs0_3_d0 sc_out sc_lv 24 signal 23 } 
	{ p_ZL8threshs0_3_q0 sc_in sc_lv 24 signal 23 } 
	{ p_ZL8threshs0_3_we0 sc_out sc_logic 1 signal 23 } 
	{ p_ZL8threshs0_3_address1 sc_out sc_lv 2 signal 23 } 
	{ p_ZL8threshs0_3_ce1 sc_out sc_logic 1 signal 23 } 
	{ p_ZL8threshs0_3_d1 sc_out sc_lv 24 signal 23 } 
	{ p_ZL8threshs0_3_q1 sc_in sc_lv 24 signal 23 } 
	{ p_ZL8threshs0_3_we1 sc_out sc_logic 1 signal 23 } 
	{ p_ZL8threshs0_4_address0 sc_out sc_lv 2 signal 24 } 
	{ p_ZL8threshs0_4_ce0 sc_out sc_logic 1 signal 24 } 
	{ p_ZL8threshs0_4_d0 sc_out sc_lv 24 signal 24 } 
	{ p_ZL8threshs0_4_q0 sc_in sc_lv 24 signal 24 } 
	{ p_ZL8threshs0_4_we0 sc_out sc_logic 1 signal 24 } 
	{ p_ZL8threshs0_4_address1 sc_out sc_lv 2 signal 24 } 
	{ p_ZL8threshs0_4_ce1 sc_out sc_logic 1 signal 24 } 
	{ p_ZL8threshs0_4_d1 sc_out sc_lv 24 signal 24 } 
	{ p_ZL8threshs0_4_q1 sc_in sc_lv 24 signal 24 } 
	{ p_ZL8threshs0_4_we1 sc_out sc_logic 1 signal 24 } 
	{ p_ZL8threshs0_5_address0 sc_out sc_lv 2 signal 25 } 
	{ p_ZL8threshs0_5_ce0 sc_out sc_logic 1 signal 25 } 
	{ p_ZL8threshs0_5_d0 sc_out sc_lv 24 signal 25 } 
	{ p_ZL8threshs0_5_q0 sc_in sc_lv 24 signal 25 } 
	{ p_ZL8threshs0_5_we0 sc_out sc_logic 1 signal 25 } 
	{ p_ZL8threshs0_5_address1 sc_out sc_lv 2 signal 25 } 
	{ p_ZL8threshs0_5_ce1 sc_out sc_logic 1 signal 25 } 
	{ p_ZL8threshs0_5_d1 sc_out sc_lv 24 signal 25 } 
	{ p_ZL8threshs0_5_q1 sc_in sc_lv 24 signal 25 } 
	{ p_ZL8threshs0_5_we1 sc_out sc_logic 1 signal 25 } 
	{ p_ZL8threshs0_6_address0 sc_out sc_lv 2 signal 26 } 
	{ p_ZL8threshs0_6_ce0 sc_out sc_logic 1 signal 26 } 
	{ p_ZL8threshs0_6_d0 sc_out sc_lv 24 signal 26 } 
	{ p_ZL8threshs0_6_q0 sc_in sc_lv 24 signal 26 } 
	{ p_ZL8threshs0_6_we0 sc_out sc_logic 1 signal 26 } 
	{ p_ZL8threshs0_6_address1 sc_out sc_lv 2 signal 26 } 
	{ p_ZL8threshs0_6_ce1 sc_out sc_logic 1 signal 26 } 
	{ p_ZL8threshs0_6_d1 sc_out sc_lv 24 signal 26 } 
	{ p_ZL8threshs0_6_q1 sc_in sc_lv 24 signal 26 } 
	{ p_ZL8threshs0_6_we1 sc_out sc_logic 1 signal 26 } 
	{ p_ZL8threshs0_7_address0 sc_out sc_lv 2 signal 27 } 
	{ p_ZL8threshs0_7_ce0 sc_out sc_logic 1 signal 27 } 
	{ p_ZL8threshs0_7_d0 sc_out sc_lv 24 signal 27 } 
	{ p_ZL8threshs0_7_q0 sc_in sc_lv 24 signal 27 } 
	{ p_ZL8threshs0_7_we0 sc_out sc_logic 1 signal 27 } 
	{ p_ZL8threshs0_7_address1 sc_out sc_lv 2 signal 27 } 
	{ p_ZL8threshs0_7_ce1 sc_out sc_logic 1 signal 27 } 
	{ p_ZL8threshs0_7_d1 sc_out sc_lv 24 signal 27 } 
	{ p_ZL8threshs0_7_q1 sc_in sc_lv 24 signal 27 } 
	{ p_ZL8threshs0_7_we1 sc_out sc_logic 1 signal 27 } 
	{ p_ZL8threshs0_8_address0 sc_out sc_lv 2 signal 28 } 
	{ p_ZL8threshs0_8_ce0 sc_out sc_logic 1 signal 28 } 
	{ p_ZL8threshs0_8_d0 sc_out sc_lv 24 signal 28 } 
	{ p_ZL8threshs0_8_q0 sc_in sc_lv 24 signal 28 } 
	{ p_ZL8threshs0_8_we0 sc_out sc_logic 1 signal 28 } 
	{ p_ZL8threshs0_8_address1 sc_out sc_lv 2 signal 28 } 
	{ p_ZL8threshs0_8_ce1 sc_out sc_logic 1 signal 28 } 
	{ p_ZL8threshs0_8_d1 sc_out sc_lv 24 signal 28 } 
	{ p_ZL8threshs0_8_q1 sc_in sc_lv 24 signal 28 } 
	{ p_ZL8threshs0_8_we1 sc_out sc_logic 1 signal 28 } 
	{ p_ZL8threshs0_9_address0 sc_out sc_lv 2 signal 29 } 
	{ p_ZL8threshs0_9_ce0 sc_out sc_logic 1 signal 29 } 
	{ p_ZL8threshs0_9_d0 sc_out sc_lv 24 signal 29 } 
	{ p_ZL8threshs0_9_q0 sc_in sc_lv 24 signal 29 } 
	{ p_ZL8threshs0_9_we0 sc_out sc_logic 1 signal 29 } 
	{ p_ZL8threshs0_9_address1 sc_out sc_lv 2 signal 29 } 
	{ p_ZL8threshs0_9_ce1 sc_out sc_logic 1 signal 29 } 
	{ p_ZL8threshs0_9_d1 sc_out sc_lv 24 signal 29 } 
	{ p_ZL8threshs0_9_q1 sc_in sc_lv 24 signal 29 } 
	{ p_ZL8threshs0_9_we1 sc_out sc_logic 1 signal 29 } 
	{ p_ZL8threshs0_10_address0 sc_out sc_lv 2 signal 30 } 
	{ p_ZL8threshs0_10_ce0 sc_out sc_logic 1 signal 30 } 
	{ p_ZL8threshs0_10_d0 sc_out sc_lv 24 signal 30 } 
	{ p_ZL8threshs0_10_q0 sc_in sc_lv 24 signal 30 } 
	{ p_ZL8threshs0_10_we0 sc_out sc_logic 1 signal 30 } 
	{ p_ZL8threshs0_10_address1 sc_out sc_lv 2 signal 30 } 
	{ p_ZL8threshs0_10_ce1 sc_out sc_logic 1 signal 30 } 
	{ p_ZL8threshs0_10_d1 sc_out sc_lv 24 signal 30 } 
	{ p_ZL8threshs0_10_q1 sc_in sc_lv 24 signal 30 } 
	{ p_ZL8threshs0_10_we1 sc_out sc_logic 1 signal 30 } 
	{ p_ZL8threshs0_11_address0 sc_out sc_lv 2 signal 31 } 
	{ p_ZL8threshs0_11_ce0 sc_out sc_logic 1 signal 31 } 
	{ p_ZL8threshs0_11_d0 sc_out sc_lv 24 signal 31 } 
	{ p_ZL8threshs0_11_q0 sc_in sc_lv 24 signal 31 } 
	{ p_ZL8threshs0_11_we0 sc_out sc_logic 1 signal 31 } 
	{ p_ZL8threshs0_11_address1 sc_out sc_lv 2 signal 31 } 
	{ p_ZL8threshs0_11_ce1 sc_out sc_logic 1 signal 31 } 
	{ p_ZL8threshs0_11_d1 sc_out sc_lv 24 signal 31 } 
	{ p_ZL8threshs0_11_q1 sc_in sc_lv 24 signal 31 } 
	{ p_ZL8threshs0_11_we1 sc_out sc_logic 1 signal 31 } 
	{ p_ZL8threshs0_12_address0 sc_out sc_lv 2 signal 32 } 
	{ p_ZL8threshs0_12_ce0 sc_out sc_logic 1 signal 32 } 
	{ p_ZL8threshs0_12_d0 sc_out sc_lv 24 signal 32 } 
	{ p_ZL8threshs0_12_q0 sc_in sc_lv 24 signal 32 } 
	{ p_ZL8threshs0_12_we0 sc_out sc_logic 1 signal 32 } 
	{ p_ZL8threshs0_12_address1 sc_out sc_lv 2 signal 32 } 
	{ p_ZL8threshs0_12_ce1 sc_out sc_logic 1 signal 32 } 
	{ p_ZL8threshs0_12_d1 sc_out sc_lv 24 signal 32 } 
	{ p_ZL8threshs0_12_q1 sc_in sc_lv 24 signal 32 } 
	{ p_ZL8threshs0_12_we1 sc_out sc_logic 1 signal 32 } 
	{ p_ZL8threshs0_13_address0 sc_out sc_lv 2 signal 33 } 
	{ p_ZL8threshs0_13_ce0 sc_out sc_logic 1 signal 33 } 
	{ p_ZL8threshs0_13_d0 sc_out sc_lv 24 signal 33 } 
	{ p_ZL8threshs0_13_q0 sc_in sc_lv 24 signal 33 } 
	{ p_ZL8threshs0_13_we0 sc_out sc_logic 1 signal 33 } 
	{ p_ZL8threshs0_13_address1 sc_out sc_lv 2 signal 33 } 
	{ p_ZL8threshs0_13_ce1 sc_out sc_logic 1 signal 33 } 
	{ p_ZL8threshs0_13_d1 sc_out sc_lv 24 signal 33 } 
	{ p_ZL8threshs0_13_q1 sc_in sc_lv 24 signal 33 } 
	{ p_ZL8threshs0_13_we1 sc_out sc_logic 1 signal 33 } 
	{ p_ZL8threshs0_14_address0 sc_out sc_lv 2 signal 34 } 
	{ p_ZL8threshs0_14_ce0 sc_out sc_logic 1 signal 34 } 
	{ p_ZL8threshs0_14_d0 sc_out sc_lv 24 signal 34 } 
	{ p_ZL8threshs0_14_q0 sc_in sc_lv 24 signal 34 } 
	{ p_ZL8threshs0_14_we0 sc_out sc_logic 1 signal 34 } 
	{ p_ZL8threshs0_14_address1 sc_out sc_lv 2 signal 34 } 
	{ p_ZL8threshs0_14_ce1 sc_out sc_logic 1 signal 34 } 
	{ p_ZL8threshs0_14_d1 sc_out sc_lv 24 signal 34 } 
	{ p_ZL8threshs0_14_q1 sc_in sc_lv 24 signal 34 } 
	{ p_ZL8threshs0_14_we1 sc_out sc_logic 1 signal 34 } 
	{ p_ZL8threshs0_15_address0 sc_out sc_lv 2 signal 35 } 
	{ p_ZL8threshs0_15_ce0 sc_out sc_logic 1 signal 35 } 
	{ p_ZL8threshs0_15_d0 sc_out sc_lv 24 signal 35 } 
	{ p_ZL8threshs0_15_q0 sc_in sc_lv 24 signal 35 } 
	{ p_ZL8threshs0_15_we0 sc_out sc_logic 1 signal 35 } 
	{ p_ZL8threshs0_15_address1 sc_out sc_lv 2 signal 35 } 
	{ p_ZL8threshs0_15_ce1 sc_out sc_logic 1 signal 35 } 
	{ p_ZL8threshs0_15_d1 sc_out sc_lv 24 signal 35 } 
	{ p_ZL8threshs0_15_q1 sc_in sc_lv 24 signal 35 } 
	{ p_ZL8threshs0_15_we1 sc_out sc_logic 1 signal 35 } 
	{ p_ZL8weights1_0_address0 sc_out sc_lv 6 signal 36 } 
	{ p_ZL8weights1_0_ce0 sc_out sc_logic 1 signal 36 } 
	{ p_ZL8weights1_0_d0 sc_out sc_lv 32 signal 36 } 
	{ p_ZL8weights1_0_q0 sc_in sc_lv 32 signal 36 } 
	{ p_ZL8weights1_0_we0 sc_out sc_logic 1 signal 36 } 
	{ p_ZL8weights1_0_address1 sc_out sc_lv 6 signal 36 } 
	{ p_ZL8weights1_0_ce1 sc_out sc_logic 1 signal 36 } 
	{ p_ZL8weights1_0_d1 sc_out sc_lv 32 signal 36 } 
	{ p_ZL8weights1_0_q1 sc_in sc_lv 32 signal 36 } 
	{ p_ZL8weights1_0_we1 sc_out sc_logic 1 signal 36 } 
	{ p_ZL8weights1_1_address0 sc_out sc_lv 6 signal 37 } 
	{ p_ZL8weights1_1_ce0 sc_out sc_logic 1 signal 37 } 
	{ p_ZL8weights1_1_d0 sc_out sc_lv 32 signal 37 } 
	{ p_ZL8weights1_1_q0 sc_in sc_lv 32 signal 37 } 
	{ p_ZL8weights1_1_we0 sc_out sc_logic 1 signal 37 } 
	{ p_ZL8weights1_1_address1 sc_out sc_lv 6 signal 37 } 
	{ p_ZL8weights1_1_ce1 sc_out sc_logic 1 signal 37 } 
	{ p_ZL8weights1_1_d1 sc_out sc_lv 32 signal 37 } 
	{ p_ZL8weights1_1_q1 sc_in sc_lv 32 signal 37 } 
	{ p_ZL8weights1_1_we1 sc_out sc_logic 1 signal 37 } 
	{ p_ZL8weights1_2_address0 sc_out sc_lv 6 signal 38 } 
	{ p_ZL8weights1_2_ce0 sc_out sc_logic 1 signal 38 } 
	{ p_ZL8weights1_2_d0 sc_out sc_lv 32 signal 38 } 
	{ p_ZL8weights1_2_q0 sc_in sc_lv 32 signal 38 } 
	{ p_ZL8weights1_2_we0 sc_out sc_logic 1 signal 38 } 
	{ p_ZL8weights1_2_address1 sc_out sc_lv 6 signal 38 } 
	{ p_ZL8weights1_2_ce1 sc_out sc_logic 1 signal 38 } 
	{ p_ZL8weights1_2_d1 sc_out sc_lv 32 signal 38 } 
	{ p_ZL8weights1_2_q1 sc_in sc_lv 32 signal 38 } 
	{ p_ZL8weights1_2_we1 sc_out sc_logic 1 signal 38 } 
	{ p_ZL8weights1_3_address0 sc_out sc_lv 6 signal 39 } 
	{ p_ZL8weights1_3_ce0 sc_out sc_logic 1 signal 39 } 
	{ p_ZL8weights1_3_d0 sc_out sc_lv 32 signal 39 } 
	{ p_ZL8weights1_3_q0 sc_in sc_lv 32 signal 39 } 
	{ p_ZL8weights1_3_we0 sc_out sc_logic 1 signal 39 } 
	{ p_ZL8weights1_3_address1 sc_out sc_lv 6 signal 39 } 
	{ p_ZL8weights1_3_ce1 sc_out sc_logic 1 signal 39 } 
	{ p_ZL8weights1_3_d1 sc_out sc_lv 32 signal 39 } 
	{ p_ZL8weights1_3_q1 sc_in sc_lv 32 signal 39 } 
	{ p_ZL8weights1_3_we1 sc_out sc_logic 1 signal 39 } 
	{ p_ZL8weights1_4_address0 sc_out sc_lv 6 signal 40 } 
	{ p_ZL8weights1_4_ce0 sc_out sc_logic 1 signal 40 } 
	{ p_ZL8weights1_4_d0 sc_out sc_lv 32 signal 40 } 
	{ p_ZL8weights1_4_q0 sc_in sc_lv 32 signal 40 } 
	{ p_ZL8weights1_4_we0 sc_out sc_logic 1 signal 40 } 
	{ p_ZL8weights1_4_address1 sc_out sc_lv 6 signal 40 } 
	{ p_ZL8weights1_4_ce1 sc_out sc_logic 1 signal 40 } 
	{ p_ZL8weights1_4_d1 sc_out sc_lv 32 signal 40 } 
	{ p_ZL8weights1_4_q1 sc_in sc_lv 32 signal 40 } 
	{ p_ZL8weights1_4_we1 sc_out sc_logic 1 signal 40 } 
	{ p_ZL8weights1_5_address0 sc_out sc_lv 6 signal 41 } 
	{ p_ZL8weights1_5_ce0 sc_out sc_logic 1 signal 41 } 
	{ p_ZL8weights1_5_d0 sc_out sc_lv 32 signal 41 } 
	{ p_ZL8weights1_5_q0 sc_in sc_lv 32 signal 41 } 
	{ p_ZL8weights1_5_we0 sc_out sc_logic 1 signal 41 } 
	{ p_ZL8weights1_5_address1 sc_out sc_lv 6 signal 41 } 
	{ p_ZL8weights1_5_ce1 sc_out sc_logic 1 signal 41 } 
	{ p_ZL8weights1_5_d1 sc_out sc_lv 32 signal 41 } 
	{ p_ZL8weights1_5_q1 sc_in sc_lv 32 signal 41 } 
	{ p_ZL8weights1_5_we1 sc_out sc_logic 1 signal 41 } 
	{ p_ZL8weights1_6_address0 sc_out sc_lv 6 signal 42 } 
	{ p_ZL8weights1_6_ce0 sc_out sc_logic 1 signal 42 } 
	{ p_ZL8weights1_6_d0 sc_out sc_lv 32 signal 42 } 
	{ p_ZL8weights1_6_q0 sc_in sc_lv 32 signal 42 } 
	{ p_ZL8weights1_6_we0 sc_out sc_logic 1 signal 42 } 
	{ p_ZL8weights1_6_address1 sc_out sc_lv 6 signal 42 } 
	{ p_ZL8weights1_6_ce1 sc_out sc_logic 1 signal 42 } 
	{ p_ZL8weights1_6_d1 sc_out sc_lv 32 signal 42 } 
	{ p_ZL8weights1_6_q1 sc_in sc_lv 32 signal 42 } 
	{ p_ZL8weights1_6_we1 sc_out sc_logic 1 signal 42 } 
	{ p_ZL8weights1_7_address0 sc_out sc_lv 6 signal 43 } 
	{ p_ZL8weights1_7_ce0 sc_out sc_logic 1 signal 43 } 
	{ p_ZL8weights1_7_d0 sc_out sc_lv 32 signal 43 } 
	{ p_ZL8weights1_7_q0 sc_in sc_lv 32 signal 43 } 
	{ p_ZL8weights1_7_we0 sc_out sc_logic 1 signal 43 } 
	{ p_ZL8weights1_7_address1 sc_out sc_lv 6 signal 43 } 
	{ p_ZL8weights1_7_ce1 sc_out sc_logic 1 signal 43 } 
	{ p_ZL8weights1_7_d1 sc_out sc_lv 32 signal 43 } 
	{ p_ZL8weights1_7_q1 sc_in sc_lv 32 signal 43 } 
	{ p_ZL8weights1_7_we1 sc_out sc_logic 1 signal 43 } 
	{ p_ZL8weights1_8_address0 sc_out sc_lv 6 signal 44 } 
	{ p_ZL8weights1_8_ce0 sc_out sc_logic 1 signal 44 } 
	{ p_ZL8weights1_8_d0 sc_out sc_lv 32 signal 44 } 
	{ p_ZL8weights1_8_q0 sc_in sc_lv 32 signal 44 } 
	{ p_ZL8weights1_8_we0 sc_out sc_logic 1 signal 44 } 
	{ p_ZL8weights1_8_address1 sc_out sc_lv 6 signal 44 } 
	{ p_ZL8weights1_8_ce1 sc_out sc_logic 1 signal 44 } 
	{ p_ZL8weights1_8_d1 sc_out sc_lv 32 signal 44 } 
	{ p_ZL8weights1_8_q1 sc_in sc_lv 32 signal 44 } 
	{ p_ZL8weights1_8_we1 sc_out sc_logic 1 signal 44 } 
	{ p_ZL8weights1_9_address0 sc_out sc_lv 6 signal 45 } 
	{ p_ZL8weights1_9_ce0 sc_out sc_logic 1 signal 45 } 
	{ p_ZL8weights1_9_d0 sc_out sc_lv 32 signal 45 } 
	{ p_ZL8weights1_9_q0 sc_in sc_lv 32 signal 45 } 
	{ p_ZL8weights1_9_we0 sc_out sc_logic 1 signal 45 } 
	{ p_ZL8weights1_9_address1 sc_out sc_lv 6 signal 45 } 
	{ p_ZL8weights1_9_ce1 sc_out sc_logic 1 signal 45 } 
	{ p_ZL8weights1_9_d1 sc_out sc_lv 32 signal 45 } 
	{ p_ZL8weights1_9_q1 sc_in sc_lv 32 signal 45 } 
	{ p_ZL8weights1_9_we1 sc_out sc_logic 1 signal 45 } 
	{ p_ZL8weights1_10_address0 sc_out sc_lv 6 signal 46 } 
	{ p_ZL8weights1_10_ce0 sc_out sc_logic 1 signal 46 } 
	{ p_ZL8weights1_10_d0 sc_out sc_lv 32 signal 46 } 
	{ p_ZL8weights1_10_q0 sc_in sc_lv 32 signal 46 } 
	{ p_ZL8weights1_10_we0 sc_out sc_logic 1 signal 46 } 
	{ p_ZL8weights1_10_address1 sc_out sc_lv 6 signal 46 } 
	{ p_ZL8weights1_10_ce1 sc_out sc_logic 1 signal 46 } 
	{ p_ZL8weights1_10_d1 sc_out sc_lv 32 signal 46 } 
	{ p_ZL8weights1_10_q1 sc_in sc_lv 32 signal 46 } 
	{ p_ZL8weights1_10_we1 sc_out sc_logic 1 signal 46 } 
	{ p_ZL8weights1_11_address0 sc_out sc_lv 6 signal 47 } 
	{ p_ZL8weights1_11_ce0 sc_out sc_logic 1 signal 47 } 
	{ p_ZL8weights1_11_d0 sc_out sc_lv 32 signal 47 } 
	{ p_ZL8weights1_11_q0 sc_in sc_lv 32 signal 47 } 
	{ p_ZL8weights1_11_we0 sc_out sc_logic 1 signal 47 } 
	{ p_ZL8weights1_11_address1 sc_out sc_lv 6 signal 47 } 
	{ p_ZL8weights1_11_ce1 sc_out sc_logic 1 signal 47 } 
	{ p_ZL8weights1_11_d1 sc_out sc_lv 32 signal 47 } 
	{ p_ZL8weights1_11_q1 sc_in sc_lv 32 signal 47 } 
	{ p_ZL8weights1_11_we1 sc_out sc_logic 1 signal 47 } 
	{ p_ZL8weights1_12_address0 sc_out sc_lv 6 signal 48 } 
	{ p_ZL8weights1_12_ce0 sc_out sc_logic 1 signal 48 } 
	{ p_ZL8weights1_12_d0 sc_out sc_lv 32 signal 48 } 
	{ p_ZL8weights1_12_q0 sc_in sc_lv 32 signal 48 } 
	{ p_ZL8weights1_12_we0 sc_out sc_logic 1 signal 48 } 
	{ p_ZL8weights1_12_address1 sc_out sc_lv 6 signal 48 } 
	{ p_ZL8weights1_12_ce1 sc_out sc_logic 1 signal 48 } 
	{ p_ZL8weights1_12_d1 sc_out sc_lv 32 signal 48 } 
	{ p_ZL8weights1_12_q1 sc_in sc_lv 32 signal 48 } 
	{ p_ZL8weights1_12_we1 sc_out sc_logic 1 signal 48 } 
	{ p_ZL8weights1_13_address0 sc_out sc_lv 6 signal 49 } 
	{ p_ZL8weights1_13_ce0 sc_out sc_logic 1 signal 49 } 
	{ p_ZL8weights1_13_d0 sc_out sc_lv 32 signal 49 } 
	{ p_ZL8weights1_13_q0 sc_in sc_lv 32 signal 49 } 
	{ p_ZL8weights1_13_we0 sc_out sc_logic 1 signal 49 } 
	{ p_ZL8weights1_13_address1 sc_out sc_lv 6 signal 49 } 
	{ p_ZL8weights1_13_ce1 sc_out sc_logic 1 signal 49 } 
	{ p_ZL8weights1_13_d1 sc_out sc_lv 32 signal 49 } 
	{ p_ZL8weights1_13_q1 sc_in sc_lv 32 signal 49 } 
	{ p_ZL8weights1_13_we1 sc_out sc_logic 1 signal 49 } 
	{ p_ZL8weights1_14_address0 sc_out sc_lv 6 signal 50 } 
	{ p_ZL8weights1_14_ce0 sc_out sc_logic 1 signal 50 } 
	{ p_ZL8weights1_14_d0 sc_out sc_lv 32 signal 50 } 
	{ p_ZL8weights1_14_q0 sc_in sc_lv 32 signal 50 } 
	{ p_ZL8weights1_14_we0 sc_out sc_logic 1 signal 50 } 
	{ p_ZL8weights1_14_address1 sc_out sc_lv 6 signal 50 } 
	{ p_ZL8weights1_14_ce1 sc_out sc_logic 1 signal 50 } 
	{ p_ZL8weights1_14_d1 sc_out sc_lv 32 signal 50 } 
	{ p_ZL8weights1_14_q1 sc_in sc_lv 32 signal 50 } 
	{ p_ZL8weights1_14_we1 sc_out sc_logic 1 signal 50 } 
	{ p_ZL8weights1_15_address0 sc_out sc_lv 6 signal 51 } 
	{ p_ZL8weights1_15_ce0 sc_out sc_logic 1 signal 51 } 
	{ p_ZL8weights1_15_d0 sc_out sc_lv 32 signal 51 } 
	{ p_ZL8weights1_15_q0 sc_in sc_lv 32 signal 51 } 
	{ p_ZL8weights1_15_we0 sc_out sc_logic 1 signal 51 } 
	{ p_ZL8weights1_15_address1 sc_out sc_lv 6 signal 51 } 
	{ p_ZL8weights1_15_ce1 sc_out sc_logic 1 signal 51 } 
	{ p_ZL8weights1_15_d1 sc_out sc_lv 32 signal 51 } 
	{ p_ZL8weights1_15_q1 sc_in sc_lv 32 signal 51 } 
	{ p_ZL8weights1_15_we1 sc_out sc_logic 1 signal 51 } 
	{ p_ZL8weights1_16_address0 sc_out sc_lv 6 signal 52 } 
	{ p_ZL8weights1_16_ce0 sc_out sc_logic 1 signal 52 } 
	{ p_ZL8weights1_16_d0 sc_out sc_lv 32 signal 52 } 
	{ p_ZL8weights1_16_q0 sc_in sc_lv 32 signal 52 } 
	{ p_ZL8weights1_16_we0 sc_out sc_logic 1 signal 52 } 
	{ p_ZL8weights1_16_address1 sc_out sc_lv 6 signal 52 } 
	{ p_ZL8weights1_16_ce1 sc_out sc_logic 1 signal 52 } 
	{ p_ZL8weights1_16_d1 sc_out sc_lv 32 signal 52 } 
	{ p_ZL8weights1_16_q1 sc_in sc_lv 32 signal 52 } 
	{ p_ZL8weights1_16_we1 sc_out sc_logic 1 signal 52 } 
	{ p_ZL8weights1_17_address0 sc_out sc_lv 6 signal 53 } 
	{ p_ZL8weights1_17_ce0 sc_out sc_logic 1 signal 53 } 
	{ p_ZL8weights1_17_d0 sc_out sc_lv 32 signal 53 } 
	{ p_ZL8weights1_17_q0 sc_in sc_lv 32 signal 53 } 
	{ p_ZL8weights1_17_we0 sc_out sc_logic 1 signal 53 } 
	{ p_ZL8weights1_17_address1 sc_out sc_lv 6 signal 53 } 
	{ p_ZL8weights1_17_ce1 sc_out sc_logic 1 signal 53 } 
	{ p_ZL8weights1_17_d1 sc_out sc_lv 32 signal 53 } 
	{ p_ZL8weights1_17_q1 sc_in sc_lv 32 signal 53 } 
	{ p_ZL8weights1_17_we1 sc_out sc_logic 1 signal 53 } 
	{ p_ZL8weights1_18_address0 sc_out sc_lv 6 signal 54 } 
	{ p_ZL8weights1_18_ce0 sc_out sc_logic 1 signal 54 } 
	{ p_ZL8weights1_18_d0 sc_out sc_lv 32 signal 54 } 
	{ p_ZL8weights1_18_q0 sc_in sc_lv 32 signal 54 } 
	{ p_ZL8weights1_18_we0 sc_out sc_logic 1 signal 54 } 
	{ p_ZL8weights1_18_address1 sc_out sc_lv 6 signal 54 } 
	{ p_ZL8weights1_18_ce1 sc_out sc_logic 1 signal 54 } 
	{ p_ZL8weights1_18_d1 sc_out sc_lv 32 signal 54 } 
	{ p_ZL8weights1_18_q1 sc_in sc_lv 32 signal 54 } 
	{ p_ZL8weights1_18_we1 sc_out sc_logic 1 signal 54 } 
	{ p_ZL8weights1_19_address0 sc_out sc_lv 6 signal 55 } 
	{ p_ZL8weights1_19_ce0 sc_out sc_logic 1 signal 55 } 
	{ p_ZL8weights1_19_d0 sc_out sc_lv 32 signal 55 } 
	{ p_ZL8weights1_19_q0 sc_in sc_lv 32 signal 55 } 
	{ p_ZL8weights1_19_we0 sc_out sc_logic 1 signal 55 } 
	{ p_ZL8weights1_19_address1 sc_out sc_lv 6 signal 55 } 
	{ p_ZL8weights1_19_ce1 sc_out sc_logic 1 signal 55 } 
	{ p_ZL8weights1_19_d1 sc_out sc_lv 32 signal 55 } 
	{ p_ZL8weights1_19_q1 sc_in sc_lv 32 signal 55 } 
	{ p_ZL8weights1_19_we1 sc_out sc_logic 1 signal 55 } 
	{ p_ZL8weights1_20_address0 sc_out sc_lv 6 signal 56 } 
	{ p_ZL8weights1_20_ce0 sc_out sc_logic 1 signal 56 } 
	{ p_ZL8weights1_20_d0 sc_out sc_lv 32 signal 56 } 
	{ p_ZL8weights1_20_q0 sc_in sc_lv 32 signal 56 } 
	{ p_ZL8weights1_20_we0 sc_out sc_logic 1 signal 56 } 
	{ p_ZL8weights1_20_address1 sc_out sc_lv 6 signal 56 } 
	{ p_ZL8weights1_20_ce1 sc_out sc_logic 1 signal 56 } 
	{ p_ZL8weights1_20_d1 sc_out sc_lv 32 signal 56 } 
	{ p_ZL8weights1_20_q1 sc_in sc_lv 32 signal 56 } 
	{ p_ZL8weights1_20_we1 sc_out sc_logic 1 signal 56 } 
	{ p_ZL8weights1_21_address0 sc_out sc_lv 6 signal 57 } 
	{ p_ZL8weights1_21_ce0 sc_out sc_logic 1 signal 57 } 
	{ p_ZL8weights1_21_d0 sc_out sc_lv 32 signal 57 } 
	{ p_ZL8weights1_21_q0 sc_in sc_lv 32 signal 57 } 
	{ p_ZL8weights1_21_we0 sc_out sc_logic 1 signal 57 } 
	{ p_ZL8weights1_21_address1 sc_out sc_lv 6 signal 57 } 
	{ p_ZL8weights1_21_ce1 sc_out sc_logic 1 signal 57 } 
	{ p_ZL8weights1_21_d1 sc_out sc_lv 32 signal 57 } 
	{ p_ZL8weights1_21_q1 sc_in sc_lv 32 signal 57 } 
	{ p_ZL8weights1_21_we1 sc_out sc_logic 1 signal 57 } 
	{ p_ZL8weights1_22_address0 sc_out sc_lv 6 signal 58 } 
	{ p_ZL8weights1_22_ce0 sc_out sc_logic 1 signal 58 } 
	{ p_ZL8weights1_22_d0 sc_out sc_lv 32 signal 58 } 
	{ p_ZL8weights1_22_q0 sc_in sc_lv 32 signal 58 } 
	{ p_ZL8weights1_22_we0 sc_out sc_logic 1 signal 58 } 
	{ p_ZL8weights1_22_address1 sc_out sc_lv 6 signal 58 } 
	{ p_ZL8weights1_22_ce1 sc_out sc_logic 1 signal 58 } 
	{ p_ZL8weights1_22_d1 sc_out sc_lv 32 signal 58 } 
	{ p_ZL8weights1_22_q1 sc_in sc_lv 32 signal 58 } 
	{ p_ZL8weights1_22_we1 sc_out sc_logic 1 signal 58 } 
	{ p_ZL8weights1_23_address0 sc_out sc_lv 6 signal 59 } 
	{ p_ZL8weights1_23_ce0 sc_out sc_logic 1 signal 59 } 
	{ p_ZL8weights1_23_d0 sc_out sc_lv 32 signal 59 } 
	{ p_ZL8weights1_23_q0 sc_in sc_lv 32 signal 59 } 
	{ p_ZL8weights1_23_we0 sc_out sc_logic 1 signal 59 } 
	{ p_ZL8weights1_23_address1 sc_out sc_lv 6 signal 59 } 
	{ p_ZL8weights1_23_ce1 sc_out sc_logic 1 signal 59 } 
	{ p_ZL8weights1_23_d1 sc_out sc_lv 32 signal 59 } 
	{ p_ZL8weights1_23_q1 sc_in sc_lv 32 signal 59 } 
	{ p_ZL8weights1_23_we1 sc_out sc_logic 1 signal 59 } 
	{ p_ZL8weights1_24_address0 sc_out sc_lv 6 signal 60 } 
	{ p_ZL8weights1_24_ce0 sc_out sc_logic 1 signal 60 } 
	{ p_ZL8weights1_24_d0 sc_out sc_lv 32 signal 60 } 
	{ p_ZL8weights1_24_q0 sc_in sc_lv 32 signal 60 } 
	{ p_ZL8weights1_24_we0 sc_out sc_logic 1 signal 60 } 
	{ p_ZL8weights1_24_address1 sc_out sc_lv 6 signal 60 } 
	{ p_ZL8weights1_24_ce1 sc_out sc_logic 1 signal 60 } 
	{ p_ZL8weights1_24_d1 sc_out sc_lv 32 signal 60 } 
	{ p_ZL8weights1_24_q1 sc_in sc_lv 32 signal 60 } 
	{ p_ZL8weights1_24_we1 sc_out sc_logic 1 signal 60 } 
	{ p_ZL8weights1_25_address0 sc_out sc_lv 6 signal 61 } 
	{ p_ZL8weights1_25_ce0 sc_out sc_logic 1 signal 61 } 
	{ p_ZL8weights1_25_d0 sc_out sc_lv 32 signal 61 } 
	{ p_ZL8weights1_25_q0 sc_in sc_lv 32 signal 61 } 
	{ p_ZL8weights1_25_we0 sc_out sc_logic 1 signal 61 } 
	{ p_ZL8weights1_25_address1 sc_out sc_lv 6 signal 61 } 
	{ p_ZL8weights1_25_ce1 sc_out sc_logic 1 signal 61 } 
	{ p_ZL8weights1_25_d1 sc_out sc_lv 32 signal 61 } 
	{ p_ZL8weights1_25_q1 sc_in sc_lv 32 signal 61 } 
	{ p_ZL8weights1_25_we1 sc_out sc_logic 1 signal 61 } 
	{ p_ZL8weights1_26_address0 sc_out sc_lv 6 signal 62 } 
	{ p_ZL8weights1_26_ce0 sc_out sc_logic 1 signal 62 } 
	{ p_ZL8weights1_26_d0 sc_out sc_lv 32 signal 62 } 
	{ p_ZL8weights1_26_q0 sc_in sc_lv 32 signal 62 } 
	{ p_ZL8weights1_26_we0 sc_out sc_logic 1 signal 62 } 
	{ p_ZL8weights1_26_address1 sc_out sc_lv 6 signal 62 } 
	{ p_ZL8weights1_26_ce1 sc_out sc_logic 1 signal 62 } 
	{ p_ZL8weights1_26_d1 sc_out sc_lv 32 signal 62 } 
	{ p_ZL8weights1_26_q1 sc_in sc_lv 32 signal 62 } 
	{ p_ZL8weights1_26_we1 sc_out sc_logic 1 signal 62 } 
	{ p_ZL8weights1_27_address0 sc_out sc_lv 6 signal 63 } 
	{ p_ZL8weights1_27_ce0 sc_out sc_logic 1 signal 63 } 
	{ p_ZL8weights1_27_d0 sc_out sc_lv 32 signal 63 } 
	{ p_ZL8weights1_27_q0 sc_in sc_lv 32 signal 63 } 
	{ p_ZL8weights1_27_we0 sc_out sc_logic 1 signal 63 } 
	{ p_ZL8weights1_27_address1 sc_out sc_lv 6 signal 63 } 
	{ p_ZL8weights1_27_ce1 sc_out sc_logic 1 signal 63 } 
	{ p_ZL8weights1_27_d1 sc_out sc_lv 32 signal 63 } 
	{ p_ZL8weights1_27_q1 sc_in sc_lv 32 signal 63 } 
	{ p_ZL8weights1_27_we1 sc_out sc_logic 1 signal 63 } 
	{ p_ZL8weights1_28_address0 sc_out sc_lv 6 signal 64 } 
	{ p_ZL8weights1_28_ce0 sc_out sc_logic 1 signal 64 } 
	{ p_ZL8weights1_28_d0 sc_out sc_lv 32 signal 64 } 
	{ p_ZL8weights1_28_q0 sc_in sc_lv 32 signal 64 } 
	{ p_ZL8weights1_28_we0 sc_out sc_logic 1 signal 64 } 
	{ p_ZL8weights1_28_address1 sc_out sc_lv 6 signal 64 } 
	{ p_ZL8weights1_28_ce1 sc_out sc_logic 1 signal 64 } 
	{ p_ZL8weights1_28_d1 sc_out sc_lv 32 signal 64 } 
	{ p_ZL8weights1_28_q1 sc_in sc_lv 32 signal 64 } 
	{ p_ZL8weights1_28_we1 sc_out sc_logic 1 signal 64 } 
	{ p_ZL8weights1_29_address0 sc_out sc_lv 6 signal 65 } 
	{ p_ZL8weights1_29_ce0 sc_out sc_logic 1 signal 65 } 
	{ p_ZL8weights1_29_d0 sc_out sc_lv 32 signal 65 } 
	{ p_ZL8weights1_29_q0 sc_in sc_lv 32 signal 65 } 
	{ p_ZL8weights1_29_we0 sc_out sc_logic 1 signal 65 } 
	{ p_ZL8weights1_29_address1 sc_out sc_lv 6 signal 65 } 
	{ p_ZL8weights1_29_ce1 sc_out sc_logic 1 signal 65 } 
	{ p_ZL8weights1_29_d1 sc_out sc_lv 32 signal 65 } 
	{ p_ZL8weights1_29_q1 sc_in sc_lv 32 signal 65 } 
	{ p_ZL8weights1_29_we1 sc_out sc_logic 1 signal 65 } 
	{ p_ZL8weights1_30_address0 sc_out sc_lv 6 signal 66 } 
	{ p_ZL8weights1_30_ce0 sc_out sc_logic 1 signal 66 } 
	{ p_ZL8weights1_30_d0 sc_out sc_lv 32 signal 66 } 
	{ p_ZL8weights1_30_q0 sc_in sc_lv 32 signal 66 } 
	{ p_ZL8weights1_30_we0 sc_out sc_logic 1 signal 66 } 
	{ p_ZL8weights1_30_address1 sc_out sc_lv 6 signal 66 } 
	{ p_ZL8weights1_30_ce1 sc_out sc_logic 1 signal 66 } 
	{ p_ZL8weights1_30_d1 sc_out sc_lv 32 signal 66 } 
	{ p_ZL8weights1_30_q1 sc_in sc_lv 32 signal 66 } 
	{ p_ZL8weights1_30_we1 sc_out sc_logic 1 signal 66 } 
	{ p_ZL8weights1_31_address0 sc_out sc_lv 6 signal 67 } 
	{ p_ZL8weights1_31_ce0 sc_out sc_logic 1 signal 67 } 
	{ p_ZL8weights1_31_d0 sc_out sc_lv 32 signal 67 } 
	{ p_ZL8weights1_31_q0 sc_in sc_lv 32 signal 67 } 
	{ p_ZL8weights1_31_we0 sc_out sc_logic 1 signal 67 } 
	{ p_ZL8weights1_31_address1 sc_out sc_lv 6 signal 67 } 
	{ p_ZL8weights1_31_ce1 sc_out sc_logic 1 signal 67 } 
	{ p_ZL8weights1_31_d1 sc_out sc_lv 32 signal 67 } 
	{ p_ZL8weights1_31_q1 sc_in sc_lv 32 signal 67 } 
	{ p_ZL8weights1_31_we1 sc_out sc_logic 1 signal 67 } 
	{ p_ZL8threshs1_0_address0 sc_out sc_lv 1 signal 68 } 
	{ p_ZL8threshs1_0_ce0 sc_out sc_logic 1 signal 68 } 
	{ p_ZL8threshs1_0_d0 sc_out sc_lv 16 signal 68 } 
	{ p_ZL8threshs1_0_q0 sc_in sc_lv 16 signal 68 } 
	{ p_ZL8threshs1_0_we0 sc_out sc_logic 1 signal 68 } 
	{ p_ZL8threshs1_0_address1 sc_out sc_lv 1 signal 68 } 
	{ p_ZL8threshs1_0_ce1 sc_out sc_logic 1 signal 68 } 
	{ p_ZL8threshs1_0_d1 sc_out sc_lv 16 signal 68 } 
	{ p_ZL8threshs1_0_q1 sc_in sc_lv 16 signal 68 } 
	{ p_ZL8threshs1_0_we1 sc_out sc_logic 1 signal 68 } 
	{ p_ZL8threshs1_1_address0 sc_out sc_lv 1 signal 69 } 
	{ p_ZL8threshs1_1_ce0 sc_out sc_logic 1 signal 69 } 
	{ p_ZL8threshs1_1_d0 sc_out sc_lv 16 signal 69 } 
	{ p_ZL8threshs1_1_q0 sc_in sc_lv 16 signal 69 } 
	{ p_ZL8threshs1_1_we0 sc_out sc_logic 1 signal 69 } 
	{ p_ZL8threshs1_1_address1 sc_out sc_lv 1 signal 69 } 
	{ p_ZL8threshs1_1_ce1 sc_out sc_logic 1 signal 69 } 
	{ p_ZL8threshs1_1_d1 sc_out sc_lv 16 signal 69 } 
	{ p_ZL8threshs1_1_q1 sc_in sc_lv 16 signal 69 } 
	{ p_ZL8threshs1_1_we1 sc_out sc_logic 1 signal 69 } 
	{ p_ZL8threshs1_2_address0 sc_out sc_lv 1 signal 70 } 
	{ p_ZL8threshs1_2_ce0 sc_out sc_logic 1 signal 70 } 
	{ p_ZL8threshs1_2_d0 sc_out sc_lv 16 signal 70 } 
	{ p_ZL8threshs1_2_q0 sc_in sc_lv 16 signal 70 } 
	{ p_ZL8threshs1_2_we0 sc_out sc_logic 1 signal 70 } 
	{ p_ZL8threshs1_2_address1 sc_out sc_lv 1 signal 70 } 
	{ p_ZL8threshs1_2_ce1 sc_out sc_logic 1 signal 70 } 
	{ p_ZL8threshs1_2_d1 sc_out sc_lv 16 signal 70 } 
	{ p_ZL8threshs1_2_q1 sc_in sc_lv 16 signal 70 } 
	{ p_ZL8threshs1_2_we1 sc_out sc_logic 1 signal 70 } 
	{ p_ZL8threshs1_3_address0 sc_out sc_lv 1 signal 71 } 
	{ p_ZL8threshs1_3_ce0 sc_out sc_logic 1 signal 71 } 
	{ p_ZL8threshs1_3_d0 sc_out sc_lv 16 signal 71 } 
	{ p_ZL8threshs1_3_q0 sc_in sc_lv 16 signal 71 } 
	{ p_ZL8threshs1_3_we0 sc_out sc_logic 1 signal 71 } 
	{ p_ZL8threshs1_3_address1 sc_out sc_lv 1 signal 71 } 
	{ p_ZL8threshs1_3_ce1 sc_out sc_logic 1 signal 71 } 
	{ p_ZL8threshs1_3_d1 sc_out sc_lv 16 signal 71 } 
	{ p_ZL8threshs1_3_q1 sc_in sc_lv 16 signal 71 } 
	{ p_ZL8threshs1_3_we1 sc_out sc_logic 1 signal 71 } 
	{ p_ZL8threshs1_4_address0 sc_out sc_lv 1 signal 72 } 
	{ p_ZL8threshs1_4_ce0 sc_out sc_logic 1 signal 72 } 
	{ p_ZL8threshs1_4_d0 sc_out sc_lv 16 signal 72 } 
	{ p_ZL8threshs1_4_q0 sc_in sc_lv 16 signal 72 } 
	{ p_ZL8threshs1_4_we0 sc_out sc_logic 1 signal 72 } 
	{ p_ZL8threshs1_4_address1 sc_out sc_lv 1 signal 72 } 
	{ p_ZL8threshs1_4_ce1 sc_out sc_logic 1 signal 72 } 
	{ p_ZL8threshs1_4_d1 sc_out sc_lv 16 signal 72 } 
	{ p_ZL8threshs1_4_q1 sc_in sc_lv 16 signal 72 } 
	{ p_ZL8threshs1_4_we1 sc_out sc_logic 1 signal 72 } 
	{ p_ZL8threshs1_5_address0 sc_out sc_lv 1 signal 73 } 
	{ p_ZL8threshs1_5_ce0 sc_out sc_logic 1 signal 73 } 
	{ p_ZL8threshs1_5_d0 sc_out sc_lv 16 signal 73 } 
	{ p_ZL8threshs1_5_q0 sc_in sc_lv 16 signal 73 } 
	{ p_ZL8threshs1_5_we0 sc_out sc_logic 1 signal 73 } 
	{ p_ZL8threshs1_5_address1 sc_out sc_lv 1 signal 73 } 
	{ p_ZL8threshs1_5_ce1 sc_out sc_logic 1 signal 73 } 
	{ p_ZL8threshs1_5_d1 sc_out sc_lv 16 signal 73 } 
	{ p_ZL8threshs1_5_q1 sc_in sc_lv 16 signal 73 } 
	{ p_ZL8threshs1_5_we1 sc_out sc_logic 1 signal 73 } 
	{ p_ZL8threshs1_6_address0 sc_out sc_lv 1 signal 74 } 
	{ p_ZL8threshs1_6_ce0 sc_out sc_logic 1 signal 74 } 
	{ p_ZL8threshs1_6_d0 sc_out sc_lv 16 signal 74 } 
	{ p_ZL8threshs1_6_q0 sc_in sc_lv 16 signal 74 } 
	{ p_ZL8threshs1_6_we0 sc_out sc_logic 1 signal 74 } 
	{ p_ZL8threshs1_6_address1 sc_out sc_lv 1 signal 74 } 
	{ p_ZL8threshs1_6_ce1 sc_out sc_logic 1 signal 74 } 
	{ p_ZL8threshs1_6_d1 sc_out sc_lv 16 signal 74 } 
	{ p_ZL8threshs1_6_q1 sc_in sc_lv 16 signal 74 } 
	{ p_ZL8threshs1_6_we1 sc_out sc_logic 1 signal 74 } 
	{ p_ZL8threshs1_7_address0 sc_out sc_lv 1 signal 75 } 
	{ p_ZL8threshs1_7_ce0 sc_out sc_logic 1 signal 75 } 
	{ p_ZL8threshs1_7_d0 sc_out sc_lv 16 signal 75 } 
	{ p_ZL8threshs1_7_q0 sc_in sc_lv 16 signal 75 } 
	{ p_ZL8threshs1_7_we0 sc_out sc_logic 1 signal 75 } 
	{ p_ZL8threshs1_7_address1 sc_out sc_lv 1 signal 75 } 
	{ p_ZL8threshs1_7_ce1 sc_out sc_logic 1 signal 75 } 
	{ p_ZL8threshs1_7_d1 sc_out sc_lv 16 signal 75 } 
	{ p_ZL8threshs1_7_q1 sc_in sc_lv 16 signal 75 } 
	{ p_ZL8threshs1_7_we1 sc_out sc_logic 1 signal 75 } 
	{ p_ZL8threshs1_8_address0 sc_out sc_lv 1 signal 76 } 
	{ p_ZL8threshs1_8_ce0 sc_out sc_logic 1 signal 76 } 
	{ p_ZL8threshs1_8_d0 sc_out sc_lv 16 signal 76 } 
	{ p_ZL8threshs1_8_q0 sc_in sc_lv 16 signal 76 } 
	{ p_ZL8threshs1_8_we0 sc_out sc_logic 1 signal 76 } 
	{ p_ZL8threshs1_8_address1 sc_out sc_lv 1 signal 76 } 
	{ p_ZL8threshs1_8_ce1 sc_out sc_logic 1 signal 76 } 
	{ p_ZL8threshs1_8_d1 sc_out sc_lv 16 signal 76 } 
	{ p_ZL8threshs1_8_q1 sc_in sc_lv 16 signal 76 } 
	{ p_ZL8threshs1_8_we1 sc_out sc_logic 1 signal 76 } 
	{ p_ZL8threshs1_9_address0 sc_out sc_lv 1 signal 77 } 
	{ p_ZL8threshs1_9_ce0 sc_out sc_logic 1 signal 77 } 
	{ p_ZL8threshs1_9_d0 sc_out sc_lv 16 signal 77 } 
	{ p_ZL8threshs1_9_q0 sc_in sc_lv 16 signal 77 } 
	{ p_ZL8threshs1_9_we0 sc_out sc_logic 1 signal 77 } 
	{ p_ZL8threshs1_9_address1 sc_out sc_lv 1 signal 77 } 
	{ p_ZL8threshs1_9_ce1 sc_out sc_logic 1 signal 77 } 
	{ p_ZL8threshs1_9_d1 sc_out sc_lv 16 signal 77 } 
	{ p_ZL8threshs1_9_q1 sc_in sc_lv 16 signal 77 } 
	{ p_ZL8threshs1_9_we1 sc_out sc_logic 1 signal 77 } 
	{ p_ZL8threshs1_10_address0 sc_out sc_lv 1 signal 78 } 
	{ p_ZL8threshs1_10_ce0 sc_out sc_logic 1 signal 78 } 
	{ p_ZL8threshs1_10_d0 sc_out sc_lv 16 signal 78 } 
	{ p_ZL8threshs1_10_q0 sc_in sc_lv 16 signal 78 } 
	{ p_ZL8threshs1_10_we0 sc_out sc_logic 1 signal 78 } 
	{ p_ZL8threshs1_10_address1 sc_out sc_lv 1 signal 78 } 
	{ p_ZL8threshs1_10_ce1 sc_out sc_logic 1 signal 78 } 
	{ p_ZL8threshs1_10_d1 sc_out sc_lv 16 signal 78 } 
	{ p_ZL8threshs1_10_q1 sc_in sc_lv 16 signal 78 } 
	{ p_ZL8threshs1_10_we1 sc_out sc_logic 1 signal 78 } 
	{ p_ZL8threshs1_11_address0 sc_out sc_lv 1 signal 79 } 
	{ p_ZL8threshs1_11_ce0 sc_out sc_logic 1 signal 79 } 
	{ p_ZL8threshs1_11_d0 sc_out sc_lv 16 signal 79 } 
	{ p_ZL8threshs1_11_q0 sc_in sc_lv 16 signal 79 } 
	{ p_ZL8threshs1_11_we0 sc_out sc_logic 1 signal 79 } 
	{ p_ZL8threshs1_11_address1 sc_out sc_lv 1 signal 79 } 
	{ p_ZL8threshs1_11_ce1 sc_out sc_logic 1 signal 79 } 
	{ p_ZL8threshs1_11_d1 sc_out sc_lv 16 signal 79 } 
	{ p_ZL8threshs1_11_q1 sc_in sc_lv 16 signal 79 } 
	{ p_ZL8threshs1_11_we1 sc_out sc_logic 1 signal 79 } 
	{ p_ZL8threshs1_12_address0 sc_out sc_lv 1 signal 80 } 
	{ p_ZL8threshs1_12_ce0 sc_out sc_logic 1 signal 80 } 
	{ p_ZL8threshs1_12_d0 sc_out sc_lv 16 signal 80 } 
	{ p_ZL8threshs1_12_q0 sc_in sc_lv 16 signal 80 } 
	{ p_ZL8threshs1_12_we0 sc_out sc_logic 1 signal 80 } 
	{ p_ZL8threshs1_12_address1 sc_out sc_lv 1 signal 80 } 
	{ p_ZL8threshs1_12_ce1 sc_out sc_logic 1 signal 80 } 
	{ p_ZL8threshs1_12_d1 sc_out sc_lv 16 signal 80 } 
	{ p_ZL8threshs1_12_q1 sc_in sc_lv 16 signal 80 } 
	{ p_ZL8threshs1_12_we1 sc_out sc_logic 1 signal 80 } 
	{ p_ZL8threshs1_13_address0 sc_out sc_lv 1 signal 81 } 
	{ p_ZL8threshs1_13_ce0 sc_out sc_logic 1 signal 81 } 
	{ p_ZL8threshs1_13_d0 sc_out sc_lv 16 signal 81 } 
	{ p_ZL8threshs1_13_q0 sc_in sc_lv 16 signal 81 } 
	{ p_ZL8threshs1_13_we0 sc_out sc_logic 1 signal 81 } 
	{ p_ZL8threshs1_13_address1 sc_out sc_lv 1 signal 81 } 
	{ p_ZL8threshs1_13_ce1 sc_out sc_logic 1 signal 81 } 
	{ p_ZL8threshs1_13_d1 sc_out sc_lv 16 signal 81 } 
	{ p_ZL8threshs1_13_q1 sc_in sc_lv 16 signal 81 } 
	{ p_ZL8threshs1_13_we1 sc_out sc_logic 1 signal 81 } 
	{ p_ZL8threshs1_14_address0 sc_out sc_lv 1 signal 82 } 
	{ p_ZL8threshs1_14_ce0 sc_out sc_logic 1 signal 82 } 
	{ p_ZL8threshs1_14_d0 sc_out sc_lv 16 signal 82 } 
	{ p_ZL8threshs1_14_q0 sc_in sc_lv 16 signal 82 } 
	{ p_ZL8threshs1_14_we0 sc_out sc_logic 1 signal 82 } 
	{ p_ZL8threshs1_14_address1 sc_out sc_lv 1 signal 82 } 
	{ p_ZL8threshs1_14_ce1 sc_out sc_logic 1 signal 82 } 
	{ p_ZL8threshs1_14_d1 sc_out sc_lv 16 signal 82 } 
	{ p_ZL8threshs1_14_q1 sc_in sc_lv 16 signal 82 } 
	{ p_ZL8threshs1_14_we1 sc_out sc_logic 1 signal 82 } 
	{ p_ZL8threshs1_15_address0 sc_out sc_lv 1 signal 83 } 
	{ p_ZL8threshs1_15_ce0 sc_out sc_logic 1 signal 83 } 
	{ p_ZL8threshs1_15_d0 sc_out sc_lv 16 signal 83 } 
	{ p_ZL8threshs1_15_q0 sc_in sc_lv 16 signal 83 } 
	{ p_ZL8threshs1_15_we0 sc_out sc_logic 1 signal 83 } 
	{ p_ZL8threshs1_15_address1 sc_out sc_lv 1 signal 83 } 
	{ p_ZL8threshs1_15_ce1 sc_out sc_logic 1 signal 83 } 
	{ p_ZL8threshs1_15_d1 sc_out sc_lv 16 signal 83 } 
	{ p_ZL8threshs1_15_q1 sc_in sc_lv 16 signal 83 } 
	{ p_ZL8threshs1_15_we1 sc_out sc_logic 1 signal 83 } 
	{ p_ZL8threshs1_16_address0 sc_out sc_lv 1 signal 84 } 
	{ p_ZL8threshs1_16_ce0 sc_out sc_logic 1 signal 84 } 
	{ p_ZL8threshs1_16_d0 sc_out sc_lv 16 signal 84 } 
	{ p_ZL8threshs1_16_q0 sc_in sc_lv 16 signal 84 } 
	{ p_ZL8threshs1_16_we0 sc_out sc_logic 1 signal 84 } 
	{ p_ZL8threshs1_16_address1 sc_out sc_lv 1 signal 84 } 
	{ p_ZL8threshs1_16_ce1 sc_out sc_logic 1 signal 84 } 
	{ p_ZL8threshs1_16_d1 sc_out sc_lv 16 signal 84 } 
	{ p_ZL8threshs1_16_q1 sc_in sc_lv 16 signal 84 } 
	{ p_ZL8threshs1_16_we1 sc_out sc_logic 1 signal 84 } 
	{ p_ZL8threshs1_17_address0 sc_out sc_lv 1 signal 85 } 
	{ p_ZL8threshs1_17_ce0 sc_out sc_logic 1 signal 85 } 
	{ p_ZL8threshs1_17_d0 sc_out sc_lv 16 signal 85 } 
	{ p_ZL8threshs1_17_q0 sc_in sc_lv 16 signal 85 } 
	{ p_ZL8threshs1_17_we0 sc_out sc_logic 1 signal 85 } 
	{ p_ZL8threshs1_17_address1 sc_out sc_lv 1 signal 85 } 
	{ p_ZL8threshs1_17_ce1 sc_out sc_logic 1 signal 85 } 
	{ p_ZL8threshs1_17_d1 sc_out sc_lv 16 signal 85 } 
	{ p_ZL8threshs1_17_q1 sc_in sc_lv 16 signal 85 } 
	{ p_ZL8threshs1_17_we1 sc_out sc_logic 1 signal 85 } 
	{ p_ZL8threshs1_18_address0 sc_out sc_lv 1 signal 86 } 
	{ p_ZL8threshs1_18_ce0 sc_out sc_logic 1 signal 86 } 
	{ p_ZL8threshs1_18_d0 sc_out sc_lv 16 signal 86 } 
	{ p_ZL8threshs1_18_q0 sc_in sc_lv 16 signal 86 } 
	{ p_ZL8threshs1_18_we0 sc_out sc_logic 1 signal 86 } 
	{ p_ZL8threshs1_18_address1 sc_out sc_lv 1 signal 86 } 
	{ p_ZL8threshs1_18_ce1 sc_out sc_logic 1 signal 86 } 
	{ p_ZL8threshs1_18_d1 sc_out sc_lv 16 signal 86 } 
	{ p_ZL8threshs1_18_q1 sc_in sc_lv 16 signal 86 } 
	{ p_ZL8threshs1_18_we1 sc_out sc_logic 1 signal 86 } 
	{ p_ZL8threshs1_19_address0 sc_out sc_lv 1 signal 87 } 
	{ p_ZL8threshs1_19_ce0 sc_out sc_logic 1 signal 87 } 
	{ p_ZL8threshs1_19_d0 sc_out sc_lv 16 signal 87 } 
	{ p_ZL8threshs1_19_q0 sc_in sc_lv 16 signal 87 } 
	{ p_ZL8threshs1_19_we0 sc_out sc_logic 1 signal 87 } 
	{ p_ZL8threshs1_19_address1 sc_out sc_lv 1 signal 87 } 
	{ p_ZL8threshs1_19_ce1 sc_out sc_logic 1 signal 87 } 
	{ p_ZL8threshs1_19_d1 sc_out sc_lv 16 signal 87 } 
	{ p_ZL8threshs1_19_q1 sc_in sc_lv 16 signal 87 } 
	{ p_ZL8threshs1_19_we1 sc_out sc_logic 1 signal 87 } 
	{ p_ZL8threshs1_20_address0 sc_out sc_lv 1 signal 88 } 
	{ p_ZL8threshs1_20_ce0 sc_out sc_logic 1 signal 88 } 
	{ p_ZL8threshs1_20_d0 sc_out sc_lv 16 signal 88 } 
	{ p_ZL8threshs1_20_q0 sc_in sc_lv 16 signal 88 } 
	{ p_ZL8threshs1_20_we0 sc_out sc_logic 1 signal 88 } 
	{ p_ZL8threshs1_20_address1 sc_out sc_lv 1 signal 88 } 
	{ p_ZL8threshs1_20_ce1 sc_out sc_logic 1 signal 88 } 
	{ p_ZL8threshs1_20_d1 sc_out sc_lv 16 signal 88 } 
	{ p_ZL8threshs1_20_q1 sc_in sc_lv 16 signal 88 } 
	{ p_ZL8threshs1_20_we1 sc_out sc_logic 1 signal 88 } 
	{ p_ZL8threshs1_21_address0 sc_out sc_lv 1 signal 89 } 
	{ p_ZL8threshs1_21_ce0 sc_out sc_logic 1 signal 89 } 
	{ p_ZL8threshs1_21_d0 sc_out sc_lv 16 signal 89 } 
	{ p_ZL8threshs1_21_q0 sc_in sc_lv 16 signal 89 } 
	{ p_ZL8threshs1_21_we0 sc_out sc_logic 1 signal 89 } 
	{ p_ZL8threshs1_21_address1 sc_out sc_lv 1 signal 89 } 
	{ p_ZL8threshs1_21_ce1 sc_out sc_logic 1 signal 89 } 
	{ p_ZL8threshs1_21_d1 sc_out sc_lv 16 signal 89 } 
	{ p_ZL8threshs1_21_q1 sc_in sc_lv 16 signal 89 } 
	{ p_ZL8threshs1_21_we1 sc_out sc_logic 1 signal 89 } 
	{ p_ZL8threshs1_22_address0 sc_out sc_lv 1 signal 90 } 
	{ p_ZL8threshs1_22_ce0 sc_out sc_logic 1 signal 90 } 
	{ p_ZL8threshs1_22_d0 sc_out sc_lv 16 signal 90 } 
	{ p_ZL8threshs1_22_q0 sc_in sc_lv 16 signal 90 } 
	{ p_ZL8threshs1_22_we0 sc_out sc_logic 1 signal 90 } 
	{ p_ZL8threshs1_22_address1 sc_out sc_lv 1 signal 90 } 
	{ p_ZL8threshs1_22_ce1 sc_out sc_logic 1 signal 90 } 
	{ p_ZL8threshs1_22_d1 sc_out sc_lv 16 signal 90 } 
	{ p_ZL8threshs1_22_q1 sc_in sc_lv 16 signal 90 } 
	{ p_ZL8threshs1_22_we1 sc_out sc_logic 1 signal 90 } 
	{ p_ZL8threshs1_23_address0 sc_out sc_lv 1 signal 91 } 
	{ p_ZL8threshs1_23_ce0 sc_out sc_logic 1 signal 91 } 
	{ p_ZL8threshs1_23_d0 sc_out sc_lv 16 signal 91 } 
	{ p_ZL8threshs1_23_q0 sc_in sc_lv 16 signal 91 } 
	{ p_ZL8threshs1_23_we0 sc_out sc_logic 1 signal 91 } 
	{ p_ZL8threshs1_23_address1 sc_out sc_lv 1 signal 91 } 
	{ p_ZL8threshs1_23_ce1 sc_out sc_logic 1 signal 91 } 
	{ p_ZL8threshs1_23_d1 sc_out sc_lv 16 signal 91 } 
	{ p_ZL8threshs1_23_q1 sc_in sc_lv 16 signal 91 } 
	{ p_ZL8threshs1_23_we1 sc_out sc_logic 1 signal 91 } 
	{ p_ZL8threshs1_24_address0 sc_out sc_lv 1 signal 92 } 
	{ p_ZL8threshs1_24_ce0 sc_out sc_logic 1 signal 92 } 
	{ p_ZL8threshs1_24_d0 sc_out sc_lv 16 signal 92 } 
	{ p_ZL8threshs1_24_q0 sc_in sc_lv 16 signal 92 } 
	{ p_ZL8threshs1_24_we0 sc_out sc_logic 1 signal 92 } 
	{ p_ZL8threshs1_24_address1 sc_out sc_lv 1 signal 92 } 
	{ p_ZL8threshs1_24_ce1 sc_out sc_logic 1 signal 92 } 
	{ p_ZL8threshs1_24_d1 sc_out sc_lv 16 signal 92 } 
	{ p_ZL8threshs1_24_q1 sc_in sc_lv 16 signal 92 } 
	{ p_ZL8threshs1_24_we1 sc_out sc_logic 1 signal 92 } 
	{ p_ZL8threshs1_25_address0 sc_out sc_lv 1 signal 93 } 
	{ p_ZL8threshs1_25_ce0 sc_out sc_logic 1 signal 93 } 
	{ p_ZL8threshs1_25_d0 sc_out sc_lv 16 signal 93 } 
	{ p_ZL8threshs1_25_q0 sc_in sc_lv 16 signal 93 } 
	{ p_ZL8threshs1_25_we0 sc_out sc_logic 1 signal 93 } 
	{ p_ZL8threshs1_25_address1 sc_out sc_lv 1 signal 93 } 
	{ p_ZL8threshs1_25_ce1 sc_out sc_logic 1 signal 93 } 
	{ p_ZL8threshs1_25_d1 sc_out sc_lv 16 signal 93 } 
	{ p_ZL8threshs1_25_q1 sc_in sc_lv 16 signal 93 } 
	{ p_ZL8threshs1_25_we1 sc_out sc_logic 1 signal 93 } 
	{ p_ZL8threshs1_26_address0 sc_out sc_lv 1 signal 94 } 
	{ p_ZL8threshs1_26_ce0 sc_out sc_logic 1 signal 94 } 
	{ p_ZL8threshs1_26_d0 sc_out sc_lv 16 signal 94 } 
	{ p_ZL8threshs1_26_q0 sc_in sc_lv 16 signal 94 } 
	{ p_ZL8threshs1_26_we0 sc_out sc_logic 1 signal 94 } 
	{ p_ZL8threshs1_26_address1 sc_out sc_lv 1 signal 94 } 
	{ p_ZL8threshs1_26_ce1 sc_out sc_logic 1 signal 94 } 
	{ p_ZL8threshs1_26_d1 sc_out sc_lv 16 signal 94 } 
	{ p_ZL8threshs1_26_q1 sc_in sc_lv 16 signal 94 } 
	{ p_ZL8threshs1_26_we1 sc_out sc_logic 1 signal 94 } 
	{ p_ZL8threshs1_27_address0 sc_out sc_lv 1 signal 95 } 
	{ p_ZL8threshs1_27_ce0 sc_out sc_logic 1 signal 95 } 
	{ p_ZL8threshs1_27_d0 sc_out sc_lv 16 signal 95 } 
	{ p_ZL8threshs1_27_q0 sc_in sc_lv 16 signal 95 } 
	{ p_ZL8threshs1_27_we0 sc_out sc_logic 1 signal 95 } 
	{ p_ZL8threshs1_27_address1 sc_out sc_lv 1 signal 95 } 
	{ p_ZL8threshs1_27_ce1 sc_out sc_logic 1 signal 95 } 
	{ p_ZL8threshs1_27_d1 sc_out sc_lv 16 signal 95 } 
	{ p_ZL8threshs1_27_q1 sc_in sc_lv 16 signal 95 } 
	{ p_ZL8threshs1_27_we1 sc_out sc_logic 1 signal 95 } 
	{ p_ZL8threshs1_28_address0 sc_out sc_lv 1 signal 96 } 
	{ p_ZL8threshs1_28_ce0 sc_out sc_logic 1 signal 96 } 
	{ p_ZL8threshs1_28_d0 sc_out sc_lv 16 signal 96 } 
	{ p_ZL8threshs1_28_q0 sc_in sc_lv 16 signal 96 } 
	{ p_ZL8threshs1_28_we0 sc_out sc_logic 1 signal 96 } 
	{ p_ZL8threshs1_28_address1 sc_out sc_lv 1 signal 96 } 
	{ p_ZL8threshs1_28_ce1 sc_out sc_logic 1 signal 96 } 
	{ p_ZL8threshs1_28_d1 sc_out sc_lv 16 signal 96 } 
	{ p_ZL8threshs1_28_q1 sc_in sc_lv 16 signal 96 } 
	{ p_ZL8threshs1_28_we1 sc_out sc_logic 1 signal 96 } 
	{ p_ZL8threshs1_29_address0 sc_out sc_lv 1 signal 97 } 
	{ p_ZL8threshs1_29_ce0 sc_out sc_logic 1 signal 97 } 
	{ p_ZL8threshs1_29_d0 sc_out sc_lv 16 signal 97 } 
	{ p_ZL8threshs1_29_q0 sc_in sc_lv 16 signal 97 } 
	{ p_ZL8threshs1_29_we0 sc_out sc_logic 1 signal 97 } 
	{ p_ZL8threshs1_29_address1 sc_out sc_lv 1 signal 97 } 
	{ p_ZL8threshs1_29_ce1 sc_out sc_logic 1 signal 97 } 
	{ p_ZL8threshs1_29_d1 sc_out sc_lv 16 signal 97 } 
	{ p_ZL8threshs1_29_q1 sc_in sc_lv 16 signal 97 } 
	{ p_ZL8threshs1_29_we1 sc_out sc_logic 1 signal 97 } 
	{ p_ZL8threshs1_30_address0 sc_out sc_lv 1 signal 98 } 
	{ p_ZL8threshs1_30_ce0 sc_out sc_logic 1 signal 98 } 
	{ p_ZL8threshs1_30_d0 sc_out sc_lv 16 signal 98 } 
	{ p_ZL8threshs1_30_q0 sc_in sc_lv 16 signal 98 } 
	{ p_ZL8threshs1_30_we0 sc_out sc_logic 1 signal 98 } 
	{ p_ZL8threshs1_30_address1 sc_out sc_lv 1 signal 98 } 
	{ p_ZL8threshs1_30_ce1 sc_out sc_logic 1 signal 98 } 
	{ p_ZL8threshs1_30_d1 sc_out sc_lv 16 signal 98 } 
	{ p_ZL8threshs1_30_q1 sc_in sc_lv 16 signal 98 } 
	{ p_ZL8threshs1_30_we1 sc_out sc_logic 1 signal 98 } 
	{ p_ZL8threshs1_31_address0 sc_out sc_lv 1 signal 99 } 
	{ p_ZL8threshs1_31_ce0 sc_out sc_logic 1 signal 99 } 
	{ p_ZL8threshs1_31_d0 sc_out sc_lv 16 signal 99 } 
	{ p_ZL8threshs1_31_q0 sc_in sc_lv 16 signal 99 } 
	{ p_ZL8threshs1_31_we0 sc_out sc_logic 1 signal 99 } 
	{ p_ZL8threshs1_31_address1 sc_out sc_lv 1 signal 99 } 
	{ p_ZL8threshs1_31_ce1 sc_out sc_logic 1 signal 99 } 
	{ p_ZL8threshs1_31_d1 sc_out sc_lv 16 signal 99 } 
	{ p_ZL8threshs1_31_q1 sc_in sc_lv 16 signal 99 } 
	{ p_ZL8threshs1_31_we1 sc_out sc_logic 1 signal 99 } 
	{ p_ZL8weights2_0_address0 sc_out sc_lv 8 signal 100 } 
	{ p_ZL8weights2_0_ce0 sc_out sc_logic 1 signal 100 } 
	{ p_ZL8weights2_0_d0 sc_out sc_lv 32 signal 100 } 
	{ p_ZL8weights2_0_q0 sc_in sc_lv 32 signal 100 } 
	{ p_ZL8weights2_0_we0 sc_out sc_logic 1 signal 100 } 
	{ p_ZL8weights2_0_address1 sc_out sc_lv 8 signal 100 } 
	{ p_ZL8weights2_0_ce1 sc_out sc_logic 1 signal 100 } 
	{ p_ZL8weights2_0_d1 sc_out sc_lv 32 signal 100 } 
	{ p_ZL8weights2_0_q1 sc_in sc_lv 32 signal 100 } 
	{ p_ZL8weights2_0_we1 sc_out sc_logic 1 signal 100 } 
	{ p_ZL8weights2_1_address0 sc_out sc_lv 8 signal 101 } 
	{ p_ZL8weights2_1_ce0 sc_out sc_logic 1 signal 101 } 
	{ p_ZL8weights2_1_d0 sc_out sc_lv 32 signal 101 } 
	{ p_ZL8weights2_1_q0 sc_in sc_lv 32 signal 101 } 
	{ p_ZL8weights2_1_we0 sc_out sc_logic 1 signal 101 } 
	{ p_ZL8weights2_1_address1 sc_out sc_lv 8 signal 101 } 
	{ p_ZL8weights2_1_ce1 sc_out sc_logic 1 signal 101 } 
	{ p_ZL8weights2_1_d1 sc_out sc_lv 32 signal 101 } 
	{ p_ZL8weights2_1_q1 sc_in sc_lv 32 signal 101 } 
	{ p_ZL8weights2_1_we1 sc_out sc_logic 1 signal 101 } 
	{ p_ZL8weights2_2_address0 sc_out sc_lv 8 signal 102 } 
	{ p_ZL8weights2_2_ce0 sc_out sc_logic 1 signal 102 } 
	{ p_ZL8weights2_2_d0 sc_out sc_lv 32 signal 102 } 
	{ p_ZL8weights2_2_q0 sc_in sc_lv 32 signal 102 } 
	{ p_ZL8weights2_2_we0 sc_out sc_logic 1 signal 102 } 
	{ p_ZL8weights2_2_address1 sc_out sc_lv 8 signal 102 } 
	{ p_ZL8weights2_2_ce1 sc_out sc_logic 1 signal 102 } 
	{ p_ZL8weights2_2_d1 sc_out sc_lv 32 signal 102 } 
	{ p_ZL8weights2_2_q1 sc_in sc_lv 32 signal 102 } 
	{ p_ZL8weights2_2_we1 sc_out sc_logic 1 signal 102 } 
	{ p_ZL8weights2_3_address0 sc_out sc_lv 8 signal 103 } 
	{ p_ZL8weights2_3_ce0 sc_out sc_logic 1 signal 103 } 
	{ p_ZL8weights2_3_d0 sc_out sc_lv 32 signal 103 } 
	{ p_ZL8weights2_3_q0 sc_in sc_lv 32 signal 103 } 
	{ p_ZL8weights2_3_we0 sc_out sc_logic 1 signal 103 } 
	{ p_ZL8weights2_3_address1 sc_out sc_lv 8 signal 103 } 
	{ p_ZL8weights2_3_ce1 sc_out sc_logic 1 signal 103 } 
	{ p_ZL8weights2_3_d1 sc_out sc_lv 32 signal 103 } 
	{ p_ZL8weights2_3_q1 sc_in sc_lv 32 signal 103 } 
	{ p_ZL8weights2_3_we1 sc_out sc_logic 1 signal 103 } 
	{ p_ZL8weights2_4_address0 sc_out sc_lv 8 signal 104 } 
	{ p_ZL8weights2_4_ce0 sc_out sc_logic 1 signal 104 } 
	{ p_ZL8weights2_4_d0 sc_out sc_lv 32 signal 104 } 
	{ p_ZL8weights2_4_q0 sc_in sc_lv 32 signal 104 } 
	{ p_ZL8weights2_4_we0 sc_out sc_logic 1 signal 104 } 
	{ p_ZL8weights2_4_address1 sc_out sc_lv 8 signal 104 } 
	{ p_ZL8weights2_4_ce1 sc_out sc_logic 1 signal 104 } 
	{ p_ZL8weights2_4_d1 sc_out sc_lv 32 signal 104 } 
	{ p_ZL8weights2_4_q1 sc_in sc_lv 32 signal 104 } 
	{ p_ZL8weights2_4_we1 sc_out sc_logic 1 signal 104 } 
	{ p_ZL8weights2_5_address0 sc_out sc_lv 8 signal 105 } 
	{ p_ZL8weights2_5_ce0 sc_out sc_logic 1 signal 105 } 
	{ p_ZL8weights2_5_d0 sc_out sc_lv 32 signal 105 } 
	{ p_ZL8weights2_5_q0 sc_in sc_lv 32 signal 105 } 
	{ p_ZL8weights2_5_we0 sc_out sc_logic 1 signal 105 } 
	{ p_ZL8weights2_5_address1 sc_out sc_lv 8 signal 105 } 
	{ p_ZL8weights2_5_ce1 sc_out sc_logic 1 signal 105 } 
	{ p_ZL8weights2_5_d1 sc_out sc_lv 32 signal 105 } 
	{ p_ZL8weights2_5_q1 sc_in sc_lv 32 signal 105 } 
	{ p_ZL8weights2_5_we1 sc_out sc_logic 1 signal 105 } 
	{ p_ZL8weights2_6_address0 sc_out sc_lv 8 signal 106 } 
	{ p_ZL8weights2_6_ce0 sc_out sc_logic 1 signal 106 } 
	{ p_ZL8weights2_6_d0 sc_out sc_lv 32 signal 106 } 
	{ p_ZL8weights2_6_q0 sc_in sc_lv 32 signal 106 } 
	{ p_ZL8weights2_6_we0 sc_out sc_logic 1 signal 106 } 
	{ p_ZL8weights2_6_address1 sc_out sc_lv 8 signal 106 } 
	{ p_ZL8weights2_6_ce1 sc_out sc_logic 1 signal 106 } 
	{ p_ZL8weights2_6_d1 sc_out sc_lv 32 signal 106 } 
	{ p_ZL8weights2_6_q1 sc_in sc_lv 32 signal 106 } 
	{ p_ZL8weights2_6_we1 sc_out sc_logic 1 signal 106 } 
	{ p_ZL8weights2_7_address0 sc_out sc_lv 8 signal 107 } 
	{ p_ZL8weights2_7_ce0 sc_out sc_logic 1 signal 107 } 
	{ p_ZL8weights2_7_d0 sc_out sc_lv 32 signal 107 } 
	{ p_ZL8weights2_7_q0 sc_in sc_lv 32 signal 107 } 
	{ p_ZL8weights2_7_we0 sc_out sc_logic 1 signal 107 } 
	{ p_ZL8weights2_7_address1 sc_out sc_lv 8 signal 107 } 
	{ p_ZL8weights2_7_ce1 sc_out sc_logic 1 signal 107 } 
	{ p_ZL8weights2_7_d1 sc_out sc_lv 32 signal 107 } 
	{ p_ZL8weights2_7_q1 sc_in sc_lv 32 signal 107 } 
	{ p_ZL8weights2_7_we1 sc_out sc_logic 1 signal 107 } 
	{ p_ZL8weights2_8_address0 sc_out sc_lv 8 signal 108 } 
	{ p_ZL8weights2_8_ce0 sc_out sc_logic 1 signal 108 } 
	{ p_ZL8weights2_8_d0 sc_out sc_lv 32 signal 108 } 
	{ p_ZL8weights2_8_q0 sc_in sc_lv 32 signal 108 } 
	{ p_ZL8weights2_8_we0 sc_out sc_logic 1 signal 108 } 
	{ p_ZL8weights2_8_address1 sc_out sc_lv 8 signal 108 } 
	{ p_ZL8weights2_8_ce1 sc_out sc_logic 1 signal 108 } 
	{ p_ZL8weights2_8_d1 sc_out sc_lv 32 signal 108 } 
	{ p_ZL8weights2_8_q1 sc_in sc_lv 32 signal 108 } 
	{ p_ZL8weights2_8_we1 sc_out sc_logic 1 signal 108 } 
	{ p_ZL8weights2_9_address0 sc_out sc_lv 8 signal 109 } 
	{ p_ZL8weights2_9_ce0 sc_out sc_logic 1 signal 109 } 
	{ p_ZL8weights2_9_d0 sc_out sc_lv 32 signal 109 } 
	{ p_ZL8weights2_9_q0 sc_in sc_lv 32 signal 109 } 
	{ p_ZL8weights2_9_we0 sc_out sc_logic 1 signal 109 } 
	{ p_ZL8weights2_9_address1 sc_out sc_lv 8 signal 109 } 
	{ p_ZL8weights2_9_ce1 sc_out sc_logic 1 signal 109 } 
	{ p_ZL8weights2_9_d1 sc_out sc_lv 32 signal 109 } 
	{ p_ZL8weights2_9_q1 sc_in sc_lv 32 signal 109 } 
	{ p_ZL8weights2_9_we1 sc_out sc_logic 1 signal 109 } 
	{ p_ZL8weights2_10_address0 sc_out sc_lv 8 signal 110 } 
	{ p_ZL8weights2_10_ce0 sc_out sc_logic 1 signal 110 } 
	{ p_ZL8weights2_10_d0 sc_out sc_lv 32 signal 110 } 
	{ p_ZL8weights2_10_q0 sc_in sc_lv 32 signal 110 } 
	{ p_ZL8weights2_10_we0 sc_out sc_logic 1 signal 110 } 
	{ p_ZL8weights2_10_address1 sc_out sc_lv 8 signal 110 } 
	{ p_ZL8weights2_10_ce1 sc_out sc_logic 1 signal 110 } 
	{ p_ZL8weights2_10_d1 sc_out sc_lv 32 signal 110 } 
	{ p_ZL8weights2_10_q1 sc_in sc_lv 32 signal 110 } 
	{ p_ZL8weights2_10_we1 sc_out sc_logic 1 signal 110 } 
	{ p_ZL8weights2_11_address0 sc_out sc_lv 8 signal 111 } 
	{ p_ZL8weights2_11_ce0 sc_out sc_logic 1 signal 111 } 
	{ p_ZL8weights2_11_d0 sc_out sc_lv 32 signal 111 } 
	{ p_ZL8weights2_11_q0 sc_in sc_lv 32 signal 111 } 
	{ p_ZL8weights2_11_we0 sc_out sc_logic 1 signal 111 } 
	{ p_ZL8weights2_11_address1 sc_out sc_lv 8 signal 111 } 
	{ p_ZL8weights2_11_ce1 sc_out sc_logic 1 signal 111 } 
	{ p_ZL8weights2_11_d1 sc_out sc_lv 32 signal 111 } 
	{ p_ZL8weights2_11_q1 sc_in sc_lv 32 signal 111 } 
	{ p_ZL8weights2_11_we1 sc_out sc_logic 1 signal 111 } 
	{ p_ZL8weights2_12_address0 sc_out sc_lv 8 signal 112 } 
	{ p_ZL8weights2_12_ce0 sc_out sc_logic 1 signal 112 } 
	{ p_ZL8weights2_12_d0 sc_out sc_lv 32 signal 112 } 
	{ p_ZL8weights2_12_q0 sc_in sc_lv 32 signal 112 } 
	{ p_ZL8weights2_12_we0 sc_out sc_logic 1 signal 112 } 
	{ p_ZL8weights2_12_address1 sc_out sc_lv 8 signal 112 } 
	{ p_ZL8weights2_12_ce1 sc_out sc_logic 1 signal 112 } 
	{ p_ZL8weights2_12_d1 sc_out sc_lv 32 signal 112 } 
	{ p_ZL8weights2_12_q1 sc_in sc_lv 32 signal 112 } 
	{ p_ZL8weights2_12_we1 sc_out sc_logic 1 signal 112 } 
	{ p_ZL8weights2_13_address0 sc_out sc_lv 8 signal 113 } 
	{ p_ZL8weights2_13_ce0 sc_out sc_logic 1 signal 113 } 
	{ p_ZL8weights2_13_d0 sc_out sc_lv 32 signal 113 } 
	{ p_ZL8weights2_13_q0 sc_in sc_lv 32 signal 113 } 
	{ p_ZL8weights2_13_we0 sc_out sc_logic 1 signal 113 } 
	{ p_ZL8weights2_13_address1 sc_out sc_lv 8 signal 113 } 
	{ p_ZL8weights2_13_ce1 sc_out sc_logic 1 signal 113 } 
	{ p_ZL8weights2_13_d1 sc_out sc_lv 32 signal 113 } 
	{ p_ZL8weights2_13_q1 sc_in sc_lv 32 signal 113 } 
	{ p_ZL8weights2_13_we1 sc_out sc_logic 1 signal 113 } 
	{ p_ZL8weights2_14_address0 sc_out sc_lv 8 signal 114 } 
	{ p_ZL8weights2_14_ce0 sc_out sc_logic 1 signal 114 } 
	{ p_ZL8weights2_14_d0 sc_out sc_lv 32 signal 114 } 
	{ p_ZL8weights2_14_q0 sc_in sc_lv 32 signal 114 } 
	{ p_ZL8weights2_14_we0 sc_out sc_logic 1 signal 114 } 
	{ p_ZL8weights2_14_address1 sc_out sc_lv 8 signal 114 } 
	{ p_ZL8weights2_14_ce1 sc_out sc_logic 1 signal 114 } 
	{ p_ZL8weights2_14_d1 sc_out sc_lv 32 signal 114 } 
	{ p_ZL8weights2_14_q1 sc_in sc_lv 32 signal 114 } 
	{ p_ZL8weights2_14_we1 sc_out sc_logic 1 signal 114 } 
	{ p_ZL8weights2_15_address0 sc_out sc_lv 8 signal 115 } 
	{ p_ZL8weights2_15_ce0 sc_out sc_logic 1 signal 115 } 
	{ p_ZL8weights2_15_d0 sc_out sc_lv 32 signal 115 } 
	{ p_ZL8weights2_15_q0 sc_in sc_lv 32 signal 115 } 
	{ p_ZL8weights2_15_we0 sc_out sc_logic 1 signal 115 } 
	{ p_ZL8weights2_15_address1 sc_out sc_lv 8 signal 115 } 
	{ p_ZL8weights2_15_ce1 sc_out sc_logic 1 signal 115 } 
	{ p_ZL8weights2_15_d1 sc_out sc_lv 32 signal 115 } 
	{ p_ZL8weights2_15_q1 sc_in sc_lv 32 signal 115 } 
	{ p_ZL8weights2_15_we1 sc_out sc_logic 1 signal 115 } 
	{ p_ZL8threshs2_0_address0 sc_out sc_lv 3 signal 116 } 
	{ p_ZL8threshs2_0_ce0 sc_out sc_logic 1 signal 116 } 
	{ p_ZL8threshs2_0_d0 sc_out sc_lv 16 signal 116 } 
	{ p_ZL8threshs2_0_q0 sc_in sc_lv 16 signal 116 } 
	{ p_ZL8threshs2_0_we0 sc_out sc_logic 1 signal 116 } 
	{ p_ZL8threshs2_0_address1 sc_out sc_lv 3 signal 116 } 
	{ p_ZL8threshs2_0_ce1 sc_out sc_logic 1 signal 116 } 
	{ p_ZL8threshs2_0_d1 sc_out sc_lv 16 signal 116 } 
	{ p_ZL8threshs2_0_q1 sc_in sc_lv 16 signal 116 } 
	{ p_ZL8threshs2_0_we1 sc_out sc_logic 1 signal 116 } 
	{ p_ZL8threshs2_1_address0 sc_out sc_lv 3 signal 117 } 
	{ p_ZL8threshs2_1_ce0 sc_out sc_logic 1 signal 117 } 
	{ p_ZL8threshs2_1_d0 sc_out sc_lv 16 signal 117 } 
	{ p_ZL8threshs2_1_q0 sc_in sc_lv 16 signal 117 } 
	{ p_ZL8threshs2_1_we0 sc_out sc_logic 1 signal 117 } 
	{ p_ZL8threshs2_1_address1 sc_out sc_lv 3 signal 117 } 
	{ p_ZL8threshs2_1_ce1 sc_out sc_logic 1 signal 117 } 
	{ p_ZL8threshs2_1_d1 sc_out sc_lv 16 signal 117 } 
	{ p_ZL8threshs2_1_q1 sc_in sc_lv 16 signal 117 } 
	{ p_ZL8threshs2_1_we1 sc_out sc_logic 1 signal 117 } 
	{ p_ZL8threshs2_2_address0 sc_out sc_lv 3 signal 118 } 
	{ p_ZL8threshs2_2_ce0 sc_out sc_logic 1 signal 118 } 
	{ p_ZL8threshs2_2_d0 sc_out sc_lv 16 signal 118 } 
	{ p_ZL8threshs2_2_q0 sc_in sc_lv 16 signal 118 } 
	{ p_ZL8threshs2_2_we0 sc_out sc_logic 1 signal 118 } 
	{ p_ZL8threshs2_2_address1 sc_out sc_lv 3 signal 118 } 
	{ p_ZL8threshs2_2_ce1 sc_out sc_logic 1 signal 118 } 
	{ p_ZL8threshs2_2_d1 sc_out sc_lv 16 signal 118 } 
	{ p_ZL8threshs2_2_q1 sc_in sc_lv 16 signal 118 } 
	{ p_ZL8threshs2_2_we1 sc_out sc_logic 1 signal 118 } 
	{ p_ZL8threshs2_3_address0 sc_out sc_lv 3 signal 119 } 
	{ p_ZL8threshs2_3_ce0 sc_out sc_logic 1 signal 119 } 
	{ p_ZL8threshs2_3_d0 sc_out sc_lv 16 signal 119 } 
	{ p_ZL8threshs2_3_q0 sc_in sc_lv 16 signal 119 } 
	{ p_ZL8threshs2_3_we0 sc_out sc_logic 1 signal 119 } 
	{ p_ZL8threshs2_3_address1 sc_out sc_lv 3 signal 119 } 
	{ p_ZL8threshs2_3_ce1 sc_out sc_logic 1 signal 119 } 
	{ p_ZL8threshs2_3_d1 sc_out sc_lv 16 signal 119 } 
	{ p_ZL8threshs2_3_q1 sc_in sc_lv 16 signal 119 } 
	{ p_ZL8threshs2_3_we1 sc_out sc_logic 1 signal 119 } 
	{ p_ZL8threshs2_4_address0 sc_out sc_lv 3 signal 120 } 
	{ p_ZL8threshs2_4_ce0 sc_out sc_logic 1 signal 120 } 
	{ p_ZL8threshs2_4_d0 sc_out sc_lv 16 signal 120 } 
	{ p_ZL8threshs2_4_q0 sc_in sc_lv 16 signal 120 } 
	{ p_ZL8threshs2_4_we0 sc_out sc_logic 1 signal 120 } 
	{ p_ZL8threshs2_4_address1 sc_out sc_lv 3 signal 120 } 
	{ p_ZL8threshs2_4_ce1 sc_out sc_logic 1 signal 120 } 
	{ p_ZL8threshs2_4_d1 sc_out sc_lv 16 signal 120 } 
	{ p_ZL8threshs2_4_q1 sc_in sc_lv 16 signal 120 } 
	{ p_ZL8threshs2_4_we1 sc_out sc_logic 1 signal 120 } 
	{ p_ZL8threshs2_5_address0 sc_out sc_lv 3 signal 121 } 
	{ p_ZL8threshs2_5_ce0 sc_out sc_logic 1 signal 121 } 
	{ p_ZL8threshs2_5_d0 sc_out sc_lv 16 signal 121 } 
	{ p_ZL8threshs2_5_q0 sc_in sc_lv 16 signal 121 } 
	{ p_ZL8threshs2_5_we0 sc_out sc_logic 1 signal 121 } 
	{ p_ZL8threshs2_5_address1 sc_out sc_lv 3 signal 121 } 
	{ p_ZL8threshs2_5_ce1 sc_out sc_logic 1 signal 121 } 
	{ p_ZL8threshs2_5_d1 sc_out sc_lv 16 signal 121 } 
	{ p_ZL8threshs2_5_q1 sc_in sc_lv 16 signal 121 } 
	{ p_ZL8threshs2_5_we1 sc_out sc_logic 1 signal 121 } 
	{ p_ZL8threshs2_6_address0 sc_out sc_lv 3 signal 122 } 
	{ p_ZL8threshs2_6_ce0 sc_out sc_logic 1 signal 122 } 
	{ p_ZL8threshs2_6_d0 sc_out sc_lv 16 signal 122 } 
	{ p_ZL8threshs2_6_q0 sc_in sc_lv 16 signal 122 } 
	{ p_ZL8threshs2_6_we0 sc_out sc_logic 1 signal 122 } 
	{ p_ZL8threshs2_6_address1 sc_out sc_lv 3 signal 122 } 
	{ p_ZL8threshs2_6_ce1 sc_out sc_logic 1 signal 122 } 
	{ p_ZL8threshs2_6_d1 sc_out sc_lv 16 signal 122 } 
	{ p_ZL8threshs2_6_q1 sc_in sc_lv 16 signal 122 } 
	{ p_ZL8threshs2_6_we1 sc_out sc_logic 1 signal 122 } 
	{ p_ZL8threshs2_7_address0 sc_out sc_lv 3 signal 123 } 
	{ p_ZL8threshs2_7_ce0 sc_out sc_logic 1 signal 123 } 
	{ p_ZL8threshs2_7_d0 sc_out sc_lv 16 signal 123 } 
	{ p_ZL8threshs2_7_q0 sc_in sc_lv 16 signal 123 } 
	{ p_ZL8threshs2_7_we0 sc_out sc_logic 1 signal 123 } 
	{ p_ZL8threshs2_7_address1 sc_out sc_lv 3 signal 123 } 
	{ p_ZL8threshs2_7_ce1 sc_out sc_logic 1 signal 123 } 
	{ p_ZL8threshs2_7_d1 sc_out sc_lv 16 signal 123 } 
	{ p_ZL8threshs2_7_q1 sc_in sc_lv 16 signal 123 } 
	{ p_ZL8threshs2_7_we1 sc_out sc_logic 1 signal 123 } 
	{ p_ZL8threshs2_8_address0 sc_out sc_lv 3 signal 124 } 
	{ p_ZL8threshs2_8_ce0 sc_out sc_logic 1 signal 124 } 
	{ p_ZL8threshs2_8_d0 sc_out sc_lv 16 signal 124 } 
	{ p_ZL8threshs2_8_q0 sc_in sc_lv 16 signal 124 } 
	{ p_ZL8threshs2_8_we0 sc_out sc_logic 1 signal 124 } 
	{ p_ZL8threshs2_8_address1 sc_out sc_lv 3 signal 124 } 
	{ p_ZL8threshs2_8_ce1 sc_out sc_logic 1 signal 124 } 
	{ p_ZL8threshs2_8_d1 sc_out sc_lv 16 signal 124 } 
	{ p_ZL8threshs2_8_q1 sc_in sc_lv 16 signal 124 } 
	{ p_ZL8threshs2_8_we1 sc_out sc_logic 1 signal 124 } 
	{ p_ZL8threshs2_9_address0 sc_out sc_lv 3 signal 125 } 
	{ p_ZL8threshs2_9_ce0 sc_out sc_logic 1 signal 125 } 
	{ p_ZL8threshs2_9_d0 sc_out sc_lv 16 signal 125 } 
	{ p_ZL8threshs2_9_q0 sc_in sc_lv 16 signal 125 } 
	{ p_ZL8threshs2_9_we0 sc_out sc_logic 1 signal 125 } 
	{ p_ZL8threshs2_9_address1 sc_out sc_lv 3 signal 125 } 
	{ p_ZL8threshs2_9_ce1 sc_out sc_logic 1 signal 125 } 
	{ p_ZL8threshs2_9_d1 sc_out sc_lv 16 signal 125 } 
	{ p_ZL8threshs2_9_q1 sc_in sc_lv 16 signal 125 } 
	{ p_ZL8threshs2_9_we1 sc_out sc_logic 1 signal 125 } 
	{ p_ZL8threshs2_10_address0 sc_out sc_lv 3 signal 126 } 
	{ p_ZL8threshs2_10_ce0 sc_out sc_logic 1 signal 126 } 
	{ p_ZL8threshs2_10_d0 sc_out sc_lv 16 signal 126 } 
	{ p_ZL8threshs2_10_q0 sc_in sc_lv 16 signal 126 } 
	{ p_ZL8threshs2_10_we0 sc_out sc_logic 1 signal 126 } 
	{ p_ZL8threshs2_10_address1 sc_out sc_lv 3 signal 126 } 
	{ p_ZL8threshs2_10_ce1 sc_out sc_logic 1 signal 126 } 
	{ p_ZL8threshs2_10_d1 sc_out sc_lv 16 signal 126 } 
	{ p_ZL8threshs2_10_q1 sc_in sc_lv 16 signal 126 } 
	{ p_ZL8threshs2_10_we1 sc_out sc_logic 1 signal 126 } 
	{ p_ZL8threshs2_11_address0 sc_out sc_lv 3 signal 127 } 
	{ p_ZL8threshs2_11_ce0 sc_out sc_logic 1 signal 127 } 
	{ p_ZL8threshs2_11_d0 sc_out sc_lv 16 signal 127 } 
	{ p_ZL8threshs2_11_q0 sc_in sc_lv 16 signal 127 } 
	{ p_ZL8threshs2_11_we0 sc_out sc_logic 1 signal 127 } 
	{ p_ZL8threshs2_11_address1 sc_out sc_lv 3 signal 127 } 
	{ p_ZL8threshs2_11_ce1 sc_out sc_logic 1 signal 127 } 
	{ p_ZL8threshs2_11_d1 sc_out sc_lv 16 signal 127 } 
	{ p_ZL8threshs2_11_q1 sc_in sc_lv 16 signal 127 } 
	{ p_ZL8threshs2_11_we1 sc_out sc_logic 1 signal 127 } 
	{ p_ZL8threshs2_12_address0 sc_out sc_lv 3 signal 128 } 
	{ p_ZL8threshs2_12_ce0 sc_out sc_logic 1 signal 128 } 
	{ p_ZL8threshs2_12_d0 sc_out sc_lv 16 signal 128 } 
	{ p_ZL8threshs2_12_q0 sc_in sc_lv 16 signal 128 } 
	{ p_ZL8threshs2_12_we0 sc_out sc_logic 1 signal 128 } 
	{ p_ZL8threshs2_12_address1 sc_out sc_lv 3 signal 128 } 
	{ p_ZL8threshs2_12_ce1 sc_out sc_logic 1 signal 128 } 
	{ p_ZL8threshs2_12_d1 sc_out sc_lv 16 signal 128 } 
	{ p_ZL8threshs2_12_q1 sc_in sc_lv 16 signal 128 } 
	{ p_ZL8threshs2_12_we1 sc_out sc_logic 1 signal 128 } 
	{ p_ZL8threshs2_13_address0 sc_out sc_lv 3 signal 129 } 
	{ p_ZL8threshs2_13_ce0 sc_out sc_logic 1 signal 129 } 
	{ p_ZL8threshs2_13_d0 sc_out sc_lv 16 signal 129 } 
	{ p_ZL8threshs2_13_q0 sc_in sc_lv 16 signal 129 } 
	{ p_ZL8threshs2_13_we0 sc_out sc_logic 1 signal 129 } 
	{ p_ZL8threshs2_13_address1 sc_out sc_lv 3 signal 129 } 
	{ p_ZL8threshs2_13_ce1 sc_out sc_logic 1 signal 129 } 
	{ p_ZL8threshs2_13_d1 sc_out sc_lv 16 signal 129 } 
	{ p_ZL8threshs2_13_q1 sc_in sc_lv 16 signal 129 } 
	{ p_ZL8threshs2_13_we1 sc_out sc_logic 1 signal 129 } 
	{ p_ZL8threshs2_14_address0 sc_out sc_lv 3 signal 130 } 
	{ p_ZL8threshs2_14_ce0 sc_out sc_logic 1 signal 130 } 
	{ p_ZL8threshs2_14_d0 sc_out sc_lv 16 signal 130 } 
	{ p_ZL8threshs2_14_q0 sc_in sc_lv 16 signal 130 } 
	{ p_ZL8threshs2_14_we0 sc_out sc_logic 1 signal 130 } 
	{ p_ZL8threshs2_14_address1 sc_out sc_lv 3 signal 130 } 
	{ p_ZL8threshs2_14_ce1 sc_out sc_logic 1 signal 130 } 
	{ p_ZL8threshs2_14_d1 sc_out sc_lv 16 signal 130 } 
	{ p_ZL8threshs2_14_q1 sc_in sc_lv 16 signal 130 } 
	{ p_ZL8threshs2_14_we1 sc_out sc_logic 1 signal 130 } 
	{ p_ZL8threshs2_15_address0 sc_out sc_lv 3 signal 131 } 
	{ p_ZL8threshs2_15_ce0 sc_out sc_logic 1 signal 131 } 
	{ p_ZL8threshs2_15_d0 sc_out sc_lv 16 signal 131 } 
	{ p_ZL8threshs2_15_q0 sc_in sc_lv 16 signal 131 } 
	{ p_ZL8threshs2_15_we0 sc_out sc_logic 1 signal 131 } 
	{ p_ZL8threshs2_15_address1 sc_out sc_lv 3 signal 131 } 
	{ p_ZL8threshs2_15_ce1 sc_out sc_logic 1 signal 131 } 
	{ p_ZL8threshs2_15_d1 sc_out sc_lv 16 signal 131 } 
	{ p_ZL8threshs2_15_q1 sc_in sc_lv 16 signal 131 } 
	{ p_ZL8threshs2_15_we1 sc_out sc_logic 1 signal 131 } 
	{ p_ZL8weights3_0_address0 sc_out sc_lv 9 signal 132 } 
	{ p_ZL8weights3_0_ce0 sc_out sc_logic 1 signal 132 } 
	{ p_ZL8weights3_0_d0 sc_out sc_lv 32 signal 132 } 
	{ p_ZL8weights3_0_q0 sc_in sc_lv 32 signal 132 } 
	{ p_ZL8weights3_0_we0 sc_out sc_logic 1 signal 132 } 
	{ p_ZL8weights3_0_address1 sc_out sc_lv 9 signal 132 } 
	{ p_ZL8weights3_0_ce1 sc_out sc_logic 1 signal 132 } 
	{ p_ZL8weights3_0_d1 sc_out sc_lv 32 signal 132 } 
	{ p_ZL8weights3_0_q1 sc_in sc_lv 32 signal 132 } 
	{ p_ZL8weights3_0_we1 sc_out sc_logic 1 signal 132 } 
	{ p_ZL8weights3_1_address0 sc_out sc_lv 9 signal 133 } 
	{ p_ZL8weights3_1_ce0 sc_out sc_logic 1 signal 133 } 
	{ p_ZL8weights3_1_d0 sc_out sc_lv 32 signal 133 } 
	{ p_ZL8weights3_1_q0 sc_in sc_lv 32 signal 133 } 
	{ p_ZL8weights3_1_we0 sc_out sc_logic 1 signal 133 } 
	{ p_ZL8weights3_1_address1 sc_out sc_lv 9 signal 133 } 
	{ p_ZL8weights3_1_ce1 sc_out sc_logic 1 signal 133 } 
	{ p_ZL8weights3_1_d1 sc_out sc_lv 32 signal 133 } 
	{ p_ZL8weights3_1_q1 sc_in sc_lv 32 signal 133 } 
	{ p_ZL8weights3_1_we1 sc_out sc_logic 1 signal 133 } 
	{ p_ZL8weights3_2_address0 sc_out sc_lv 9 signal 134 } 
	{ p_ZL8weights3_2_ce0 sc_out sc_logic 1 signal 134 } 
	{ p_ZL8weights3_2_d0 sc_out sc_lv 32 signal 134 } 
	{ p_ZL8weights3_2_q0 sc_in sc_lv 32 signal 134 } 
	{ p_ZL8weights3_2_we0 sc_out sc_logic 1 signal 134 } 
	{ p_ZL8weights3_2_address1 sc_out sc_lv 9 signal 134 } 
	{ p_ZL8weights3_2_ce1 sc_out sc_logic 1 signal 134 } 
	{ p_ZL8weights3_2_d1 sc_out sc_lv 32 signal 134 } 
	{ p_ZL8weights3_2_q1 sc_in sc_lv 32 signal 134 } 
	{ p_ZL8weights3_2_we1 sc_out sc_logic 1 signal 134 } 
	{ p_ZL8weights3_3_address0 sc_out sc_lv 9 signal 135 } 
	{ p_ZL8weights3_3_ce0 sc_out sc_logic 1 signal 135 } 
	{ p_ZL8weights3_3_d0 sc_out sc_lv 32 signal 135 } 
	{ p_ZL8weights3_3_q0 sc_in sc_lv 32 signal 135 } 
	{ p_ZL8weights3_3_we0 sc_out sc_logic 1 signal 135 } 
	{ p_ZL8weights3_3_address1 sc_out sc_lv 9 signal 135 } 
	{ p_ZL8weights3_3_ce1 sc_out sc_logic 1 signal 135 } 
	{ p_ZL8weights3_3_d1 sc_out sc_lv 32 signal 135 } 
	{ p_ZL8weights3_3_q1 sc_in sc_lv 32 signal 135 } 
	{ p_ZL8weights3_3_we1 sc_out sc_logic 1 signal 135 } 
	{ p_ZL8weights3_4_address0 sc_out sc_lv 9 signal 136 } 
	{ p_ZL8weights3_4_ce0 sc_out sc_logic 1 signal 136 } 
	{ p_ZL8weights3_4_d0 sc_out sc_lv 32 signal 136 } 
	{ p_ZL8weights3_4_q0 sc_in sc_lv 32 signal 136 } 
	{ p_ZL8weights3_4_we0 sc_out sc_logic 1 signal 136 } 
	{ p_ZL8weights3_4_address1 sc_out sc_lv 9 signal 136 } 
	{ p_ZL8weights3_4_ce1 sc_out sc_logic 1 signal 136 } 
	{ p_ZL8weights3_4_d1 sc_out sc_lv 32 signal 136 } 
	{ p_ZL8weights3_4_q1 sc_in sc_lv 32 signal 136 } 
	{ p_ZL8weights3_4_we1 sc_out sc_logic 1 signal 136 } 
	{ p_ZL8weights3_5_address0 sc_out sc_lv 9 signal 137 } 
	{ p_ZL8weights3_5_ce0 sc_out sc_logic 1 signal 137 } 
	{ p_ZL8weights3_5_d0 sc_out sc_lv 32 signal 137 } 
	{ p_ZL8weights3_5_q0 sc_in sc_lv 32 signal 137 } 
	{ p_ZL8weights3_5_we0 sc_out sc_logic 1 signal 137 } 
	{ p_ZL8weights3_5_address1 sc_out sc_lv 9 signal 137 } 
	{ p_ZL8weights3_5_ce1 sc_out sc_logic 1 signal 137 } 
	{ p_ZL8weights3_5_d1 sc_out sc_lv 32 signal 137 } 
	{ p_ZL8weights3_5_q1 sc_in sc_lv 32 signal 137 } 
	{ p_ZL8weights3_5_we1 sc_out sc_logic 1 signal 137 } 
	{ p_ZL8weights3_6_address0 sc_out sc_lv 9 signal 138 } 
	{ p_ZL8weights3_6_ce0 sc_out sc_logic 1 signal 138 } 
	{ p_ZL8weights3_6_d0 sc_out sc_lv 32 signal 138 } 
	{ p_ZL8weights3_6_q0 sc_in sc_lv 32 signal 138 } 
	{ p_ZL8weights3_6_we0 sc_out sc_logic 1 signal 138 } 
	{ p_ZL8weights3_6_address1 sc_out sc_lv 9 signal 138 } 
	{ p_ZL8weights3_6_ce1 sc_out sc_logic 1 signal 138 } 
	{ p_ZL8weights3_6_d1 sc_out sc_lv 32 signal 138 } 
	{ p_ZL8weights3_6_q1 sc_in sc_lv 32 signal 138 } 
	{ p_ZL8weights3_6_we1 sc_out sc_logic 1 signal 138 } 
	{ p_ZL8weights3_7_address0 sc_out sc_lv 9 signal 139 } 
	{ p_ZL8weights3_7_ce0 sc_out sc_logic 1 signal 139 } 
	{ p_ZL8weights3_7_d0 sc_out sc_lv 32 signal 139 } 
	{ p_ZL8weights3_7_q0 sc_in sc_lv 32 signal 139 } 
	{ p_ZL8weights3_7_we0 sc_out sc_logic 1 signal 139 } 
	{ p_ZL8weights3_7_address1 sc_out sc_lv 9 signal 139 } 
	{ p_ZL8weights3_7_ce1 sc_out sc_logic 1 signal 139 } 
	{ p_ZL8weights3_7_d1 sc_out sc_lv 32 signal 139 } 
	{ p_ZL8weights3_7_q1 sc_in sc_lv 32 signal 139 } 
	{ p_ZL8weights3_7_we1 sc_out sc_logic 1 signal 139 } 
	{ p_ZL8weights3_8_address0 sc_out sc_lv 9 signal 140 } 
	{ p_ZL8weights3_8_ce0 sc_out sc_logic 1 signal 140 } 
	{ p_ZL8weights3_8_d0 sc_out sc_lv 32 signal 140 } 
	{ p_ZL8weights3_8_q0 sc_in sc_lv 32 signal 140 } 
	{ p_ZL8weights3_8_we0 sc_out sc_logic 1 signal 140 } 
	{ p_ZL8weights3_8_address1 sc_out sc_lv 9 signal 140 } 
	{ p_ZL8weights3_8_ce1 sc_out sc_logic 1 signal 140 } 
	{ p_ZL8weights3_8_d1 sc_out sc_lv 32 signal 140 } 
	{ p_ZL8weights3_8_q1 sc_in sc_lv 32 signal 140 } 
	{ p_ZL8weights3_8_we1 sc_out sc_logic 1 signal 140 } 
	{ p_ZL8weights3_9_address0 sc_out sc_lv 9 signal 141 } 
	{ p_ZL8weights3_9_ce0 sc_out sc_logic 1 signal 141 } 
	{ p_ZL8weights3_9_d0 sc_out sc_lv 32 signal 141 } 
	{ p_ZL8weights3_9_q0 sc_in sc_lv 32 signal 141 } 
	{ p_ZL8weights3_9_we0 sc_out sc_logic 1 signal 141 } 
	{ p_ZL8weights3_9_address1 sc_out sc_lv 9 signal 141 } 
	{ p_ZL8weights3_9_ce1 sc_out sc_logic 1 signal 141 } 
	{ p_ZL8weights3_9_d1 sc_out sc_lv 32 signal 141 } 
	{ p_ZL8weights3_9_q1 sc_in sc_lv 32 signal 141 } 
	{ p_ZL8weights3_9_we1 sc_out sc_logic 1 signal 141 } 
	{ p_ZL8weights3_10_address0 sc_out sc_lv 9 signal 142 } 
	{ p_ZL8weights3_10_ce0 sc_out sc_logic 1 signal 142 } 
	{ p_ZL8weights3_10_d0 sc_out sc_lv 32 signal 142 } 
	{ p_ZL8weights3_10_q0 sc_in sc_lv 32 signal 142 } 
	{ p_ZL8weights3_10_we0 sc_out sc_logic 1 signal 142 } 
	{ p_ZL8weights3_10_address1 sc_out sc_lv 9 signal 142 } 
	{ p_ZL8weights3_10_ce1 sc_out sc_logic 1 signal 142 } 
	{ p_ZL8weights3_10_d1 sc_out sc_lv 32 signal 142 } 
	{ p_ZL8weights3_10_q1 sc_in sc_lv 32 signal 142 } 
	{ p_ZL8weights3_10_we1 sc_out sc_logic 1 signal 142 } 
	{ p_ZL8weights3_11_address0 sc_out sc_lv 9 signal 143 } 
	{ p_ZL8weights3_11_ce0 sc_out sc_logic 1 signal 143 } 
	{ p_ZL8weights3_11_d0 sc_out sc_lv 32 signal 143 } 
	{ p_ZL8weights3_11_q0 sc_in sc_lv 32 signal 143 } 
	{ p_ZL8weights3_11_we0 sc_out sc_logic 1 signal 143 } 
	{ p_ZL8weights3_11_address1 sc_out sc_lv 9 signal 143 } 
	{ p_ZL8weights3_11_ce1 sc_out sc_logic 1 signal 143 } 
	{ p_ZL8weights3_11_d1 sc_out sc_lv 32 signal 143 } 
	{ p_ZL8weights3_11_q1 sc_in sc_lv 32 signal 143 } 
	{ p_ZL8weights3_11_we1 sc_out sc_logic 1 signal 143 } 
	{ p_ZL8weights3_12_address0 sc_out sc_lv 9 signal 144 } 
	{ p_ZL8weights3_12_ce0 sc_out sc_logic 1 signal 144 } 
	{ p_ZL8weights3_12_d0 sc_out sc_lv 32 signal 144 } 
	{ p_ZL8weights3_12_q0 sc_in sc_lv 32 signal 144 } 
	{ p_ZL8weights3_12_we0 sc_out sc_logic 1 signal 144 } 
	{ p_ZL8weights3_12_address1 sc_out sc_lv 9 signal 144 } 
	{ p_ZL8weights3_12_ce1 sc_out sc_logic 1 signal 144 } 
	{ p_ZL8weights3_12_d1 sc_out sc_lv 32 signal 144 } 
	{ p_ZL8weights3_12_q1 sc_in sc_lv 32 signal 144 } 
	{ p_ZL8weights3_12_we1 sc_out sc_logic 1 signal 144 } 
	{ p_ZL8weights3_13_address0 sc_out sc_lv 9 signal 145 } 
	{ p_ZL8weights3_13_ce0 sc_out sc_logic 1 signal 145 } 
	{ p_ZL8weights3_13_d0 sc_out sc_lv 32 signal 145 } 
	{ p_ZL8weights3_13_q0 sc_in sc_lv 32 signal 145 } 
	{ p_ZL8weights3_13_we0 sc_out sc_logic 1 signal 145 } 
	{ p_ZL8weights3_13_address1 sc_out sc_lv 9 signal 145 } 
	{ p_ZL8weights3_13_ce1 sc_out sc_logic 1 signal 145 } 
	{ p_ZL8weights3_13_d1 sc_out sc_lv 32 signal 145 } 
	{ p_ZL8weights3_13_q1 sc_in sc_lv 32 signal 145 } 
	{ p_ZL8weights3_13_we1 sc_out sc_logic 1 signal 145 } 
	{ p_ZL8weights3_14_address0 sc_out sc_lv 9 signal 146 } 
	{ p_ZL8weights3_14_ce0 sc_out sc_logic 1 signal 146 } 
	{ p_ZL8weights3_14_d0 sc_out sc_lv 32 signal 146 } 
	{ p_ZL8weights3_14_q0 sc_in sc_lv 32 signal 146 } 
	{ p_ZL8weights3_14_we0 sc_out sc_logic 1 signal 146 } 
	{ p_ZL8weights3_14_address1 sc_out sc_lv 9 signal 146 } 
	{ p_ZL8weights3_14_ce1 sc_out sc_logic 1 signal 146 } 
	{ p_ZL8weights3_14_d1 sc_out sc_lv 32 signal 146 } 
	{ p_ZL8weights3_14_q1 sc_in sc_lv 32 signal 146 } 
	{ p_ZL8weights3_14_we1 sc_out sc_logic 1 signal 146 } 
	{ p_ZL8weights3_15_address0 sc_out sc_lv 9 signal 147 } 
	{ p_ZL8weights3_15_ce0 sc_out sc_logic 1 signal 147 } 
	{ p_ZL8weights3_15_d0 sc_out sc_lv 32 signal 147 } 
	{ p_ZL8weights3_15_q0 sc_in sc_lv 32 signal 147 } 
	{ p_ZL8weights3_15_we0 sc_out sc_logic 1 signal 147 } 
	{ p_ZL8weights3_15_address1 sc_out sc_lv 9 signal 147 } 
	{ p_ZL8weights3_15_ce1 sc_out sc_logic 1 signal 147 } 
	{ p_ZL8weights3_15_d1 sc_out sc_lv 32 signal 147 } 
	{ p_ZL8weights3_15_q1 sc_in sc_lv 32 signal 147 } 
	{ p_ZL8weights3_15_we1 sc_out sc_logic 1 signal 147 } 
	{ p_ZL8threshs3_0_address0 sc_out sc_lv 3 signal 148 } 
	{ p_ZL8threshs3_0_ce0 sc_out sc_logic 1 signal 148 } 
	{ p_ZL8threshs3_0_d0 sc_out sc_lv 16 signal 148 } 
	{ p_ZL8threshs3_0_q0 sc_in sc_lv 16 signal 148 } 
	{ p_ZL8threshs3_0_we0 sc_out sc_logic 1 signal 148 } 
	{ p_ZL8threshs3_0_address1 sc_out sc_lv 3 signal 148 } 
	{ p_ZL8threshs3_0_ce1 sc_out sc_logic 1 signal 148 } 
	{ p_ZL8threshs3_0_d1 sc_out sc_lv 16 signal 148 } 
	{ p_ZL8threshs3_0_q1 sc_in sc_lv 16 signal 148 } 
	{ p_ZL8threshs3_0_we1 sc_out sc_logic 1 signal 148 } 
	{ p_ZL8threshs3_1_address0 sc_out sc_lv 3 signal 149 } 
	{ p_ZL8threshs3_1_ce0 sc_out sc_logic 1 signal 149 } 
	{ p_ZL8threshs3_1_d0 sc_out sc_lv 16 signal 149 } 
	{ p_ZL8threshs3_1_q0 sc_in sc_lv 16 signal 149 } 
	{ p_ZL8threshs3_1_we0 sc_out sc_logic 1 signal 149 } 
	{ p_ZL8threshs3_1_address1 sc_out sc_lv 3 signal 149 } 
	{ p_ZL8threshs3_1_ce1 sc_out sc_logic 1 signal 149 } 
	{ p_ZL8threshs3_1_d1 sc_out sc_lv 16 signal 149 } 
	{ p_ZL8threshs3_1_q1 sc_in sc_lv 16 signal 149 } 
	{ p_ZL8threshs3_1_we1 sc_out sc_logic 1 signal 149 } 
	{ p_ZL8threshs3_2_address0 sc_out sc_lv 3 signal 150 } 
	{ p_ZL8threshs3_2_ce0 sc_out sc_logic 1 signal 150 } 
	{ p_ZL8threshs3_2_d0 sc_out sc_lv 16 signal 150 } 
	{ p_ZL8threshs3_2_q0 sc_in sc_lv 16 signal 150 } 
	{ p_ZL8threshs3_2_we0 sc_out sc_logic 1 signal 150 } 
	{ p_ZL8threshs3_2_address1 sc_out sc_lv 3 signal 150 } 
	{ p_ZL8threshs3_2_ce1 sc_out sc_logic 1 signal 150 } 
	{ p_ZL8threshs3_2_d1 sc_out sc_lv 16 signal 150 } 
	{ p_ZL8threshs3_2_q1 sc_in sc_lv 16 signal 150 } 
	{ p_ZL8threshs3_2_we1 sc_out sc_logic 1 signal 150 } 
	{ p_ZL8threshs3_3_address0 sc_out sc_lv 3 signal 151 } 
	{ p_ZL8threshs3_3_ce0 sc_out sc_logic 1 signal 151 } 
	{ p_ZL8threshs3_3_d0 sc_out sc_lv 16 signal 151 } 
	{ p_ZL8threshs3_3_q0 sc_in sc_lv 16 signal 151 } 
	{ p_ZL8threshs3_3_we0 sc_out sc_logic 1 signal 151 } 
	{ p_ZL8threshs3_3_address1 sc_out sc_lv 3 signal 151 } 
	{ p_ZL8threshs3_3_ce1 sc_out sc_logic 1 signal 151 } 
	{ p_ZL8threshs3_3_d1 sc_out sc_lv 16 signal 151 } 
	{ p_ZL8threshs3_3_q1 sc_in sc_lv 16 signal 151 } 
	{ p_ZL8threshs3_3_we1 sc_out sc_logic 1 signal 151 } 
	{ p_ZL8threshs3_4_address0 sc_out sc_lv 3 signal 152 } 
	{ p_ZL8threshs3_4_ce0 sc_out sc_logic 1 signal 152 } 
	{ p_ZL8threshs3_4_d0 sc_out sc_lv 16 signal 152 } 
	{ p_ZL8threshs3_4_q0 sc_in sc_lv 16 signal 152 } 
	{ p_ZL8threshs3_4_we0 sc_out sc_logic 1 signal 152 } 
	{ p_ZL8threshs3_4_address1 sc_out sc_lv 3 signal 152 } 
	{ p_ZL8threshs3_4_ce1 sc_out sc_logic 1 signal 152 } 
	{ p_ZL8threshs3_4_d1 sc_out sc_lv 16 signal 152 } 
	{ p_ZL8threshs3_4_q1 sc_in sc_lv 16 signal 152 } 
	{ p_ZL8threshs3_4_we1 sc_out sc_logic 1 signal 152 } 
	{ p_ZL8threshs3_5_address0 sc_out sc_lv 3 signal 153 } 
	{ p_ZL8threshs3_5_ce0 sc_out sc_logic 1 signal 153 } 
	{ p_ZL8threshs3_5_d0 sc_out sc_lv 16 signal 153 } 
	{ p_ZL8threshs3_5_q0 sc_in sc_lv 16 signal 153 } 
	{ p_ZL8threshs3_5_we0 sc_out sc_logic 1 signal 153 } 
	{ p_ZL8threshs3_5_address1 sc_out sc_lv 3 signal 153 } 
	{ p_ZL8threshs3_5_ce1 sc_out sc_logic 1 signal 153 } 
	{ p_ZL8threshs3_5_d1 sc_out sc_lv 16 signal 153 } 
	{ p_ZL8threshs3_5_q1 sc_in sc_lv 16 signal 153 } 
	{ p_ZL8threshs3_5_we1 sc_out sc_logic 1 signal 153 } 
	{ p_ZL8threshs3_6_address0 sc_out sc_lv 3 signal 154 } 
	{ p_ZL8threshs3_6_ce0 sc_out sc_logic 1 signal 154 } 
	{ p_ZL8threshs3_6_d0 sc_out sc_lv 16 signal 154 } 
	{ p_ZL8threshs3_6_q0 sc_in sc_lv 16 signal 154 } 
	{ p_ZL8threshs3_6_we0 sc_out sc_logic 1 signal 154 } 
	{ p_ZL8threshs3_6_address1 sc_out sc_lv 3 signal 154 } 
	{ p_ZL8threshs3_6_ce1 sc_out sc_logic 1 signal 154 } 
	{ p_ZL8threshs3_6_d1 sc_out sc_lv 16 signal 154 } 
	{ p_ZL8threshs3_6_q1 sc_in sc_lv 16 signal 154 } 
	{ p_ZL8threshs3_6_we1 sc_out sc_logic 1 signal 154 } 
	{ p_ZL8threshs3_7_address0 sc_out sc_lv 3 signal 155 } 
	{ p_ZL8threshs3_7_ce0 sc_out sc_logic 1 signal 155 } 
	{ p_ZL8threshs3_7_d0 sc_out sc_lv 16 signal 155 } 
	{ p_ZL8threshs3_7_q0 sc_in sc_lv 16 signal 155 } 
	{ p_ZL8threshs3_7_we0 sc_out sc_logic 1 signal 155 } 
	{ p_ZL8threshs3_7_address1 sc_out sc_lv 3 signal 155 } 
	{ p_ZL8threshs3_7_ce1 sc_out sc_logic 1 signal 155 } 
	{ p_ZL8threshs3_7_d1 sc_out sc_lv 16 signal 155 } 
	{ p_ZL8threshs3_7_q1 sc_in sc_lv 16 signal 155 } 
	{ p_ZL8threshs3_7_we1 sc_out sc_logic 1 signal 155 } 
	{ p_ZL8threshs3_8_address0 sc_out sc_lv 3 signal 156 } 
	{ p_ZL8threshs3_8_ce0 sc_out sc_logic 1 signal 156 } 
	{ p_ZL8threshs3_8_d0 sc_out sc_lv 16 signal 156 } 
	{ p_ZL8threshs3_8_q0 sc_in sc_lv 16 signal 156 } 
	{ p_ZL8threshs3_8_we0 sc_out sc_logic 1 signal 156 } 
	{ p_ZL8threshs3_8_address1 sc_out sc_lv 3 signal 156 } 
	{ p_ZL8threshs3_8_ce1 sc_out sc_logic 1 signal 156 } 
	{ p_ZL8threshs3_8_d1 sc_out sc_lv 16 signal 156 } 
	{ p_ZL8threshs3_8_q1 sc_in sc_lv 16 signal 156 } 
	{ p_ZL8threshs3_8_we1 sc_out sc_logic 1 signal 156 } 
	{ p_ZL8threshs3_9_address0 sc_out sc_lv 3 signal 157 } 
	{ p_ZL8threshs3_9_ce0 sc_out sc_logic 1 signal 157 } 
	{ p_ZL8threshs3_9_d0 sc_out sc_lv 16 signal 157 } 
	{ p_ZL8threshs3_9_q0 sc_in sc_lv 16 signal 157 } 
	{ p_ZL8threshs3_9_we0 sc_out sc_logic 1 signal 157 } 
	{ p_ZL8threshs3_9_address1 sc_out sc_lv 3 signal 157 } 
	{ p_ZL8threshs3_9_ce1 sc_out sc_logic 1 signal 157 } 
	{ p_ZL8threshs3_9_d1 sc_out sc_lv 16 signal 157 } 
	{ p_ZL8threshs3_9_q1 sc_in sc_lv 16 signal 157 } 
	{ p_ZL8threshs3_9_we1 sc_out sc_logic 1 signal 157 } 
	{ p_ZL8threshs3_10_address0 sc_out sc_lv 3 signal 158 } 
	{ p_ZL8threshs3_10_ce0 sc_out sc_logic 1 signal 158 } 
	{ p_ZL8threshs3_10_d0 sc_out sc_lv 16 signal 158 } 
	{ p_ZL8threshs3_10_q0 sc_in sc_lv 16 signal 158 } 
	{ p_ZL8threshs3_10_we0 sc_out sc_logic 1 signal 158 } 
	{ p_ZL8threshs3_10_address1 sc_out sc_lv 3 signal 158 } 
	{ p_ZL8threshs3_10_ce1 sc_out sc_logic 1 signal 158 } 
	{ p_ZL8threshs3_10_d1 sc_out sc_lv 16 signal 158 } 
	{ p_ZL8threshs3_10_q1 sc_in sc_lv 16 signal 158 } 
	{ p_ZL8threshs3_10_we1 sc_out sc_logic 1 signal 158 } 
	{ p_ZL8threshs3_11_address0 sc_out sc_lv 3 signal 159 } 
	{ p_ZL8threshs3_11_ce0 sc_out sc_logic 1 signal 159 } 
	{ p_ZL8threshs3_11_d0 sc_out sc_lv 16 signal 159 } 
	{ p_ZL8threshs3_11_q0 sc_in sc_lv 16 signal 159 } 
	{ p_ZL8threshs3_11_we0 sc_out sc_logic 1 signal 159 } 
	{ p_ZL8threshs3_11_address1 sc_out sc_lv 3 signal 159 } 
	{ p_ZL8threshs3_11_ce1 sc_out sc_logic 1 signal 159 } 
	{ p_ZL8threshs3_11_d1 sc_out sc_lv 16 signal 159 } 
	{ p_ZL8threshs3_11_q1 sc_in sc_lv 16 signal 159 } 
	{ p_ZL8threshs3_11_we1 sc_out sc_logic 1 signal 159 } 
	{ p_ZL8threshs3_12_address0 sc_out sc_lv 3 signal 160 } 
	{ p_ZL8threshs3_12_ce0 sc_out sc_logic 1 signal 160 } 
	{ p_ZL8threshs3_12_d0 sc_out sc_lv 16 signal 160 } 
	{ p_ZL8threshs3_12_q0 sc_in sc_lv 16 signal 160 } 
	{ p_ZL8threshs3_12_we0 sc_out sc_logic 1 signal 160 } 
	{ p_ZL8threshs3_12_address1 sc_out sc_lv 3 signal 160 } 
	{ p_ZL8threshs3_12_ce1 sc_out sc_logic 1 signal 160 } 
	{ p_ZL8threshs3_12_d1 sc_out sc_lv 16 signal 160 } 
	{ p_ZL8threshs3_12_q1 sc_in sc_lv 16 signal 160 } 
	{ p_ZL8threshs3_12_we1 sc_out sc_logic 1 signal 160 } 
	{ p_ZL8threshs3_13_address0 sc_out sc_lv 3 signal 161 } 
	{ p_ZL8threshs3_13_ce0 sc_out sc_logic 1 signal 161 } 
	{ p_ZL8threshs3_13_d0 sc_out sc_lv 16 signal 161 } 
	{ p_ZL8threshs3_13_q0 sc_in sc_lv 16 signal 161 } 
	{ p_ZL8threshs3_13_we0 sc_out sc_logic 1 signal 161 } 
	{ p_ZL8threshs3_13_address1 sc_out sc_lv 3 signal 161 } 
	{ p_ZL8threshs3_13_ce1 sc_out sc_logic 1 signal 161 } 
	{ p_ZL8threshs3_13_d1 sc_out sc_lv 16 signal 161 } 
	{ p_ZL8threshs3_13_q1 sc_in sc_lv 16 signal 161 } 
	{ p_ZL8threshs3_13_we1 sc_out sc_logic 1 signal 161 } 
	{ p_ZL8threshs3_14_address0 sc_out sc_lv 3 signal 162 } 
	{ p_ZL8threshs3_14_ce0 sc_out sc_logic 1 signal 162 } 
	{ p_ZL8threshs3_14_d0 sc_out sc_lv 16 signal 162 } 
	{ p_ZL8threshs3_14_q0 sc_in sc_lv 16 signal 162 } 
	{ p_ZL8threshs3_14_we0 sc_out sc_logic 1 signal 162 } 
	{ p_ZL8threshs3_14_address1 sc_out sc_lv 3 signal 162 } 
	{ p_ZL8threshs3_14_ce1 sc_out sc_logic 1 signal 162 } 
	{ p_ZL8threshs3_14_d1 sc_out sc_lv 16 signal 162 } 
	{ p_ZL8threshs3_14_q1 sc_in sc_lv 16 signal 162 } 
	{ p_ZL8threshs3_14_we1 sc_out sc_logic 1 signal 162 } 
	{ p_ZL8threshs3_15_address0 sc_out sc_lv 3 signal 163 } 
	{ p_ZL8threshs3_15_ce0 sc_out sc_logic 1 signal 163 } 
	{ p_ZL8threshs3_15_d0 sc_out sc_lv 16 signal 163 } 
	{ p_ZL8threshs3_15_q0 sc_in sc_lv 16 signal 163 } 
	{ p_ZL8threshs3_15_we0 sc_out sc_logic 1 signal 163 } 
	{ p_ZL8threshs3_15_address1 sc_out sc_lv 3 signal 163 } 
	{ p_ZL8threshs3_15_ce1 sc_out sc_logic 1 signal 163 } 
	{ p_ZL8threshs3_15_d1 sc_out sc_lv 16 signal 163 } 
	{ p_ZL8threshs3_15_q1 sc_in sc_lv 16 signal 163 } 
	{ p_ZL8threshs3_15_we1 sc_out sc_logic 1 signal 163 } 
	{ p_ZL8weights4_0_address0 sc_out sc_lv 12 signal 164 } 
	{ p_ZL8weights4_0_ce0 sc_out sc_logic 1 signal 164 } 
	{ p_ZL8weights4_0_d0 sc_out sc_lv 32 signal 164 } 
	{ p_ZL8weights4_0_q0 sc_in sc_lv 32 signal 164 } 
	{ p_ZL8weights4_0_we0 sc_out sc_logic 1 signal 164 } 
	{ p_ZL8weights4_0_address1 sc_out sc_lv 12 signal 164 } 
	{ p_ZL8weights4_0_ce1 sc_out sc_logic 1 signal 164 } 
	{ p_ZL8weights4_0_d1 sc_out sc_lv 32 signal 164 } 
	{ p_ZL8weights4_0_q1 sc_in sc_lv 32 signal 164 } 
	{ p_ZL8weights4_0_we1 sc_out sc_logic 1 signal 164 } 
	{ p_ZL8weights4_1_address0 sc_out sc_lv 12 signal 165 } 
	{ p_ZL8weights4_1_ce0 sc_out sc_logic 1 signal 165 } 
	{ p_ZL8weights4_1_d0 sc_out sc_lv 32 signal 165 } 
	{ p_ZL8weights4_1_q0 sc_in sc_lv 32 signal 165 } 
	{ p_ZL8weights4_1_we0 sc_out sc_logic 1 signal 165 } 
	{ p_ZL8weights4_1_address1 sc_out sc_lv 12 signal 165 } 
	{ p_ZL8weights4_1_ce1 sc_out sc_logic 1 signal 165 } 
	{ p_ZL8weights4_1_d1 sc_out sc_lv 32 signal 165 } 
	{ p_ZL8weights4_1_q1 sc_in sc_lv 32 signal 165 } 
	{ p_ZL8weights4_1_we1 sc_out sc_logic 1 signal 165 } 
	{ p_ZL8weights4_2_address0 sc_out sc_lv 12 signal 166 } 
	{ p_ZL8weights4_2_ce0 sc_out sc_logic 1 signal 166 } 
	{ p_ZL8weights4_2_d0 sc_out sc_lv 32 signal 166 } 
	{ p_ZL8weights4_2_q0 sc_in sc_lv 32 signal 166 } 
	{ p_ZL8weights4_2_we0 sc_out sc_logic 1 signal 166 } 
	{ p_ZL8weights4_2_address1 sc_out sc_lv 12 signal 166 } 
	{ p_ZL8weights4_2_ce1 sc_out sc_logic 1 signal 166 } 
	{ p_ZL8weights4_2_d1 sc_out sc_lv 32 signal 166 } 
	{ p_ZL8weights4_2_q1 sc_in sc_lv 32 signal 166 } 
	{ p_ZL8weights4_2_we1 sc_out sc_logic 1 signal 166 } 
	{ p_ZL8weights4_3_address0 sc_out sc_lv 12 signal 167 } 
	{ p_ZL8weights4_3_ce0 sc_out sc_logic 1 signal 167 } 
	{ p_ZL8weights4_3_d0 sc_out sc_lv 32 signal 167 } 
	{ p_ZL8weights4_3_q0 sc_in sc_lv 32 signal 167 } 
	{ p_ZL8weights4_3_we0 sc_out sc_logic 1 signal 167 } 
	{ p_ZL8weights4_3_address1 sc_out sc_lv 12 signal 167 } 
	{ p_ZL8weights4_3_ce1 sc_out sc_logic 1 signal 167 } 
	{ p_ZL8weights4_3_d1 sc_out sc_lv 32 signal 167 } 
	{ p_ZL8weights4_3_q1 sc_in sc_lv 32 signal 167 } 
	{ p_ZL8weights4_3_we1 sc_out sc_logic 1 signal 167 } 
	{ p_ZL8threshs4_0_address0 sc_out sc_lv 6 signal 168 } 
	{ p_ZL8threshs4_0_ce0 sc_out sc_logic 1 signal 168 } 
	{ p_ZL8threshs4_0_d0 sc_out sc_lv 16 signal 168 } 
	{ p_ZL8threshs4_0_q0 sc_in sc_lv 16 signal 168 } 
	{ p_ZL8threshs4_0_we0 sc_out sc_logic 1 signal 168 } 
	{ p_ZL8threshs4_0_address1 sc_out sc_lv 6 signal 168 } 
	{ p_ZL8threshs4_0_ce1 sc_out sc_logic 1 signal 168 } 
	{ p_ZL8threshs4_0_d1 sc_out sc_lv 16 signal 168 } 
	{ p_ZL8threshs4_0_q1 sc_in sc_lv 16 signal 168 } 
	{ p_ZL8threshs4_0_we1 sc_out sc_logic 1 signal 168 } 
	{ p_ZL8threshs4_1_address0 sc_out sc_lv 6 signal 169 } 
	{ p_ZL8threshs4_1_ce0 sc_out sc_logic 1 signal 169 } 
	{ p_ZL8threshs4_1_d0 sc_out sc_lv 16 signal 169 } 
	{ p_ZL8threshs4_1_q0 sc_in sc_lv 16 signal 169 } 
	{ p_ZL8threshs4_1_we0 sc_out sc_logic 1 signal 169 } 
	{ p_ZL8threshs4_1_address1 sc_out sc_lv 6 signal 169 } 
	{ p_ZL8threshs4_1_ce1 sc_out sc_logic 1 signal 169 } 
	{ p_ZL8threshs4_1_d1 sc_out sc_lv 16 signal 169 } 
	{ p_ZL8threshs4_1_q1 sc_in sc_lv 16 signal 169 } 
	{ p_ZL8threshs4_1_we1 sc_out sc_logic 1 signal 169 } 
	{ p_ZL8threshs4_2_address0 sc_out sc_lv 6 signal 170 } 
	{ p_ZL8threshs4_2_ce0 sc_out sc_logic 1 signal 170 } 
	{ p_ZL8threshs4_2_d0 sc_out sc_lv 16 signal 170 } 
	{ p_ZL8threshs4_2_q0 sc_in sc_lv 16 signal 170 } 
	{ p_ZL8threshs4_2_we0 sc_out sc_logic 1 signal 170 } 
	{ p_ZL8threshs4_2_address1 sc_out sc_lv 6 signal 170 } 
	{ p_ZL8threshs4_2_ce1 sc_out sc_logic 1 signal 170 } 
	{ p_ZL8threshs4_2_d1 sc_out sc_lv 16 signal 170 } 
	{ p_ZL8threshs4_2_q1 sc_in sc_lv 16 signal 170 } 
	{ p_ZL8threshs4_2_we1 sc_out sc_logic 1 signal 170 } 
	{ p_ZL8threshs4_3_address0 sc_out sc_lv 6 signal 171 } 
	{ p_ZL8threshs4_3_ce0 sc_out sc_logic 1 signal 171 } 
	{ p_ZL8threshs4_3_d0 sc_out sc_lv 16 signal 171 } 
	{ p_ZL8threshs4_3_q0 sc_in sc_lv 16 signal 171 } 
	{ p_ZL8threshs4_3_we0 sc_out sc_logic 1 signal 171 } 
	{ p_ZL8threshs4_3_address1 sc_out sc_lv 6 signal 171 } 
	{ p_ZL8threshs4_3_ce1 sc_out sc_logic 1 signal 171 } 
	{ p_ZL8threshs4_3_d1 sc_out sc_lv 16 signal 171 } 
	{ p_ZL8threshs4_3_q1 sc_in sc_lv 16 signal 171 } 
	{ p_ZL8threshs4_3_we1 sc_out sc_logic 1 signal 171 } 
	{ weights5_address0 sc_out sc_lv 15 signal 172 } 
	{ weights5_ce0 sc_out sc_logic 1 signal 172 } 
	{ weights5_d0 sc_out sc_lv 32 signal 172 } 
	{ weights5_q0 sc_in sc_lv 32 signal 172 } 
	{ weights5_we0 sc_out sc_logic 1 signal 172 } 
	{ weights5_address1 sc_out sc_lv 15 signal 172 } 
	{ weights5_ce1 sc_out sc_logic 1 signal 172 } 
	{ weights5_d1 sc_out sc_lv 32 signal 172 } 
	{ weights5_q1 sc_in sc_lv 32 signal 172 } 
	{ weights5_we1 sc_out sc_logic 1 signal 172 } 
	{ threshs5_address0 sc_out sc_lv 8 signal 173 } 
	{ threshs5_ce0 sc_out sc_logic 1 signal 173 } 
	{ threshs5_d0 sc_out sc_lv 16 signal 173 } 
	{ threshs5_q0 sc_in sc_lv 16 signal 173 } 
	{ threshs5_we0 sc_out sc_logic 1 signal 173 } 
	{ threshs5_address1 sc_out sc_lv 8 signal 173 } 
	{ threshs5_ce1 sc_out sc_logic 1 signal 173 } 
	{ threshs5_d1 sc_out sc_lv 16 signal 173 } 
	{ threshs5_q1 sc_in sc_lv 16 signal 173 } 
	{ threshs5_we1 sc_out sc_logic 1 signal 173 } 
	{ weights6_address0 sc_out sc_lv 15 signal 174 } 
	{ weights6_ce0 sc_out sc_logic 1 signal 174 } 
	{ weights6_d0 sc_out sc_lv 4 signal 174 } 
	{ weights6_q0 sc_in sc_lv 4 signal 174 } 
	{ weights6_we0 sc_out sc_logic 1 signal 174 } 
	{ weights6_address1 sc_out sc_lv 15 signal 174 } 
	{ weights6_ce1 sc_out sc_logic 1 signal 174 } 
	{ weights6_d1 sc_out sc_lv 4 signal 174 } 
	{ weights6_q1 sc_in sc_lv 4 signal 174 } 
	{ weights6_we1 sc_out sc_logic 1 signal 174 } 
	{ threshs6_address0 sc_out sc_lv 9 signal 175 } 
	{ threshs6_ce0 sc_out sc_logic 1 signal 175 } 
	{ threshs6_d0 sc_out sc_lv 16 signal 175 } 
	{ threshs6_q0 sc_in sc_lv 16 signal 175 } 
	{ threshs6_we0 sc_out sc_logic 1 signal 175 } 
	{ threshs6_address1 sc_out sc_lv 9 signal 175 } 
	{ threshs6_ce1 sc_out sc_logic 1 signal 175 } 
	{ threshs6_d1 sc_out sc_lv 16 signal 175 } 
	{ threshs6_q1 sc_in sc_lv 16 signal 175 } 
	{ threshs6_we1 sc_out sc_logic 1 signal 175 } 
	{ weights7_address0 sc_out sc_lv 15 signal 176 } 
	{ weights7_ce0 sc_out sc_logic 1 signal 176 } 
	{ weights7_d0 sc_out sc_lv 8 signal 176 } 
	{ weights7_q0 sc_in sc_lv 8 signal 176 } 
	{ weights7_we0 sc_out sc_logic 1 signal 176 } 
	{ weights7_address1 sc_out sc_lv 15 signal 176 } 
	{ weights7_ce1 sc_out sc_logic 1 signal 176 } 
	{ weights7_d1 sc_out sc_lv 8 signal 176 } 
	{ weights7_q1 sc_in sc_lv 8 signal 176 } 
	{ weights7_we1 sc_out sc_logic 1 signal 176 } 
	{ threshs7_address0 sc_out sc_lv 9 signal 177 } 
	{ threshs7_ce0 sc_out sc_logic 1 signal 177 } 
	{ threshs7_d0 sc_out sc_lv 16 signal 177 } 
	{ threshs7_q0 sc_in sc_lv 16 signal 177 } 
	{ threshs7_we0 sc_out sc_logic 1 signal 177 } 
	{ threshs7_address1 sc_out sc_lv 9 signal 177 } 
	{ threshs7_ce1 sc_out sc_logic 1 signal 177 } 
	{ threshs7_d1 sc_out sc_lv 16 signal 177 } 
	{ threshs7_q1 sc_in sc_lv 16 signal 177 } 
	{ threshs7_we1 sc_out sc_logic 1 signal 177 } 
	{ p_ZL8weights8_0_address0 sc_out sc_lv 13 signal 178 } 
	{ p_ZL8weights8_0_ce0 sc_out sc_logic 1 signal 178 } 
	{ p_ZL8weights8_0_d0 sc_out sc_lv 1 signal 178 } 
	{ p_ZL8weights8_0_q0 sc_in sc_lv 1 signal 178 } 
	{ p_ZL8weights8_0_we0 sc_out sc_logic 1 signal 178 } 
	{ p_ZL8weights8_0_address1 sc_out sc_lv 13 signal 178 } 
	{ p_ZL8weights8_0_ce1 sc_out sc_logic 1 signal 178 } 
	{ p_ZL8weights8_0_d1 sc_out sc_lv 1 signal 178 } 
	{ p_ZL8weights8_0_q1 sc_in sc_lv 1 signal 178 } 
	{ p_ZL8weights8_0_we1 sc_out sc_logic 1 signal 178 } 
	{ p_ZL8weights8_1_address0 sc_out sc_lv 13 signal 179 } 
	{ p_ZL8weights8_1_ce0 sc_out sc_logic 1 signal 179 } 
	{ p_ZL8weights8_1_d0 sc_out sc_lv 1 signal 179 } 
	{ p_ZL8weights8_1_q0 sc_in sc_lv 1 signal 179 } 
	{ p_ZL8weights8_1_we0 sc_out sc_logic 1 signal 179 } 
	{ p_ZL8weights8_1_address1 sc_out sc_lv 13 signal 179 } 
	{ p_ZL8weights8_1_ce1 sc_out sc_logic 1 signal 179 } 
	{ p_ZL8weights8_1_d1 sc_out sc_lv 1 signal 179 } 
	{ p_ZL8weights8_1_q1 sc_in sc_lv 1 signal 179 } 
	{ p_ZL8weights8_1_we1 sc_out sc_logic 1 signal 179 } 
	{ p_ZL8weights8_2_address0 sc_out sc_lv 13 signal 180 } 
	{ p_ZL8weights8_2_ce0 sc_out sc_logic 1 signal 180 } 
	{ p_ZL8weights8_2_d0 sc_out sc_lv 1 signal 180 } 
	{ p_ZL8weights8_2_q0 sc_in sc_lv 1 signal 180 } 
	{ p_ZL8weights8_2_we0 sc_out sc_logic 1 signal 180 } 
	{ p_ZL8weights8_2_address1 sc_out sc_lv 13 signal 180 } 
	{ p_ZL8weights8_2_ce1 sc_out sc_logic 1 signal 180 } 
	{ p_ZL8weights8_2_d1 sc_out sc_lv 1 signal 180 } 
	{ p_ZL8weights8_2_q1 sc_in sc_lv 1 signal 180 } 
	{ p_ZL8weights8_2_we1 sc_out sc_logic 1 signal 180 } 
	{ p_ZL8weights8_3_address0 sc_out sc_lv 13 signal 181 } 
	{ p_ZL8weights8_3_ce0 sc_out sc_logic 1 signal 181 } 
	{ p_ZL8weights8_3_d0 sc_out sc_lv 1 signal 181 } 
	{ p_ZL8weights8_3_q0 sc_in sc_lv 1 signal 181 } 
	{ p_ZL8weights8_3_we0 sc_out sc_logic 1 signal 181 } 
	{ p_ZL8weights8_3_address1 sc_out sc_lv 13 signal 181 } 
	{ p_ZL8weights8_3_ce1 sc_out sc_logic 1 signal 181 } 
	{ p_ZL8weights8_3_d1 sc_out sc_lv 1 signal 181 } 
	{ p_ZL8weights8_3_q1 sc_in sc_lv 1 signal 181 } 
	{ p_ZL8weights8_3_we1 sc_out sc_logic 1 signal 181 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ out_r_ap_vld sc_in sc_logic 1 invld 2 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ in_r_ap_vld sc_in sc_logic 1 invld 1 } 
	{ numReps_ap_vld sc_in sc_logic 1 invld 3 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "m_axi_hostmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_hostmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_hostmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hostmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_hostmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "AWID" }} , 
 	{ "name": "m_axi_hostmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hostmem", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_hostmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hostmem", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_hostmem_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "hostmem", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_hostmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_hostmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_hostmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_hostmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_hostmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_hostmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "BID" }} , 
 	{ "name": "m_axi_hostmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "BUSER" }} , 
 	{ "name": "in_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_r", "role": "default" }} , 
 	{ "name": "out_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_r", "role": "default" }} , 
 	{ "name": "numReps", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numReps", "role": "default" }} , 
 	{ "name": "p_ZL8weights0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_0", "role": "address0" }} , 
 	{ "name": "p_ZL8weights0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_0", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights0_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_0", "role": "d0" }} , 
 	{ "name": "p_ZL8weights0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_0", "role": "q0" }} , 
 	{ "name": "p_ZL8weights0_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_0", "role": "we0" }} , 
 	{ "name": "p_ZL8weights0_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_0", "role": "address1" }} , 
 	{ "name": "p_ZL8weights0_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_0", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights0_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_0", "role": "d1" }} , 
 	{ "name": "p_ZL8weights0_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_0", "role": "q1" }} , 
 	{ "name": "p_ZL8weights0_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_0", "role": "we1" }} , 
 	{ "name": "p_ZL8weights0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_1", "role": "address0" }} , 
 	{ "name": "p_ZL8weights0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_1", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights0_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_1", "role": "d0" }} , 
 	{ "name": "p_ZL8weights0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_1", "role": "q0" }} , 
 	{ "name": "p_ZL8weights0_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_1", "role": "we0" }} , 
 	{ "name": "p_ZL8weights0_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_1", "role": "address1" }} , 
 	{ "name": "p_ZL8weights0_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_1", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights0_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_1", "role": "d1" }} , 
 	{ "name": "p_ZL8weights0_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_1", "role": "q1" }} , 
 	{ "name": "p_ZL8weights0_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_1", "role": "we1" }} , 
 	{ "name": "p_ZL8weights0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_2", "role": "address0" }} , 
 	{ "name": "p_ZL8weights0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_2", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights0_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_2", "role": "d0" }} , 
 	{ "name": "p_ZL8weights0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_2", "role": "q0" }} , 
 	{ "name": "p_ZL8weights0_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_2", "role": "we0" }} , 
 	{ "name": "p_ZL8weights0_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_2", "role": "address1" }} , 
 	{ "name": "p_ZL8weights0_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_2", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights0_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_2", "role": "d1" }} , 
 	{ "name": "p_ZL8weights0_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_2", "role": "q1" }} , 
 	{ "name": "p_ZL8weights0_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_2", "role": "we1" }} , 
 	{ "name": "p_ZL8weights0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_3", "role": "address0" }} , 
 	{ "name": "p_ZL8weights0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_3", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights0_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_3", "role": "d0" }} , 
 	{ "name": "p_ZL8weights0_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_3", "role": "q0" }} , 
 	{ "name": "p_ZL8weights0_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_3", "role": "we0" }} , 
 	{ "name": "p_ZL8weights0_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_3", "role": "address1" }} , 
 	{ "name": "p_ZL8weights0_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_3", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights0_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_3", "role": "d1" }} , 
 	{ "name": "p_ZL8weights0_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_3", "role": "q1" }} , 
 	{ "name": "p_ZL8weights0_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_3", "role": "we1" }} , 
 	{ "name": "p_ZL8weights0_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_4", "role": "address0" }} , 
 	{ "name": "p_ZL8weights0_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_4", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights0_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_4", "role": "d0" }} , 
 	{ "name": "p_ZL8weights0_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_4", "role": "q0" }} , 
 	{ "name": "p_ZL8weights0_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_4", "role": "we0" }} , 
 	{ "name": "p_ZL8weights0_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_4", "role": "address1" }} , 
 	{ "name": "p_ZL8weights0_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_4", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights0_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_4", "role": "d1" }} , 
 	{ "name": "p_ZL8weights0_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_4", "role": "q1" }} , 
 	{ "name": "p_ZL8weights0_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_4", "role": "we1" }} , 
 	{ "name": "p_ZL8weights0_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_5", "role": "address0" }} , 
 	{ "name": "p_ZL8weights0_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_5", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights0_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_5", "role": "d0" }} , 
 	{ "name": "p_ZL8weights0_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_5", "role": "q0" }} , 
 	{ "name": "p_ZL8weights0_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_5", "role": "we0" }} , 
 	{ "name": "p_ZL8weights0_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_5", "role": "address1" }} , 
 	{ "name": "p_ZL8weights0_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_5", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights0_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_5", "role": "d1" }} , 
 	{ "name": "p_ZL8weights0_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_5", "role": "q1" }} , 
 	{ "name": "p_ZL8weights0_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_5", "role": "we1" }} , 
 	{ "name": "p_ZL8weights0_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_6", "role": "address0" }} , 
 	{ "name": "p_ZL8weights0_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_6", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights0_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_6", "role": "d0" }} , 
 	{ "name": "p_ZL8weights0_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_6", "role": "q0" }} , 
 	{ "name": "p_ZL8weights0_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_6", "role": "we0" }} , 
 	{ "name": "p_ZL8weights0_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_6", "role": "address1" }} , 
 	{ "name": "p_ZL8weights0_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_6", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights0_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_6", "role": "d1" }} , 
 	{ "name": "p_ZL8weights0_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_6", "role": "q1" }} , 
 	{ "name": "p_ZL8weights0_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_6", "role": "we1" }} , 
 	{ "name": "p_ZL8weights0_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_7", "role": "address0" }} , 
 	{ "name": "p_ZL8weights0_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_7", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights0_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_7", "role": "d0" }} , 
 	{ "name": "p_ZL8weights0_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_7", "role": "q0" }} , 
 	{ "name": "p_ZL8weights0_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_7", "role": "we0" }} , 
 	{ "name": "p_ZL8weights0_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_7", "role": "address1" }} , 
 	{ "name": "p_ZL8weights0_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_7", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights0_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_7", "role": "d1" }} , 
 	{ "name": "p_ZL8weights0_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_7", "role": "q1" }} , 
 	{ "name": "p_ZL8weights0_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_7", "role": "we1" }} , 
 	{ "name": "p_ZL8weights0_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_8", "role": "address0" }} , 
 	{ "name": "p_ZL8weights0_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_8", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights0_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_8", "role": "d0" }} , 
 	{ "name": "p_ZL8weights0_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_8", "role": "q0" }} , 
 	{ "name": "p_ZL8weights0_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_8", "role": "we0" }} , 
 	{ "name": "p_ZL8weights0_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_8", "role": "address1" }} , 
 	{ "name": "p_ZL8weights0_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_8", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights0_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_8", "role": "d1" }} , 
 	{ "name": "p_ZL8weights0_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_8", "role": "q1" }} , 
 	{ "name": "p_ZL8weights0_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_8", "role": "we1" }} , 
 	{ "name": "p_ZL8weights0_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_9", "role": "address0" }} , 
 	{ "name": "p_ZL8weights0_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_9", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights0_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_9", "role": "d0" }} , 
 	{ "name": "p_ZL8weights0_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_9", "role": "q0" }} , 
 	{ "name": "p_ZL8weights0_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_9", "role": "we0" }} , 
 	{ "name": "p_ZL8weights0_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_9", "role": "address1" }} , 
 	{ "name": "p_ZL8weights0_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_9", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights0_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_9", "role": "d1" }} , 
 	{ "name": "p_ZL8weights0_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_9", "role": "q1" }} , 
 	{ "name": "p_ZL8weights0_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_9", "role": "we1" }} , 
 	{ "name": "p_ZL8weights0_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_10", "role": "address0" }} , 
 	{ "name": "p_ZL8weights0_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_10", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights0_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_10", "role": "d0" }} , 
 	{ "name": "p_ZL8weights0_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_10", "role": "q0" }} , 
 	{ "name": "p_ZL8weights0_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_10", "role": "we0" }} , 
 	{ "name": "p_ZL8weights0_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_10", "role": "address1" }} , 
 	{ "name": "p_ZL8weights0_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_10", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights0_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_10", "role": "d1" }} , 
 	{ "name": "p_ZL8weights0_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_10", "role": "q1" }} , 
 	{ "name": "p_ZL8weights0_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_10", "role": "we1" }} , 
 	{ "name": "p_ZL8weights0_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_11", "role": "address0" }} , 
 	{ "name": "p_ZL8weights0_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_11", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights0_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_11", "role": "d0" }} , 
 	{ "name": "p_ZL8weights0_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_11", "role": "q0" }} , 
 	{ "name": "p_ZL8weights0_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_11", "role": "we0" }} , 
 	{ "name": "p_ZL8weights0_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_11", "role": "address1" }} , 
 	{ "name": "p_ZL8weights0_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_11", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights0_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_11", "role": "d1" }} , 
 	{ "name": "p_ZL8weights0_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_11", "role": "q1" }} , 
 	{ "name": "p_ZL8weights0_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_11", "role": "we1" }} , 
 	{ "name": "p_ZL8weights0_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_12", "role": "address0" }} , 
 	{ "name": "p_ZL8weights0_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_12", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights0_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_12", "role": "d0" }} , 
 	{ "name": "p_ZL8weights0_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_12", "role": "q0" }} , 
 	{ "name": "p_ZL8weights0_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_12", "role": "we0" }} , 
 	{ "name": "p_ZL8weights0_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_12", "role": "address1" }} , 
 	{ "name": "p_ZL8weights0_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_12", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights0_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_12", "role": "d1" }} , 
 	{ "name": "p_ZL8weights0_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_12", "role": "q1" }} , 
 	{ "name": "p_ZL8weights0_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_12", "role": "we1" }} , 
 	{ "name": "p_ZL8weights0_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_13", "role": "address0" }} , 
 	{ "name": "p_ZL8weights0_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_13", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights0_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_13", "role": "d0" }} , 
 	{ "name": "p_ZL8weights0_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_13", "role": "q0" }} , 
 	{ "name": "p_ZL8weights0_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_13", "role": "we0" }} , 
 	{ "name": "p_ZL8weights0_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_13", "role": "address1" }} , 
 	{ "name": "p_ZL8weights0_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_13", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights0_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_13", "role": "d1" }} , 
 	{ "name": "p_ZL8weights0_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_13", "role": "q1" }} , 
 	{ "name": "p_ZL8weights0_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_13", "role": "we1" }} , 
 	{ "name": "p_ZL8weights0_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_14", "role": "address0" }} , 
 	{ "name": "p_ZL8weights0_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_14", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights0_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_14", "role": "d0" }} , 
 	{ "name": "p_ZL8weights0_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_14", "role": "q0" }} , 
 	{ "name": "p_ZL8weights0_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_14", "role": "we0" }} , 
 	{ "name": "p_ZL8weights0_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_14", "role": "address1" }} , 
 	{ "name": "p_ZL8weights0_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_14", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights0_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_14", "role": "d1" }} , 
 	{ "name": "p_ZL8weights0_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_14", "role": "q1" }} , 
 	{ "name": "p_ZL8weights0_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_14", "role": "we1" }} , 
 	{ "name": "p_ZL8weights0_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_15", "role": "address0" }} , 
 	{ "name": "p_ZL8weights0_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_15", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights0_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_15", "role": "d0" }} , 
 	{ "name": "p_ZL8weights0_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_15", "role": "q0" }} , 
 	{ "name": "p_ZL8weights0_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_15", "role": "we0" }} , 
 	{ "name": "p_ZL8weights0_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights0_15", "role": "address1" }} , 
 	{ "name": "p_ZL8weights0_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_15", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights0_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_15", "role": "d1" }} , 
 	{ "name": "p_ZL8weights0_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8weights0_15", "role": "q1" }} , 
 	{ "name": "p_ZL8weights0_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights0_15", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_0", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_0", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs0_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_0", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_0", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs0_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_0", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs0_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_0", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs0_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_0", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs0_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_0", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs0_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_0", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs0_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_0", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_1", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_1", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs0_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_1", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_1", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs0_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_1", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs0_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_1", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs0_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_1", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs0_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_1", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs0_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_1", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs0_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_1", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_2", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_2", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs0_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_2", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_2", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs0_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_2", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs0_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_2", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs0_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_2", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs0_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_2", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs0_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_2", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs0_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_2", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_3", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_3", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs0_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_3", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs0_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_3", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs0_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_3", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs0_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_3", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs0_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_3", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs0_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_3", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs0_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_3", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs0_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_3", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs0_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_4", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs0_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_4", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs0_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_4", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs0_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_4", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs0_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_4", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs0_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_4", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs0_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_4", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs0_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_4", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs0_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_4", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs0_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_4", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs0_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_5", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs0_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_5", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs0_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_5", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs0_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_5", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs0_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_5", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs0_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_5", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs0_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_5", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs0_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_5", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs0_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_5", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs0_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_5", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs0_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_6", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs0_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_6", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs0_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_6", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs0_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_6", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs0_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_6", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs0_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_6", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs0_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_6", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs0_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_6", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs0_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_6", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs0_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_6", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs0_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_7", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs0_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_7", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs0_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_7", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs0_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_7", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs0_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_7", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs0_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_7", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs0_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_7", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs0_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_7", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs0_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_7", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs0_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_7", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs0_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_8", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs0_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_8", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs0_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_8", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs0_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_8", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs0_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_8", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs0_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_8", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs0_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_8", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs0_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_8", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs0_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_8", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs0_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_8", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs0_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_9", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs0_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_9", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs0_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_9", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs0_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_9", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs0_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_9", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs0_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_9", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs0_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_9", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs0_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_9", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs0_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_9", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs0_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_9", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs0_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_10", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs0_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_10", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs0_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_10", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs0_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_10", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs0_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_10", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs0_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_10", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs0_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_10", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs0_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_10", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs0_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_10", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs0_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_10", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs0_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_11", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs0_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_11", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs0_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_11", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs0_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_11", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs0_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_11", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs0_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_11", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs0_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_11", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs0_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_11", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs0_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_11", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs0_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_11", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs0_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_12", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs0_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_12", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs0_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_12", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs0_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_12", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs0_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_12", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs0_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_12", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs0_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_12", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs0_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_12", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs0_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_12", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs0_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_12", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs0_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_13", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs0_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_13", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs0_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_13", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs0_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_13", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs0_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_13", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs0_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_13", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs0_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_13", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs0_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_13", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs0_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_13", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs0_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_13", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs0_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_14", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs0_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_14", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs0_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_14", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs0_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_14", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs0_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_14", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs0_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_14", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs0_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_14", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs0_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_14", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs0_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_14", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs0_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_14", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs0_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_15", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs0_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_15", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs0_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_15", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs0_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_15", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs0_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_15", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs0_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZL8threshs0_15", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs0_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_15", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs0_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_15", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs0_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_ZL8threshs0_15", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs0_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs0_15", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_0", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_0", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_0", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_0", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_0", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_0", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_0", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_0", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_0", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_0", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_1", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_1", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_1", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_1", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_1", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_1", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_1", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_1", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_1", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_1", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_2", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_2", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_2", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_2", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_2", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_2", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_2", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_2", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_2", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_2", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_3", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_3", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_3", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_3", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_3", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_3", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_3", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_3", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_3", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_3", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_4", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_4", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_4", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_4", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_4", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_4", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_4", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_4", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_4", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_4", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_5", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_5", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_5", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_5", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_5", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_5", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_5", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_5", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_5", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_5", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_6", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_6", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_6", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_6", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_6", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_6", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_6", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_6", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_6", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_6", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_7", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_7", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_7", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_7", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_7", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_7", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_7", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_7", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_7", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_7", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_8", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_8", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_8", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_8", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_8", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_8", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_8", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_8", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_8", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_8", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_9", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_9", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_9", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_9", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_9", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_9", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_9", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_9", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_9", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_9", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_10", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_10", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_10", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_10", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_10", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_10", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_10", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_10", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_10", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_10", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_11", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_11", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_11", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_11", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_11", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_11", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_11", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_11", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_11", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_11", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_12", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_12", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_12", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_12", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_12", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_12", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_12", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_12", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_12", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_12", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_13", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_13", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_13", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_13", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_13", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_13", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_13", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_13", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_13", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_13", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_14", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_14", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_14", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_14", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_14", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_14", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_14", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_14", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_14", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_14", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_15", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_15", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_15", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_15", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_15", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_15", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_15", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_15", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_15", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_15", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_16", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_16", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_16", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_16", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_16", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_16", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_16", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_16_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_16", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_16_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_16", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_16_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_16", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_17", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_17", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_17", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_17", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_17", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_17", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_17", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_17_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_17", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_17_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_17", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_17_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_17", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_18", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_18", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_18", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_18", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_18", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_18", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_18", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_18_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_18", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_18_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_18", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_18_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_18", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_19", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_19", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_19", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_19", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_19", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_19_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_19", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_19_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_19", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_19_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_19", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_19_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_19", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_19_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_19", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_20", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_20", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_20", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_20", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_20", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_20_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_20", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_20_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_20", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_20_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_20", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_20_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_20", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_20_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_20", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_21", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_21", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_21", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_21", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_21", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_21_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_21", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_21_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_21", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_21_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_21", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_21_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_21", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_21_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_21", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_22", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_22", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_22", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_22", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_22", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_22_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_22", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_22_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_22", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_22_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_22", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_22_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_22", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_22_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_22", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_23", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_23", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_23", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_23", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_23", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_23_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_23", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_23_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_23", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_23_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_23", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_23_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_23", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_23_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_23", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_24", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_24", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_24", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_24", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_24", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_24_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_24", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_24_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_24", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_24_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_24", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_24_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_24", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_24_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_24", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_25", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_25", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_25", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_25", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_25", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_25_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_25", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_25_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_25", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_25_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_25", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_25_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_25", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_25_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_25", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_26", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_26", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_26", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_26", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_26", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_26_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_26", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_26_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_26", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_26_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_26", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_26_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_26", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_26_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_26", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_27", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_27", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_27", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_27", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_27", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_27_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_27", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_27_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_27", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_27_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_27", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_27_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_27", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_27_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_27", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_28", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_28", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_28", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_28", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_28", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_28_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_28", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_28_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_28", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_28_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_28", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_28_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_28", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_28_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_28", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_29", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_29", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_29", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_29", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_29", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_29_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_29", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_29_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_29", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_29_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_29", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_29_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_29", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_29_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_29", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_30", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_30", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_30", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_30", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_30", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_30_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_30", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_30_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_30", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_30_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_30", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_30_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_30", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_30_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_30", "role": "we1" }} , 
 	{ "name": "p_ZL8weights1_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_31", "role": "address0" }} , 
 	{ "name": "p_ZL8weights1_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_31", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights1_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_31", "role": "d0" }} , 
 	{ "name": "p_ZL8weights1_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_31", "role": "q0" }} , 
 	{ "name": "p_ZL8weights1_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_31", "role": "we0" }} , 
 	{ "name": "p_ZL8weights1_31_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8weights1_31", "role": "address1" }} , 
 	{ "name": "p_ZL8weights1_31_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_31", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights1_31_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_31", "role": "d1" }} , 
 	{ "name": "p_ZL8weights1_31_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights1_31", "role": "q1" }} , 
 	{ "name": "p_ZL8weights1_31_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights1_31", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_0", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_0", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_0", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_0", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_0", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_0", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_0", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_0", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_0", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_0", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_1", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_1", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_1", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_1", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_1", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_1", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_1", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_1", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_1", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_1", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_2", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_2", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_2", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_2", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_2", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_2", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_2", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_2", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_2", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_2", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_3", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_3", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_3", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_3", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_3", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_3", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_3", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_3", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_3", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_3", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_4", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_4", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_4", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_4", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_4", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_4", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_4", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_4", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_4", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_4", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_5", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_5", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_5", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_5", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_5", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_5", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_5", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_5", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_5", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_5", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_6", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_6", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_6", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_6", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_6", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_6", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_6", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_6", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_6", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_6", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_7", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_7", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_7", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_7", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_7", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_7", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_7", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_7", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_7", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_7", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_8", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_8", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_8", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_8", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_8", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_8", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_8", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_8", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_8", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_8", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_9", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_9", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_9", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_9", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_9", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_9", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_9", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_9", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_9", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_9", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_10", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_10", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_10", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_10", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_10", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_10", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_10", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_10", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_10", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_10", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_11", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_11", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_11", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_11", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_11", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_11", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_11", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_11", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_11", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_11", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_12", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_12", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_12", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_12", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_12", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_12", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_12", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_12", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_12", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_12", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_13", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_13", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_13", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_13", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_13", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_13", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_13", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_13", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_13", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_13", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_14", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_14", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_14", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_14", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_14", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_14", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_14", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_14", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_14", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_14", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_15", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_15", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_15", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_15", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_15", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_15", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_15", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_15", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_15", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_15", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_16", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_16", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_16", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_16", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_16", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_16", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_16", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_16_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_16", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_16_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_16", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_16_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_16", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_17", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_17", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_17", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_17", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_17", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_17", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_17", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_17_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_17", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_17_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_17", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_17_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_17", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_18", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_18", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_18", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_18", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_18", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_18", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_18", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_18_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_18", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_18_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_18", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_18_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_18", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_19", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_19", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_19", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_19", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_19", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_19_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_19", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_19_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_19", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_19_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_19", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_19_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_19", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_19_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_19", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_20", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_20", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_20", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_20", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_20", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_20_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_20", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_20_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_20", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_20_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_20", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_20_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_20", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_20_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_20", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_21", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_21", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_21", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_21", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_21", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_21_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_21", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_21_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_21", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_21_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_21", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_21_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_21", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_21_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_21", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_22", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_22", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_22", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_22", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_22", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_22_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_22", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_22_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_22", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_22_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_22", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_22_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_22", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_22_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_22", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_23", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_23", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_23", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_23", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_23", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_23_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_23", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_23_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_23", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_23_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_23", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_23_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_23", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_23_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_23", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_24", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_24", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_24", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_24", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_24", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_24_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_24", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_24_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_24", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_24_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_24", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_24_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_24", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_24_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_24", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_25", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_25", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_25", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_25", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_25", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_25_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_25", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_25_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_25", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_25_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_25", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_25_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_25", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_25_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_25", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_26", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_26", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_26", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_26", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_26", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_26_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_26", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_26_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_26", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_26_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_26", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_26_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_26", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_26_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_26", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_27", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_27", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_27", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_27", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_27", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_27_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_27", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_27_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_27", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_27_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_27", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_27_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_27", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_27_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_27", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_28", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_28", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_28", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_28", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_28", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_28_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_28", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_28_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_28", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_28_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_28", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_28_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_28", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_28_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_28", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_29", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_29", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_29", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_29", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_29", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_29_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_29", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_29_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_29", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_29_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_29", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_29_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_29", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_29_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_29", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_30", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_30", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_30", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_30", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_30", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_30_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_30", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_30_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_30", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_30_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_30", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_30_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_30", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_30_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_30", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs1_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_31", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs1_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_31", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs1_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_31", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs1_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_31", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs1_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_31", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs1_31_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_31", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs1_31_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_31", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs1_31_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_31", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs1_31_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs1_31", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs1_31_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs1_31", "role": "we1" }} , 
 	{ "name": "p_ZL8weights2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_0", "role": "address0" }} , 
 	{ "name": "p_ZL8weights2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_0", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_0", "role": "d0" }} , 
 	{ "name": "p_ZL8weights2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_0", "role": "q0" }} , 
 	{ "name": "p_ZL8weights2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_0", "role": "we0" }} , 
 	{ "name": "p_ZL8weights2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_0", "role": "address1" }} , 
 	{ "name": "p_ZL8weights2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_0", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights2_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_0", "role": "d1" }} , 
 	{ "name": "p_ZL8weights2_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_0", "role": "q1" }} , 
 	{ "name": "p_ZL8weights2_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_0", "role": "we1" }} , 
 	{ "name": "p_ZL8weights2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_1", "role": "address0" }} , 
 	{ "name": "p_ZL8weights2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_1", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_1", "role": "d0" }} , 
 	{ "name": "p_ZL8weights2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_1", "role": "q0" }} , 
 	{ "name": "p_ZL8weights2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_1", "role": "we0" }} , 
 	{ "name": "p_ZL8weights2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_1", "role": "address1" }} , 
 	{ "name": "p_ZL8weights2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_1", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights2_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_1", "role": "d1" }} , 
 	{ "name": "p_ZL8weights2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_1", "role": "q1" }} , 
 	{ "name": "p_ZL8weights2_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_1", "role": "we1" }} , 
 	{ "name": "p_ZL8weights2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_2", "role": "address0" }} , 
 	{ "name": "p_ZL8weights2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_2", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights2_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_2", "role": "d0" }} , 
 	{ "name": "p_ZL8weights2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_2", "role": "q0" }} , 
 	{ "name": "p_ZL8weights2_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_2", "role": "we0" }} , 
 	{ "name": "p_ZL8weights2_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_2", "role": "address1" }} , 
 	{ "name": "p_ZL8weights2_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_2", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights2_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_2", "role": "d1" }} , 
 	{ "name": "p_ZL8weights2_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_2", "role": "q1" }} , 
 	{ "name": "p_ZL8weights2_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_2", "role": "we1" }} , 
 	{ "name": "p_ZL8weights2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_3", "role": "address0" }} , 
 	{ "name": "p_ZL8weights2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_3", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights2_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_3", "role": "d0" }} , 
 	{ "name": "p_ZL8weights2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_3", "role": "q0" }} , 
 	{ "name": "p_ZL8weights2_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_3", "role": "we0" }} , 
 	{ "name": "p_ZL8weights2_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_3", "role": "address1" }} , 
 	{ "name": "p_ZL8weights2_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_3", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights2_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_3", "role": "d1" }} , 
 	{ "name": "p_ZL8weights2_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_3", "role": "q1" }} , 
 	{ "name": "p_ZL8weights2_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_3", "role": "we1" }} , 
 	{ "name": "p_ZL8weights2_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_4", "role": "address0" }} , 
 	{ "name": "p_ZL8weights2_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_4", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights2_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_4", "role": "d0" }} , 
 	{ "name": "p_ZL8weights2_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_4", "role": "q0" }} , 
 	{ "name": "p_ZL8weights2_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_4", "role": "we0" }} , 
 	{ "name": "p_ZL8weights2_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_4", "role": "address1" }} , 
 	{ "name": "p_ZL8weights2_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_4", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights2_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_4", "role": "d1" }} , 
 	{ "name": "p_ZL8weights2_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_4", "role": "q1" }} , 
 	{ "name": "p_ZL8weights2_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_4", "role": "we1" }} , 
 	{ "name": "p_ZL8weights2_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_5", "role": "address0" }} , 
 	{ "name": "p_ZL8weights2_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_5", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights2_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_5", "role": "d0" }} , 
 	{ "name": "p_ZL8weights2_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_5", "role": "q0" }} , 
 	{ "name": "p_ZL8weights2_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_5", "role": "we0" }} , 
 	{ "name": "p_ZL8weights2_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_5", "role": "address1" }} , 
 	{ "name": "p_ZL8weights2_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_5", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights2_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_5", "role": "d1" }} , 
 	{ "name": "p_ZL8weights2_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_5", "role": "q1" }} , 
 	{ "name": "p_ZL8weights2_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_5", "role": "we1" }} , 
 	{ "name": "p_ZL8weights2_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_6", "role": "address0" }} , 
 	{ "name": "p_ZL8weights2_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_6", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights2_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_6", "role": "d0" }} , 
 	{ "name": "p_ZL8weights2_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_6", "role": "q0" }} , 
 	{ "name": "p_ZL8weights2_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_6", "role": "we0" }} , 
 	{ "name": "p_ZL8weights2_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_6", "role": "address1" }} , 
 	{ "name": "p_ZL8weights2_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_6", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights2_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_6", "role": "d1" }} , 
 	{ "name": "p_ZL8weights2_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_6", "role": "q1" }} , 
 	{ "name": "p_ZL8weights2_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_6", "role": "we1" }} , 
 	{ "name": "p_ZL8weights2_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_7", "role": "address0" }} , 
 	{ "name": "p_ZL8weights2_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_7", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights2_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_7", "role": "d0" }} , 
 	{ "name": "p_ZL8weights2_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_7", "role": "q0" }} , 
 	{ "name": "p_ZL8weights2_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_7", "role": "we0" }} , 
 	{ "name": "p_ZL8weights2_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_7", "role": "address1" }} , 
 	{ "name": "p_ZL8weights2_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_7", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights2_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_7", "role": "d1" }} , 
 	{ "name": "p_ZL8weights2_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_7", "role": "q1" }} , 
 	{ "name": "p_ZL8weights2_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_7", "role": "we1" }} , 
 	{ "name": "p_ZL8weights2_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_8", "role": "address0" }} , 
 	{ "name": "p_ZL8weights2_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_8", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights2_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_8", "role": "d0" }} , 
 	{ "name": "p_ZL8weights2_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_8", "role": "q0" }} , 
 	{ "name": "p_ZL8weights2_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_8", "role": "we0" }} , 
 	{ "name": "p_ZL8weights2_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_8", "role": "address1" }} , 
 	{ "name": "p_ZL8weights2_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_8", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights2_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_8", "role": "d1" }} , 
 	{ "name": "p_ZL8weights2_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_8", "role": "q1" }} , 
 	{ "name": "p_ZL8weights2_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_8", "role": "we1" }} , 
 	{ "name": "p_ZL8weights2_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_9", "role": "address0" }} , 
 	{ "name": "p_ZL8weights2_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_9", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights2_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_9", "role": "d0" }} , 
 	{ "name": "p_ZL8weights2_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_9", "role": "q0" }} , 
 	{ "name": "p_ZL8weights2_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_9", "role": "we0" }} , 
 	{ "name": "p_ZL8weights2_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_9", "role": "address1" }} , 
 	{ "name": "p_ZL8weights2_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_9", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights2_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_9", "role": "d1" }} , 
 	{ "name": "p_ZL8weights2_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_9", "role": "q1" }} , 
 	{ "name": "p_ZL8weights2_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_9", "role": "we1" }} , 
 	{ "name": "p_ZL8weights2_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_10", "role": "address0" }} , 
 	{ "name": "p_ZL8weights2_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_10", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights2_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_10", "role": "d0" }} , 
 	{ "name": "p_ZL8weights2_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_10", "role": "q0" }} , 
 	{ "name": "p_ZL8weights2_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_10", "role": "we0" }} , 
 	{ "name": "p_ZL8weights2_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_10", "role": "address1" }} , 
 	{ "name": "p_ZL8weights2_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_10", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights2_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_10", "role": "d1" }} , 
 	{ "name": "p_ZL8weights2_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_10", "role": "q1" }} , 
 	{ "name": "p_ZL8weights2_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_10", "role": "we1" }} , 
 	{ "name": "p_ZL8weights2_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_11", "role": "address0" }} , 
 	{ "name": "p_ZL8weights2_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_11", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights2_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_11", "role": "d0" }} , 
 	{ "name": "p_ZL8weights2_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_11", "role": "q0" }} , 
 	{ "name": "p_ZL8weights2_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_11", "role": "we0" }} , 
 	{ "name": "p_ZL8weights2_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_11", "role": "address1" }} , 
 	{ "name": "p_ZL8weights2_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_11", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights2_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_11", "role": "d1" }} , 
 	{ "name": "p_ZL8weights2_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_11", "role": "q1" }} , 
 	{ "name": "p_ZL8weights2_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_11", "role": "we1" }} , 
 	{ "name": "p_ZL8weights2_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_12", "role": "address0" }} , 
 	{ "name": "p_ZL8weights2_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_12", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights2_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_12", "role": "d0" }} , 
 	{ "name": "p_ZL8weights2_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_12", "role": "q0" }} , 
 	{ "name": "p_ZL8weights2_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_12", "role": "we0" }} , 
 	{ "name": "p_ZL8weights2_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_12", "role": "address1" }} , 
 	{ "name": "p_ZL8weights2_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_12", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights2_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_12", "role": "d1" }} , 
 	{ "name": "p_ZL8weights2_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_12", "role": "q1" }} , 
 	{ "name": "p_ZL8weights2_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_12", "role": "we1" }} , 
 	{ "name": "p_ZL8weights2_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_13", "role": "address0" }} , 
 	{ "name": "p_ZL8weights2_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_13", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights2_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_13", "role": "d0" }} , 
 	{ "name": "p_ZL8weights2_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_13", "role": "q0" }} , 
 	{ "name": "p_ZL8weights2_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_13", "role": "we0" }} , 
 	{ "name": "p_ZL8weights2_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_13", "role": "address1" }} , 
 	{ "name": "p_ZL8weights2_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_13", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights2_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_13", "role": "d1" }} , 
 	{ "name": "p_ZL8weights2_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_13", "role": "q1" }} , 
 	{ "name": "p_ZL8weights2_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_13", "role": "we1" }} , 
 	{ "name": "p_ZL8weights2_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_14", "role": "address0" }} , 
 	{ "name": "p_ZL8weights2_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_14", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights2_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_14", "role": "d0" }} , 
 	{ "name": "p_ZL8weights2_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_14", "role": "q0" }} , 
 	{ "name": "p_ZL8weights2_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_14", "role": "we0" }} , 
 	{ "name": "p_ZL8weights2_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_14", "role": "address1" }} , 
 	{ "name": "p_ZL8weights2_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_14", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights2_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_14", "role": "d1" }} , 
 	{ "name": "p_ZL8weights2_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_14", "role": "q1" }} , 
 	{ "name": "p_ZL8weights2_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_14", "role": "we1" }} , 
 	{ "name": "p_ZL8weights2_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_15", "role": "address0" }} , 
 	{ "name": "p_ZL8weights2_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_15", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights2_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_15", "role": "d0" }} , 
 	{ "name": "p_ZL8weights2_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_15", "role": "q0" }} , 
 	{ "name": "p_ZL8weights2_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_15", "role": "we0" }} , 
 	{ "name": "p_ZL8weights2_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL8weights2_15", "role": "address1" }} , 
 	{ "name": "p_ZL8weights2_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_15", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights2_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_15", "role": "d1" }} , 
 	{ "name": "p_ZL8weights2_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights2_15", "role": "q1" }} , 
 	{ "name": "p_ZL8weights2_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights2_15", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_0", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_0", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_0", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_0", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_0", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_0", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_0", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs2_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_0", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs2_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_0", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs2_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_0", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_1", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_1", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_1", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_1", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_1", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_1", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_1", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs2_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_1", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_1", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs2_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_1", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_2", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_2", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs2_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_2", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_2", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs2_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_2", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs2_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_2", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs2_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_2", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs2_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_2", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs2_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_2", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs2_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_2", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_3", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_3", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs2_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_3", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_3", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs2_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_3", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs2_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_3", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs2_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_3", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs2_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_3", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs2_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_3", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs2_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_3", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs2_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_4", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs2_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_4", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs2_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_4", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs2_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_4", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs2_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_4", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs2_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_4", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs2_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_4", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs2_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_4", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs2_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_4", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs2_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_4", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs2_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_5", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs2_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_5", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs2_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_5", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs2_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_5", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs2_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_5", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs2_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_5", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs2_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_5", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs2_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_5", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs2_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_5", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs2_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_5", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs2_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_6", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs2_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_6", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs2_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_6", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs2_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_6", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs2_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_6", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs2_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_6", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs2_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_6", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs2_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_6", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs2_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_6", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs2_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_6", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs2_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_7", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs2_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_7", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs2_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_7", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs2_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_7", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs2_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_7", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs2_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_7", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs2_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_7", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs2_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_7", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs2_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_7", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs2_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_7", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs2_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_8", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs2_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_8", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs2_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_8", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs2_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_8", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs2_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_8", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs2_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_8", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs2_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_8", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs2_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_8", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs2_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_8", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs2_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_8", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs2_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_9", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs2_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_9", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs2_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_9", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs2_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_9", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs2_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_9", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs2_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_9", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs2_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_9", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs2_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_9", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs2_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_9", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs2_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_9", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs2_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_10", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs2_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_10", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs2_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_10", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs2_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_10", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs2_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_10", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs2_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_10", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs2_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_10", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs2_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_10", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs2_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_10", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs2_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_10", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs2_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_11", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs2_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_11", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs2_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_11", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs2_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_11", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs2_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_11", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs2_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_11", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs2_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_11", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs2_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_11", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs2_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_11", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs2_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_11", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs2_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_12", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs2_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_12", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs2_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_12", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs2_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_12", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs2_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_12", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs2_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_12", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs2_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_12", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs2_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_12", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs2_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_12", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs2_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_12", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs2_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_13", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs2_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_13", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs2_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_13", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs2_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_13", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs2_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_13", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs2_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_13", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs2_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_13", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs2_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_13", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs2_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_13", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs2_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_13", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs2_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_14", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs2_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_14", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs2_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_14", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs2_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_14", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs2_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_14", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs2_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_14", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs2_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_14", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs2_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_14", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs2_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_14", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs2_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_14", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs2_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_15", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs2_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_15", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs2_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_15", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs2_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_15", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs2_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_15", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs2_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs2_15", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs2_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_15", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs2_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_15", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs2_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs2_15", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs2_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs2_15", "role": "we1" }} , 
 	{ "name": "p_ZL8weights3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_0", "role": "address0" }} , 
 	{ "name": "p_ZL8weights3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_0", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights3_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_0", "role": "d0" }} , 
 	{ "name": "p_ZL8weights3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_0", "role": "q0" }} , 
 	{ "name": "p_ZL8weights3_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_0", "role": "we0" }} , 
 	{ "name": "p_ZL8weights3_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_0", "role": "address1" }} , 
 	{ "name": "p_ZL8weights3_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_0", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights3_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_0", "role": "d1" }} , 
 	{ "name": "p_ZL8weights3_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_0", "role": "q1" }} , 
 	{ "name": "p_ZL8weights3_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_0", "role": "we1" }} , 
 	{ "name": "p_ZL8weights3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_1", "role": "address0" }} , 
 	{ "name": "p_ZL8weights3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_1", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights3_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_1", "role": "d0" }} , 
 	{ "name": "p_ZL8weights3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_1", "role": "q0" }} , 
 	{ "name": "p_ZL8weights3_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_1", "role": "we0" }} , 
 	{ "name": "p_ZL8weights3_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_1", "role": "address1" }} , 
 	{ "name": "p_ZL8weights3_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_1", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights3_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_1", "role": "d1" }} , 
 	{ "name": "p_ZL8weights3_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_1", "role": "q1" }} , 
 	{ "name": "p_ZL8weights3_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_1", "role": "we1" }} , 
 	{ "name": "p_ZL8weights3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_2", "role": "address0" }} , 
 	{ "name": "p_ZL8weights3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_2", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights3_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_2", "role": "d0" }} , 
 	{ "name": "p_ZL8weights3_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_2", "role": "q0" }} , 
 	{ "name": "p_ZL8weights3_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_2", "role": "we0" }} , 
 	{ "name": "p_ZL8weights3_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_2", "role": "address1" }} , 
 	{ "name": "p_ZL8weights3_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_2", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights3_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_2", "role": "d1" }} , 
 	{ "name": "p_ZL8weights3_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_2", "role": "q1" }} , 
 	{ "name": "p_ZL8weights3_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_2", "role": "we1" }} , 
 	{ "name": "p_ZL8weights3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_3", "role": "address0" }} , 
 	{ "name": "p_ZL8weights3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_3", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights3_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_3", "role": "d0" }} , 
 	{ "name": "p_ZL8weights3_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_3", "role": "q0" }} , 
 	{ "name": "p_ZL8weights3_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_3", "role": "we0" }} , 
 	{ "name": "p_ZL8weights3_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_3", "role": "address1" }} , 
 	{ "name": "p_ZL8weights3_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_3", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights3_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_3", "role": "d1" }} , 
 	{ "name": "p_ZL8weights3_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_3", "role": "q1" }} , 
 	{ "name": "p_ZL8weights3_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_3", "role": "we1" }} , 
 	{ "name": "p_ZL8weights3_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_4", "role": "address0" }} , 
 	{ "name": "p_ZL8weights3_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_4", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights3_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_4", "role": "d0" }} , 
 	{ "name": "p_ZL8weights3_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_4", "role": "q0" }} , 
 	{ "name": "p_ZL8weights3_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_4", "role": "we0" }} , 
 	{ "name": "p_ZL8weights3_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_4", "role": "address1" }} , 
 	{ "name": "p_ZL8weights3_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_4", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights3_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_4", "role": "d1" }} , 
 	{ "name": "p_ZL8weights3_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_4", "role": "q1" }} , 
 	{ "name": "p_ZL8weights3_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_4", "role": "we1" }} , 
 	{ "name": "p_ZL8weights3_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_5", "role": "address0" }} , 
 	{ "name": "p_ZL8weights3_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_5", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights3_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_5", "role": "d0" }} , 
 	{ "name": "p_ZL8weights3_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_5", "role": "q0" }} , 
 	{ "name": "p_ZL8weights3_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_5", "role": "we0" }} , 
 	{ "name": "p_ZL8weights3_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_5", "role": "address1" }} , 
 	{ "name": "p_ZL8weights3_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_5", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights3_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_5", "role": "d1" }} , 
 	{ "name": "p_ZL8weights3_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_5", "role": "q1" }} , 
 	{ "name": "p_ZL8weights3_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_5", "role": "we1" }} , 
 	{ "name": "p_ZL8weights3_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_6", "role": "address0" }} , 
 	{ "name": "p_ZL8weights3_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_6", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights3_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_6", "role": "d0" }} , 
 	{ "name": "p_ZL8weights3_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_6", "role": "q0" }} , 
 	{ "name": "p_ZL8weights3_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_6", "role": "we0" }} , 
 	{ "name": "p_ZL8weights3_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_6", "role": "address1" }} , 
 	{ "name": "p_ZL8weights3_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_6", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights3_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_6", "role": "d1" }} , 
 	{ "name": "p_ZL8weights3_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_6", "role": "q1" }} , 
 	{ "name": "p_ZL8weights3_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_6", "role": "we1" }} , 
 	{ "name": "p_ZL8weights3_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_7", "role": "address0" }} , 
 	{ "name": "p_ZL8weights3_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_7", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights3_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_7", "role": "d0" }} , 
 	{ "name": "p_ZL8weights3_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_7", "role": "q0" }} , 
 	{ "name": "p_ZL8weights3_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_7", "role": "we0" }} , 
 	{ "name": "p_ZL8weights3_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_7", "role": "address1" }} , 
 	{ "name": "p_ZL8weights3_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_7", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights3_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_7", "role": "d1" }} , 
 	{ "name": "p_ZL8weights3_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_7", "role": "q1" }} , 
 	{ "name": "p_ZL8weights3_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_7", "role": "we1" }} , 
 	{ "name": "p_ZL8weights3_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_8", "role": "address0" }} , 
 	{ "name": "p_ZL8weights3_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_8", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights3_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_8", "role": "d0" }} , 
 	{ "name": "p_ZL8weights3_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_8", "role": "q0" }} , 
 	{ "name": "p_ZL8weights3_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_8", "role": "we0" }} , 
 	{ "name": "p_ZL8weights3_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_8", "role": "address1" }} , 
 	{ "name": "p_ZL8weights3_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_8", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights3_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_8", "role": "d1" }} , 
 	{ "name": "p_ZL8weights3_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_8", "role": "q1" }} , 
 	{ "name": "p_ZL8weights3_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_8", "role": "we1" }} , 
 	{ "name": "p_ZL8weights3_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_9", "role": "address0" }} , 
 	{ "name": "p_ZL8weights3_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_9", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights3_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_9", "role": "d0" }} , 
 	{ "name": "p_ZL8weights3_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_9", "role": "q0" }} , 
 	{ "name": "p_ZL8weights3_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_9", "role": "we0" }} , 
 	{ "name": "p_ZL8weights3_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_9", "role": "address1" }} , 
 	{ "name": "p_ZL8weights3_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_9", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights3_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_9", "role": "d1" }} , 
 	{ "name": "p_ZL8weights3_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_9", "role": "q1" }} , 
 	{ "name": "p_ZL8weights3_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_9", "role": "we1" }} , 
 	{ "name": "p_ZL8weights3_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_10", "role": "address0" }} , 
 	{ "name": "p_ZL8weights3_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_10", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights3_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_10", "role": "d0" }} , 
 	{ "name": "p_ZL8weights3_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_10", "role": "q0" }} , 
 	{ "name": "p_ZL8weights3_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_10", "role": "we0" }} , 
 	{ "name": "p_ZL8weights3_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_10", "role": "address1" }} , 
 	{ "name": "p_ZL8weights3_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_10", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights3_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_10", "role": "d1" }} , 
 	{ "name": "p_ZL8weights3_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_10", "role": "q1" }} , 
 	{ "name": "p_ZL8weights3_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_10", "role": "we1" }} , 
 	{ "name": "p_ZL8weights3_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_11", "role": "address0" }} , 
 	{ "name": "p_ZL8weights3_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_11", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights3_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_11", "role": "d0" }} , 
 	{ "name": "p_ZL8weights3_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_11", "role": "q0" }} , 
 	{ "name": "p_ZL8weights3_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_11", "role": "we0" }} , 
 	{ "name": "p_ZL8weights3_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_11", "role": "address1" }} , 
 	{ "name": "p_ZL8weights3_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_11", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights3_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_11", "role": "d1" }} , 
 	{ "name": "p_ZL8weights3_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_11", "role": "q1" }} , 
 	{ "name": "p_ZL8weights3_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_11", "role": "we1" }} , 
 	{ "name": "p_ZL8weights3_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_12", "role": "address0" }} , 
 	{ "name": "p_ZL8weights3_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_12", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights3_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_12", "role": "d0" }} , 
 	{ "name": "p_ZL8weights3_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_12", "role": "q0" }} , 
 	{ "name": "p_ZL8weights3_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_12", "role": "we0" }} , 
 	{ "name": "p_ZL8weights3_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_12", "role": "address1" }} , 
 	{ "name": "p_ZL8weights3_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_12", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights3_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_12", "role": "d1" }} , 
 	{ "name": "p_ZL8weights3_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_12", "role": "q1" }} , 
 	{ "name": "p_ZL8weights3_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_12", "role": "we1" }} , 
 	{ "name": "p_ZL8weights3_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_13", "role": "address0" }} , 
 	{ "name": "p_ZL8weights3_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_13", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights3_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_13", "role": "d0" }} , 
 	{ "name": "p_ZL8weights3_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_13", "role": "q0" }} , 
 	{ "name": "p_ZL8weights3_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_13", "role": "we0" }} , 
 	{ "name": "p_ZL8weights3_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_13", "role": "address1" }} , 
 	{ "name": "p_ZL8weights3_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_13", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights3_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_13", "role": "d1" }} , 
 	{ "name": "p_ZL8weights3_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_13", "role": "q1" }} , 
 	{ "name": "p_ZL8weights3_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_13", "role": "we1" }} , 
 	{ "name": "p_ZL8weights3_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_14", "role": "address0" }} , 
 	{ "name": "p_ZL8weights3_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_14", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights3_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_14", "role": "d0" }} , 
 	{ "name": "p_ZL8weights3_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_14", "role": "q0" }} , 
 	{ "name": "p_ZL8weights3_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_14", "role": "we0" }} , 
 	{ "name": "p_ZL8weights3_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_14", "role": "address1" }} , 
 	{ "name": "p_ZL8weights3_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_14", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights3_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_14", "role": "d1" }} , 
 	{ "name": "p_ZL8weights3_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_14", "role": "q1" }} , 
 	{ "name": "p_ZL8weights3_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_14", "role": "we1" }} , 
 	{ "name": "p_ZL8weights3_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_15", "role": "address0" }} , 
 	{ "name": "p_ZL8weights3_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_15", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights3_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_15", "role": "d0" }} , 
 	{ "name": "p_ZL8weights3_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_15", "role": "q0" }} , 
 	{ "name": "p_ZL8weights3_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_15", "role": "we0" }} , 
 	{ "name": "p_ZL8weights3_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZL8weights3_15", "role": "address1" }} , 
 	{ "name": "p_ZL8weights3_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_15", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights3_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_15", "role": "d1" }} , 
 	{ "name": "p_ZL8weights3_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights3_15", "role": "q1" }} , 
 	{ "name": "p_ZL8weights3_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights3_15", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_0", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_0", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs3_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_0", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_0", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs3_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_0", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs3_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_0", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs3_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_0", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs3_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_0", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs3_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_0", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs3_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_0", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_1", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_1", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs3_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_1", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_1", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs3_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_1", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs3_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_1", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs3_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_1", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs3_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_1", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs3_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_1", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs3_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_1", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_2", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_2", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs3_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_2", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs3_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_2", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs3_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_2", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs3_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_2", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs3_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_2", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs3_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_2", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs3_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_2", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs3_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_2", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_3", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_3", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs3_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_3", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs3_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_3", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs3_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_3", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs3_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_3", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs3_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_3", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs3_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_3", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs3_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_3", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs3_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_3", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs3_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_4", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs3_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_4", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs3_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_4", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs3_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_4", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs3_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_4", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs3_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_4", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs3_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_4", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs3_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_4", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs3_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_4", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs3_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_4", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs3_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_5", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs3_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_5", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs3_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_5", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs3_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_5", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs3_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_5", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs3_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_5", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs3_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_5", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs3_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_5", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs3_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_5", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs3_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_5", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs3_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_6", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs3_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_6", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs3_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_6", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs3_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_6", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs3_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_6", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs3_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_6", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs3_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_6", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs3_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_6", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs3_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_6", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs3_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_6", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs3_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_7", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs3_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_7", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs3_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_7", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs3_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_7", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs3_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_7", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs3_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_7", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs3_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_7", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs3_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_7", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs3_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_7", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs3_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_7", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs3_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_8", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs3_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_8", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs3_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_8", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs3_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_8", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs3_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_8", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs3_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_8", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs3_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_8", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs3_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_8", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs3_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_8", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs3_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_8", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs3_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_9", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs3_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_9", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs3_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_9", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs3_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_9", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs3_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_9", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs3_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_9", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs3_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_9", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs3_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_9", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs3_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_9", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs3_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_9", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs3_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_10", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs3_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_10", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs3_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_10", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs3_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_10", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs3_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_10", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs3_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_10", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs3_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_10", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs3_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_10", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs3_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_10", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs3_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_10", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs3_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_11", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs3_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_11", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs3_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_11", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs3_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_11", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs3_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_11", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs3_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_11", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs3_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_11", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs3_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_11", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs3_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_11", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs3_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_11", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs3_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_12", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs3_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_12", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs3_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_12", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs3_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_12", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs3_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_12", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs3_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_12", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs3_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_12", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs3_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_12", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs3_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_12", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs3_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_12", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs3_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_13", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs3_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_13", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs3_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_13", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs3_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_13", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs3_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_13", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs3_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_13", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs3_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_13", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs3_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_13", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs3_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_13", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs3_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_13", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs3_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_14", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs3_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_14", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs3_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_14", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs3_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_14", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs3_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_14", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs3_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_14", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs3_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_14", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs3_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_14", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs3_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_14", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs3_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_14", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs3_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_15", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs3_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_15", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs3_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_15", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs3_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_15", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs3_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_15", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs3_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_ZL8threshs3_15", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs3_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_15", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs3_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_15", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs3_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs3_15", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs3_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs3_15", "role": "we1" }} , 
 	{ "name": "p_ZL8weights4_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_ZL8weights4_0", "role": "address0" }} , 
 	{ "name": "p_ZL8weights4_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_0", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights4_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_0", "role": "d0" }} , 
 	{ "name": "p_ZL8weights4_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_0", "role": "q0" }} , 
 	{ "name": "p_ZL8weights4_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_0", "role": "we0" }} , 
 	{ "name": "p_ZL8weights4_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_ZL8weights4_0", "role": "address1" }} , 
 	{ "name": "p_ZL8weights4_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_0", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights4_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_0", "role": "d1" }} , 
 	{ "name": "p_ZL8weights4_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_0", "role": "q1" }} , 
 	{ "name": "p_ZL8weights4_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_0", "role": "we1" }} , 
 	{ "name": "p_ZL8weights4_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_ZL8weights4_1", "role": "address0" }} , 
 	{ "name": "p_ZL8weights4_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_1", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights4_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_1", "role": "d0" }} , 
 	{ "name": "p_ZL8weights4_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_1", "role": "q0" }} , 
 	{ "name": "p_ZL8weights4_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_1", "role": "we0" }} , 
 	{ "name": "p_ZL8weights4_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_ZL8weights4_1", "role": "address1" }} , 
 	{ "name": "p_ZL8weights4_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_1", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights4_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_1", "role": "d1" }} , 
 	{ "name": "p_ZL8weights4_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_1", "role": "q1" }} , 
 	{ "name": "p_ZL8weights4_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_1", "role": "we1" }} , 
 	{ "name": "p_ZL8weights4_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_ZL8weights4_2", "role": "address0" }} , 
 	{ "name": "p_ZL8weights4_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_2", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights4_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_2", "role": "d0" }} , 
 	{ "name": "p_ZL8weights4_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_2", "role": "q0" }} , 
 	{ "name": "p_ZL8weights4_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_2", "role": "we0" }} , 
 	{ "name": "p_ZL8weights4_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_ZL8weights4_2", "role": "address1" }} , 
 	{ "name": "p_ZL8weights4_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_2", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights4_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_2", "role": "d1" }} , 
 	{ "name": "p_ZL8weights4_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_2", "role": "q1" }} , 
 	{ "name": "p_ZL8weights4_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_2", "role": "we1" }} , 
 	{ "name": "p_ZL8weights4_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_ZL8weights4_3", "role": "address0" }} , 
 	{ "name": "p_ZL8weights4_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_3", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights4_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_3", "role": "d0" }} , 
 	{ "name": "p_ZL8weights4_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_3", "role": "q0" }} , 
 	{ "name": "p_ZL8weights4_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_3", "role": "we0" }} , 
 	{ "name": "p_ZL8weights4_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_ZL8weights4_3", "role": "address1" }} , 
 	{ "name": "p_ZL8weights4_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_3", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights4_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_3", "role": "d1" }} , 
 	{ "name": "p_ZL8weights4_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL8weights4_3", "role": "q1" }} , 
 	{ "name": "p_ZL8weights4_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights4_3", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs4_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8threshs4_0", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs4_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_0", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs4_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_0", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs4_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_0", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs4_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_0", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs4_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8threshs4_0", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs4_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_0", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs4_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_0", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs4_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_0", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs4_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_0", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs4_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8threshs4_1", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs4_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_1", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs4_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_1", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs4_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_1", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs4_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_1", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs4_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8threshs4_1", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs4_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_1", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs4_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_1", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs4_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_1", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs4_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_1", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs4_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8threshs4_2", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs4_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_2", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs4_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_2", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs4_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_2", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs4_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_2", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs4_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8threshs4_2", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs4_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_2", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs4_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_2", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs4_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_2", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs4_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_2", "role": "we1" }} , 
 	{ "name": "p_ZL8threshs4_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8threshs4_3", "role": "address0" }} , 
 	{ "name": "p_ZL8threshs4_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_3", "role": "ce0" }} , 
 	{ "name": "p_ZL8threshs4_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_3", "role": "d0" }} , 
 	{ "name": "p_ZL8threshs4_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_3", "role": "q0" }} , 
 	{ "name": "p_ZL8threshs4_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_3", "role": "we0" }} , 
 	{ "name": "p_ZL8threshs4_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZL8threshs4_3", "role": "address1" }} , 
 	{ "name": "p_ZL8threshs4_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_3", "role": "ce1" }} , 
 	{ "name": "p_ZL8threshs4_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_3", "role": "d1" }} , 
 	{ "name": "p_ZL8threshs4_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZL8threshs4_3", "role": "q1" }} , 
 	{ "name": "p_ZL8threshs4_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8threshs4_3", "role": "we1" }} , 
 	{ "name": "weights5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "weights5", "role": "address0" }} , 
 	{ "name": "weights5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights5", "role": "ce0" }} , 
 	{ "name": "weights5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights5", "role": "d0" }} , 
 	{ "name": "weights5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights5", "role": "q0" }} , 
 	{ "name": "weights5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights5", "role": "we0" }} , 
 	{ "name": "weights5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "weights5", "role": "address1" }} , 
 	{ "name": "weights5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights5", "role": "ce1" }} , 
 	{ "name": "weights5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights5", "role": "d1" }} , 
 	{ "name": "weights5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights5", "role": "q1" }} , 
 	{ "name": "weights5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights5", "role": "we1" }} , 
 	{ "name": "threshs5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshs5", "role": "address0" }} , 
 	{ "name": "threshs5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshs5", "role": "ce0" }} , 
 	{ "name": "threshs5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "threshs5", "role": "d0" }} , 
 	{ "name": "threshs5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "threshs5", "role": "q0" }} , 
 	{ "name": "threshs5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshs5", "role": "we0" }} , 
 	{ "name": "threshs5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshs5", "role": "address1" }} , 
 	{ "name": "threshs5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshs5", "role": "ce1" }} , 
 	{ "name": "threshs5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "threshs5", "role": "d1" }} , 
 	{ "name": "threshs5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "threshs5", "role": "q1" }} , 
 	{ "name": "threshs5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshs5", "role": "we1" }} , 
 	{ "name": "weights6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "weights6", "role": "address0" }} , 
 	{ "name": "weights6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights6", "role": "ce0" }} , 
 	{ "name": "weights6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights6", "role": "d0" }} , 
 	{ "name": "weights6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights6", "role": "q0" }} , 
 	{ "name": "weights6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights6", "role": "we0" }} , 
 	{ "name": "weights6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "weights6", "role": "address1" }} , 
 	{ "name": "weights6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights6", "role": "ce1" }} , 
 	{ "name": "weights6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights6", "role": "d1" }} , 
 	{ "name": "weights6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights6", "role": "q1" }} , 
 	{ "name": "weights6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights6", "role": "we1" }} , 
 	{ "name": "threshs6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshs6", "role": "address0" }} , 
 	{ "name": "threshs6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshs6", "role": "ce0" }} , 
 	{ "name": "threshs6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "threshs6", "role": "d0" }} , 
 	{ "name": "threshs6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "threshs6", "role": "q0" }} , 
 	{ "name": "threshs6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshs6", "role": "we0" }} , 
 	{ "name": "threshs6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshs6", "role": "address1" }} , 
 	{ "name": "threshs6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshs6", "role": "ce1" }} , 
 	{ "name": "threshs6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "threshs6", "role": "d1" }} , 
 	{ "name": "threshs6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "threshs6", "role": "q1" }} , 
 	{ "name": "threshs6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshs6", "role": "we1" }} , 
 	{ "name": "weights7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "weights7", "role": "address0" }} , 
 	{ "name": "weights7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights7", "role": "ce0" }} , 
 	{ "name": "weights7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights7", "role": "d0" }} , 
 	{ "name": "weights7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights7", "role": "q0" }} , 
 	{ "name": "weights7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights7", "role": "we0" }} , 
 	{ "name": "weights7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "weights7", "role": "address1" }} , 
 	{ "name": "weights7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights7", "role": "ce1" }} , 
 	{ "name": "weights7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights7", "role": "d1" }} , 
 	{ "name": "weights7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights7", "role": "q1" }} , 
 	{ "name": "weights7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights7", "role": "we1" }} , 
 	{ "name": "threshs7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshs7", "role": "address0" }} , 
 	{ "name": "threshs7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshs7", "role": "ce0" }} , 
 	{ "name": "threshs7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "threshs7", "role": "d0" }} , 
 	{ "name": "threshs7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "threshs7", "role": "q0" }} , 
 	{ "name": "threshs7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshs7", "role": "we0" }} , 
 	{ "name": "threshs7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshs7", "role": "address1" }} , 
 	{ "name": "threshs7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshs7", "role": "ce1" }} , 
 	{ "name": "threshs7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "threshs7", "role": "d1" }} , 
 	{ "name": "threshs7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "threshs7", "role": "q1" }} , 
 	{ "name": "threshs7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshs7", "role": "we1" }} , 
 	{ "name": "p_ZL8weights8_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "p_ZL8weights8_0", "role": "address0" }} , 
 	{ "name": "p_ZL8weights8_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_0", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights8_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_0", "role": "d0" }} , 
 	{ "name": "p_ZL8weights8_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_0", "role": "q0" }} , 
 	{ "name": "p_ZL8weights8_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_0", "role": "we0" }} , 
 	{ "name": "p_ZL8weights8_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "p_ZL8weights8_0", "role": "address1" }} , 
 	{ "name": "p_ZL8weights8_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_0", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights8_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_0", "role": "d1" }} , 
 	{ "name": "p_ZL8weights8_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_0", "role": "q1" }} , 
 	{ "name": "p_ZL8weights8_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_0", "role": "we1" }} , 
 	{ "name": "p_ZL8weights8_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "p_ZL8weights8_1", "role": "address0" }} , 
 	{ "name": "p_ZL8weights8_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_1", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights8_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_1", "role": "d0" }} , 
 	{ "name": "p_ZL8weights8_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_1", "role": "q0" }} , 
 	{ "name": "p_ZL8weights8_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_1", "role": "we0" }} , 
 	{ "name": "p_ZL8weights8_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "p_ZL8weights8_1", "role": "address1" }} , 
 	{ "name": "p_ZL8weights8_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_1", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights8_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_1", "role": "d1" }} , 
 	{ "name": "p_ZL8weights8_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_1", "role": "q1" }} , 
 	{ "name": "p_ZL8weights8_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_1", "role": "we1" }} , 
 	{ "name": "p_ZL8weights8_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "p_ZL8weights8_2", "role": "address0" }} , 
 	{ "name": "p_ZL8weights8_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_2", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights8_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_2", "role": "d0" }} , 
 	{ "name": "p_ZL8weights8_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_2", "role": "q0" }} , 
 	{ "name": "p_ZL8weights8_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_2", "role": "we0" }} , 
 	{ "name": "p_ZL8weights8_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "p_ZL8weights8_2", "role": "address1" }} , 
 	{ "name": "p_ZL8weights8_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_2", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights8_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_2", "role": "d1" }} , 
 	{ "name": "p_ZL8weights8_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_2", "role": "q1" }} , 
 	{ "name": "p_ZL8weights8_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_2", "role": "we1" }} , 
 	{ "name": "p_ZL8weights8_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "p_ZL8weights8_3", "role": "address0" }} , 
 	{ "name": "p_ZL8weights8_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_3", "role": "ce0" }} , 
 	{ "name": "p_ZL8weights8_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_3", "role": "d0" }} , 
 	{ "name": "p_ZL8weights8_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_3", "role": "q0" }} , 
 	{ "name": "p_ZL8weights8_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_3", "role": "we0" }} , 
 	{ "name": "p_ZL8weights8_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "p_ZL8weights8_3", "role": "address1" }} , 
 	{ "name": "p_ZL8weights8_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_3", "role": "ce1" }} , 
 	{ "name": "p_ZL8weights8_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_3", "role": "d1" }} , 
 	{ "name": "p_ZL8weights8_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_3", "role": "q1" }} , 
 	{ "name": "p_ZL8weights8_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL8weights8_3", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "out_r_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "out_r", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "in_r_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_r", "role": "ap_vld" }} , 
 	{ "name": "numReps_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "numReps", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "7", "10", "13", "21", "23", "27", "31", "35", "44", "46", "50", "54", "60", "64", "73", "74", "78", "81", "82", "85", "94", "96", "100", "104", "110", "112", "120", "121", "125", "128", "131", "139", "143", "146", "149", "153", "156", "159", "163", "166", "169", "173", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275"],
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
			{"ID" : "1", "Name" : "entry_proc_U0"},
			{"ID" : "2", "Name" : "Mem2Stream_Batch_64u_3072u_U0"},
			{"ID" : "21", "Name" : "DoCompute_Block_entry5993_proc_U0"},
			{"ID" : "23", "Name" : "Matrix_Vector_Activate_Batch_4_U0"},
			{"ID" : "46", "Name" : "Matrix_Vector_Activate_Batch_U0"},
			{"ID" : "73", "Name" : "DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0"},
			{"ID" : "74", "Name" : "Matrix_Vector_Activate_Batch_1_U0"},
			{"ID" : "81", "Name" : "DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0"},
			{"ID" : "94", "Name" : "DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0"},
			{"ID" : "96", "Name" : "Matrix_Vector_Activate_Batch_8_U0"},
			{"ID" : "120", "Name" : "DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0"},
			{"ID" : "121", "Name" : "Matrix_Vector_Activate_Batch_7_U0"},
			{"ID" : "139", "Name" : "Matrix_Vector_Activate_Batch_6_U0"},
			{"ID" : "149", "Name" : "Matrix_Vector_Activate_Batch_5_U0"},
			{"ID" : "159", "Name" : "Matrix_Vector_Activate_Batch_3_U0"},
			{"ID" : "169", "Name" : "Matrix_Vector_Activate_Batch_2_U0"}],
		"OutputProcess" : [
			{"ID" : "173", "Name" : "Stream2Mem_Batch_64u_128u_U0"}],
		"Port" : [
			{"Name" : "hostmem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Mem2Stream_Batch_64u_3072u_U0", "Port" : "hostmem"},
					{"ID" : "173", "SubInstance" : "Stream2Mem_Batch_64u_128u_U0", "Port" : "hostmem"}]},
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "numReps", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL8weights0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_0"}]},
			{"Name" : "p_ZL8weights0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_1"}]},
			{"Name" : "p_ZL8weights0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_2"}]},
			{"Name" : "p_ZL8weights0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_3"}]},
			{"Name" : "p_ZL8weights0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_4"}]},
			{"Name" : "p_ZL8weights0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_5"}]},
			{"Name" : "p_ZL8weights0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_6"}]},
			{"Name" : "p_ZL8weights0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_7"}]},
			{"Name" : "p_ZL8weights0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_8"}]},
			{"Name" : "p_ZL8weights0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_9"}]},
			{"Name" : "p_ZL8weights0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_10"}]},
			{"Name" : "p_ZL8weights0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_11"}]},
			{"Name" : "p_ZL8weights0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_12"}]},
			{"Name" : "p_ZL8weights0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_13"}]},
			{"Name" : "p_ZL8weights0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_14"}]},
			{"Name" : "p_ZL8weights0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8weights0_15"}]},
			{"Name" : "p_ZL8threshs0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_0"}]},
			{"Name" : "p_ZL8threshs0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_1"}]},
			{"Name" : "p_ZL8threshs0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_2"}]},
			{"Name" : "p_ZL8threshs0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_3"}]},
			{"Name" : "p_ZL8threshs0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_4"}]},
			{"Name" : "p_ZL8threshs0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_5"}]},
			{"Name" : "p_ZL8threshs0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_6"}]},
			{"Name" : "p_ZL8threshs0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_7"}]},
			{"Name" : "p_ZL8threshs0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_8"}]},
			{"Name" : "p_ZL8threshs0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_9"}]},
			{"Name" : "p_ZL8threshs0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_10"}]},
			{"Name" : "p_ZL8threshs0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_11"}]},
			{"Name" : "p_ZL8threshs0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_12"}]},
			{"Name" : "p_ZL8threshs0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_13"}]},
			{"Name" : "p_ZL8threshs0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_14"}]},
			{"Name" : "p_ZL8threshs0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "Matrix_Vector_Activate_Batch_4_U0", "Port" : "p_ZL8threshs0_15"}]},
			{"Name" : "p_ZL8weights1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_0"}]},
			{"Name" : "p_ZL8weights1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_1"}]},
			{"Name" : "p_ZL8weights1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_2"}]},
			{"Name" : "p_ZL8weights1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_3"}]},
			{"Name" : "p_ZL8weights1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_4"}]},
			{"Name" : "p_ZL8weights1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_5"}]},
			{"Name" : "p_ZL8weights1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_6"}]},
			{"Name" : "p_ZL8weights1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_7"}]},
			{"Name" : "p_ZL8weights1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_8"}]},
			{"Name" : "p_ZL8weights1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_9"}]},
			{"Name" : "p_ZL8weights1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_10"}]},
			{"Name" : "p_ZL8weights1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_11"}]},
			{"Name" : "p_ZL8weights1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_12"}]},
			{"Name" : "p_ZL8weights1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_13"}]},
			{"Name" : "p_ZL8weights1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_14"}]},
			{"Name" : "p_ZL8weights1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_15"}]},
			{"Name" : "p_ZL8weights1_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_16"}]},
			{"Name" : "p_ZL8weights1_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_17"}]},
			{"Name" : "p_ZL8weights1_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_18"}]},
			{"Name" : "p_ZL8weights1_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_19"}]},
			{"Name" : "p_ZL8weights1_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_20"}]},
			{"Name" : "p_ZL8weights1_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_21"}]},
			{"Name" : "p_ZL8weights1_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_22"}]},
			{"Name" : "p_ZL8weights1_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_23"}]},
			{"Name" : "p_ZL8weights1_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_24"}]},
			{"Name" : "p_ZL8weights1_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_25"}]},
			{"Name" : "p_ZL8weights1_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_26"}]},
			{"Name" : "p_ZL8weights1_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_27"}]},
			{"Name" : "p_ZL8weights1_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_28"}]},
			{"Name" : "p_ZL8weights1_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_29"}]},
			{"Name" : "p_ZL8weights1_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_30"}]},
			{"Name" : "p_ZL8weights1_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8weights1_31"}]},
			{"Name" : "p_ZL8threshs1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_0"}]},
			{"Name" : "p_ZL8threshs1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_1"}]},
			{"Name" : "p_ZL8threshs1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_2"}]},
			{"Name" : "p_ZL8threshs1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_3"}]},
			{"Name" : "p_ZL8threshs1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_4"}]},
			{"Name" : "p_ZL8threshs1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_5"}]},
			{"Name" : "p_ZL8threshs1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_6"}]},
			{"Name" : "p_ZL8threshs1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_7"}]},
			{"Name" : "p_ZL8threshs1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_8"}]},
			{"Name" : "p_ZL8threshs1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_9"}]},
			{"Name" : "p_ZL8threshs1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_10"}]},
			{"Name" : "p_ZL8threshs1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_11"}]},
			{"Name" : "p_ZL8threshs1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_12"}]},
			{"Name" : "p_ZL8threshs1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_13"}]},
			{"Name" : "p_ZL8threshs1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_14"}]},
			{"Name" : "p_ZL8threshs1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_15"}]},
			{"Name" : "p_ZL8threshs1_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_16"}]},
			{"Name" : "p_ZL8threshs1_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_17"}]},
			{"Name" : "p_ZL8threshs1_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_18"}]},
			{"Name" : "p_ZL8threshs1_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_19"}]},
			{"Name" : "p_ZL8threshs1_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_20"}]},
			{"Name" : "p_ZL8threshs1_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_21"}]},
			{"Name" : "p_ZL8threshs1_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_22"}]},
			{"Name" : "p_ZL8threshs1_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_23"}]},
			{"Name" : "p_ZL8threshs1_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_24"}]},
			{"Name" : "p_ZL8threshs1_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_25"}]},
			{"Name" : "p_ZL8threshs1_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_26"}]},
			{"Name" : "p_ZL8threshs1_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_27"}]},
			{"Name" : "p_ZL8threshs1_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_28"}]},
			{"Name" : "p_ZL8threshs1_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_29"}]},
			{"Name" : "p_ZL8threshs1_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_30"}]},
			{"Name" : "p_ZL8threshs1_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "Matrix_Vector_Activate_Batch_U0", "Port" : "p_ZL8threshs1_31"}]},
			{"Name" : "p_ZL8weights2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_0"}]},
			{"Name" : "p_ZL8weights2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_1"}]},
			{"Name" : "p_ZL8weights2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_2"}]},
			{"Name" : "p_ZL8weights2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_3"}]},
			{"Name" : "p_ZL8weights2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_4"}]},
			{"Name" : "p_ZL8weights2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_5"}]},
			{"Name" : "p_ZL8weights2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_6"}]},
			{"Name" : "p_ZL8weights2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_7"}]},
			{"Name" : "p_ZL8weights2_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_8"}]},
			{"Name" : "p_ZL8weights2_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_9"}]},
			{"Name" : "p_ZL8weights2_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_10"}]},
			{"Name" : "p_ZL8weights2_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_11"}]},
			{"Name" : "p_ZL8weights2_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_12"}]},
			{"Name" : "p_ZL8weights2_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_13"}]},
			{"Name" : "p_ZL8weights2_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_14"}]},
			{"Name" : "p_ZL8weights2_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8weights2_15"}]},
			{"Name" : "p_ZL8threshs2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_0"}]},
			{"Name" : "p_ZL8threshs2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_1"}]},
			{"Name" : "p_ZL8threshs2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_2"}]},
			{"Name" : "p_ZL8threshs2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_3"}]},
			{"Name" : "p_ZL8threshs2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_4"}]},
			{"Name" : "p_ZL8threshs2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_5"}]},
			{"Name" : "p_ZL8threshs2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_6"}]},
			{"Name" : "p_ZL8threshs2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_7"}]},
			{"Name" : "p_ZL8threshs2_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_8"}]},
			{"Name" : "p_ZL8threshs2_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_9"}]},
			{"Name" : "p_ZL8threshs2_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_10"}]},
			{"Name" : "p_ZL8threshs2_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_11"}]},
			{"Name" : "p_ZL8threshs2_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_12"}]},
			{"Name" : "p_ZL8threshs2_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_13"}]},
			{"Name" : "p_ZL8threshs2_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_14"}]},
			{"Name" : "p_ZL8threshs2_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "Matrix_Vector_Activate_Batch_1_U0", "Port" : "p_ZL8threshs2_15"}]},
			{"Name" : "p_ZL8weights3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_0"}]},
			{"Name" : "p_ZL8weights3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_1"}]},
			{"Name" : "p_ZL8weights3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_2"}]},
			{"Name" : "p_ZL8weights3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_3"}]},
			{"Name" : "p_ZL8weights3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_4"}]},
			{"Name" : "p_ZL8weights3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_5"}]},
			{"Name" : "p_ZL8weights3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_6"}]},
			{"Name" : "p_ZL8weights3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_7"}]},
			{"Name" : "p_ZL8weights3_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_8"}]},
			{"Name" : "p_ZL8weights3_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_9"}]},
			{"Name" : "p_ZL8weights3_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_10"}]},
			{"Name" : "p_ZL8weights3_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_11"}]},
			{"Name" : "p_ZL8weights3_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_12"}]},
			{"Name" : "p_ZL8weights3_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_13"}]},
			{"Name" : "p_ZL8weights3_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_14"}]},
			{"Name" : "p_ZL8weights3_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8weights3_15"}]},
			{"Name" : "p_ZL8threshs3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_0"}]},
			{"Name" : "p_ZL8threshs3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_1"}]},
			{"Name" : "p_ZL8threshs3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_2"}]},
			{"Name" : "p_ZL8threshs3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_3"}]},
			{"Name" : "p_ZL8threshs3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_4"}]},
			{"Name" : "p_ZL8threshs3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_5"}]},
			{"Name" : "p_ZL8threshs3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_6"}]},
			{"Name" : "p_ZL8threshs3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_7"}]},
			{"Name" : "p_ZL8threshs3_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_8"}]},
			{"Name" : "p_ZL8threshs3_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_9"}]},
			{"Name" : "p_ZL8threshs3_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_10"}]},
			{"Name" : "p_ZL8threshs3_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_11"}]},
			{"Name" : "p_ZL8threshs3_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_12"}]},
			{"Name" : "p_ZL8threshs3_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_13"}]},
			{"Name" : "p_ZL8threshs3_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_14"}]},
			{"Name" : "p_ZL8threshs3_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "Matrix_Vector_Activate_Batch_8_U0", "Port" : "p_ZL8threshs3_15"}]},
			{"Name" : "p_ZL8weights4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "Matrix_Vector_Activate_Batch_7_U0", "Port" : "p_ZL8weights4_0"}]},
			{"Name" : "p_ZL8weights4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "Matrix_Vector_Activate_Batch_7_U0", "Port" : "p_ZL8weights4_1"}]},
			{"Name" : "p_ZL8weights4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "Matrix_Vector_Activate_Batch_7_U0", "Port" : "p_ZL8weights4_2"}]},
			{"Name" : "p_ZL8weights4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "Matrix_Vector_Activate_Batch_7_U0", "Port" : "p_ZL8weights4_3"}]},
			{"Name" : "p_ZL8threshs4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "Matrix_Vector_Activate_Batch_7_U0", "Port" : "p_ZL8threshs4_0"}]},
			{"Name" : "p_ZL8threshs4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "Matrix_Vector_Activate_Batch_7_U0", "Port" : "p_ZL8threshs4_1"}]},
			{"Name" : "p_ZL8threshs4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "Matrix_Vector_Activate_Batch_7_U0", "Port" : "p_ZL8threshs4_2"}]},
			{"Name" : "p_ZL8threshs4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "Matrix_Vector_Activate_Batch_7_U0", "Port" : "p_ZL8threshs4_3"}]},
			{"Name" : "weights5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "Matrix_Vector_Activate_Batch_6_U0", "Port" : "weights5"}]},
			{"Name" : "threshs5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "Matrix_Vector_Activate_Batch_6_U0", "Port" : "threshs5"}]},
			{"Name" : "weights6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "Matrix_Vector_Activate_Batch_5_U0", "Port" : "weights6"}]},
			{"Name" : "threshs6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "Matrix_Vector_Activate_Batch_5_U0", "Port" : "threshs6"}]},
			{"Name" : "weights7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "Matrix_Vector_Activate_Batch_3_U0", "Port" : "weights7"}]},
			{"Name" : "threshs7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "Matrix_Vector_Activate_Batch_3_U0", "Port" : "threshs7"}]},
			{"Name" : "p_ZL8weights8_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "Matrix_Vector_Activate_Batch_2_U0", "Port" : "p_ZL8weights8_0"}]},
			{"Name" : "p_ZL8weights8_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "Matrix_Vector_Activate_Batch_2_U0", "Port" : "p_ZL8weights8_1"}]},
			{"Name" : "p_ZL8weights8_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "Matrix_Vector_Activate_Batch_2_U0", "Port" : "p_ZL8weights8_2"}]},
			{"Name" : "p_ZL8weights8_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "Matrix_Vector_Activate_Batch_2_U0", "Port" : "p_ZL8weights8_3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
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
			{"Name" : "out_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["173"], "DependentChan" : "178", "DependentChanDepth" : "38", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Mem2Stream_Batch_64u_3072u_U0", "Parent" : "0", "Child" : ["3", "5"],
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
					{"ID" : "5", "SubInstance" : "grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_1_fu_117", "Port" : "hostmem", "Inst_start_state" : "20", "Inst_end_state" : "12"},
					{"ID" : "3", "SubInstance" : "grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_16_fu_108", "Port" : "hostmem", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "inter0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "179", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_1_fu_117", "Port" : "inter0", "Inst_start_state" : "20", "Inst_end_state" : "12"},
					{"ID" : "3", "SubInstance" : "grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_16_fu_108", "Port" : "inter0", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "numReps", "Type" : "None", "Direction" : "I"},
			{"Name" : "numReps_c160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "180", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c160_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_166_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mem2Stream_Batch_64u_3072u_U0.grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_16_fu_108", "Parent" : "2", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Mem2Stream_Batch_64u_3072u_U0.grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_16_fu_108.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mem2Stream_Batch_64u_3072u_U0.grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_1_fu_117", "Parent" : "2", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Mem2Stream_Batch_64u_3072u_U0.grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_1_fu_117.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.StreamingDataWidthConverter_Batch_64u_192u_384u_U0", "Parent" : "0", "Child" : ["8"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_StreamingDataWidthConverter_Batch_64u_192u_384u_U0_U",
		"Port" : [
			{"Name" : "inter0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "179", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3_fu_54", "Port" : "inter0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter0_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["10"], "DependentChan" : "181", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3_fu_54", "Port" : "inter0_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "180", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["10"], "DependentChan" : "182", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c159_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.grp_StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3_fu_54", "Parent" : "7", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.grp_StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.StreamingDataWidthConverter_Batch_192u_24u_128u_U0", "Parent" : "0", "Child" : ["11"],
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
		"StartSource" : "7",
		"StartFifo" : "start_for_StreamingDataWidthConverter_Batch_192u_24u_128u_U0_U",
		"Port" : [
			{"Name" : "inter0_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "181", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_StreamingDataWidthConverter_Batch_192u_24u_128u_Pipeline_VITIS_LOOP_268_1_fu_52", "Port" : "inter0_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter0_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "183", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_StreamingDataWidthConverter_Batch_192u_24u_128u_Pipeline_VITIS_LOOP_268_1_fu_52", "Port" : "inter0_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "182", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "184", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c158_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.grp_StreamingDataWidthConverter_Batch_192u_24u_128u_Pipeline_VITIS_LOOP_268_1_fu_52", "Parent" : "10", "Child" : ["12"],
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.grp_StreamingDataWidthConverter_Batch_192u_24u_128u_Pipeline_VITIS_LOOP_268_1_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0", "Parent" : "0", "Child" : ["14"],
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
		"StartSource" : "10",
		"StartFifo" : "start_for_ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0_U",
		"Port" : [
			{"Name" : "inter0_233", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "183", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58", "Port" : "inter0_233", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "convInp_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "185", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58", "Port" : "convInp_i", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "184", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "186", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c157_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58", "Parent" : "13", "Child" : ["15", "16", "17", "18", "19", "20"],
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
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58.inputBuf_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58.inputBuf_1_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58.inputBuf_2_U", "Parent" : "14"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58.inputBuf_3_U", "Parent" : "14"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58.sparsemux_9_2_24_1_1_U28", "Parent" : "14"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Block_entry5993_proc_U0", "Parent" : "0", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Block_entry5993_proc_U0.mul_30s_11ns_30_2_1_U38", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_4_U0", "Parent" : "0", "Child" : ["24"],
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
			{"Name" : "convInp_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "185", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "convInp_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mvOut_m_buffer_10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "189", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "mvOut_m_buffer_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["21"], "DependentChan" : "188", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "p_ZL8weights0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights0_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs0_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_4_U0.grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100", "Parent" : "23", "Child" : ["25", "26"],
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
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_4_U0.grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100.sparsemux_19_4_24_1_1_U41", "Parent" : "24"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_4_U0.grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0", "Parent" : "0", "Child" : ["28", "30"],
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
		"StartSource" : "23",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0_U",
		"Port" : [
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "186", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mvOut_m_buffer_10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["23"], "DependentChan" : "189", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc26_Pipeline_VITIS_LOOP_300_3_fu_52", "Port" : "mvOut_m_buffer_10", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "inter1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "190", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc26_Pipeline_VITIS_LOOP_300_3_fu_52", "Port" : "inter1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "numReps_c156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "191", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c156_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc26_Pipeline_VITIS_LOOP_300_3_fu_52", "Parent" : "27", "Child" : ["29"],
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
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc26_Pipeline_VITIS_LOOP_300_3_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.mul_32s_13ns_32_2_1_U116", "Parent" : "27"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0", "Parent" : "0", "Child" : ["32", "34"],
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
		"StartSource" : "27",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0_U",
		"Port" : [
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["27"], "DependentChan" : "191", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wa_in_12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35"], "DependentChan" : "192", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc27_Pipeline_VITIS_LOOP_268_1_fu_52", "Port" : "wa_in_12", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "inter1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["27"], "DependentChan" : "190", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc27_Pipeline_VITIS_LOOP_268_1_fu_52", "Port" : "inter1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "numReps_c155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35"], "DependentChan" : "193", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc27_Pipeline_VITIS_LOOP_268_1_fu_52", "Parent" : "31", "Child" : ["33"],
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
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc27_Pipeline_VITIS_LOOP_268_1_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.mul_32s_12ns_32_2_1_U125", "Parent" : "31"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0", "Parent" : "0", "Child" : ["36", "43"],
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
		"StartSource" : "31",
		"StartFifo" : "start_for_ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0_U",
		"Port" : [
			{"Name" : "wa_in_i126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["31"], "DependentChan" : "192", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52", "Port" : "wa_in_i126", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "convInp_i3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["46"], "DependentChan" : "194", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52", "Port" : "convInp_i3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["31"], "DependentChan" : "193", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["50"], "DependentChan" : "195", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52", "Parent" : "35", "Child" : ["37", "38", "39", "40", "41", "42"],
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
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.inputBuf_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.inputBuf_1_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.inputBuf_2_U", "Parent" : "36"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.inputBuf_3_U", "Parent" : "36"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.sparsemux_9_2_32_1_1_U131", "Parent" : "36"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.mul_32ns_15ns_46_2_1_U137", "Parent" : "35"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj900EEC2ERN3hls6streamI_U0", "Parent" : "0", "Child" : ["45"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["21"], "DependentChan" : "187", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj900EEC2ERN3hls6streamI_U0.mul_30s_11ns_30_2_1_U143", "Parent" : "44"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_U0", "Parent" : "0", "Child" : ["47"],
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
			{"Name" : "convInp_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["35"], "DependentChan" : "194", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "convInp_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mvOut_m_buffer_9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["50"], "DependentChan" : "197", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "mvOut_m_buffer_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["44"], "DependentChan" : "196", "DependentChanDepth" : "8", "DependentChanType" : "1"},
			{"Name" : "p_ZL8weights1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_17", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_18", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_19", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_20", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_21", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_22", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_23", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_24", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_25", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_26", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_27", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_28", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_29", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_30", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights1_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8weights1_31", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_17", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_18", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_19", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_20", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_21", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_22", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_23", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_24", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_25", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_26", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_27", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_28", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_29", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_30", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs1_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Port" : "p_ZL8threshs1_31", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_U0.grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164", "Parent" : "46", "Child" : ["48", "49"],
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
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_U0.grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164.sparsemux_37_5_32_1_1_U145", "Parent" : "47"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_U0.grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0", "Parent" : "0", "Child" : ["51", "53"],
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
		"StartSource" : "46",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0_U",
		"Port" : [
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["35"], "DependentChan" : "195", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mvOut_m_buffer_9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["46"], "DependentChan" : "197", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3_fu_52", "Port" : "mvOut_m_buffer_9", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "inter2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["54"], "DependentChan" : "198", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3_fu_52", "Port" : "inter2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "numReps_c153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["54"], "DependentChan" : "199", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c153_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3_fu_52", "Parent" : "50", "Child" : ["52"],
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
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.mul_32s_12ns_32_2_1_U284", "Parent" : "50"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.StreamingMaxPool_Batch_28u_2u_64u_U0", "Parent" : "0", "Child" : ["55", "56", "58"],
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
		"StartSource" : "50",
		"StartFifo" : "start_for_StreamingMaxPool_Batch_28u_2u_64u_U0_U",
		"Port" : [
			{"Name" : "inter2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["50"], "DependentChan" : "198", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4_fu_240", "Port" : "inter2", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "inter3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["60"], "DependentChan" : "200", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_85_6_fu_247", "Port" : "inter3", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["50"], "DependentChan" : "199", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["60"], "DependentChan" : "201", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c152_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_73_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state9"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_109_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.StreamingMaxPool_Batch_28u_2u_64u_U0.buf_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.StreamingMaxPool_Batch_28u_2u_64u_U0.grp_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4_fu_240", "Parent" : "54", "Child" : ["57"],
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
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.StreamingMaxPool_Batch_28u_2u_64u_U0.grp_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4_fu_240.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.StreamingMaxPool_Batch_28u_2u_64u_U0.grp_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_85_6_fu_247", "Parent" : "54", "Child" : ["59"],
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
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.StreamingMaxPool_Batch_28u_2u_64u_U0.grp_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_85_6_fu_247.flow_control_loop_pipe_sequential_init_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0", "Parent" : "0", "Child" : ["61", "63"],
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
		"StartSource" : "54",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0_U",
		"Port" : [
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["54"], "DependentChan" : "201", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wa_in_11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["64"], "DependentChan" : "202", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc329_Pipeline_VITIS_LOOP_268_1_fu_52", "Port" : "wa_in_11", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "inter3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["54"], "DependentChan" : "200", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc329_Pipeline_VITIS_LOOP_268_1_fu_52", "Port" : "inter3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "numReps_c151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["64"], "DependentChan" : "203", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc329_Pipeline_VITIS_LOOP_268_1_fu_52", "Parent" : "60", "Child" : ["62"],
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
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc329_Pipeline_VITIS_LOOP_268_1_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.mul_32s_10ns_32_2_1_U301", "Parent" : "60"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0", "Parent" : "0", "Child" : ["65", "72"],
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
		"StartSource" : "60",
		"StartFifo" : "start_for_ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0_U",
		"Port" : [
			{"Name" : "wa_in_i822", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["60"], "DependentChan" : "202", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52", "Port" : "wa_in_i822", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "convInp_i10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["74"], "DependentChan" : "204", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52", "Port" : "convInp_i10", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["60"], "DependentChan" : "203", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["78"], "DependentChan" : "205", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c150_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52", "Parent" : "64", "Child" : ["66", "67", "68", "69", "70", "71"],
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
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52.inputBuf_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52.inputBuf_1_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52.inputBuf_2_U", "Parent" : "65"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52.inputBuf_3_U", "Parent" : "65"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52.sparsemux_9_2_32_1_1_U307", "Parent" : "65"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "65"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.mul_32ns_13ns_44_2_1_U312", "Parent" : "64"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0", "Parent" : "0",
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
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_1_U0", "Parent" : "0", "Child" : ["75"],
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
			{"Name" : "convInp_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["64"], "DependentChan" : "204", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "convInp_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mvOut_m_buffer_8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["78"], "DependentChan" : "208", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "mvOut_m_buffer_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["73"], "DependentChan" : "207", "DependentChanDepth" : "14", "DependentChanType" : "1"},
			{"Name" : "p_ZL8weights2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights2_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights2_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs2_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs2_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_1_U0.grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100", "Parent" : "74", "Child" : ["76", "77"],
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
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_1_U0.grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100.sparsemux_37_5_32_1_1_U319", "Parent" : "75"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_1_U0.grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0", "Parent" : "0", "Child" : ["79"],
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
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["64"], "DependentChan" : "205", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["73"], "DependentChan" : "206", "DependentChanDepth" : "15", "DependentChanType" : "1"},
			{"Name" : "mvOut_m_buffer_8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["74"], "DependentChan" : "208", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc4_Pipeline_VITIS_LOOP_300_3_fu_62", "Port" : "mvOut_m_buffer_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "209", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc4_Pipeline_VITIS_LOOP_300_3_fu_62", "Port" : "inter4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps_c149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["85"], "DependentChan" : "210", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc4_Pipeline_VITIS_LOOP_300_3_fu_62", "Parent" : "78", "Child" : ["80"],
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
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc4_Pipeline_VITIS_LOOP_300_3_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0", "Parent" : "0",
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
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0", "Parent" : "0", "Child" : ["83"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["81"], "DependentChan" : "211", "DependentChanDepth" : "16", "DependentChanType" : "1"},
			{"Name" : "wa_in_10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["85"], "DependentChan" : "214", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc6_Pipeline_VITIS_LOOP_268_1_fu_50", "Port" : "wa_in_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "209", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc6_Pipeline_VITIS_LOOP_268_1_fu_50", "Port" : "inter4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "totalIters_11_loc_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["125"], "DependentChan" : "215", "DependentChanDepth" : "9", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_11_loc_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc6_Pipeline_VITIS_LOOP_268_1_fu_50", "Parent" : "82", "Child" : ["84"],
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
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc6_Pipeline_VITIS_LOOP_268_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0", "Parent" : "0", "Child" : ["86", "93"],
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
		"StartSource" : "78",
		"StartFifo" : "start_for_ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0_U",
		"Port" : [
			{"Name" : "wa_in_i1518", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["82"], "DependentChan" : "214", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52", "Port" : "wa_in_i1518", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "convInp_i17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["96"], "DependentChan" : "216", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52", "Port" : "convInp_i17", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "210", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["100"], "DependentChan" : "217", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52", "Parent" : "85", "Child" : ["87", "88", "89", "90", "91", "92"],
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
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52.inputBuf_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52.inputBuf_1_U", "Parent" : "86"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52.inputBuf_2_U", "Parent" : "86"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52.inputBuf_3_U", "Parent" : "86"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52.sparsemux_9_2_32_1_1_U406", "Parent" : "86"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "86"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.mul_32ns_13ns_44_2_1_U411", "Parent" : "85"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0", "Parent" : "0", "Child" : ["95"],
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
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.mul_32s_8ns_32_2_1_U416", "Parent" : "94"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_8_U0", "Parent" : "0", "Child" : ["97"],
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
			{"Name" : "convInp_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["85"], "DependentChan" : "216", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "convInp_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mvOut_m_buffer_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["100"], "DependentChan" : "220", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "mvOut_m_buffer_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["94"], "DependentChan" : "219", "DependentChanDepth" : "18", "DependentChanType" : "1"},
			{"Name" : "p_ZL8weights3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights3_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8weights3_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs3_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Port" : "p_ZL8threshs3_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_8_U0.grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100", "Parent" : "96", "Child" : ["98", "99"],
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
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_8_U0.grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100.sparsemux_73_6_32_1_1_U419", "Parent" : "97"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_8_U0.grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "97"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0", "Parent" : "0", "Child" : ["101", "103"],
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
		"StartSource" : "96",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0_U",
		"Port" : [
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["85"], "DependentChan" : "217", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mvOut_m_buffer_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["96"], "DependentChan" : "220", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc830_Pipeline_VITIS_LOOP_300_3_fu_52", "Port" : "mvOut_m_buffer_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "inter5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["104"], "DependentChan" : "221", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc830_Pipeline_VITIS_LOOP_300_3_fu_52", "Port" : "inter5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "numReps_c147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["104"], "DependentChan" : "222", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c147_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc830_Pipeline_VITIS_LOOP_300_3_fu_52", "Parent" : "100", "Child" : ["102"],
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
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc830_Pipeline_VITIS_LOOP_300_3_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.mul_32s_11ns_32_2_1_U494", "Parent" : "100"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.StreamingMaxPool_Batch_10u_2u_128u_U0", "Parent" : "0", "Child" : ["105", "106", "108"],
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
		"StartSource" : "100",
		"StartFifo" : "start_for_StreamingMaxPool_Batch_10u_2u_128u_U0_U",
		"Port" : [
			{"Name" : "inter5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["100"], "DependentChan" : "221", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4_fu_152", "Port" : "inter5", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "inter6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["110"], "DependentChan" : "223", "DependentChanDepth" : "81", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_85_6_fu_159", "Port" : "inter6", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["100"], "DependentChan" : "222", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["112"], "DependentChan" : "224", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c146_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_73_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_109_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.StreamingMaxPool_Batch_10u_2u_128u_U0.buf_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.StreamingMaxPool_Batch_10u_2u_128u_U0.grp_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4_fu_152", "Parent" : "104", "Child" : ["107"],
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
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.StreamingMaxPool_Batch_10u_2u_128u_U0.grp_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.StreamingMaxPool_Batch_10u_2u_128u_U0.grp_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_85_6_fu_159", "Parent" : "104", "Child" : ["109"],
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
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.StreamingMaxPool_Batch_10u_2u_128u_U0.grp_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_85_6_fu_159.flow_control_loop_pipe_sequential_init_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0", "Parent" : "0", "Child" : ["111"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["94"], "DependentChan" : "218", "DependentChanDepth" : "21", "DependentChanType" : "1"},
			{"Name" : "wa_in_9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["112"], "DependentChan" : "225", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "wa_in_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inter6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["104"], "DependentChan" : "223", "DependentChanDepth" : "81", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "inter6_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_268_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0.flow_control_loop_pipe_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0", "Parent" : "0", "Child" : ["113"],
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
		"StartSource" : "110",
		"StartFifo" : "start_for_ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0_U",
		"Port" : [
			{"Name" : "wa_in_i2214", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["110"], "DependentChan" : "225", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58", "Port" : "wa_in_i2214", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "convInp_i24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["121"], "DependentChan" : "226", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58", "Port" : "convInp_i24", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["104"], "DependentChan" : "224", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["131"], "DependentChan" : "227", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58", "Parent" : "112", "Child" : ["114", "115", "116", "117", "118", "119"],
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
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58.inputBuf_U", "Parent" : "113"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58.inputBuf_1_U", "Parent" : "113"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58.inputBuf_2_U", "Parent" : "113"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58.inputBuf_3_U", "Parent" : "113"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58.sparsemux_9_2_32_1_1_U512", "Parent" : "113"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "113"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0", "Parent" : "0",
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
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_7_U0", "Parent" : "0", "Child" : ["122"],
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
			{"Name" : "convInp_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["112"], "DependentChan" : "226", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "convInp_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mvOut_m_buffer_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["125"], "DependentChan" : "230", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "mvOut_m_buffer_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["120"], "DependentChan" : "229", "DependentChanDepth" : "23", "DependentChanType" : "1"},
			{"Name" : "p_ZL8weights4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "p_ZL8weights4_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "p_ZL8weights4_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "p_ZL8weights4_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "p_ZL8weights4_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "p_ZL8threshs4_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "p_ZL8threshs4_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "p_ZL8threshs4_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8threshs4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Port" : "p_ZL8threshs4_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_7_U0.grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52", "Parent" : "121", "Child" : ["123", "124"],
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
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_7_U0.grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52.sparsemux_73_6_32_1_1_U522", "Parent" : "122"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_7_U0.grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "122"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0", "Parent" : "0", "Child" : ["126"],
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
		"StartSource" : "121",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0_U",
		"Port" : [
			{"Name" : "totalIters_11_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["82"], "DependentChan" : "215", "DependentChanDepth" : "9", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_11_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mvOut_m_buffer_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["121"], "DependentChan" : "230", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc11_Pipeline_VITIS_LOOP_300_3_fu_38", "Port" : "mvOut_m_buffer_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["128"], "DependentChan" : "231", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc11_Pipeline_VITIS_LOOP_300_3_fu_38", "Port" : "inter7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc11_Pipeline_VITIS_LOOP_300_3_fu_38", "Parent" : "125", "Child" : ["127"],
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
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc11_Pipeline_VITIS_LOOP_300_3_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0", "Parent" : "0", "Child" : ["129"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["81"], "DependentChan" : "212", "DependentChanDepth" : "25", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["120"], "DependentChan" : "228", "DependentChanDepth" : "25", "DependentChanType" : "1"},
			{"Name" : "wa_in_8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["131"], "DependentChan" : "232", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc13_Pipeline_VITIS_LOOP_268_1_fu_58", "Port" : "wa_in_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["125"], "DependentChan" : "231", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc13_Pipeline_VITIS_LOOP_268_1_fu_58", "Port" : "inter7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "totalIters_10_loc_c136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["146"], "DependentChan" : "233", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_10_loc_c136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc13_Pipeline_VITIS_LOOP_268_1_fu_58", "Parent" : "128", "Child" : ["130"],
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
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc13_Pipeline_VITIS_LOOP_268_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0", "Parent" : "0", "Child" : ["132"],
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
		"StartSource" : "128",
		"StartFifo" : "start_for_ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0_U",
		"Port" : [
			{"Name" : "wa_in_i2910", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["128"], "DependentChan" : "232", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58", "Port" : "wa_in_i2910", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "convInp_i31", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["139"], "DependentChan" : "234", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58", "Port" : "convInp_i31", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["112"], "DependentChan" : "227", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["139"], "DependentChan" : "235", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c144_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58", "Parent" : "131", "Child" : ["133", "134", "135", "136", "137", "138"],
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
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58.inputBuf_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58.inputBuf_1_U", "Parent" : "132"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58.inputBuf_2_U", "Parent" : "132"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58.inputBuf_3_U", "Parent" : "132"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58.sparsemux_9_2_32_1_1_U559", "Parent" : "132"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "132"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_6_U0", "Parent" : "0", "Child" : ["140"],
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
			{"Name" : "convInp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["131"], "DependentChan" : "234", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58", "Port" : "convInp", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mvOut_m_buffer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["143"], "DependentChan" : "236", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58", "Port" : "mvOut_m_buffer", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["131"], "DependentChan" : "235", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["143"], "DependentChan" : "237", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58", "Port" : "weights5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "threshs5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58", "Port" : "threshs5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_6_U0.grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58", "Parent" : "139", "Child" : ["141", "142"],
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
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_6_U0.grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58.sparsemux_145_7_32_1_1_U568", "Parent" : "140"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_6_U0.grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "140"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0", "Parent" : "0", "Child" : ["144"],
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
		"StartSource" : "139",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0_U",
		"Port" : [
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["139"], "DependentChan" : "237", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mvOut_m_buffer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["139"], "DependentChan" : "236", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_Pipeline_VITIS_LOOP_300_3_fu_52", "Port" : "mvOut_m_buffer", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["146"], "DependentChan" : "238", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_Pipeline_VITIS_LOOP_300_3_fu_52", "Port" : "inter8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps_c142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["149"], "DependentChan" : "239", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_Pipeline_VITIS_LOOP_300_3_fu_52", "Parent" : "143", "Child" : ["145"],
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
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_Pipeline_VITIS_LOOP_300_3_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "144"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0", "Parent" : "0", "Child" : ["147"],
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
		"StartSource" : "128",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0_U",
		"Port" : [
			{"Name" : "totalIters_10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["128"], "DependentChan" : "233", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_10_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wa_in_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["149"], "DependentChan" : "240", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc16_Pipeline_VITIS_LOOP_268_1_fu_50", "Port" : "wa_in_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["143"], "DependentChan" : "238", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc16_Pipeline_VITIS_LOOP_268_1_fu_50", "Port" : "inter8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "totalIters_10_loc_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["156"], "DependentChan" : "241", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_10_loc_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc16_Pipeline_VITIS_LOOP_268_1_fu_50", "Parent" : "146", "Child" : ["148"],
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
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc16_Pipeline_VITIS_LOOP_268_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_5_U0", "Parent" : "0", "Child" : ["150"],
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
			{"Name" : "wa_in_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["146"], "DependentChan" : "240", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "150", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "wa_in_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "wa_out_m_buffer_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["153"], "DependentChan" : "242", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "150", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "wa_out_m_buffer_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["143"], "DependentChan" : "239", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["159"], "DependentChan" : "243", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "150", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "weights6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "threshs6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "150", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "threshs6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_5_U0.grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56", "Parent" : "149", "Child" : ["151", "152"],
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
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_5_U0.grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56.sparsemux_129_6_4_1_1_U595", "Parent" : "150"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_5_U0.grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "150"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0", "Parent" : "0", "Child" : ["154"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["81"], "DependentChan" : "213", "DependentChanDepth" : "31", "DependentChanType" : "1"},
			{"Name" : "wa_out_m_buffer_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["149"], "DependentChan" : "242", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "154", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3_fu_50", "Port" : "wa_out_m_buffer_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["156"], "DependentChan" : "244", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "154", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3_fu_50", "Port" : "inter9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "totalIters_16_loc_c138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["163"], "DependentChan" : "245", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_16_loc_c138_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3_fu_50", "Parent" : "153", "Child" : ["155"],
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
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "154"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0", "Parent" : "0", "Child" : ["157"],
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
		"StartSource" : "153",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0_U",
		"Port" : [
			{"Name" : "totalIters_10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["146"], "DependentChan" : "241", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_10_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wa_in_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["159"], "DependentChan" : "246", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "157", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc20_Pipeline_VITIS_LOOP_268_1_fu_38", "Port" : "wa_in_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["153"], "DependentChan" : "244", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "157", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc20_Pipeline_VITIS_LOOP_268_1_fu_38", "Port" : "inter9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc20_Pipeline_VITIS_LOOP_268_1_fu_38", "Parent" : "156", "Child" : ["158"],
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
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc20_Pipeline_VITIS_LOOP_268_1_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "157"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_3_U0", "Parent" : "0", "Child" : ["160"],
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
			{"Name" : "wa_in_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["156"], "DependentChan" : "246", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "wa_in_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "wa_out_m_buffer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["163"], "DependentChan" : "247", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "wa_out_m_buffer", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["149"], "DependentChan" : "243", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["169"], "DependentChan" : "248", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "weights7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "threshs7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56", "Port" : "threshs7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_3_U0.grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56", "Parent" : "159", "Child" : ["161", "162"],
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
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_3_U0.grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56.sparsemux_129_6_8_1_1_U621", "Parent" : "160"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_3_U0.grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "160"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0", "Parent" : "0", "Child" : ["164"],
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
		"StartSource" : "159",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0_U",
		"Port" : [
			{"Name" : "totalIters_16_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["153"], "DependentChan" : "245", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_16_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wa_out_m_buffer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["159"], "DependentChan" : "247", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc22_Pipeline_VITIS_LOOP_300_3_fu_50", "Port" : "wa_out_m_buffer", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["166"], "DependentChan" : "249", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc22_Pipeline_VITIS_LOOP_300_3_fu_50", "Port" : "inter10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "totalIters_16_loc_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["166"], "DependentChan" : "250", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_16_loc_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc22_Pipeline_VITIS_LOOP_300_3_fu_50", "Parent" : "163", "Child" : ["165"],
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
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc22_Pipeline_VITIS_LOOP_300_3_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0", "Parent" : "0", "Child" : ["167"],
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
		"StartSource" : "163",
		"StartFifo" : "start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0_U",
		"Port" : [
			{"Name" : "totalIters_16_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["163"], "DependentChan" : "250", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "totalIters_16_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wa_in", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["169"], "DependentChan" : "251", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1_fu_38", "Port" : "wa_in", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["163"], "DependentChan" : "249", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1_fu_38", "Port" : "inter10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1_fu_38", "Parent" : "166", "Child" : ["168"],
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
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_2_U0", "Parent" : "0", "Child" : ["170"],
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
			{"Name" : "wa_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["166"], "DependentChan" : "251", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60", "Port" : "wa_in", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "memOutStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["173"], "DependentChan" : "252", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60", "Port" : "memOutStrm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["159"], "DependentChan" : "248", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["173"], "DependentChan" : "253", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_ZL8weights8_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60", "Port" : "p_ZL8weights8_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights8_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60", "Port" : "p_ZL8weights8_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights8_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60", "Port" : "p_ZL8weights8_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL8weights8_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60", "Port" : "p_ZL8weights8_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_2_U0.grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60", "Parent" : "169", "Child" : ["171", "172"],
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
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_2_U0.grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60.sparsemux_1025_9_1_1_1_U647", "Parent" : "170"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Matrix_Vector_Activate_Batch_2_U0.grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "170"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stream2Mem_Batch_64u_128u_U0", "Parent" : "0", "Child" : ["174", "176"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_Stream2Mem_Batch_64u_128u_U0_U",
		"Port" : [
			{"Name" : "memOutStrm34", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["169"], "DependentChan" : "252", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "174", "SubInstance" : "grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_15_fu_93", "Port" : "memOutStrm34", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "176", "SubInstance" : "grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_1_fu_102", "Port" : "memOutStrm34", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "hostmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "hostmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "hostmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "174", "SubInstance" : "grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_15_fu_93", "Port" : "hostmem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "176", "SubInstance" : "grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_1_fu_102", "Port" : "hostmem", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "out_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "178", "DependentChanDepth" : "38", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["169"], "DependentChan" : "253", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Stream2Mem_Batch_64u_128u_U0.grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_15_fu_93", "Parent" : "173", "Child" : ["175"],
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
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Stream2Mem_Batch_64u_128u_U0.grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_15_fu_93.flow_control_loop_pipe_sequential_init_U", "Parent" : "174"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Stream2Mem_Batch_64u_128u_U0.grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_1_fu_102", "Parent" : "173", "Child" : ["177"],
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
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Stream2Mem_Batch_64u_128u_U0.grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_1_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "176"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_c_U", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter0_U", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c160_U", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter0_1_U", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c159_U", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter0_2_U", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c158_U", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convInp_5_U", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c157_U", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_loc_channel_U", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_ln121_cast_loc_channel_U", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mvOut_m_buffer_5_U", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter1_U", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c156_U", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wa_in_7_U", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c155_U", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convInp_4_U", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c154_U", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_ln121_1_cast_loc_channel_U", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mvOut_m_buffer_4_U", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter2_U", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c153_U", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter3_U", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c152_U", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wa_in_6_U", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c151_U", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convInp_3_U", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c150_U", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shl_ln121_loc_channel_U", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln121_loc_channel_U", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mvOut_m_buffer_3_U", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter4_U", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c149_U", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.totalIters_11_loc_c135_channel_U", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.totalIters_10_loc_c137_channel_U", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.totalIters_16_loc_c139_channel_U", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wa_in_5_U", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.totalIters_11_loc_c_U", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convInp_2_U", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c148_U", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.totalIters_13_loc_channel_U", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.totalIters_13_cast_loc_channel_U", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mvOut_m_buffer_2_U", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter5_U", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c147_U", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter6_U", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c146_U", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wa_in_4_U", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convInp_1_U", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c145_U", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shl_ln121_2_loc_channel_U", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln121_1_loc_channel_U", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mvOut_m_buffer_1_U", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter7_U", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wa_in_3_U", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.totalIters_10_loc_c136_U", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convInp_U", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c144_U", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mvOut_m_buffer_U", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c143_U", "Parent" : "0"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter8_U", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c142_U", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wa_in_2_U", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.totalIters_10_loc_c_U", "Parent" : "0"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wa_out_m_buffer_1_U", "Parent" : "0"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c141_U", "Parent" : "0"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter9_U", "Parent" : "0"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.totalIters_16_loc_c138_U", "Parent" : "0"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wa_in_1_U", "Parent" : "0"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wa_out_m_buffer_U", "Parent" : "0"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c140_U", "Parent" : "0"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter10_U", "Parent" : "0"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.totalIters_16_loc_c_U", "Parent" : "0"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wa_in_U", "Parent" : "0"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.memOutStrm_U", "Parent" : "0"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numReps_c_U", "Parent" : "0"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Stream2Mem_Batch_64u_128u_U0_U", "Parent" : "0"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_StreamingDataWidthConverter_Batch_64u_192u_384u_U0_U", "Parent" : "0"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_StreamingDataWidthConverter_Batch_192u_24u_128u_U0_U", "Parent" : "0"},
	{"ID" : "257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0_U", "Parent" : "0"},
	{"ID" : "258", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0_U", "Parent" : "0"},
	{"ID" : "259", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0_U", "Parent" : "0"},
	{"ID" : "260", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0_U", "Parent" : "0"},
	{"ID" : "261", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0_U", "Parent" : "0"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_StreamingMaxPool_Batch_28u_2u_64u_U0_U", "Parent" : "0"},
	{"ID" : "263", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0_U", "Parent" : "0"},
	{"ID" : "264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0_U", "Parent" : "0"},
	{"ID" : "265", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0_U", "Parent" : "0"},
	{"ID" : "266", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0_U", "Parent" : "0"},
	{"ID" : "267", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_StreamingMaxPool_Batch_10u_2u_128u_U0_U", "Parent" : "0"},
	{"ID" : "268", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0_U", "Parent" : "0"},
	{"ID" : "269", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0_U", "Parent" : "0"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0_U", "Parent" : "0"},
	{"ID" : "271", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0_U", "Parent" : "0"},
	{"ID" : "272", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0_U", "Parent" : "0"},
	{"ID" : "273", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0_U", "Parent" : "0"},
	{"ID" : "274", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0_U", "Parent" : "0"},
	{"ID" : "275", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_hostmem_AWVALID VALID 1 1 }  { m_axi_hostmem_AWREADY READY 0 1 }  { m_axi_hostmem_AWADDR ADDR 1 64 }  { m_axi_hostmem_AWID ID 1 1 }  { m_axi_hostmem_AWLEN SIZE 1 32 }  { m_axi_hostmem_AWSIZE BURST 1 3 }  { m_axi_hostmem_AWBURST LOCK 1 2 }  { m_axi_hostmem_AWLOCK CACHE 1 2 }  { m_axi_hostmem_AWCACHE PROT 1 4 }  { m_axi_hostmem_AWPROT QOS 1 3 }  { m_axi_hostmem_AWQOS REGION 1 4 }  { m_axi_hostmem_AWREGION USER 1 4 }  { m_axi_hostmem_AWUSER DATA 1 1 }  { m_axi_hostmem_WVALID VALID 1 1 }  { m_axi_hostmem_WREADY READY 0 1 }  { m_axi_hostmem_WDATA FIFONUM 1 64 }  { m_axi_hostmem_WSTRB STRB 1 8 }  { m_axi_hostmem_WLAST LAST 1 1 }  { m_axi_hostmem_WID ID 1 1 }  { m_axi_hostmem_WUSER DATA 1 1 }  { m_axi_hostmem_ARVALID VALID 1 1 }  { m_axi_hostmem_ARREADY READY 0 1 }  { m_axi_hostmem_ARADDR ADDR 1 64 }  { m_axi_hostmem_ARID ID 1 1 }  { m_axi_hostmem_ARLEN SIZE 1 32 }  { m_axi_hostmem_ARSIZE BURST 1 3 }  { m_axi_hostmem_ARBURST LOCK 1 2 }  { m_axi_hostmem_ARLOCK CACHE 1 2 }  { m_axi_hostmem_ARCACHE PROT 1 4 }  { m_axi_hostmem_ARPROT QOS 1 3 }  { m_axi_hostmem_ARQOS REGION 1 4 }  { m_axi_hostmem_ARREGION USER 1 4 }  { m_axi_hostmem_ARUSER DATA 1 1 }  { m_axi_hostmem_RVALID VALID 0 1 }  { m_axi_hostmem_RREADY READY 1 1 }  { m_axi_hostmem_RDATA FIFONUM 0 64 }  { m_axi_hostmem_RLAST LAST 0 1 }  { m_axi_hostmem_RID ID 0 1 }  { m_axi_hostmem_RFIFONUM LEN 0 9 }  { m_axi_hostmem_RUSER DATA 0 1 }  { m_axi_hostmem_RRESP RESP 0 2 }  { m_axi_hostmem_BVALID VALID 0 1 }  { m_axi_hostmem_BREADY READY 1 1 }  { m_axi_hostmem_BRESP RESP 0 2 }  { m_axi_hostmem_BID ID 0 1 }  { m_axi_hostmem_BUSER DATA 0 1 } } }
	in_r { ap_none {  { in_r in_data 0 64 }  { in_r_ap_vld in_vld 0 1 } } }
	out_r { ap_none {  { out_r in_data 0 64 }  { out_r_ap_vld in_vld 0 1 } } }
	numReps { ap_none {  { numReps in_data 0 32 }  { numReps_ap_vld in_vld 0 1 } } }
	p_ZL8weights0_0 { ap_memory {  { p_ZL8weights0_0_address0 mem_address 1 6 }  { p_ZL8weights0_0_ce0 mem_ce 1 1 }  { p_ZL8weights0_0_d0 mem_din 1 3 }  { p_ZL8weights0_0_q0 mem_dout 0 3 }  { p_ZL8weights0_0_we0 mem_we 1 1 }  { p_ZL8weights0_0_address1 mem_address 1 6 }  { p_ZL8weights0_0_ce1 mem_ce 1 1 }  { p_ZL8weights0_0_d1 mem_din 1 3 }  { p_ZL8weights0_0_q1 mem_dout 0 3 }  { p_ZL8weights0_0_we1 mem_we 1 1 } } }
	p_ZL8weights0_1 { ap_memory {  { p_ZL8weights0_1_address0 mem_address 1 6 }  { p_ZL8weights0_1_ce0 mem_ce 1 1 }  { p_ZL8weights0_1_d0 mem_din 1 3 }  { p_ZL8weights0_1_q0 mem_dout 0 3 }  { p_ZL8weights0_1_we0 mem_we 1 1 }  { p_ZL8weights0_1_address1 mem_address 1 6 }  { p_ZL8weights0_1_ce1 mem_ce 1 1 }  { p_ZL8weights0_1_d1 mem_din 1 3 }  { p_ZL8weights0_1_q1 mem_dout 0 3 }  { p_ZL8weights0_1_we1 mem_we 1 1 } } }
	p_ZL8weights0_2 { ap_memory {  { p_ZL8weights0_2_address0 mem_address 1 6 }  { p_ZL8weights0_2_ce0 mem_ce 1 1 }  { p_ZL8weights0_2_d0 mem_din 1 3 }  { p_ZL8weights0_2_q0 mem_dout 0 3 }  { p_ZL8weights0_2_we0 mem_we 1 1 }  { p_ZL8weights0_2_address1 mem_address 1 6 }  { p_ZL8weights0_2_ce1 mem_ce 1 1 }  { p_ZL8weights0_2_d1 mem_din 1 3 }  { p_ZL8weights0_2_q1 mem_dout 0 3 }  { p_ZL8weights0_2_we1 mem_we 1 1 } } }
	p_ZL8weights0_3 { ap_memory {  { p_ZL8weights0_3_address0 mem_address 1 6 }  { p_ZL8weights0_3_ce0 mem_ce 1 1 }  { p_ZL8weights0_3_d0 mem_din 1 3 }  { p_ZL8weights0_3_q0 mem_dout 0 3 }  { p_ZL8weights0_3_we0 mem_we 1 1 }  { p_ZL8weights0_3_address1 mem_address 1 6 }  { p_ZL8weights0_3_ce1 mem_ce 1 1 }  { p_ZL8weights0_3_d1 mem_din 1 3 }  { p_ZL8weights0_3_q1 mem_dout 0 3 }  { p_ZL8weights0_3_we1 mem_we 1 1 } } }
	p_ZL8weights0_4 { ap_memory {  { p_ZL8weights0_4_address0 mem_address 1 6 }  { p_ZL8weights0_4_ce0 mem_ce 1 1 }  { p_ZL8weights0_4_d0 mem_din 1 3 }  { p_ZL8weights0_4_q0 mem_dout 0 3 }  { p_ZL8weights0_4_we0 mem_we 1 1 }  { p_ZL8weights0_4_address1 mem_address 1 6 }  { p_ZL8weights0_4_ce1 mem_ce 1 1 }  { p_ZL8weights0_4_d1 mem_din 1 3 }  { p_ZL8weights0_4_q1 mem_dout 0 3 }  { p_ZL8weights0_4_we1 mem_we 1 1 } } }
	p_ZL8weights0_5 { ap_memory {  { p_ZL8weights0_5_address0 mem_address 1 6 }  { p_ZL8weights0_5_ce0 mem_ce 1 1 }  { p_ZL8weights0_5_d0 mem_din 1 3 }  { p_ZL8weights0_5_q0 mem_dout 0 3 }  { p_ZL8weights0_5_we0 mem_we 1 1 }  { p_ZL8weights0_5_address1 mem_address 1 6 }  { p_ZL8weights0_5_ce1 mem_ce 1 1 }  { p_ZL8weights0_5_d1 mem_din 1 3 }  { p_ZL8weights0_5_q1 mem_dout 0 3 }  { p_ZL8weights0_5_we1 mem_we 1 1 } } }
	p_ZL8weights0_6 { ap_memory {  { p_ZL8weights0_6_address0 mem_address 1 6 }  { p_ZL8weights0_6_ce0 mem_ce 1 1 }  { p_ZL8weights0_6_d0 mem_din 1 3 }  { p_ZL8weights0_6_q0 mem_dout 0 3 }  { p_ZL8weights0_6_we0 mem_we 1 1 }  { p_ZL8weights0_6_address1 mem_address 1 6 }  { p_ZL8weights0_6_ce1 mem_ce 1 1 }  { p_ZL8weights0_6_d1 mem_din 1 3 }  { p_ZL8weights0_6_q1 mem_dout 0 3 }  { p_ZL8weights0_6_we1 mem_we 1 1 } } }
	p_ZL8weights0_7 { ap_memory {  { p_ZL8weights0_7_address0 mem_address 1 6 }  { p_ZL8weights0_7_ce0 mem_ce 1 1 }  { p_ZL8weights0_7_d0 mem_din 1 3 }  { p_ZL8weights0_7_q0 mem_dout 0 3 }  { p_ZL8weights0_7_we0 mem_we 1 1 }  { p_ZL8weights0_7_address1 mem_address 1 6 }  { p_ZL8weights0_7_ce1 mem_ce 1 1 }  { p_ZL8weights0_7_d1 mem_din 1 3 }  { p_ZL8weights0_7_q1 mem_dout 0 3 }  { p_ZL8weights0_7_we1 mem_we 1 1 } } }
	p_ZL8weights0_8 { ap_memory {  { p_ZL8weights0_8_address0 mem_address 1 6 }  { p_ZL8weights0_8_ce0 mem_ce 1 1 }  { p_ZL8weights0_8_d0 mem_din 1 3 }  { p_ZL8weights0_8_q0 mem_dout 0 3 }  { p_ZL8weights0_8_we0 mem_we 1 1 }  { p_ZL8weights0_8_address1 mem_address 1 6 }  { p_ZL8weights0_8_ce1 mem_ce 1 1 }  { p_ZL8weights0_8_d1 mem_din 1 3 }  { p_ZL8weights0_8_q1 mem_dout 0 3 }  { p_ZL8weights0_8_we1 mem_we 1 1 } } }
	p_ZL8weights0_9 { ap_memory {  { p_ZL8weights0_9_address0 mem_address 1 6 }  { p_ZL8weights0_9_ce0 mem_ce 1 1 }  { p_ZL8weights0_9_d0 mem_din 1 3 }  { p_ZL8weights0_9_q0 mem_dout 0 3 }  { p_ZL8weights0_9_we0 mem_we 1 1 }  { p_ZL8weights0_9_address1 mem_address 1 6 }  { p_ZL8weights0_9_ce1 mem_ce 1 1 }  { p_ZL8weights0_9_d1 mem_din 1 3 }  { p_ZL8weights0_9_q1 mem_dout 0 3 }  { p_ZL8weights0_9_we1 mem_we 1 1 } } }
	p_ZL8weights0_10 { ap_memory {  { p_ZL8weights0_10_address0 mem_address 1 6 }  { p_ZL8weights0_10_ce0 mem_ce 1 1 }  { p_ZL8weights0_10_d0 mem_din 1 3 }  { p_ZL8weights0_10_q0 mem_dout 0 3 }  { p_ZL8weights0_10_we0 mem_we 1 1 }  { p_ZL8weights0_10_address1 mem_address 1 6 }  { p_ZL8weights0_10_ce1 mem_ce 1 1 }  { p_ZL8weights0_10_d1 mem_din 1 3 }  { p_ZL8weights0_10_q1 mem_dout 0 3 }  { p_ZL8weights0_10_we1 mem_we 1 1 } } }
	p_ZL8weights0_11 { ap_memory {  { p_ZL8weights0_11_address0 mem_address 1 6 }  { p_ZL8weights0_11_ce0 mem_ce 1 1 }  { p_ZL8weights0_11_d0 mem_din 1 3 }  { p_ZL8weights0_11_q0 mem_dout 0 3 }  { p_ZL8weights0_11_we0 mem_we 1 1 }  { p_ZL8weights0_11_address1 mem_address 1 6 }  { p_ZL8weights0_11_ce1 mem_ce 1 1 }  { p_ZL8weights0_11_d1 mem_din 1 3 }  { p_ZL8weights0_11_q1 mem_dout 0 3 }  { p_ZL8weights0_11_we1 mem_we 1 1 } } }
	p_ZL8weights0_12 { ap_memory {  { p_ZL8weights0_12_address0 mem_address 1 6 }  { p_ZL8weights0_12_ce0 mem_ce 1 1 }  { p_ZL8weights0_12_d0 mem_din 1 3 }  { p_ZL8weights0_12_q0 mem_dout 0 3 }  { p_ZL8weights0_12_we0 mem_we 1 1 }  { p_ZL8weights0_12_address1 mem_address 1 6 }  { p_ZL8weights0_12_ce1 mem_ce 1 1 }  { p_ZL8weights0_12_d1 mem_din 1 3 }  { p_ZL8weights0_12_q1 mem_dout 0 3 }  { p_ZL8weights0_12_we1 mem_we 1 1 } } }
	p_ZL8weights0_13 { ap_memory {  { p_ZL8weights0_13_address0 mem_address 1 6 }  { p_ZL8weights0_13_ce0 mem_ce 1 1 }  { p_ZL8weights0_13_d0 mem_din 1 3 }  { p_ZL8weights0_13_q0 mem_dout 0 3 }  { p_ZL8weights0_13_we0 mem_we 1 1 }  { p_ZL8weights0_13_address1 mem_address 1 6 }  { p_ZL8weights0_13_ce1 mem_ce 1 1 }  { p_ZL8weights0_13_d1 mem_din 1 3 }  { p_ZL8weights0_13_q1 mem_dout 0 3 }  { p_ZL8weights0_13_we1 mem_we 1 1 } } }
	p_ZL8weights0_14 { ap_memory {  { p_ZL8weights0_14_address0 mem_address 1 6 }  { p_ZL8weights0_14_ce0 mem_ce 1 1 }  { p_ZL8weights0_14_d0 mem_din 1 3 }  { p_ZL8weights0_14_q0 mem_dout 0 3 }  { p_ZL8weights0_14_we0 mem_we 1 1 }  { p_ZL8weights0_14_address1 mem_address 1 6 }  { p_ZL8weights0_14_ce1 mem_ce 1 1 }  { p_ZL8weights0_14_d1 mem_din 1 3 }  { p_ZL8weights0_14_q1 mem_dout 0 3 }  { p_ZL8weights0_14_we1 mem_we 1 1 } } }
	p_ZL8weights0_15 { ap_memory {  { p_ZL8weights0_15_address0 mem_address 1 6 }  { p_ZL8weights0_15_ce0 mem_ce 1 1 }  { p_ZL8weights0_15_d0 mem_din 1 3 }  { p_ZL8weights0_15_q0 mem_dout 0 3 }  { p_ZL8weights0_15_we0 mem_we 1 1 }  { p_ZL8weights0_15_address1 mem_address 1 6 }  { p_ZL8weights0_15_ce1 mem_ce 1 1 }  { p_ZL8weights0_15_d1 mem_din 1 3 }  { p_ZL8weights0_15_q1 mem_dout 0 3 }  { p_ZL8weights0_15_we1 mem_we 1 1 } } }
	p_ZL8threshs0_0 { ap_memory {  { p_ZL8threshs0_0_address0 mem_address 1 2 }  { p_ZL8threshs0_0_ce0 mem_ce 1 1 }  { p_ZL8threshs0_0_d0 mem_din 1 24 }  { p_ZL8threshs0_0_q0 mem_dout 0 24 }  { p_ZL8threshs0_0_we0 mem_we 1 1 }  { p_ZL8threshs0_0_address1 mem_address 1 2 }  { p_ZL8threshs0_0_ce1 mem_ce 1 1 }  { p_ZL8threshs0_0_d1 mem_din 1 24 }  { p_ZL8threshs0_0_q1 mem_dout 0 24 }  { p_ZL8threshs0_0_we1 mem_we 1 1 } } }
	p_ZL8threshs0_1 { ap_memory {  { p_ZL8threshs0_1_address0 mem_address 1 2 }  { p_ZL8threshs0_1_ce0 mem_ce 1 1 }  { p_ZL8threshs0_1_d0 mem_din 1 24 }  { p_ZL8threshs0_1_q0 mem_dout 0 24 }  { p_ZL8threshs0_1_we0 mem_we 1 1 }  { p_ZL8threshs0_1_address1 mem_address 1 2 }  { p_ZL8threshs0_1_ce1 mem_ce 1 1 }  { p_ZL8threshs0_1_d1 mem_din 1 24 }  { p_ZL8threshs0_1_q1 mem_dout 0 24 }  { p_ZL8threshs0_1_we1 mem_we 1 1 } } }
	p_ZL8threshs0_2 { ap_memory {  { p_ZL8threshs0_2_address0 mem_address 1 2 }  { p_ZL8threshs0_2_ce0 mem_ce 1 1 }  { p_ZL8threshs0_2_d0 mem_din 1 24 }  { p_ZL8threshs0_2_q0 mem_dout 0 24 }  { p_ZL8threshs0_2_we0 mem_we 1 1 }  { p_ZL8threshs0_2_address1 mem_address 1 2 }  { p_ZL8threshs0_2_ce1 mem_ce 1 1 }  { p_ZL8threshs0_2_d1 mem_din 1 24 }  { p_ZL8threshs0_2_q1 mem_dout 0 24 }  { p_ZL8threshs0_2_we1 mem_we 1 1 } } }
	p_ZL8threshs0_3 { ap_memory {  { p_ZL8threshs0_3_address0 mem_address 1 2 }  { p_ZL8threshs0_3_ce0 mem_ce 1 1 }  { p_ZL8threshs0_3_d0 mem_din 1 24 }  { p_ZL8threshs0_3_q0 mem_dout 0 24 }  { p_ZL8threshs0_3_we0 mem_we 1 1 }  { p_ZL8threshs0_3_address1 mem_address 1 2 }  { p_ZL8threshs0_3_ce1 mem_ce 1 1 }  { p_ZL8threshs0_3_d1 mem_din 1 24 }  { p_ZL8threshs0_3_q1 mem_dout 0 24 }  { p_ZL8threshs0_3_we1 mem_we 1 1 } } }
	p_ZL8threshs0_4 { ap_memory {  { p_ZL8threshs0_4_address0 mem_address 1 2 }  { p_ZL8threshs0_4_ce0 mem_ce 1 1 }  { p_ZL8threshs0_4_d0 mem_din 1 24 }  { p_ZL8threshs0_4_q0 mem_dout 0 24 }  { p_ZL8threshs0_4_we0 mem_we 1 1 }  { p_ZL8threshs0_4_address1 mem_address 1 2 }  { p_ZL8threshs0_4_ce1 mem_ce 1 1 }  { p_ZL8threshs0_4_d1 mem_din 1 24 }  { p_ZL8threshs0_4_q1 mem_dout 0 24 }  { p_ZL8threshs0_4_we1 mem_we 1 1 } } }
	p_ZL8threshs0_5 { ap_memory {  { p_ZL8threshs0_5_address0 mem_address 1 2 }  { p_ZL8threshs0_5_ce0 mem_ce 1 1 }  { p_ZL8threshs0_5_d0 mem_din 1 24 }  { p_ZL8threshs0_5_q0 mem_dout 0 24 }  { p_ZL8threshs0_5_we0 mem_we 1 1 }  { p_ZL8threshs0_5_address1 mem_address 1 2 }  { p_ZL8threshs0_5_ce1 mem_ce 1 1 }  { p_ZL8threshs0_5_d1 mem_din 1 24 }  { p_ZL8threshs0_5_q1 mem_dout 0 24 }  { p_ZL8threshs0_5_we1 mem_we 1 1 } } }
	p_ZL8threshs0_6 { ap_memory {  { p_ZL8threshs0_6_address0 mem_address 1 2 }  { p_ZL8threshs0_6_ce0 mem_ce 1 1 }  { p_ZL8threshs0_6_d0 mem_din 1 24 }  { p_ZL8threshs0_6_q0 mem_dout 0 24 }  { p_ZL8threshs0_6_we0 mem_we 1 1 }  { p_ZL8threshs0_6_address1 mem_address 1 2 }  { p_ZL8threshs0_6_ce1 mem_ce 1 1 }  { p_ZL8threshs0_6_d1 mem_din 1 24 }  { p_ZL8threshs0_6_q1 mem_dout 0 24 }  { p_ZL8threshs0_6_we1 mem_we 1 1 } } }
	p_ZL8threshs0_7 { ap_memory {  { p_ZL8threshs0_7_address0 mem_address 1 2 }  { p_ZL8threshs0_7_ce0 mem_ce 1 1 }  { p_ZL8threshs0_7_d0 mem_din 1 24 }  { p_ZL8threshs0_7_q0 mem_dout 0 24 }  { p_ZL8threshs0_7_we0 mem_we 1 1 }  { p_ZL8threshs0_7_address1 mem_address 1 2 }  { p_ZL8threshs0_7_ce1 mem_ce 1 1 }  { p_ZL8threshs0_7_d1 mem_din 1 24 }  { p_ZL8threshs0_7_q1 mem_dout 0 24 }  { p_ZL8threshs0_7_we1 mem_we 1 1 } } }
	p_ZL8threshs0_8 { ap_memory {  { p_ZL8threshs0_8_address0 mem_address 1 2 }  { p_ZL8threshs0_8_ce0 mem_ce 1 1 }  { p_ZL8threshs0_8_d0 mem_din 1 24 }  { p_ZL8threshs0_8_q0 mem_dout 0 24 }  { p_ZL8threshs0_8_we0 mem_we 1 1 }  { p_ZL8threshs0_8_address1 mem_address 1 2 }  { p_ZL8threshs0_8_ce1 mem_ce 1 1 }  { p_ZL8threshs0_8_d1 mem_din 1 24 }  { p_ZL8threshs0_8_q1 mem_dout 0 24 }  { p_ZL8threshs0_8_we1 mem_we 1 1 } } }
	p_ZL8threshs0_9 { ap_memory {  { p_ZL8threshs0_9_address0 mem_address 1 2 }  { p_ZL8threshs0_9_ce0 mem_ce 1 1 }  { p_ZL8threshs0_9_d0 mem_din 1 24 }  { p_ZL8threshs0_9_q0 mem_dout 0 24 }  { p_ZL8threshs0_9_we0 mem_we 1 1 }  { p_ZL8threshs0_9_address1 mem_address 1 2 }  { p_ZL8threshs0_9_ce1 mem_ce 1 1 }  { p_ZL8threshs0_9_d1 mem_din 1 24 }  { p_ZL8threshs0_9_q1 mem_dout 0 24 }  { p_ZL8threshs0_9_we1 mem_we 1 1 } } }
	p_ZL8threshs0_10 { ap_memory {  { p_ZL8threshs0_10_address0 mem_address 1 2 }  { p_ZL8threshs0_10_ce0 mem_ce 1 1 }  { p_ZL8threshs0_10_d0 mem_din 1 24 }  { p_ZL8threshs0_10_q0 mem_dout 0 24 }  { p_ZL8threshs0_10_we0 mem_we 1 1 }  { p_ZL8threshs0_10_address1 mem_address 1 2 }  { p_ZL8threshs0_10_ce1 mem_ce 1 1 }  { p_ZL8threshs0_10_d1 mem_din 1 24 }  { p_ZL8threshs0_10_q1 mem_dout 0 24 }  { p_ZL8threshs0_10_we1 mem_we 1 1 } } }
	p_ZL8threshs0_11 { ap_memory {  { p_ZL8threshs0_11_address0 mem_address 1 2 }  { p_ZL8threshs0_11_ce0 mem_ce 1 1 }  { p_ZL8threshs0_11_d0 mem_din 1 24 }  { p_ZL8threshs0_11_q0 mem_dout 0 24 }  { p_ZL8threshs0_11_we0 mem_we 1 1 }  { p_ZL8threshs0_11_address1 mem_address 1 2 }  { p_ZL8threshs0_11_ce1 mem_ce 1 1 }  { p_ZL8threshs0_11_d1 mem_din 1 24 }  { p_ZL8threshs0_11_q1 mem_dout 0 24 }  { p_ZL8threshs0_11_we1 mem_we 1 1 } } }
	p_ZL8threshs0_12 { ap_memory {  { p_ZL8threshs0_12_address0 mem_address 1 2 }  { p_ZL8threshs0_12_ce0 mem_ce 1 1 }  { p_ZL8threshs0_12_d0 mem_din 1 24 }  { p_ZL8threshs0_12_q0 mem_dout 0 24 }  { p_ZL8threshs0_12_we0 mem_we 1 1 }  { p_ZL8threshs0_12_address1 mem_address 1 2 }  { p_ZL8threshs0_12_ce1 mem_ce 1 1 }  { p_ZL8threshs0_12_d1 mem_din 1 24 }  { p_ZL8threshs0_12_q1 mem_dout 0 24 }  { p_ZL8threshs0_12_we1 mem_we 1 1 } } }
	p_ZL8threshs0_13 { ap_memory {  { p_ZL8threshs0_13_address0 mem_address 1 2 }  { p_ZL8threshs0_13_ce0 mem_ce 1 1 }  { p_ZL8threshs0_13_d0 mem_din 1 24 }  { p_ZL8threshs0_13_q0 mem_dout 0 24 }  { p_ZL8threshs0_13_we0 mem_we 1 1 }  { p_ZL8threshs0_13_address1 mem_address 1 2 }  { p_ZL8threshs0_13_ce1 mem_ce 1 1 }  { p_ZL8threshs0_13_d1 mem_din 1 24 }  { p_ZL8threshs0_13_q1 mem_dout 0 24 }  { p_ZL8threshs0_13_we1 mem_we 1 1 } } }
	p_ZL8threshs0_14 { ap_memory {  { p_ZL8threshs0_14_address0 mem_address 1 2 }  { p_ZL8threshs0_14_ce0 mem_ce 1 1 }  { p_ZL8threshs0_14_d0 mem_din 1 24 }  { p_ZL8threshs0_14_q0 mem_dout 0 24 }  { p_ZL8threshs0_14_we0 mem_we 1 1 }  { p_ZL8threshs0_14_address1 mem_address 1 2 }  { p_ZL8threshs0_14_ce1 mem_ce 1 1 }  { p_ZL8threshs0_14_d1 mem_din 1 24 }  { p_ZL8threshs0_14_q1 mem_dout 0 24 }  { p_ZL8threshs0_14_we1 mem_we 1 1 } } }
	p_ZL8threshs0_15 { ap_memory {  { p_ZL8threshs0_15_address0 mem_address 1 2 }  { p_ZL8threshs0_15_ce0 mem_ce 1 1 }  { p_ZL8threshs0_15_d0 mem_din 1 24 }  { p_ZL8threshs0_15_q0 mem_dout 0 24 }  { p_ZL8threshs0_15_we0 mem_we 1 1 }  { p_ZL8threshs0_15_address1 mem_address 1 2 }  { p_ZL8threshs0_15_ce1 mem_ce 1 1 }  { p_ZL8threshs0_15_d1 mem_din 1 24 }  { p_ZL8threshs0_15_q1 mem_dout 0 24 }  { p_ZL8threshs0_15_we1 mem_we 1 1 } } }
	p_ZL8weights1_0 { ap_memory {  { p_ZL8weights1_0_address0 mem_address 1 6 }  { p_ZL8weights1_0_ce0 mem_ce 1 1 }  { p_ZL8weights1_0_d0 mem_din 1 32 }  { p_ZL8weights1_0_q0 mem_dout 0 32 }  { p_ZL8weights1_0_we0 mem_we 1 1 }  { p_ZL8weights1_0_address1 mem_address 1 6 }  { p_ZL8weights1_0_ce1 mem_ce 1 1 }  { p_ZL8weights1_0_d1 mem_din 1 32 }  { p_ZL8weights1_0_q1 mem_dout 0 32 }  { p_ZL8weights1_0_we1 mem_we 1 1 } } }
	p_ZL8weights1_1 { ap_memory {  { p_ZL8weights1_1_address0 mem_address 1 6 }  { p_ZL8weights1_1_ce0 mem_ce 1 1 }  { p_ZL8weights1_1_d0 mem_din 1 32 }  { p_ZL8weights1_1_q0 mem_dout 0 32 }  { p_ZL8weights1_1_we0 mem_we 1 1 }  { p_ZL8weights1_1_address1 mem_address 1 6 }  { p_ZL8weights1_1_ce1 mem_ce 1 1 }  { p_ZL8weights1_1_d1 mem_din 1 32 }  { p_ZL8weights1_1_q1 mem_dout 0 32 }  { p_ZL8weights1_1_we1 mem_we 1 1 } } }
	p_ZL8weights1_2 { ap_memory {  { p_ZL8weights1_2_address0 mem_address 1 6 }  { p_ZL8weights1_2_ce0 mem_ce 1 1 }  { p_ZL8weights1_2_d0 mem_din 1 32 }  { p_ZL8weights1_2_q0 mem_dout 0 32 }  { p_ZL8weights1_2_we0 mem_we 1 1 }  { p_ZL8weights1_2_address1 mem_address 1 6 }  { p_ZL8weights1_2_ce1 mem_ce 1 1 }  { p_ZL8weights1_2_d1 mem_din 1 32 }  { p_ZL8weights1_2_q1 mem_dout 0 32 }  { p_ZL8weights1_2_we1 mem_we 1 1 } } }
	p_ZL8weights1_3 { ap_memory {  { p_ZL8weights1_3_address0 mem_address 1 6 }  { p_ZL8weights1_3_ce0 mem_ce 1 1 }  { p_ZL8weights1_3_d0 mem_din 1 32 }  { p_ZL8weights1_3_q0 mem_dout 0 32 }  { p_ZL8weights1_3_we0 mem_we 1 1 }  { p_ZL8weights1_3_address1 mem_address 1 6 }  { p_ZL8weights1_3_ce1 mem_ce 1 1 }  { p_ZL8weights1_3_d1 mem_din 1 32 }  { p_ZL8weights1_3_q1 mem_dout 0 32 }  { p_ZL8weights1_3_we1 mem_we 1 1 } } }
	p_ZL8weights1_4 { ap_memory {  { p_ZL8weights1_4_address0 mem_address 1 6 }  { p_ZL8weights1_4_ce0 mem_ce 1 1 }  { p_ZL8weights1_4_d0 mem_din 1 32 }  { p_ZL8weights1_4_q0 mem_dout 0 32 }  { p_ZL8weights1_4_we0 mem_we 1 1 }  { p_ZL8weights1_4_address1 mem_address 1 6 }  { p_ZL8weights1_4_ce1 mem_ce 1 1 }  { p_ZL8weights1_4_d1 mem_din 1 32 }  { p_ZL8weights1_4_q1 mem_dout 0 32 }  { p_ZL8weights1_4_we1 mem_we 1 1 } } }
	p_ZL8weights1_5 { ap_memory {  { p_ZL8weights1_5_address0 mem_address 1 6 }  { p_ZL8weights1_5_ce0 mem_ce 1 1 }  { p_ZL8weights1_5_d0 mem_din 1 32 }  { p_ZL8weights1_5_q0 mem_dout 0 32 }  { p_ZL8weights1_5_we0 mem_we 1 1 }  { p_ZL8weights1_5_address1 mem_address 1 6 }  { p_ZL8weights1_5_ce1 mem_ce 1 1 }  { p_ZL8weights1_5_d1 mem_din 1 32 }  { p_ZL8weights1_5_q1 mem_dout 0 32 }  { p_ZL8weights1_5_we1 mem_we 1 1 } } }
	p_ZL8weights1_6 { ap_memory {  { p_ZL8weights1_6_address0 mem_address 1 6 }  { p_ZL8weights1_6_ce0 mem_ce 1 1 }  { p_ZL8weights1_6_d0 mem_din 1 32 }  { p_ZL8weights1_6_q0 mem_dout 0 32 }  { p_ZL8weights1_6_we0 mem_we 1 1 }  { p_ZL8weights1_6_address1 mem_address 1 6 }  { p_ZL8weights1_6_ce1 mem_ce 1 1 }  { p_ZL8weights1_6_d1 mem_din 1 32 }  { p_ZL8weights1_6_q1 mem_dout 0 32 }  { p_ZL8weights1_6_we1 mem_we 1 1 } } }
	p_ZL8weights1_7 { ap_memory {  { p_ZL8weights1_7_address0 mem_address 1 6 }  { p_ZL8weights1_7_ce0 mem_ce 1 1 }  { p_ZL8weights1_7_d0 mem_din 1 32 }  { p_ZL8weights1_7_q0 mem_dout 0 32 }  { p_ZL8weights1_7_we0 mem_we 1 1 }  { p_ZL8weights1_7_address1 mem_address 1 6 }  { p_ZL8weights1_7_ce1 mem_ce 1 1 }  { p_ZL8weights1_7_d1 mem_din 1 32 }  { p_ZL8weights1_7_q1 mem_dout 0 32 }  { p_ZL8weights1_7_we1 mem_we 1 1 } } }
	p_ZL8weights1_8 { ap_memory {  { p_ZL8weights1_8_address0 mem_address 1 6 }  { p_ZL8weights1_8_ce0 mem_ce 1 1 }  { p_ZL8weights1_8_d0 mem_din 1 32 }  { p_ZL8weights1_8_q0 mem_dout 0 32 }  { p_ZL8weights1_8_we0 mem_we 1 1 }  { p_ZL8weights1_8_address1 mem_address 1 6 }  { p_ZL8weights1_8_ce1 mem_ce 1 1 }  { p_ZL8weights1_8_d1 mem_din 1 32 }  { p_ZL8weights1_8_q1 mem_dout 0 32 }  { p_ZL8weights1_8_we1 mem_we 1 1 } } }
	p_ZL8weights1_9 { ap_memory {  { p_ZL8weights1_9_address0 mem_address 1 6 }  { p_ZL8weights1_9_ce0 mem_ce 1 1 }  { p_ZL8weights1_9_d0 mem_din 1 32 }  { p_ZL8weights1_9_q0 mem_dout 0 32 }  { p_ZL8weights1_9_we0 mem_we 1 1 }  { p_ZL8weights1_9_address1 mem_address 1 6 }  { p_ZL8weights1_9_ce1 mem_ce 1 1 }  { p_ZL8weights1_9_d1 mem_din 1 32 }  { p_ZL8weights1_9_q1 mem_dout 0 32 }  { p_ZL8weights1_9_we1 mem_we 1 1 } } }
	p_ZL8weights1_10 { ap_memory {  { p_ZL8weights1_10_address0 mem_address 1 6 }  { p_ZL8weights1_10_ce0 mem_ce 1 1 }  { p_ZL8weights1_10_d0 mem_din 1 32 }  { p_ZL8weights1_10_q0 mem_dout 0 32 }  { p_ZL8weights1_10_we0 mem_we 1 1 }  { p_ZL8weights1_10_address1 mem_address 1 6 }  { p_ZL8weights1_10_ce1 mem_ce 1 1 }  { p_ZL8weights1_10_d1 mem_din 1 32 }  { p_ZL8weights1_10_q1 mem_dout 0 32 }  { p_ZL8weights1_10_we1 mem_we 1 1 } } }
	p_ZL8weights1_11 { ap_memory {  { p_ZL8weights1_11_address0 mem_address 1 6 }  { p_ZL8weights1_11_ce0 mem_ce 1 1 }  { p_ZL8weights1_11_d0 mem_din 1 32 }  { p_ZL8weights1_11_q0 mem_dout 0 32 }  { p_ZL8weights1_11_we0 mem_we 1 1 }  { p_ZL8weights1_11_address1 mem_address 1 6 }  { p_ZL8weights1_11_ce1 mem_ce 1 1 }  { p_ZL8weights1_11_d1 mem_din 1 32 }  { p_ZL8weights1_11_q1 mem_dout 0 32 }  { p_ZL8weights1_11_we1 mem_we 1 1 } } }
	p_ZL8weights1_12 { ap_memory {  { p_ZL8weights1_12_address0 mem_address 1 6 }  { p_ZL8weights1_12_ce0 mem_ce 1 1 }  { p_ZL8weights1_12_d0 mem_din 1 32 }  { p_ZL8weights1_12_q0 mem_dout 0 32 }  { p_ZL8weights1_12_we0 mem_we 1 1 }  { p_ZL8weights1_12_address1 mem_address 1 6 }  { p_ZL8weights1_12_ce1 mem_ce 1 1 }  { p_ZL8weights1_12_d1 mem_din 1 32 }  { p_ZL8weights1_12_q1 mem_dout 0 32 }  { p_ZL8weights1_12_we1 mem_we 1 1 } } }
	p_ZL8weights1_13 { ap_memory {  { p_ZL8weights1_13_address0 mem_address 1 6 }  { p_ZL8weights1_13_ce0 mem_ce 1 1 }  { p_ZL8weights1_13_d0 mem_din 1 32 }  { p_ZL8weights1_13_q0 mem_dout 0 32 }  { p_ZL8weights1_13_we0 mem_we 1 1 }  { p_ZL8weights1_13_address1 mem_address 1 6 }  { p_ZL8weights1_13_ce1 mem_ce 1 1 }  { p_ZL8weights1_13_d1 mem_din 1 32 }  { p_ZL8weights1_13_q1 mem_dout 0 32 }  { p_ZL8weights1_13_we1 mem_we 1 1 } } }
	p_ZL8weights1_14 { ap_memory {  { p_ZL8weights1_14_address0 mem_address 1 6 }  { p_ZL8weights1_14_ce0 mem_ce 1 1 }  { p_ZL8weights1_14_d0 mem_din 1 32 }  { p_ZL8weights1_14_q0 mem_dout 0 32 }  { p_ZL8weights1_14_we0 mem_we 1 1 }  { p_ZL8weights1_14_address1 mem_address 1 6 }  { p_ZL8weights1_14_ce1 mem_ce 1 1 }  { p_ZL8weights1_14_d1 mem_din 1 32 }  { p_ZL8weights1_14_q1 mem_dout 0 32 }  { p_ZL8weights1_14_we1 mem_we 1 1 } } }
	p_ZL8weights1_15 { ap_memory {  { p_ZL8weights1_15_address0 mem_address 1 6 }  { p_ZL8weights1_15_ce0 mem_ce 1 1 }  { p_ZL8weights1_15_d0 mem_din 1 32 }  { p_ZL8weights1_15_q0 mem_dout 0 32 }  { p_ZL8weights1_15_we0 mem_we 1 1 }  { p_ZL8weights1_15_address1 mem_address 1 6 }  { p_ZL8weights1_15_ce1 mem_ce 1 1 }  { p_ZL8weights1_15_d1 mem_din 1 32 }  { p_ZL8weights1_15_q1 mem_dout 0 32 }  { p_ZL8weights1_15_we1 mem_we 1 1 } } }
	p_ZL8weights1_16 { ap_memory {  { p_ZL8weights1_16_address0 mem_address 1 6 }  { p_ZL8weights1_16_ce0 mem_ce 1 1 }  { p_ZL8weights1_16_d0 mem_din 1 32 }  { p_ZL8weights1_16_q0 mem_dout 0 32 }  { p_ZL8weights1_16_we0 mem_we 1 1 }  { p_ZL8weights1_16_address1 mem_address 1 6 }  { p_ZL8weights1_16_ce1 mem_ce 1 1 }  { p_ZL8weights1_16_d1 mem_din 1 32 }  { p_ZL8weights1_16_q1 mem_dout 0 32 }  { p_ZL8weights1_16_we1 mem_we 1 1 } } }
	p_ZL8weights1_17 { ap_memory {  { p_ZL8weights1_17_address0 mem_address 1 6 }  { p_ZL8weights1_17_ce0 mem_ce 1 1 }  { p_ZL8weights1_17_d0 mem_din 1 32 }  { p_ZL8weights1_17_q0 mem_dout 0 32 }  { p_ZL8weights1_17_we0 mem_we 1 1 }  { p_ZL8weights1_17_address1 mem_address 1 6 }  { p_ZL8weights1_17_ce1 mem_ce 1 1 }  { p_ZL8weights1_17_d1 mem_din 1 32 }  { p_ZL8weights1_17_q1 mem_dout 0 32 }  { p_ZL8weights1_17_we1 mem_we 1 1 } } }
	p_ZL8weights1_18 { ap_memory {  { p_ZL8weights1_18_address0 mem_address 1 6 }  { p_ZL8weights1_18_ce0 mem_ce 1 1 }  { p_ZL8weights1_18_d0 mem_din 1 32 }  { p_ZL8weights1_18_q0 mem_dout 0 32 }  { p_ZL8weights1_18_we0 mem_we 1 1 }  { p_ZL8weights1_18_address1 mem_address 1 6 }  { p_ZL8weights1_18_ce1 mem_ce 1 1 }  { p_ZL8weights1_18_d1 mem_din 1 32 }  { p_ZL8weights1_18_q1 mem_dout 0 32 }  { p_ZL8weights1_18_we1 mem_we 1 1 } } }
	p_ZL8weights1_19 { ap_memory {  { p_ZL8weights1_19_address0 mem_address 1 6 }  { p_ZL8weights1_19_ce0 mem_ce 1 1 }  { p_ZL8weights1_19_d0 mem_din 1 32 }  { p_ZL8weights1_19_q0 mem_dout 0 32 }  { p_ZL8weights1_19_we0 mem_we 1 1 }  { p_ZL8weights1_19_address1 mem_address 1 6 }  { p_ZL8weights1_19_ce1 mem_ce 1 1 }  { p_ZL8weights1_19_d1 mem_din 1 32 }  { p_ZL8weights1_19_q1 mem_dout 0 32 }  { p_ZL8weights1_19_we1 mem_we 1 1 } } }
	p_ZL8weights1_20 { ap_memory {  { p_ZL8weights1_20_address0 mem_address 1 6 }  { p_ZL8weights1_20_ce0 mem_ce 1 1 }  { p_ZL8weights1_20_d0 mem_din 1 32 }  { p_ZL8weights1_20_q0 mem_dout 0 32 }  { p_ZL8weights1_20_we0 mem_we 1 1 }  { p_ZL8weights1_20_address1 mem_address 1 6 }  { p_ZL8weights1_20_ce1 mem_ce 1 1 }  { p_ZL8weights1_20_d1 mem_din 1 32 }  { p_ZL8weights1_20_q1 mem_dout 0 32 }  { p_ZL8weights1_20_we1 mem_we 1 1 } } }
	p_ZL8weights1_21 { ap_memory {  { p_ZL8weights1_21_address0 mem_address 1 6 }  { p_ZL8weights1_21_ce0 mem_ce 1 1 }  { p_ZL8weights1_21_d0 mem_din 1 32 }  { p_ZL8weights1_21_q0 mem_dout 0 32 }  { p_ZL8weights1_21_we0 mem_we 1 1 }  { p_ZL8weights1_21_address1 mem_address 1 6 }  { p_ZL8weights1_21_ce1 mem_ce 1 1 }  { p_ZL8weights1_21_d1 mem_din 1 32 }  { p_ZL8weights1_21_q1 mem_dout 0 32 }  { p_ZL8weights1_21_we1 mem_we 1 1 } } }
	p_ZL8weights1_22 { ap_memory {  { p_ZL8weights1_22_address0 mem_address 1 6 }  { p_ZL8weights1_22_ce0 mem_ce 1 1 }  { p_ZL8weights1_22_d0 mem_din 1 32 }  { p_ZL8weights1_22_q0 mem_dout 0 32 }  { p_ZL8weights1_22_we0 mem_we 1 1 }  { p_ZL8weights1_22_address1 mem_address 1 6 }  { p_ZL8weights1_22_ce1 mem_ce 1 1 }  { p_ZL8weights1_22_d1 mem_din 1 32 }  { p_ZL8weights1_22_q1 mem_dout 0 32 }  { p_ZL8weights1_22_we1 mem_we 1 1 } } }
	p_ZL8weights1_23 { ap_memory {  { p_ZL8weights1_23_address0 mem_address 1 6 }  { p_ZL8weights1_23_ce0 mem_ce 1 1 }  { p_ZL8weights1_23_d0 mem_din 1 32 }  { p_ZL8weights1_23_q0 mem_dout 0 32 }  { p_ZL8weights1_23_we0 mem_we 1 1 }  { p_ZL8weights1_23_address1 mem_address 1 6 }  { p_ZL8weights1_23_ce1 mem_ce 1 1 }  { p_ZL8weights1_23_d1 mem_din 1 32 }  { p_ZL8weights1_23_q1 mem_dout 0 32 }  { p_ZL8weights1_23_we1 mem_we 1 1 } } }
	p_ZL8weights1_24 { ap_memory {  { p_ZL8weights1_24_address0 mem_address 1 6 }  { p_ZL8weights1_24_ce0 mem_ce 1 1 }  { p_ZL8weights1_24_d0 mem_din 1 32 }  { p_ZL8weights1_24_q0 mem_dout 0 32 }  { p_ZL8weights1_24_we0 mem_we 1 1 }  { p_ZL8weights1_24_address1 mem_address 1 6 }  { p_ZL8weights1_24_ce1 mem_ce 1 1 }  { p_ZL8weights1_24_d1 mem_din 1 32 }  { p_ZL8weights1_24_q1 mem_dout 0 32 }  { p_ZL8weights1_24_we1 mem_we 1 1 } } }
	p_ZL8weights1_25 { ap_memory {  { p_ZL8weights1_25_address0 mem_address 1 6 }  { p_ZL8weights1_25_ce0 mem_ce 1 1 }  { p_ZL8weights1_25_d0 mem_din 1 32 }  { p_ZL8weights1_25_q0 mem_dout 0 32 }  { p_ZL8weights1_25_we0 mem_we 1 1 }  { p_ZL8weights1_25_address1 mem_address 1 6 }  { p_ZL8weights1_25_ce1 mem_ce 1 1 }  { p_ZL8weights1_25_d1 mem_din 1 32 }  { p_ZL8weights1_25_q1 mem_dout 0 32 }  { p_ZL8weights1_25_we1 mem_we 1 1 } } }
	p_ZL8weights1_26 { ap_memory {  { p_ZL8weights1_26_address0 mem_address 1 6 }  { p_ZL8weights1_26_ce0 mem_ce 1 1 }  { p_ZL8weights1_26_d0 mem_din 1 32 }  { p_ZL8weights1_26_q0 mem_dout 0 32 }  { p_ZL8weights1_26_we0 mem_we 1 1 }  { p_ZL8weights1_26_address1 mem_address 1 6 }  { p_ZL8weights1_26_ce1 mem_ce 1 1 }  { p_ZL8weights1_26_d1 mem_din 1 32 }  { p_ZL8weights1_26_q1 mem_dout 0 32 }  { p_ZL8weights1_26_we1 mem_we 1 1 } } }
	p_ZL8weights1_27 { ap_memory {  { p_ZL8weights1_27_address0 mem_address 1 6 }  { p_ZL8weights1_27_ce0 mem_ce 1 1 }  { p_ZL8weights1_27_d0 mem_din 1 32 }  { p_ZL8weights1_27_q0 mem_dout 0 32 }  { p_ZL8weights1_27_we0 mem_we 1 1 }  { p_ZL8weights1_27_address1 mem_address 1 6 }  { p_ZL8weights1_27_ce1 mem_ce 1 1 }  { p_ZL8weights1_27_d1 mem_din 1 32 }  { p_ZL8weights1_27_q1 mem_dout 0 32 }  { p_ZL8weights1_27_we1 mem_we 1 1 } } }
	p_ZL8weights1_28 { ap_memory {  { p_ZL8weights1_28_address0 mem_address 1 6 }  { p_ZL8weights1_28_ce0 mem_ce 1 1 }  { p_ZL8weights1_28_d0 mem_din 1 32 }  { p_ZL8weights1_28_q0 mem_dout 0 32 }  { p_ZL8weights1_28_we0 mem_we 1 1 }  { p_ZL8weights1_28_address1 mem_address 1 6 }  { p_ZL8weights1_28_ce1 mem_ce 1 1 }  { p_ZL8weights1_28_d1 mem_din 1 32 }  { p_ZL8weights1_28_q1 mem_dout 0 32 }  { p_ZL8weights1_28_we1 mem_we 1 1 } } }
	p_ZL8weights1_29 { ap_memory {  { p_ZL8weights1_29_address0 mem_address 1 6 }  { p_ZL8weights1_29_ce0 mem_ce 1 1 }  { p_ZL8weights1_29_d0 mem_din 1 32 }  { p_ZL8weights1_29_q0 mem_dout 0 32 }  { p_ZL8weights1_29_we0 mem_we 1 1 }  { p_ZL8weights1_29_address1 mem_address 1 6 }  { p_ZL8weights1_29_ce1 mem_ce 1 1 }  { p_ZL8weights1_29_d1 mem_din 1 32 }  { p_ZL8weights1_29_q1 mem_dout 0 32 }  { p_ZL8weights1_29_we1 mem_we 1 1 } } }
	p_ZL8weights1_30 { ap_memory {  { p_ZL8weights1_30_address0 mem_address 1 6 }  { p_ZL8weights1_30_ce0 mem_ce 1 1 }  { p_ZL8weights1_30_d0 mem_din 1 32 }  { p_ZL8weights1_30_q0 mem_dout 0 32 }  { p_ZL8weights1_30_we0 mem_we 1 1 }  { p_ZL8weights1_30_address1 mem_address 1 6 }  { p_ZL8weights1_30_ce1 mem_ce 1 1 }  { p_ZL8weights1_30_d1 mem_din 1 32 }  { p_ZL8weights1_30_q1 mem_dout 0 32 }  { p_ZL8weights1_30_we1 mem_we 1 1 } } }
	p_ZL8weights1_31 { ap_memory {  { p_ZL8weights1_31_address0 mem_address 1 6 }  { p_ZL8weights1_31_ce0 mem_ce 1 1 }  { p_ZL8weights1_31_d0 mem_din 1 32 }  { p_ZL8weights1_31_q0 mem_dout 0 32 }  { p_ZL8weights1_31_we0 mem_we 1 1 }  { p_ZL8weights1_31_address1 mem_address 1 6 }  { p_ZL8weights1_31_ce1 mem_ce 1 1 }  { p_ZL8weights1_31_d1 mem_din 1 32 }  { p_ZL8weights1_31_q1 mem_dout 0 32 }  { p_ZL8weights1_31_we1 mem_we 1 1 } } }
	p_ZL8threshs1_0 { ap_memory {  { p_ZL8threshs1_0_address0 mem_address 1 1 }  { p_ZL8threshs1_0_ce0 mem_ce 1 1 }  { p_ZL8threshs1_0_d0 mem_din 1 16 }  { p_ZL8threshs1_0_q0 mem_dout 0 16 }  { p_ZL8threshs1_0_we0 mem_we 1 1 }  { p_ZL8threshs1_0_address1 mem_address 1 1 }  { p_ZL8threshs1_0_ce1 mem_ce 1 1 }  { p_ZL8threshs1_0_d1 mem_din 1 16 }  { p_ZL8threshs1_0_q1 mem_dout 0 16 }  { p_ZL8threshs1_0_we1 mem_we 1 1 } } }
	p_ZL8threshs1_1 { ap_memory {  { p_ZL8threshs1_1_address0 mem_address 1 1 }  { p_ZL8threshs1_1_ce0 mem_ce 1 1 }  { p_ZL8threshs1_1_d0 mem_din 1 16 }  { p_ZL8threshs1_1_q0 mem_dout 0 16 }  { p_ZL8threshs1_1_we0 mem_we 1 1 }  { p_ZL8threshs1_1_address1 mem_address 1 1 }  { p_ZL8threshs1_1_ce1 mem_ce 1 1 }  { p_ZL8threshs1_1_d1 mem_din 1 16 }  { p_ZL8threshs1_1_q1 mem_dout 0 16 }  { p_ZL8threshs1_1_we1 mem_we 1 1 } } }
	p_ZL8threshs1_2 { ap_memory {  { p_ZL8threshs1_2_address0 mem_address 1 1 }  { p_ZL8threshs1_2_ce0 mem_ce 1 1 }  { p_ZL8threshs1_2_d0 mem_din 1 16 }  { p_ZL8threshs1_2_q0 mem_dout 0 16 }  { p_ZL8threshs1_2_we0 mem_we 1 1 }  { p_ZL8threshs1_2_address1 mem_address 1 1 }  { p_ZL8threshs1_2_ce1 mem_ce 1 1 }  { p_ZL8threshs1_2_d1 mem_din 1 16 }  { p_ZL8threshs1_2_q1 mem_dout 0 16 }  { p_ZL8threshs1_2_we1 mem_we 1 1 } } }
	p_ZL8threshs1_3 { ap_memory {  { p_ZL8threshs1_3_address0 mem_address 1 1 }  { p_ZL8threshs1_3_ce0 mem_ce 1 1 }  { p_ZL8threshs1_3_d0 mem_din 1 16 }  { p_ZL8threshs1_3_q0 mem_dout 0 16 }  { p_ZL8threshs1_3_we0 mem_we 1 1 }  { p_ZL8threshs1_3_address1 mem_address 1 1 }  { p_ZL8threshs1_3_ce1 mem_ce 1 1 }  { p_ZL8threshs1_3_d1 mem_din 1 16 }  { p_ZL8threshs1_3_q1 mem_dout 0 16 }  { p_ZL8threshs1_3_we1 mem_we 1 1 } } }
	p_ZL8threshs1_4 { ap_memory {  { p_ZL8threshs1_4_address0 mem_address 1 1 }  { p_ZL8threshs1_4_ce0 mem_ce 1 1 }  { p_ZL8threshs1_4_d0 mem_din 1 16 }  { p_ZL8threshs1_4_q0 mem_dout 0 16 }  { p_ZL8threshs1_4_we0 mem_we 1 1 }  { p_ZL8threshs1_4_address1 mem_address 1 1 }  { p_ZL8threshs1_4_ce1 mem_ce 1 1 }  { p_ZL8threshs1_4_d1 mem_din 1 16 }  { p_ZL8threshs1_4_q1 mem_dout 0 16 }  { p_ZL8threshs1_4_we1 mem_we 1 1 } } }
	p_ZL8threshs1_5 { ap_memory {  { p_ZL8threshs1_5_address0 mem_address 1 1 }  { p_ZL8threshs1_5_ce0 mem_ce 1 1 }  { p_ZL8threshs1_5_d0 mem_din 1 16 }  { p_ZL8threshs1_5_q0 mem_dout 0 16 }  { p_ZL8threshs1_5_we0 mem_we 1 1 }  { p_ZL8threshs1_5_address1 mem_address 1 1 }  { p_ZL8threshs1_5_ce1 mem_ce 1 1 }  { p_ZL8threshs1_5_d1 mem_din 1 16 }  { p_ZL8threshs1_5_q1 mem_dout 0 16 }  { p_ZL8threshs1_5_we1 mem_we 1 1 } } }
	p_ZL8threshs1_6 { ap_memory {  { p_ZL8threshs1_6_address0 mem_address 1 1 }  { p_ZL8threshs1_6_ce0 mem_ce 1 1 }  { p_ZL8threshs1_6_d0 mem_din 1 16 }  { p_ZL8threshs1_6_q0 mem_dout 0 16 }  { p_ZL8threshs1_6_we0 mem_we 1 1 }  { p_ZL8threshs1_6_address1 mem_address 1 1 }  { p_ZL8threshs1_6_ce1 mem_ce 1 1 }  { p_ZL8threshs1_6_d1 mem_din 1 16 }  { p_ZL8threshs1_6_q1 mem_dout 0 16 }  { p_ZL8threshs1_6_we1 mem_we 1 1 } } }
	p_ZL8threshs1_7 { ap_memory {  { p_ZL8threshs1_7_address0 mem_address 1 1 }  { p_ZL8threshs1_7_ce0 mem_ce 1 1 }  { p_ZL8threshs1_7_d0 mem_din 1 16 }  { p_ZL8threshs1_7_q0 mem_dout 0 16 }  { p_ZL8threshs1_7_we0 mem_we 1 1 }  { p_ZL8threshs1_7_address1 mem_address 1 1 }  { p_ZL8threshs1_7_ce1 mem_ce 1 1 }  { p_ZL8threshs1_7_d1 mem_din 1 16 }  { p_ZL8threshs1_7_q1 mem_dout 0 16 }  { p_ZL8threshs1_7_we1 mem_we 1 1 } } }
	p_ZL8threshs1_8 { ap_memory {  { p_ZL8threshs1_8_address0 mem_address 1 1 }  { p_ZL8threshs1_8_ce0 mem_ce 1 1 }  { p_ZL8threshs1_8_d0 mem_din 1 16 }  { p_ZL8threshs1_8_q0 mem_dout 0 16 }  { p_ZL8threshs1_8_we0 mem_we 1 1 }  { p_ZL8threshs1_8_address1 mem_address 1 1 }  { p_ZL8threshs1_8_ce1 mem_ce 1 1 }  { p_ZL8threshs1_8_d1 mem_din 1 16 }  { p_ZL8threshs1_8_q1 mem_dout 0 16 }  { p_ZL8threshs1_8_we1 mem_we 1 1 } } }
	p_ZL8threshs1_9 { ap_memory {  { p_ZL8threshs1_9_address0 mem_address 1 1 }  { p_ZL8threshs1_9_ce0 mem_ce 1 1 }  { p_ZL8threshs1_9_d0 mem_din 1 16 }  { p_ZL8threshs1_9_q0 mem_dout 0 16 }  { p_ZL8threshs1_9_we0 mem_we 1 1 }  { p_ZL8threshs1_9_address1 mem_address 1 1 }  { p_ZL8threshs1_9_ce1 mem_ce 1 1 }  { p_ZL8threshs1_9_d1 mem_din 1 16 }  { p_ZL8threshs1_9_q1 mem_dout 0 16 }  { p_ZL8threshs1_9_we1 mem_we 1 1 } } }
	p_ZL8threshs1_10 { ap_memory {  { p_ZL8threshs1_10_address0 mem_address 1 1 }  { p_ZL8threshs1_10_ce0 mem_ce 1 1 }  { p_ZL8threshs1_10_d0 mem_din 1 16 }  { p_ZL8threshs1_10_q0 mem_dout 0 16 }  { p_ZL8threshs1_10_we0 mem_we 1 1 }  { p_ZL8threshs1_10_address1 mem_address 1 1 }  { p_ZL8threshs1_10_ce1 mem_ce 1 1 }  { p_ZL8threshs1_10_d1 mem_din 1 16 }  { p_ZL8threshs1_10_q1 mem_dout 0 16 }  { p_ZL8threshs1_10_we1 mem_we 1 1 } } }
	p_ZL8threshs1_11 { ap_memory {  { p_ZL8threshs1_11_address0 mem_address 1 1 }  { p_ZL8threshs1_11_ce0 mem_ce 1 1 }  { p_ZL8threshs1_11_d0 mem_din 1 16 }  { p_ZL8threshs1_11_q0 mem_dout 0 16 }  { p_ZL8threshs1_11_we0 mem_we 1 1 }  { p_ZL8threshs1_11_address1 mem_address 1 1 }  { p_ZL8threshs1_11_ce1 mem_ce 1 1 }  { p_ZL8threshs1_11_d1 mem_din 1 16 }  { p_ZL8threshs1_11_q1 mem_dout 0 16 }  { p_ZL8threshs1_11_we1 mem_we 1 1 } } }
	p_ZL8threshs1_12 { ap_memory {  { p_ZL8threshs1_12_address0 mem_address 1 1 }  { p_ZL8threshs1_12_ce0 mem_ce 1 1 }  { p_ZL8threshs1_12_d0 mem_din 1 16 }  { p_ZL8threshs1_12_q0 mem_dout 0 16 }  { p_ZL8threshs1_12_we0 mem_we 1 1 }  { p_ZL8threshs1_12_address1 mem_address 1 1 }  { p_ZL8threshs1_12_ce1 mem_ce 1 1 }  { p_ZL8threshs1_12_d1 mem_din 1 16 }  { p_ZL8threshs1_12_q1 mem_dout 0 16 }  { p_ZL8threshs1_12_we1 mem_we 1 1 } } }
	p_ZL8threshs1_13 { ap_memory {  { p_ZL8threshs1_13_address0 mem_address 1 1 }  { p_ZL8threshs1_13_ce0 mem_ce 1 1 }  { p_ZL8threshs1_13_d0 mem_din 1 16 }  { p_ZL8threshs1_13_q0 mem_dout 0 16 }  { p_ZL8threshs1_13_we0 mem_we 1 1 }  { p_ZL8threshs1_13_address1 mem_address 1 1 }  { p_ZL8threshs1_13_ce1 mem_ce 1 1 }  { p_ZL8threshs1_13_d1 mem_din 1 16 }  { p_ZL8threshs1_13_q1 mem_dout 0 16 }  { p_ZL8threshs1_13_we1 mem_we 1 1 } } }
	p_ZL8threshs1_14 { ap_memory {  { p_ZL8threshs1_14_address0 mem_address 1 1 }  { p_ZL8threshs1_14_ce0 mem_ce 1 1 }  { p_ZL8threshs1_14_d0 mem_din 1 16 }  { p_ZL8threshs1_14_q0 mem_dout 0 16 }  { p_ZL8threshs1_14_we0 mem_we 1 1 }  { p_ZL8threshs1_14_address1 mem_address 1 1 }  { p_ZL8threshs1_14_ce1 mem_ce 1 1 }  { p_ZL8threshs1_14_d1 mem_din 1 16 }  { p_ZL8threshs1_14_q1 mem_dout 0 16 }  { p_ZL8threshs1_14_we1 mem_we 1 1 } } }
	p_ZL8threshs1_15 { ap_memory {  { p_ZL8threshs1_15_address0 mem_address 1 1 }  { p_ZL8threshs1_15_ce0 mem_ce 1 1 }  { p_ZL8threshs1_15_d0 mem_din 1 16 }  { p_ZL8threshs1_15_q0 mem_dout 0 16 }  { p_ZL8threshs1_15_we0 mem_we 1 1 }  { p_ZL8threshs1_15_address1 mem_address 1 1 }  { p_ZL8threshs1_15_ce1 mem_ce 1 1 }  { p_ZL8threshs1_15_d1 mem_din 1 16 }  { p_ZL8threshs1_15_q1 mem_dout 0 16 }  { p_ZL8threshs1_15_we1 mem_we 1 1 } } }
	p_ZL8threshs1_16 { ap_memory {  { p_ZL8threshs1_16_address0 mem_address 1 1 }  { p_ZL8threshs1_16_ce0 mem_ce 1 1 }  { p_ZL8threshs1_16_d0 mem_din 1 16 }  { p_ZL8threshs1_16_q0 mem_dout 0 16 }  { p_ZL8threshs1_16_we0 mem_we 1 1 }  { p_ZL8threshs1_16_address1 mem_address 1 1 }  { p_ZL8threshs1_16_ce1 mem_ce 1 1 }  { p_ZL8threshs1_16_d1 mem_din 1 16 }  { p_ZL8threshs1_16_q1 mem_dout 0 16 }  { p_ZL8threshs1_16_we1 mem_we 1 1 } } }
	p_ZL8threshs1_17 { ap_memory {  { p_ZL8threshs1_17_address0 mem_address 1 1 }  { p_ZL8threshs1_17_ce0 mem_ce 1 1 }  { p_ZL8threshs1_17_d0 mem_din 1 16 }  { p_ZL8threshs1_17_q0 mem_dout 0 16 }  { p_ZL8threshs1_17_we0 mem_we 1 1 }  { p_ZL8threshs1_17_address1 mem_address 1 1 }  { p_ZL8threshs1_17_ce1 mem_ce 1 1 }  { p_ZL8threshs1_17_d1 mem_din 1 16 }  { p_ZL8threshs1_17_q1 mem_dout 0 16 }  { p_ZL8threshs1_17_we1 mem_we 1 1 } } }
	p_ZL8threshs1_18 { ap_memory {  { p_ZL8threshs1_18_address0 mem_address 1 1 }  { p_ZL8threshs1_18_ce0 mem_ce 1 1 }  { p_ZL8threshs1_18_d0 mem_din 1 16 }  { p_ZL8threshs1_18_q0 mem_dout 0 16 }  { p_ZL8threshs1_18_we0 mem_we 1 1 }  { p_ZL8threshs1_18_address1 mem_address 1 1 }  { p_ZL8threshs1_18_ce1 mem_ce 1 1 }  { p_ZL8threshs1_18_d1 mem_din 1 16 }  { p_ZL8threshs1_18_q1 mem_dout 0 16 }  { p_ZL8threshs1_18_we1 mem_we 1 1 } } }
	p_ZL8threshs1_19 { ap_memory {  { p_ZL8threshs1_19_address0 mem_address 1 1 }  { p_ZL8threshs1_19_ce0 mem_ce 1 1 }  { p_ZL8threshs1_19_d0 mem_din 1 16 }  { p_ZL8threshs1_19_q0 mem_dout 0 16 }  { p_ZL8threshs1_19_we0 mem_we 1 1 }  { p_ZL8threshs1_19_address1 mem_address 1 1 }  { p_ZL8threshs1_19_ce1 mem_ce 1 1 }  { p_ZL8threshs1_19_d1 mem_din 1 16 }  { p_ZL8threshs1_19_q1 mem_dout 0 16 }  { p_ZL8threshs1_19_we1 mem_we 1 1 } } }
	p_ZL8threshs1_20 { ap_memory {  { p_ZL8threshs1_20_address0 mem_address 1 1 }  { p_ZL8threshs1_20_ce0 mem_ce 1 1 }  { p_ZL8threshs1_20_d0 mem_din 1 16 }  { p_ZL8threshs1_20_q0 mem_dout 0 16 }  { p_ZL8threshs1_20_we0 mem_we 1 1 }  { p_ZL8threshs1_20_address1 mem_address 1 1 }  { p_ZL8threshs1_20_ce1 mem_ce 1 1 }  { p_ZL8threshs1_20_d1 mem_din 1 16 }  { p_ZL8threshs1_20_q1 mem_dout 0 16 }  { p_ZL8threshs1_20_we1 mem_we 1 1 } } }
	p_ZL8threshs1_21 { ap_memory {  { p_ZL8threshs1_21_address0 mem_address 1 1 }  { p_ZL8threshs1_21_ce0 mem_ce 1 1 }  { p_ZL8threshs1_21_d0 mem_din 1 16 }  { p_ZL8threshs1_21_q0 mem_dout 0 16 }  { p_ZL8threshs1_21_we0 mem_we 1 1 }  { p_ZL8threshs1_21_address1 mem_address 1 1 }  { p_ZL8threshs1_21_ce1 mem_ce 1 1 }  { p_ZL8threshs1_21_d1 mem_din 1 16 }  { p_ZL8threshs1_21_q1 mem_dout 0 16 }  { p_ZL8threshs1_21_we1 mem_we 1 1 } } }
	p_ZL8threshs1_22 { ap_memory {  { p_ZL8threshs1_22_address0 mem_address 1 1 }  { p_ZL8threshs1_22_ce0 mem_ce 1 1 }  { p_ZL8threshs1_22_d0 mem_din 1 16 }  { p_ZL8threshs1_22_q0 mem_dout 0 16 }  { p_ZL8threshs1_22_we0 mem_we 1 1 }  { p_ZL8threshs1_22_address1 mem_address 1 1 }  { p_ZL8threshs1_22_ce1 mem_ce 1 1 }  { p_ZL8threshs1_22_d1 mem_din 1 16 }  { p_ZL8threshs1_22_q1 mem_dout 0 16 }  { p_ZL8threshs1_22_we1 mem_we 1 1 } } }
	p_ZL8threshs1_23 { ap_memory {  { p_ZL8threshs1_23_address0 mem_address 1 1 }  { p_ZL8threshs1_23_ce0 mem_ce 1 1 }  { p_ZL8threshs1_23_d0 mem_din 1 16 }  { p_ZL8threshs1_23_q0 mem_dout 0 16 }  { p_ZL8threshs1_23_we0 mem_we 1 1 }  { p_ZL8threshs1_23_address1 mem_address 1 1 }  { p_ZL8threshs1_23_ce1 mem_ce 1 1 }  { p_ZL8threshs1_23_d1 mem_din 1 16 }  { p_ZL8threshs1_23_q1 mem_dout 0 16 }  { p_ZL8threshs1_23_we1 mem_we 1 1 } } }
	p_ZL8threshs1_24 { ap_memory {  { p_ZL8threshs1_24_address0 mem_address 1 1 }  { p_ZL8threshs1_24_ce0 mem_ce 1 1 }  { p_ZL8threshs1_24_d0 mem_din 1 16 }  { p_ZL8threshs1_24_q0 mem_dout 0 16 }  { p_ZL8threshs1_24_we0 mem_we 1 1 }  { p_ZL8threshs1_24_address1 mem_address 1 1 }  { p_ZL8threshs1_24_ce1 mem_ce 1 1 }  { p_ZL8threshs1_24_d1 mem_din 1 16 }  { p_ZL8threshs1_24_q1 mem_dout 0 16 }  { p_ZL8threshs1_24_we1 mem_we 1 1 } } }
	p_ZL8threshs1_25 { ap_memory {  { p_ZL8threshs1_25_address0 mem_address 1 1 }  { p_ZL8threshs1_25_ce0 mem_ce 1 1 }  { p_ZL8threshs1_25_d0 mem_din 1 16 }  { p_ZL8threshs1_25_q0 mem_dout 0 16 }  { p_ZL8threshs1_25_we0 mem_we 1 1 }  { p_ZL8threshs1_25_address1 mem_address 1 1 }  { p_ZL8threshs1_25_ce1 mem_ce 1 1 }  { p_ZL8threshs1_25_d1 mem_din 1 16 }  { p_ZL8threshs1_25_q1 mem_dout 0 16 }  { p_ZL8threshs1_25_we1 mem_we 1 1 } } }
	p_ZL8threshs1_26 { ap_memory {  { p_ZL8threshs1_26_address0 mem_address 1 1 }  { p_ZL8threshs1_26_ce0 mem_ce 1 1 }  { p_ZL8threshs1_26_d0 mem_din 1 16 }  { p_ZL8threshs1_26_q0 mem_dout 0 16 }  { p_ZL8threshs1_26_we0 mem_we 1 1 }  { p_ZL8threshs1_26_address1 mem_address 1 1 }  { p_ZL8threshs1_26_ce1 mem_ce 1 1 }  { p_ZL8threshs1_26_d1 mem_din 1 16 }  { p_ZL8threshs1_26_q1 mem_dout 0 16 }  { p_ZL8threshs1_26_we1 mem_we 1 1 } } }
	p_ZL8threshs1_27 { ap_memory {  { p_ZL8threshs1_27_address0 mem_address 1 1 }  { p_ZL8threshs1_27_ce0 mem_ce 1 1 }  { p_ZL8threshs1_27_d0 mem_din 1 16 }  { p_ZL8threshs1_27_q0 mem_dout 0 16 }  { p_ZL8threshs1_27_we0 mem_we 1 1 }  { p_ZL8threshs1_27_address1 mem_address 1 1 }  { p_ZL8threshs1_27_ce1 mem_ce 1 1 }  { p_ZL8threshs1_27_d1 mem_din 1 16 }  { p_ZL8threshs1_27_q1 mem_dout 0 16 }  { p_ZL8threshs1_27_we1 mem_we 1 1 } } }
	p_ZL8threshs1_28 { ap_memory {  { p_ZL8threshs1_28_address0 mem_address 1 1 }  { p_ZL8threshs1_28_ce0 mem_ce 1 1 }  { p_ZL8threshs1_28_d0 mem_din 1 16 }  { p_ZL8threshs1_28_q0 mem_dout 0 16 }  { p_ZL8threshs1_28_we0 mem_we 1 1 }  { p_ZL8threshs1_28_address1 mem_address 1 1 }  { p_ZL8threshs1_28_ce1 mem_ce 1 1 }  { p_ZL8threshs1_28_d1 mem_din 1 16 }  { p_ZL8threshs1_28_q1 mem_dout 0 16 }  { p_ZL8threshs1_28_we1 mem_we 1 1 } } }
	p_ZL8threshs1_29 { ap_memory {  { p_ZL8threshs1_29_address0 mem_address 1 1 }  { p_ZL8threshs1_29_ce0 mem_ce 1 1 }  { p_ZL8threshs1_29_d0 mem_din 1 16 }  { p_ZL8threshs1_29_q0 mem_dout 0 16 }  { p_ZL8threshs1_29_we0 mem_we 1 1 }  { p_ZL8threshs1_29_address1 mem_address 1 1 }  { p_ZL8threshs1_29_ce1 mem_ce 1 1 }  { p_ZL8threshs1_29_d1 mem_din 1 16 }  { p_ZL8threshs1_29_q1 mem_dout 0 16 }  { p_ZL8threshs1_29_we1 mem_we 1 1 } } }
	p_ZL8threshs1_30 { ap_memory {  { p_ZL8threshs1_30_address0 mem_address 1 1 }  { p_ZL8threshs1_30_ce0 mem_ce 1 1 }  { p_ZL8threshs1_30_d0 mem_din 1 16 }  { p_ZL8threshs1_30_q0 mem_dout 0 16 }  { p_ZL8threshs1_30_we0 mem_we 1 1 }  { p_ZL8threshs1_30_address1 mem_address 1 1 }  { p_ZL8threshs1_30_ce1 mem_ce 1 1 }  { p_ZL8threshs1_30_d1 mem_din 1 16 }  { p_ZL8threshs1_30_q1 mem_dout 0 16 }  { p_ZL8threshs1_30_we1 mem_we 1 1 } } }
	p_ZL8threshs1_31 { ap_memory {  { p_ZL8threshs1_31_address0 mem_address 1 1 }  { p_ZL8threshs1_31_ce0 mem_ce 1 1 }  { p_ZL8threshs1_31_d0 mem_din 1 16 }  { p_ZL8threshs1_31_q0 mem_dout 0 16 }  { p_ZL8threshs1_31_we0 mem_we 1 1 }  { p_ZL8threshs1_31_address1 mem_address 1 1 }  { p_ZL8threshs1_31_ce1 mem_ce 1 1 }  { p_ZL8threshs1_31_d1 mem_din 1 16 }  { p_ZL8threshs1_31_q1 mem_dout 0 16 }  { p_ZL8threshs1_31_we1 mem_we 1 1 } } }
	p_ZL8weights2_0 { ap_memory {  { p_ZL8weights2_0_address0 mem_address 1 8 }  { p_ZL8weights2_0_ce0 mem_ce 1 1 }  { p_ZL8weights2_0_d0 mem_din 1 32 }  { p_ZL8weights2_0_q0 mem_dout 0 32 }  { p_ZL8weights2_0_we0 mem_we 1 1 }  { p_ZL8weights2_0_address1 mem_address 1 8 }  { p_ZL8weights2_0_ce1 mem_ce 1 1 }  { p_ZL8weights2_0_d1 mem_din 1 32 }  { p_ZL8weights2_0_q1 mem_dout 0 32 }  { p_ZL8weights2_0_we1 mem_we 1 1 } } }
	p_ZL8weights2_1 { ap_memory {  { p_ZL8weights2_1_address0 mem_address 1 8 }  { p_ZL8weights2_1_ce0 mem_ce 1 1 }  { p_ZL8weights2_1_d0 mem_din 1 32 }  { p_ZL8weights2_1_q0 mem_dout 0 32 }  { p_ZL8weights2_1_we0 mem_we 1 1 }  { p_ZL8weights2_1_address1 mem_address 1 8 }  { p_ZL8weights2_1_ce1 mem_ce 1 1 }  { p_ZL8weights2_1_d1 mem_din 1 32 }  { p_ZL8weights2_1_q1 mem_dout 0 32 }  { p_ZL8weights2_1_we1 mem_we 1 1 } } }
	p_ZL8weights2_2 { ap_memory {  { p_ZL8weights2_2_address0 mem_address 1 8 }  { p_ZL8weights2_2_ce0 mem_ce 1 1 }  { p_ZL8weights2_2_d0 mem_din 1 32 }  { p_ZL8weights2_2_q0 mem_dout 0 32 }  { p_ZL8weights2_2_we0 mem_we 1 1 }  { p_ZL8weights2_2_address1 mem_address 1 8 }  { p_ZL8weights2_2_ce1 mem_ce 1 1 }  { p_ZL8weights2_2_d1 mem_din 1 32 }  { p_ZL8weights2_2_q1 mem_dout 0 32 }  { p_ZL8weights2_2_we1 mem_we 1 1 } } }
	p_ZL8weights2_3 { ap_memory {  { p_ZL8weights2_3_address0 mem_address 1 8 }  { p_ZL8weights2_3_ce0 mem_ce 1 1 }  { p_ZL8weights2_3_d0 mem_din 1 32 }  { p_ZL8weights2_3_q0 mem_dout 0 32 }  { p_ZL8weights2_3_we0 mem_we 1 1 }  { p_ZL8weights2_3_address1 mem_address 1 8 }  { p_ZL8weights2_3_ce1 mem_ce 1 1 }  { p_ZL8weights2_3_d1 mem_din 1 32 }  { p_ZL8weights2_3_q1 mem_dout 0 32 }  { p_ZL8weights2_3_we1 mem_we 1 1 } } }
	p_ZL8weights2_4 { ap_memory {  { p_ZL8weights2_4_address0 mem_address 1 8 }  { p_ZL8weights2_4_ce0 mem_ce 1 1 }  { p_ZL8weights2_4_d0 mem_din 1 32 }  { p_ZL8weights2_4_q0 mem_dout 0 32 }  { p_ZL8weights2_4_we0 mem_we 1 1 }  { p_ZL8weights2_4_address1 mem_address 1 8 }  { p_ZL8weights2_4_ce1 mem_ce 1 1 }  { p_ZL8weights2_4_d1 mem_din 1 32 }  { p_ZL8weights2_4_q1 mem_dout 0 32 }  { p_ZL8weights2_4_we1 mem_we 1 1 } } }
	p_ZL8weights2_5 { ap_memory {  { p_ZL8weights2_5_address0 mem_address 1 8 }  { p_ZL8weights2_5_ce0 mem_ce 1 1 }  { p_ZL8weights2_5_d0 mem_din 1 32 }  { p_ZL8weights2_5_q0 mem_dout 0 32 }  { p_ZL8weights2_5_we0 mem_we 1 1 }  { p_ZL8weights2_5_address1 mem_address 1 8 }  { p_ZL8weights2_5_ce1 mem_ce 1 1 }  { p_ZL8weights2_5_d1 mem_din 1 32 }  { p_ZL8weights2_5_q1 mem_dout 0 32 }  { p_ZL8weights2_5_we1 mem_we 1 1 } } }
	p_ZL8weights2_6 { ap_memory {  { p_ZL8weights2_6_address0 mem_address 1 8 }  { p_ZL8weights2_6_ce0 mem_ce 1 1 }  { p_ZL8weights2_6_d0 mem_din 1 32 }  { p_ZL8weights2_6_q0 mem_dout 0 32 }  { p_ZL8weights2_6_we0 mem_we 1 1 }  { p_ZL8weights2_6_address1 mem_address 1 8 }  { p_ZL8weights2_6_ce1 mem_ce 1 1 }  { p_ZL8weights2_6_d1 mem_din 1 32 }  { p_ZL8weights2_6_q1 mem_dout 0 32 }  { p_ZL8weights2_6_we1 mem_we 1 1 } } }
	p_ZL8weights2_7 { ap_memory {  { p_ZL8weights2_7_address0 mem_address 1 8 }  { p_ZL8weights2_7_ce0 mem_ce 1 1 }  { p_ZL8weights2_7_d0 mem_din 1 32 }  { p_ZL8weights2_7_q0 mem_dout 0 32 }  { p_ZL8weights2_7_we0 mem_we 1 1 }  { p_ZL8weights2_7_address1 mem_address 1 8 }  { p_ZL8weights2_7_ce1 mem_ce 1 1 }  { p_ZL8weights2_7_d1 mem_din 1 32 }  { p_ZL8weights2_7_q1 mem_dout 0 32 }  { p_ZL8weights2_7_we1 mem_we 1 1 } } }
	p_ZL8weights2_8 { ap_memory {  { p_ZL8weights2_8_address0 mem_address 1 8 }  { p_ZL8weights2_8_ce0 mem_ce 1 1 }  { p_ZL8weights2_8_d0 mem_din 1 32 }  { p_ZL8weights2_8_q0 mem_dout 0 32 }  { p_ZL8weights2_8_we0 mem_we 1 1 }  { p_ZL8weights2_8_address1 mem_address 1 8 }  { p_ZL8weights2_8_ce1 mem_ce 1 1 }  { p_ZL8weights2_8_d1 mem_din 1 32 }  { p_ZL8weights2_8_q1 mem_dout 0 32 }  { p_ZL8weights2_8_we1 mem_we 1 1 } } }
	p_ZL8weights2_9 { ap_memory {  { p_ZL8weights2_9_address0 mem_address 1 8 }  { p_ZL8weights2_9_ce0 mem_ce 1 1 }  { p_ZL8weights2_9_d0 mem_din 1 32 }  { p_ZL8weights2_9_q0 mem_dout 0 32 }  { p_ZL8weights2_9_we0 mem_we 1 1 }  { p_ZL8weights2_9_address1 mem_address 1 8 }  { p_ZL8weights2_9_ce1 mem_ce 1 1 }  { p_ZL8weights2_9_d1 mem_din 1 32 }  { p_ZL8weights2_9_q1 mem_dout 0 32 }  { p_ZL8weights2_9_we1 mem_we 1 1 } } }
	p_ZL8weights2_10 { ap_memory {  { p_ZL8weights2_10_address0 mem_address 1 8 }  { p_ZL8weights2_10_ce0 mem_ce 1 1 }  { p_ZL8weights2_10_d0 mem_din 1 32 }  { p_ZL8weights2_10_q0 mem_dout 0 32 }  { p_ZL8weights2_10_we0 mem_we 1 1 }  { p_ZL8weights2_10_address1 mem_address 1 8 }  { p_ZL8weights2_10_ce1 mem_ce 1 1 }  { p_ZL8weights2_10_d1 mem_din 1 32 }  { p_ZL8weights2_10_q1 mem_dout 0 32 }  { p_ZL8weights2_10_we1 mem_we 1 1 } } }
	p_ZL8weights2_11 { ap_memory {  { p_ZL8weights2_11_address0 mem_address 1 8 }  { p_ZL8weights2_11_ce0 mem_ce 1 1 }  { p_ZL8weights2_11_d0 mem_din 1 32 }  { p_ZL8weights2_11_q0 mem_dout 0 32 }  { p_ZL8weights2_11_we0 mem_we 1 1 }  { p_ZL8weights2_11_address1 mem_address 1 8 }  { p_ZL8weights2_11_ce1 mem_ce 1 1 }  { p_ZL8weights2_11_d1 mem_din 1 32 }  { p_ZL8weights2_11_q1 mem_dout 0 32 }  { p_ZL8weights2_11_we1 mem_we 1 1 } } }
	p_ZL8weights2_12 { ap_memory {  { p_ZL8weights2_12_address0 mem_address 1 8 }  { p_ZL8weights2_12_ce0 mem_ce 1 1 }  { p_ZL8weights2_12_d0 mem_din 1 32 }  { p_ZL8weights2_12_q0 mem_dout 0 32 }  { p_ZL8weights2_12_we0 mem_we 1 1 }  { p_ZL8weights2_12_address1 mem_address 1 8 }  { p_ZL8weights2_12_ce1 mem_ce 1 1 }  { p_ZL8weights2_12_d1 mem_din 1 32 }  { p_ZL8weights2_12_q1 mem_dout 0 32 }  { p_ZL8weights2_12_we1 mem_we 1 1 } } }
	p_ZL8weights2_13 { ap_memory {  { p_ZL8weights2_13_address0 mem_address 1 8 }  { p_ZL8weights2_13_ce0 mem_ce 1 1 }  { p_ZL8weights2_13_d0 mem_din 1 32 }  { p_ZL8weights2_13_q0 mem_dout 0 32 }  { p_ZL8weights2_13_we0 mem_we 1 1 }  { p_ZL8weights2_13_address1 mem_address 1 8 }  { p_ZL8weights2_13_ce1 mem_ce 1 1 }  { p_ZL8weights2_13_d1 mem_din 1 32 }  { p_ZL8weights2_13_q1 mem_dout 0 32 }  { p_ZL8weights2_13_we1 mem_we 1 1 } } }
	p_ZL8weights2_14 { ap_memory {  { p_ZL8weights2_14_address0 mem_address 1 8 }  { p_ZL8weights2_14_ce0 mem_ce 1 1 }  { p_ZL8weights2_14_d0 mem_din 1 32 }  { p_ZL8weights2_14_q0 mem_dout 0 32 }  { p_ZL8weights2_14_we0 mem_we 1 1 }  { p_ZL8weights2_14_address1 mem_address 1 8 }  { p_ZL8weights2_14_ce1 mem_ce 1 1 }  { p_ZL8weights2_14_d1 mem_din 1 32 }  { p_ZL8weights2_14_q1 mem_dout 0 32 }  { p_ZL8weights2_14_we1 mem_we 1 1 } } }
	p_ZL8weights2_15 { ap_memory {  { p_ZL8weights2_15_address0 mem_address 1 8 }  { p_ZL8weights2_15_ce0 mem_ce 1 1 }  { p_ZL8weights2_15_d0 mem_din 1 32 }  { p_ZL8weights2_15_q0 mem_dout 0 32 }  { p_ZL8weights2_15_we0 mem_we 1 1 }  { p_ZL8weights2_15_address1 mem_address 1 8 }  { p_ZL8weights2_15_ce1 mem_ce 1 1 }  { p_ZL8weights2_15_d1 mem_din 1 32 }  { p_ZL8weights2_15_q1 mem_dout 0 32 }  { p_ZL8weights2_15_we1 mem_we 1 1 } } }
	p_ZL8threshs2_0 { ap_memory {  { p_ZL8threshs2_0_address0 mem_address 1 3 }  { p_ZL8threshs2_0_ce0 mem_ce 1 1 }  { p_ZL8threshs2_0_d0 mem_din 1 16 }  { p_ZL8threshs2_0_q0 mem_dout 0 16 }  { p_ZL8threshs2_0_we0 mem_we 1 1 }  { p_ZL8threshs2_0_address1 mem_address 1 3 }  { p_ZL8threshs2_0_ce1 mem_ce 1 1 }  { p_ZL8threshs2_0_d1 mem_din 1 16 }  { p_ZL8threshs2_0_q1 mem_dout 0 16 }  { p_ZL8threshs2_0_we1 mem_we 1 1 } } }
	p_ZL8threshs2_1 { ap_memory {  { p_ZL8threshs2_1_address0 mem_address 1 3 }  { p_ZL8threshs2_1_ce0 mem_ce 1 1 }  { p_ZL8threshs2_1_d0 mem_din 1 16 }  { p_ZL8threshs2_1_q0 mem_dout 0 16 }  { p_ZL8threshs2_1_we0 mem_we 1 1 }  { p_ZL8threshs2_1_address1 mem_address 1 3 }  { p_ZL8threshs2_1_ce1 mem_ce 1 1 }  { p_ZL8threshs2_1_d1 mem_din 1 16 }  { p_ZL8threshs2_1_q1 mem_dout 0 16 }  { p_ZL8threshs2_1_we1 mem_we 1 1 } } }
	p_ZL8threshs2_2 { ap_memory {  { p_ZL8threshs2_2_address0 mem_address 1 3 }  { p_ZL8threshs2_2_ce0 mem_ce 1 1 }  { p_ZL8threshs2_2_d0 mem_din 1 16 }  { p_ZL8threshs2_2_q0 mem_dout 0 16 }  { p_ZL8threshs2_2_we0 mem_we 1 1 }  { p_ZL8threshs2_2_address1 mem_address 1 3 }  { p_ZL8threshs2_2_ce1 mem_ce 1 1 }  { p_ZL8threshs2_2_d1 mem_din 1 16 }  { p_ZL8threshs2_2_q1 mem_dout 0 16 }  { p_ZL8threshs2_2_we1 mem_we 1 1 } } }
	p_ZL8threshs2_3 { ap_memory {  { p_ZL8threshs2_3_address0 mem_address 1 3 }  { p_ZL8threshs2_3_ce0 mem_ce 1 1 }  { p_ZL8threshs2_3_d0 mem_din 1 16 }  { p_ZL8threshs2_3_q0 mem_dout 0 16 }  { p_ZL8threshs2_3_we0 mem_we 1 1 }  { p_ZL8threshs2_3_address1 mem_address 1 3 }  { p_ZL8threshs2_3_ce1 mem_ce 1 1 }  { p_ZL8threshs2_3_d1 mem_din 1 16 }  { p_ZL8threshs2_3_q1 mem_dout 0 16 }  { p_ZL8threshs2_3_we1 mem_we 1 1 } } }
	p_ZL8threshs2_4 { ap_memory {  { p_ZL8threshs2_4_address0 mem_address 1 3 }  { p_ZL8threshs2_4_ce0 mem_ce 1 1 }  { p_ZL8threshs2_4_d0 mem_din 1 16 }  { p_ZL8threshs2_4_q0 mem_dout 0 16 }  { p_ZL8threshs2_4_we0 mem_we 1 1 }  { p_ZL8threshs2_4_address1 mem_address 1 3 }  { p_ZL8threshs2_4_ce1 mem_ce 1 1 }  { p_ZL8threshs2_4_d1 mem_din 1 16 }  { p_ZL8threshs2_4_q1 mem_dout 0 16 }  { p_ZL8threshs2_4_we1 mem_we 1 1 } } }
	p_ZL8threshs2_5 { ap_memory {  { p_ZL8threshs2_5_address0 mem_address 1 3 }  { p_ZL8threshs2_5_ce0 mem_ce 1 1 }  { p_ZL8threshs2_5_d0 mem_din 1 16 }  { p_ZL8threshs2_5_q0 mem_dout 0 16 }  { p_ZL8threshs2_5_we0 mem_we 1 1 }  { p_ZL8threshs2_5_address1 mem_address 1 3 }  { p_ZL8threshs2_5_ce1 mem_ce 1 1 }  { p_ZL8threshs2_5_d1 mem_din 1 16 }  { p_ZL8threshs2_5_q1 mem_dout 0 16 }  { p_ZL8threshs2_5_we1 mem_we 1 1 } } }
	p_ZL8threshs2_6 { ap_memory {  { p_ZL8threshs2_6_address0 mem_address 1 3 }  { p_ZL8threshs2_6_ce0 mem_ce 1 1 }  { p_ZL8threshs2_6_d0 mem_din 1 16 }  { p_ZL8threshs2_6_q0 mem_dout 0 16 }  { p_ZL8threshs2_6_we0 mem_we 1 1 }  { p_ZL8threshs2_6_address1 mem_address 1 3 }  { p_ZL8threshs2_6_ce1 mem_ce 1 1 }  { p_ZL8threshs2_6_d1 mem_din 1 16 }  { p_ZL8threshs2_6_q1 mem_dout 0 16 }  { p_ZL8threshs2_6_we1 mem_we 1 1 } } }
	p_ZL8threshs2_7 { ap_memory {  { p_ZL8threshs2_7_address0 mem_address 1 3 }  { p_ZL8threshs2_7_ce0 mem_ce 1 1 }  { p_ZL8threshs2_7_d0 mem_din 1 16 }  { p_ZL8threshs2_7_q0 mem_dout 0 16 }  { p_ZL8threshs2_7_we0 mem_we 1 1 }  { p_ZL8threshs2_7_address1 mem_address 1 3 }  { p_ZL8threshs2_7_ce1 mem_ce 1 1 }  { p_ZL8threshs2_7_d1 mem_din 1 16 }  { p_ZL8threshs2_7_q1 mem_dout 0 16 }  { p_ZL8threshs2_7_we1 mem_we 1 1 } } }
	p_ZL8threshs2_8 { ap_memory {  { p_ZL8threshs2_8_address0 mem_address 1 3 }  { p_ZL8threshs2_8_ce0 mem_ce 1 1 }  { p_ZL8threshs2_8_d0 mem_din 1 16 }  { p_ZL8threshs2_8_q0 mem_dout 0 16 }  { p_ZL8threshs2_8_we0 mem_we 1 1 }  { p_ZL8threshs2_8_address1 mem_address 1 3 }  { p_ZL8threshs2_8_ce1 mem_ce 1 1 }  { p_ZL8threshs2_8_d1 mem_din 1 16 }  { p_ZL8threshs2_8_q1 mem_dout 0 16 }  { p_ZL8threshs2_8_we1 mem_we 1 1 } } }
	p_ZL8threshs2_9 { ap_memory {  { p_ZL8threshs2_9_address0 mem_address 1 3 }  { p_ZL8threshs2_9_ce0 mem_ce 1 1 }  { p_ZL8threshs2_9_d0 mem_din 1 16 }  { p_ZL8threshs2_9_q0 mem_dout 0 16 }  { p_ZL8threshs2_9_we0 mem_we 1 1 }  { p_ZL8threshs2_9_address1 mem_address 1 3 }  { p_ZL8threshs2_9_ce1 mem_ce 1 1 }  { p_ZL8threshs2_9_d1 mem_din 1 16 }  { p_ZL8threshs2_9_q1 mem_dout 0 16 }  { p_ZL8threshs2_9_we1 mem_we 1 1 } } }
	p_ZL8threshs2_10 { ap_memory {  { p_ZL8threshs2_10_address0 mem_address 1 3 }  { p_ZL8threshs2_10_ce0 mem_ce 1 1 }  { p_ZL8threshs2_10_d0 mem_din 1 16 }  { p_ZL8threshs2_10_q0 mem_dout 0 16 }  { p_ZL8threshs2_10_we0 mem_we 1 1 }  { p_ZL8threshs2_10_address1 mem_address 1 3 }  { p_ZL8threshs2_10_ce1 mem_ce 1 1 }  { p_ZL8threshs2_10_d1 mem_din 1 16 }  { p_ZL8threshs2_10_q1 mem_dout 0 16 }  { p_ZL8threshs2_10_we1 mem_we 1 1 } } }
	p_ZL8threshs2_11 { ap_memory {  { p_ZL8threshs2_11_address0 mem_address 1 3 }  { p_ZL8threshs2_11_ce0 mem_ce 1 1 }  { p_ZL8threshs2_11_d0 mem_din 1 16 }  { p_ZL8threshs2_11_q0 mem_dout 0 16 }  { p_ZL8threshs2_11_we0 mem_we 1 1 }  { p_ZL8threshs2_11_address1 mem_address 1 3 }  { p_ZL8threshs2_11_ce1 mem_ce 1 1 }  { p_ZL8threshs2_11_d1 mem_din 1 16 }  { p_ZL8threshs2_11_q1 mem_dout 0 16 }  { p_ZL8threshs2_11_we1 mem_we 1 1 } } }
	p_ZL8threshs2_12 { ap_memory {  { p_ZL8threshs2_12_address0 mem_address 1 3 }  { p_ZL8threshs2_12_ce0 mem_ce 1 1 }  { p_ZL8threshs2_12_d0 mem_din 1 16 }  { p_ZL8threshs2_12_q0 mem_dout 0 16 }  { p_ZL8threshs2_12_we0 mem_we 1 1 }  { p_ZL8threshs2_12_address1 mem_address 1 3 }  { p_ZL8threshs2_12_ce1 mem_ce 1 1 }  { p_ZL8threshs2_12_d1 mem_din 1 16 }  { p_ZL8threshs2_12_q1 mem_dout 0 16 }  { p_ZL8threshs2_12_we1 mem_we 1 1 } } }
	p_ZL8threshs2_13 { ap_memory {  { p_ZL8threshs2_13_address0 mem_address 1 3 }  { p_ZL8threshs2_13_ce0 mem_ce 1 1 }  { p_ZL8threshs2_13_d0 mem_din 1 16 }  { p_ZL8threshs2_13_q0 mem_dout 0 16 }  { p_ZL8threshs2_13_we0 mem_we 1 1 }  { p_ZL8threshs2_13_address1 mem_address 1 3 }  { p_ZL8threshs2_13_ce1 mem_ce 1 1 }  { p_ZL8threshs2_13_d1 mem_din 1 16 }  { p_ZL8threshs2_13_q1 mem_dout 0 16 }  { p_ZL8threshs2_13_we1 mem_we 1 1 } } }
	p_ZL8threshs2_14 { ap_memory {  { p_ZL8threshs2_14_address0 mem_address 1 3 }  { p_ZL8threshs2_14_ce0 mem_ce 1 1 }  { p_ZL8threshs2_14_d0 mem_din 1 16 }  { p_ZL8threshs2_14_q0 mem_dout 0 16 }  { p_ZL8threshs2_14_we0 mem_we 1 1 }  { p_ZL8threshs2_14_address1 mem_address 1 3 }  { p_ZL8threshs2_14_ce1 mem_ce 1 1 }  { p_ZL8threshs2_14_d1 mem_din 1 16 }  { p_ZL8threshs2_14_q1 mem_dout 0 16 }  { p_ZL8threshs2_14_we1 mem_we 1 1 } } }
	p_ZL8threshs2_15 { ap_memory {  { p_ZL8threshs2_15_address0 mem_address 1 3 }  { p_ZL8threshs2_15_ce0 mem_ce 1 1 }  { p_ZL8threshs2_15_d0 mem_din 1 16 }  { p_ZL8threshs2_15_q0 mem_dout 0 16 }  { p_ZL8threshs2_15_we0 mem_we 1 1 }  { p_ZL8threshs2_15_address1 mem_address 1 3 }  { p_ZL8threshs2_15_ce1 mem_ce 1 1 }  { p_ZL8threshs2_15_d1 mem_din 1 16 }  { p_ZL8threshs2_15_q1 mem_dout 0 16 }  { p_ZL8threshs2_15_we1 mem_we 1 1 } } }
	p_ZL8weights3_0 { ap_memory {  { p_ZL8weights3_0_address0 mem_address 1 9 }  { p_ZL8weights3_0_ce0 mem_ce 1 1 }  { p_ZL8weights3_0_d0 mem_din 1 32 }  { p_ZL8weights3_0_q0 mem_dout 0 32 }  { p_ZL8weights3_0_we0 mem_we 1 1 }  { p_ZL8weights3_0_address1 mem_address 1 9 }  { p_ZL8weights3_0_ce1 mem_ce 1 1 }  { p_ZL8weights3_0_d1 mem_din 1 32 }  { p_ZL8weights3_0_q1 mem_dout 0 32 }  { p_ZL8weights3_0_we1 mem_we 1 1 } } }
	p_ZL8weights3_1 { ap_memory {  { p_ZL8weights3_1_address0 mem_address 1 9 }  { p_ZL8weights3_1_ce0 mem_ce 1 1 }  { p_ZL8weights3_1_d0 mem_din 1 32 }  { p_ZL8weights3_1_q0 mem_dout 0 32 }  { p_ZL8weights3_1_we0 mem_we 1 1 }  { p_ZL8weights3_1_address1 mem_address 1 9 }  { p_ZL8weights3_1_ce1 mem_ce 1 1 }  { p_ZL8weights3_1_d1 mem_din 1 32 }  { p_ZL8weights3_1_q1 mem_dout 0 32 }  { p_ZL8weights3_1_we1 mem_we 1 1 } } }
	p_ZL8weights3_2 { ap_memory {  { p_ZL8weights3_2_address0 mem_address 1 9 }  { p_ZL8weights3_2_ce0 mem_ce 1 1 }  { p_ZL8weights3_2_d0 mem_din 1 32 }  { p_ZL8weights3_2_q0 mem_dout 0 32 }  { p_ZL8weights3_2_we0 mem_we 1 1 }  { p_ZL8weights3_2_address1 mem_address 1 9 }  { p_ZL8weights3_2_ce1 mem_ce 1 1 }  { p_ZL8weights3_2_d1 mem_din 1 32 }  { p_ZL8weights3_2_q1 mem_dout 0 32 }  { p_ZL8weights3_2_we1 mem_we 1 1 } } }
	p_ZL8weights3_3 { ap_memory {  { p_ZL8weights3_3_address0 mem_address 1 9 }  { p_ZL8weights3_3_ce0 mem_ce 1 1 }  { p_ZL8weights3_3_d0 mem_din 1 32 }  { p_ZL8weights3_3_q0 mem_dout 0 32 }  { p_ZL8weights3_3_we0 mem_we 1 1 }  { p_ZL8weights3_3_address1 mem_address 1 9 }  { p_ZL8weights3_3_ce1 mem_ce 1 1 }  { p_ZL8weights3_3_d1 mem_din 1 32 }  { p_ZL8weights3_3_q1 mem_dout 0 32 }  { p_ZL8weights3_3_we1 mem_we 1 1 } } }
	p_ZL8weights3_4 { ap_memory {  { p_ZL8weights3_4_address0 mem_address 1 9 }  { p_ZL8weights3_4_ce0 mem_ce 1 1 }  { p_ZL8weights3_4_d0 mem_din 1 32 }  { p_ZL8weights3_4_q0 mem_dout 0 32 }  { p_ZL8weights3_4_we0 mem_we 1 1 }  { p_ZL8weights3_4_address1 mem_address 1 9 }  { p_ZL8weights3_4_ce1 mem_ce 1 1 }  { p_ZL8weights3_4_d1 mem_din 1 32 }  { p_ZL8weights3_4_q1 mem_dout 0 32 }  { p_ZL8weights3_4_we1 mem_we 1 1 } } }
	p_ZL8weights3_5 { ap_memory {  { p_ZL8weights3_5_address0 mem_address 1 9 }  { p_ZL8weights3_5_ce0 mem_ce 1 1 }  { p_ZL8weights3_5_d0 mem_din 1 32 }  { p_ZL8weights3_5_q0 mem_dout 0 32 }  { p_ZL8weights3_5_we0 mem_we 1 1 }  { p_ZL8weights3_5_address1 mem_address 1 9 }  { p_ZL8weights3_5_ce1 mem_ce 1 1 }  { p_ZL8weights3_5_d1 mem_din 1 32 }  { p_ZL8weights3_5_q1 mem_dout 0 32 }  { p_ZL8weights3_5_we1 mem_we 1 1 } } }
	p_ZL8weights3_6 { ap_memory {  { p_ZL8weights3_6_address0 mem_address 1 9 }  { p_ZL8weights3_6_ce0 mem_ce 1 1 }  { p_ZL8weights3_6_d0 mem_din 1 32 }  { p_ZL8weights3_6_q0 mem_dout 0 32 }  { p_ZL8weights3_6_we0 mem_we 1 1 }  { p_ZL8weights3_6_address1 mem_address 1 9 }  { p_ZL8weights3_6_ce1 mem_ce 1 1 }  { p_ZL8weights3_6_d1 mem_din 1 32 }  { p_ZL8weights3_6_q1 mem_dout 0 32 }  { p_ZL8weights3_6_we1 mem_we 1 1 } } }
	p_ZL8weights3_7 { ap_memory {  { p_ZL8weights3_7_address0 mem_address 1 9 }  { p_ZL8weights3_7_ce0 mem_ce 1 1 }  { p_ZL8weights3_7_d0 mem_din 1 32 }  { p_ZL8weights3_7_q0 mem_dout 0 32 }  { p_ZL8weights3_7_we0 mem_we 1 1 }  { p_ZL8weights3_7_address1 mem_address 1 9 }  { p_ZL8weights3_7_ce1 mem_ce 1 1 }  { p_ZL8weights3_7_d1 mem_din 1 32 }  { p_ZL8weights3_7_q1 mem_dout 0 32 }  { p_ZL8weights3_7_we1 mem_we 1 1 } } }
	p_ZL8weights3_8 { ap_memory {  { p_ZL8weights3_8_address0 mem_address 1 9 }  { p_ZL8weights3_8_ce0 mem_ce 1 1 }  { p_ZL8weights3_8_d0 mem_din 1 32 }  { p_ZL8weights3_8_q0 mem_dout 0 32 }  { p_ZL8weights3_8_we0 mem_we 1 1 }  { p_ZL8weights3_8_address1 mem_address 1 9 }  { p_ZL8weights3_8_ce1 mem_ce 1 1 }  { p_ZL8weights3_8_d1 mem_din 1 32 }  { p_ZL8weights3_8_q1 mem_dout 0 32 }  { p_ZL8weights3_8_we1 mem_we 1 1 } } }
	p_ZL8weights3_9 { ap_memory {  { p_ZL8weights3_9_address0 mem_address 1 9 }  { p_ZL8weights3_9_ce0 mem_ce 1 1 }  { p_ZL8weights3_9_d0 mem_din 1 32 }  { p_ZL8weights3_9_q0 mem_dout 0 32 }  { p_ZL8weights3_9_we0 mem_we 1 1 }  { p_ZL8weights3_9_address1 mem_address 1 9 }  { p_ZL8weights3_9_ce1 mem_ce 1 1 }  { p_ZL8weights3_9_d1 mem_din 1 32 }  { p_ZL8weights3_9_q1 mem_dout 0 32 }  { p_ZL8weights3_9_we1 mem_we 1 1 } } }
	p_ZL8weights3_10 { ap_memory {  { p_ZL8weights3_10_address0 mem_address 1 9 }  { p_ZL8weights3_10_ce0 mem_ce 1 1 }  { p_ZL8weights3_10_d0 mem_din 1 32 }  { p_ZL8weights3_10_q0 mem_dout 0 32 }  { p_ZL8weights3_10_we0 mem_we 1 1 }  { p_ZL8weights3_10_address1 mem_address 1 9 }  { p_ZL8weights3_10_ce1 mem_ce 1 1 }  { p_ZL8weights3_10_d1 mem_din 1 32 }  { p_ZL8weights3_10_q1 mem_dout 0 32 }  { p_ZL8weights3_10_we1 mem_we 1 1 } } }
	p_ZL8weights3_11 { ap_memory {  { p_ZL8weights3_11_address0 mem_address 1 9 }  { p_ZL8weights3_11_ce0 mem_ce 1 1 }  { p_ZL8weights3_11_d0 mem_din 1 32 }  { p_ZL8weights3_11_q0 mem_dout 0 32 }  { p_ZL8weights3_11_we0 mem_we 1 1 }  { p_ZL8weights3_11_address1 mem_address 1 9 }  { p_ZL8weights3_11_ce1 mem_ce 1 1 }  { p_ZL8weights3_11_d1 mem_din 1 32 }  { p_ZL8weights3_11_q1 mem_dout 0 32 }  { p_ZL8weights3_11_we1 mem_we 1 1 } } }
	p_ZL8weights3_12 { ap_memory {  { p_ZL8weights3_12_address0 mem_address 1 9 }  { p_ZL8weights3_12_ce0 mem_ce 1 1 }  { p_ZL8weights3_12_d0 mem_din 1 32 }  { p_ZL8weights3_12_q0 mem_dout 0 32 }  { p_ZL8weights3_12_we0 mem_we 1 1 }  { p_ZL8weights3_12_address1 mem_address 1 9 }  { p_ZL8weights3_12_ce1 mem_ce 1 1 }  { p_ZL8weights3_12_d1 mem_din 1 32 }  { p_ZL8weights3_12_q1 mem_dout 0 32 }  { p_ZL8weights3_12_we1 mem_we 1 1 } } }
	p_ZL8weights3_13 { ap_memory {  { p_ZL8weights3_13_address0 mem_address 1 9 }  { p_ZL8weights3_13_ce0 mem_ce 1 1 }  { p_ZL8weights3_13_d0 mem_din 1 32 }  { p_ZL8weights3_13_q0 mem_dout 0 32 }  { p_ZL8weights3_13_we0 mem_we 1 1 }  { p_ZL8weights3_13_address1 mem_address 1 9 }  { p_ZL8weights3_13_ce1 mem_ce 1 1 }  { p_ZL8weights3_13_d1 mem_din 1 32 }  { p_ZL8weights3_13_q1 mem_dout 0 32 }  { p_ZL8weights3_13_we1 mem_we 1 1 } } }
	p_ZL8weights3_14 { ap_memory {  { p_ZL8weights3_14_address0 mem_address 1 9 }  { p_ZL8weights3_14_ce0 mem_ce 1 1 }  { p_ZL8weights3_14_d0 mem_din 1 32 }  { p_ZL8weights3_14_q0 mem_dout 0 32 }  { p_ZL8weights3_14_we0 mem_we 1 1 }  { p_ZL8weights3_14_address1 mem_address 1 9 }  { p_ZL8weights3_14_ce1 mem_ce 1 1 }  { p_ZL8weights3_14_d1 mem_din 1 32 }  { p_ZL8weights3_14_q1 mem_dout 0 32 }  { p_ZL8weights3_14_we1 mem_we 1 1 } } }
	p_ZL8weights3_15 { ap_memory {  { p_ZL8weights3_15_address0 mem_address 1 9 }  { p_ZL8weights3_15_ce0 mem_ce 1 1 }  { p_ZL8weights3_15_d0 mem_din 1 32 }  { p_ZL8weights3_15_q0 mem_dout 0 32 }  { p_ZL8weights3_15_we0 mem_we 1 1 }  { p_ZL8weights3_15_address1 mem_address 1 9 }  { p_ZL8weights3_15_ce1 mem_ce 1 1 }  { p_ZL8weights3_15_d1 mem_din 1 32 }  { p_ZL8weights3_15_q1 mem_dout 0 32 }  { p_ZL8weights3_15_we1 mem_we 1 1 } } }
	p_ZL8threshs3_0 { ap_memory {  { p_ZL8threshs3_0_address0 mem_address 1 3 }  { p_ZL8threshs3_0_ce0 mem_ce 1 1 }  { p_ZL8threshs3_0_d0 mem_din 1 16 }  { p_ZL8threshs3_0_q0 mem_dout 0 16 }  { p_ZL8threshs3_0_we0 mem_we 1 1 }  { p_ZL8threshs3_0_address1 mem_address 1 3 }  { p_ZL8threshs3_0_ce1 mem_ce 1 1 }  { p_ZL8threshs3_0_d1 mem_din 1 16 }  { p_ZL8threshs3_0_q1 mem_dout 0 16 }  { p_ZL8threshs3_0_we1 mem_we 1 1 } } }
	p_ZL8threshs3_1 { ap_memory {  { p_ZL8threshs3_1_address0 mem_address 1 3 }  { p_ZL8threshs3_1_ce0 mem_ce 1 1 }  { p_ZL8threshs3_1_d0 mem_din 1 16 }  { p_ZL8threshs3_1_q0 mem_dout 0 16 }  { p_ZL8threshs3_1_we0 mem_we 1 1 }  { p_ZL8threshs3_1_address1 mem_address 1 3 }  { p_ZL8threshs3_1_ce1 mem_ce 1 1 }  { p_ZL8threshs3_1_d1 mem_din 1 16 }  { p_ZL8threshs3_1_q1 mem_dout 0 16 }  { p_ZL8threshs3_1_we1 mem_we 1 1 } } }
	p_ZL8threshs3_2 { ap_memory {  { p_ZL8threshs3_2_address0 mem_address 1 3 }  { p_ZL8threshs3_2_ce0 mem_ce 1 1 }  { p_ZL8threshs3_2_d0 mem_din 1 16 }  { p_ZL8threshs3_2_q0 mem_dout 0 16 }  { p_ZL8threshs3_2_we0 mem_we 1 1 }  { p_ZL8threshs3_2_address1 mem_address 1 3 }  { p_ZL8threshs3_2_ce1 mem_ce 1 1 }  { p_ZL8threshs3_2_d1 mem_din 1 16 }  { p_ZL8threshs3_2_q1 mem_dout 0 16 }  { p_ZL8threshs3_2_we1 mem_we 1 1 } } }
	p_ZL8threshs3_3 { ap_memory {  { p_ZL8threshs3_3_address0 mem_address 1 3 }  { p_ZL8threshs3_3_ce0 mem_ce 1 1 }  { p_ZL8threshs3_3_d0 mem_din 1 16 }  { p_ZL8threshs3_3_q0 mem_dout 0 16 }  { p_ZL8threshs3_3_we0 mem_we 1 1 }  { p_ZL8threshs3_3_address1 mem_address 1 3 }  { p_ZL8threshs3_3_ce1 mem_ce 1 1 }  { p_ZL8threshs3_3_d1 mem_din 1 16 }  { p_ZL8threshs3_3_q1 mem_dout 0 16 }  { p_ZL8threshs3_3_we1 mem_we 1 1 } } }
	p_ZL8threshs3_4 { ap_memory {  { p_ZL8threshs3_4_address0 mem_address 1 3 }  { p_ZL8threshs3_4_ce0 mem_ce 1 1 }  { p_ZL8threshs3_4_d0 mem_din 1 16 }  { p_ZL8threshs3_4_q0 mem_dout 0 16 }  { p_ZL8threshs3_4_we0 mem_we 1 1 }  { p_ZL8threshs3_4_address1 mem_address 1 3 }  { p_ZL8threshs3_4_ce1 mem_ce 1 1 }  { p_ZL8threshs3_4_d1 mem_din 1 16 }  { p_ZL8threshs3_4_q1 mem_dout 0 16 }  { p_ZL8threshs3_4_we1 mem_we 1 1 } } }
	p_ZL8threshs3_5 { ap_memory {  { p_ZL8threshs3_5_address0 mem_address 1 3 }  { p_ZL8threshs3_5_ce0 mem_ce 1 1 }  { p_ZL8threshs3_5_d0 mem_din 1 16 }  { p_ZL8threshs3_5_q0 mem_dout 0 16 }  { p_ZL8threshs3_5_we0 mem_we 1 1 }  { p_ZL8threshs3_5_address1 mem_address 1 3 }  { p_ZL8threshs3_5_ce1 mem_ce 1 1 }  { p_ZL8threshs3_5_d1 mem_din 1 16 }  { p_ZL8threshs3_5_q1 mem_dout 0 16 }  { p_ZL8threshs3_5_we1 mem_we 1 1 } } }
	p_ZL8threshs3_6 { ap_memory {  { p_ZL8threshs3_6_address0 mem_address 1 3 }  { p_ZL8threshs3_6_ce0 mem_ce 1 1 }  { p_ZL8threshs3_6_d0 mem_din 1 16 }  { p_ZL8threshs3_6_q0 mem_dout 0 16 }  { p_ZL8threshs3_6_we0 mem_we 1 1 }  { p_ZL8threshs3_6_address1 mem_address 1 3 }  { p_ZL8threshs3_6_ce1 mem_ce 1 1 }  { p_ZL8threshs3_6_d1 mem_din 1 16 }  { p_ZL8threshs3_6_q1 mem_dout 0 16 }  { p_ZL8threshs3_6_we1 mem_we 1 1 } } }
	p_ZL8threshs3_7 { ap_memory {  { p_ZL8threshs3_7_address0 mem_address 1 3 }  { p_ZL8threshs3_7_ce0 mem_ce 1 1 }  { p_ZL8threshs3_7_d0 mem_din 1 16 }  { p_ZL8threshs3_7_q0 mem_dout 0 16 }  { p_ZL8threshs3_7_we0 mem_we 1 1 }  { p_ZL8threshs3_7_address1 mem_address 1 3 }  { p_ZL8threshs3_7_ce1 mem_ce 1 1 }  { p_ZL8threshs3_7_d1 mem_din 1 16 }  { p_ZL8threshs3_7_q1 mem_dout 0 16 }  { p_ZL8threshs3_7_we1 mem_we 1 1 } } }
	p_ZL8threshs3_8 { ap_memory {  { p_ZL8threshs3_8_address0 mem_address 1 3 }  { p_ZL8threshs3_8_ce0 mem_ce 1 1 }  { p_ZL8threshs3_8_d0 mem_din 1 16 }  { p_ZL8threshs3_8_q0 mem_dout 0 16 }  { p_ZL8threshs3_8_we0 mem_we 1 1 }  { p_ZL8threshs3_8_address1 mem_address 1 3 }  { p_ZL8threshs3_8_ce1 mem_ce 1 1 }  { p_ZL8threshs3_8_d1 mem_din 1 16 }  { p_ZL8threshs3_8_q1 mem_dout 0 16 }  { p_ZL8threshs3_8_we1 mem_we 1 1 } } }
	p_ZL8threshs3_9 { ap_memory {  { p_ZL8threshs3_9_address0 mem_address 1 3 }  { p_ZL8threshs3_9_ce0 mem_ce 1 1 }  { p_ZL8threshs3_9_d0 mem_din 1 16 }  { p_ZL8threshs3_9_q0 mem_dout 0 16 }  { p_ZL8threshs3_9_we0 mem_we 1 1 }  { p_ZL8threshs3_9_address1 mem_address 1 3 }  { p_ZL8threshs3_9_ce1 mem_ce 1 1 }  { p_ZL8threshs3_9_d1 mem_din 1 16 }  { p_ZL8threshs3_9_q1 mem_dout 0 16 }  { p_ZL8threshs3_9_we1 mem_we 1 1 } } }
	p_ZL8threshs3_10 { ap_memory {  { p_ZL8threshs3_10_address0 mem_address 1 3 }  { p_ZL8threshs3_10_ce0 mem_ce 1 1 }  { p_ZL8threshs3_10_d0 mem_din 1 16 }  { p_ZL8threshs3_10_q0 mem_dout 0 16 }  { p_ZL8threshs3_10_we0 mem_we 1 1 }  { p_ZL8threshs3_10_address1 mem_address 1 3 }  { p_ZL8threshs3_10_ce1 mem_ce 1 1 }  { p_ZL8threshs3_10_d1 mem_din 1 16 }  { p_ZL8threshs3_10_q1 mem_dout 0 16 }  { p_ZL8threshs3_10_we1 mem_we 1 1 } } }
	p_ZL8threshs3_11 { ap_memory {  { p_ZL8threshs3_11_address0 mem_address 1 3 }  { p_ZL8threshs3_11_ce0 mem_ce 1 1 }  { p_ZL8threshs3_11_d0 mem_din 1 16 }  { p_ZL8threshs3_11_q0 mem_dout 0 16 }  { p_ZL8threshs3_11_we0 mem_we 1 1 }  { p_ZL8threshs3_11_address1 mem_address 1 3 }  { p_ZL8threshs3_11_ce1 mem_ce 1 1 }  { p_ZL8threshs3_11_d1 mem_din 1 16 }  { p_ZL8threshs3_11_q1 mem_dout 0 16 }  { p_ZL8threshs3_11_we1 mem_we 1 1 } } }
	p_ZL8threshs3_12 { ap_memory {  { p_ZL8threshs3_12_address0 mem_address 1 3 }  { p_ZL8threshs3_12_ce0 mem_ce 1 1 }  { p_ZL8threshs3_12_d0 mem_din 1 16 }  { p_ZL8threshs3_12_q0 mem_dout 0 16 }  { p_ZL8threshs3_12_we0 mem_we 1 1 }  { p_ZL8threshs3_12_address1 mem_address 1 3 }  { p_ZL8threshs3_12_ce1 mem_ce 1 1 }  { p_ZL8threshs3_12_d1 mem_din 1 16 }  { p_ZL8threshs3_12_q1 mem_dout 0 16 }  { p_ZL8threshs3_12_we1 mem_we 1 1 } } }
	p_ZL8threshs3_13 { ap_memory {  { p_ZL8threshs3_13_address0 mem_address 1 3 }  { p_ZL8threshs3_13_ce0 mem_ce 1 1 }  { p_ZL8threshs3_13_d0 mem_din 1 16 }  { p_ZL8threshs3_13_q0 mem_dout 0 16 }  { p_ZL8threshs3_13_we0 mem_we 1 1 }  { p_ZL8threshs3_13_address1 mem_address 1 3 }  { p_ZL8threshs3_13_ce1 mem_ce 1 1 }  { p_ZL8threshs3_13_d1 mem_din 1 16 }  { p_ZL8threshs3_13_q1 mem_dout 0 16 }  { p_ZL8threshs3_13_we1 mem_we 1 1 } } }
	p_ZL8threshs3_14 { ap_memory {  { p_ZL8threshs3_14_address0 mem_address 1 3 }  { p_ZL8threshs3_14_ce0 mem_ce 1 1 }  { p_ZL8threshs3_14_d0 mem_din 1 16 }  { p_ZL8threshs3_14_q0 mem_dout 0 16 }  { p_ZL8threshs3_14_we0 mem_we 1 1 }  { p_ZL8threshs3_14_address1 mem_address 1 3 }  { p_ZL8threshs3_14_ce1 mem_ce 1 1 }  { p_ZL8threshs3_14_d1 mem_din 1 16 }  { p_ZL8threshs3_14_q1 mem_dout 0 16 }  { p_ZL8threshs3_14_we1 mem_we 1 1 } } }
	p_ZL8threshs3_15 { ap_memory {  { p_ZL8threshs3_15_address0 mem_address 1 3 }  { p_ZL8threshs3_15_ce0 mem_ce 1 1 }  { p_ZL8threshs3_15_d0 mem_din 1 16 }  { p_ZL8threshs3_15_q0 mem_dout 0 16 }  { p_ZL8threshs3_15_we0 mem_we 1 1 }  { p_ZL8threshs3_15_address1 mem_address 1 3 }  { p_ZL8threshs3_15_ce1 mem_ce 1 1 }  { p_ZL8threshs3_15_d1 mem_din 1 16 }  { p_ZL8threshs3_15_q1 mem_dout 0 16 }  { p_ZL8threshs3_15_we1 mem_we 1 1 } } }
	p_ZL8weights4_0 { ap_memory {  { p_ZL8weights4_0_address0 mem_address 1 12 }  { p_ZL8weights4_0_ce0 mem_ce 1 1 }  { p_ZL8weights4_0_d0 mem_din 1 32 }  { p_ZL8weights4_0_q0 mem_dout 0 32 }  { p_ZL8weights4_0_we0 mem_we 1 1 }  { p_ZL8weights4_0_address1 mem_address 1 12 }  { p_ZL8weights4_0_ce1 mem_ce 1 1 }  { p_ZL8weights4_0_d1 mem_din 1 32 }  { p_ZL8weights4_0_q1 mem_dout 0 32 }  { p_ZL8weights4_0_we1 mem_we 1 1 } } }
	p_ZL8weights4_1 { ap_memory {  { p_ZL8weights4_1_address0 mem_address 1 12 }  { p_ZL8weights4_1_ce0 mem_ce 1 1 }  { p_ZL8weights4_1_d0 mem_din 1 32 }  { p_ZL8weights4_1_q0 mem_dout 0 32 }  { p_ZL8weights4_1_we0 mem_we 1 1 }  { p_ZL8weights4_1_address1 mem_address 1 12 }  { p_ZL8weights4_1_ce1 mem_ce 1 1 }  { p_ZL8weights4_1_d1 mem_din 1 32 }  { p_ZL8weights4_1_q1 mem_dout 0 32 }  { p_ZL8weights4_1_we1 mem_we 1 1 } } }
	p_ZL8weights4_2 { ap_memory {  { p_ZL8weights4_2_address0 mem_address 1 12 }  { p_ZL8weights4_2_ce0 mem_ce 1 1 }  { p_ZL8weights4_2_d0 mem_din 1 32 }  { p_ZL8weights4_2_q0 mem_dout 0 32 }  { p_ZL8weights4_2_we0 mem_we 1 1 }  { p_ZL8weights4_2_address1 mem_address 1 12 }  { p_ZL8weights4_2_ce1 mem_ce 1 1 }  { p_ZL8weights4_2_d1 mem_din 1 32 }  { p_ZL8weights4_2_q1 mem_dout 0 32 }  { p_ZL8weights4_2_we1 mem_we 1 1 } } }
	p_ZL8weights4_3 { ap_memory {  { p_ZL8weights4_3_address0 mem_address 1 12 }  { p_ZL8weights4_3_ce0 mem_ce 1 1 }  { p_ZL8weights4_3_d0 mem_din 1 32 }  { p_ZL8weights4_3_q0 mem_dout 0 32 }  { p_ZL8weights4_3_we0 mem_we 1 1 }  { p_ZL8weights4_3_address1 mem_address 1 12 }  { p_ZL8weights4_3_ce1 mem_ce 1 1 }  { p_ZL8weights4_3_d1 mem_din 1 32 }  { p_ZL8weights4_3_q1 mem_dout 0 32 }  { p_ZL8weights4_3_we1 mem_we 1 1 } } }
	p_ZL8threshs4_0 { ap_memory {  { p_ZL8threshs4_0_address0 mem_address 1 6 }  { p_ZL8threshs4_0_ce0 mem_ce 1 1 }  { p_ZL8threshs4_0_d0 mem_din 1 16 }  { p_ZL8threshs4_0_q0 mem_dout 0 16 }  { p_ZL8threshs4_0_we0 mem_we 1 1 }  { p_ZL8threshs4_0_address1 mem_address 1 6 }  { p_ZL8threshs4_0_ce1 mem_ce 1 1 }  { p_ZL8threshs4_0_d1 mem_din 1 16 }  { p_ZL8threshs4_0_q1 mem_dout 0 16 }  { p_ZL8threshs4_0_we1 mem_we 1 1 } } }
	p_ZL8threshs4_1 { ap_memory {  { p_ZL8threshs4_1_address0 mem_address 1 6 }  { p_ZL8threshs4_1_ce0 mem_ce 1 1 }  { p_ZL8threshs4_1_d0 mem_din 1 16 }  { p_ZL8threshs4_1_q0 mem_dout 0 16 }  { p_ZL8threshs4_1_we0 mem_we 1 1 }  { p_ZL8threshs4_1_address1 mem_address 1 6 }  { p_ZL8threshs4_1_ce1 mem_ce 1 1 }  { p_ZL8threshs4_1_d1 mem_din 1 16 }  { p_ZL8threshs4_1_q1 mem_dout 0 16 }  { p_ZL8threshs4_1_we1 mem_we 1 1 } } }
	p_ZL8threshs4_2 { ap_memory {  { p_ZL8threshs4_2_address0 mem_address 1 6 }  { p_ZL8threshs4_2_ce0 mem_ce 1 1 }  { p_ZL8threshs4_2_d0 mem_din 1 16 }  { p_ZL8threshs4_2_q0 mem_dout 0 16 }  { p_ZL8threshs4_2_we0 mem_we 1 1 }  { p_ZL8threshs4_2_address1 mem_address 1 6 }  { p_ZL8threshs4_2_ce1 mem_ce 1 1 }  { p_ZL8threshs4_2_d1 mem_din 1 16 }  { p_ZL8threshs4_2_q1 mem_dout 0 16 }  { p_ZL8threshs4_2_we1 mem_we 1 1 } } }
	p_ZL8threshs4_3 { ap_memory {  { p_ZL8threshs4_3_address0 mem_address 1 6 }  { p_ZL8threshs4_3_ce0 mem_ce 1 1 }  { p_ZL8threshs4_3_d0 mem_din 1 16 }  { p_ZL8threshs4_3_q0 mem_dout 0 16 }  { p_ZL8threshs4_3_we0 mem_we 1 1 }  { p_ZL8threshs4_3_address1 mem_address 1 6 }  { p_ZL8threshs4_3_ce1 mem_ce 1 1 }  { p_ZL8threshs4_3_d1 mem_din 1 16 }  { p_ZL8threshs4_3_q1 mem_dout 0 16 }  { p_ZL8threshs4_3_we1 mem_we 1 1 } } }
	weights5 { ap_memory {  { weights5_address0 mem_address 1 15 }  { weights5_ce0 mem_ce 1 1 }  { weights5_d0 mem_din 1 32 }  { weights5_q0 mem_dout 0 32 }  { weights5_we0 mem_we 1 1 }  { weights5_address1 mem_address 1 15 }  { weights5_ce1 mem_ce 1 1 }  { weights5_d1 mem_din 1 32 }  { weights5_q1 mem_dout 0 32 }  { weights5_we1 mem_we 1 1 } } }
	threshs5 { ap_memory {  { threshs5_address0 mem_address 1 8 }  { threshs5_ce0 mem_ce 1 1 }  { threshs5_d0 mem_din 1 16 }  { threshs5_q0 mem_dout 0 16 }  { threshs5_we0 mem_we 1 1 }  { threshs5_address1 mem_address 1 8 }  { threshs5_ce1 mem_ce 1 1 }  { threshs5_d1 mem_din 1 16 }  { threshs5_q1 mem_dout 0 16 }  { threshs5_we1 mem_we 1 1 } } }
	weights6 { ap_memory {  { weights6_address0 mem_address 1 15 }  { weights6_ce0 mem_ce 1 1 }  { weights6_d0 mem_din 1 4 }  { weights6_q0 mem_dout 0 4 }  { weights6_we0 mem_we 1 1 }  { weights6_address1 mem_address 1 15 }  { weights6_ce1 mem_ce 1 1 }  { weights6_d1 mem_din 1 4 }  { weights6_q1 mem_dout 0 4 }  { weights6_we1 mem_we 1 1 } } }
	threshs6 { ap_memory {  { threshs6_address0 mem_address 1 9 }  { threshs6_ce0 mem_ce 1 1 }  { threshs6_d0 mem_din 1 16 }  { threshs6_q0 mem_dout 0 16 }  { threshs6_we0 mem_we 1 1 }  { threshs6_address1 mem_address 1 9 }  { threshs6_ce1 mem_ce 1 1 }  { threshs6_d1 mem_din 1 16 }  { threshs6_q1 mem_dout 0 16 }  { threshs6_we1 mem_we 1 1 } } }
	weights7 { ap_memory {  { weights7_address0 mem_address 1 15 }  { weights7_ce0 mem_ce 1 1 }  { weights7_d0 mem_din 1 8 }  { weights7_q0 mem_dout 0 8 }  { weights7_we0 mem_we 1 1 }  { weights7_address1 mem_address 1 15 }  { weights7_ce1 mem_ce 1 1 }  { weights7_d1 mem_din 1 8 }  { weights7_q1 mem_dout 0 8 }  { weights7_we1 mem_we 1 1 } } }
	threshs7 { ap_memory {  { threshs7_address0 mem_address 1 9 }  { threshs7_ce0 mem_ce 1 1 }  { threshs7_d0 mem_din 1 16 }  { threshs7_q0 mem_dout 0 16 }  { threshs7_we0 mem_we 1 1 }  { threshs7_address1 mem_address 1 9 }  { threshs7_ce1 mem_ce 1 1 }  { threshs7_d1 mem_din 1 16 }  { threshs7_q1 mem_dout 0 16 }  { threshs7_we1 mem_we 1 1 } } }
	p_ZL8weights8_0 { ap_memory {  { p_ZL8weights8_0_address0 mem_address 1 13 }  { p_ZL8weights8_0_ce0 mem_ce 1 1 }  { p_ZL8weights8_0_d0 mem_din 1 1 }  { p_ZL8weights8_0_q0 mem_dout 0 1 }  { p_ZL8weights8_0_we0 mem_we 1 1 }  { p_ZL8weights8_0_address1 mem_address 1 13 }  { p_ZL8weights8_0_ce1 mem_ce 1 1 }  { p_ZL8weights8_0_d1 mem_din 1 1 }  { p_ZL8weights8_0_q1 mem_dout 0 1 }  { p_ZL8weights8_0_we1 mem_we 1 1 } } }
	p_ZL8weights8_1 { ap_memory {  { p_ZL8weights8_1_address0 mem_address 1 13 }  { p_ZL8weights8_1_ce0 mem_ce 1 1 }  { p_ZL8weights8_1_d0 mem_din 1 1 }  { p_ZL8weights8_1_q0 mem_dout 0 1 }  { p_ZL8weights8_1_we0 mem_we 1 1 }  { p_ZL8weights8_1_address1 mem_address 1 13 }  { p_ZL8weights8_1_ce1 mem_ce 1 1 }  { p_ZL8weights8_1_d1 mem_din 1 1 }  { p_ZL8weights8_1_q1 mem_dout 0 1 }  { p_ZL8weights8_1_we1 mem_we 1 1 } } }
	p_ZL8weights8_2 { ap_memory {  { p_ZL8weights8_2_address0 mem_address 1 13 }  { p_ZL8weights8_2_ce0 mem_ce 1 1 }  { p_ZL8weights8_2_d0 mem_din 1 1 }  { p_ZL8weights8_2_q0 mem_dout 0 1 }  { p_ZL8weights8_2_we0 mem_we 1 1 }  { p_ZL8weights8_2_address1 mem_address 1 13 }  { p_ZL8weights8_2_ce1 mem_ce 1 1 }  { p_ZL8weights8_2_d1 mem_din 1 1 }  { p_ZL8weights8_2_q1 mem_dout 0 1 }  { p_ZL8weights8_2_we1 mem_we 1 1 } } }
	p_ZL8weights8_3 { ap_memory {  { p_ZL8weights8_3_address0 mem_address 1 13 }  { p_ZL8weights8_3_ce0 mem_ce 1 1 }  { p_ZL8weights8_3_d0 mem_din 1 1 }  { p_ZL8weights8_3_q0 mem_dout 0 1 }  { p_ZL8weights8_3_we0 mem_we 1 1 }  { p_ZL8weights8_3_address1 mem_address 1 13 }  { p_ZL8weights8_3_ce1 mem_ce 1 1 }  { p_ZL8weights8_3_d1 mem_din 1 1 }  { p_ZL8weights8_3_q1 mem_dout 0 1 }  { p_ZL8weights8_3_we1 mem_we 1 1 } } }
}
