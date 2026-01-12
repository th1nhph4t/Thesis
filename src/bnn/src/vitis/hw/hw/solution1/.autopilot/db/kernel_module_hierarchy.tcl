set ModuleHierarchy {[{
"Name" : "BlackBoxJam","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_DoCompute_fu_2926","ID" : "1","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "Mem2Stream_Batch_64u_3072u_U0","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_166_1","ID" : "3","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_16_fu_108","ID" : "4","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_140_1","ID" : "5","Type" : "pipeline"},]},
			{"Name" : "grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_1_fu_117","ID" : "6","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_140_1","ID" : "7","Type" : "pipeline"},]},]},]},
		{"Name" : "DoCompute_Block_entry5993_proc_U0","ID" : "8","Type" : "sequential"},
		{"Name" : "DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0","ID" : "9","Type" : "sequential"},
		{"Name" : "StreamingDataWidthConverter_Batch_64u_192u_384u_U0","ID" : "10","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3_fu_54","ID" : "11","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_300_3","ID" : "12","Type" : "pipeline"},]},]},
		{"Name" : "mul_ln121_1_cast_loc_channel_U","ID" : "13","Type" : "sequential"},
		{"Name" : "StreamingDataWidthConverter_Batch_192u_24u_128u_U0","ID" : "14","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_StreamingDataWidthConverter_Batch_192u_24u_128u_Pipeline_VITIS_LOOP_268_1_fu_52","ID" : "15","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_268_1","ID" : "16","Type" : "pipeline"},]},]},
		{"Name" : "ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0","ID" : "17","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58","ID" : "18","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_104_1_VITIS_LOOP_105_2","ID" : "19","Type" : "pipeline"},]},]},
		{"Name" : "Matrix_Vector_Activate_Batch_4_U0","ID" : "20","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100","ID" : "21","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_122_1","ID" : "22","Type" : "pipeline"},]},]},
		{"Name" : "DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0","ID" : "23","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc26_Pipeline_VITIS_LOOP_300_3_fu_52","ID" : "24","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_300_3","ID" : "25","Type" : "pipeline"},]},]},
		{"Name" : "DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0","ID" : "26","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc27_Pipeline_VITIS_LOOP_268_1_fu_52","ID" : "27","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_268_1","ID" : "28","Type" : "pipeline"},]},]},
		{"Name" : "ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0","ID" : "29","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52","ID" : "30","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_104_1_VITIS_LOOP_105_2","ID" : "31","Type" : "pipeline"},]},]},
		{"Name" : "Matrix_Vector_Activate_Batch_U0","ID" : "32","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164","ID" : "33","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_122_1","ID" : "34","Type" : "pipeline"},]},]},
		{"Name" : "DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0","ID" : "35","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3_fu_52","ID" : "36","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_300_3","ID" : "37","Type" : "pipeline"},]},]},
		{"Name" : "StreamingMaxPool_Batch_28u_2u_64u_U0","ID" : "38","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_109_1","ID" : "39","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_73_2","ID" : "40","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4_fu_240","ID" : "41","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_74_3_VITIS_LOOP_75_4","ID" : "42","Type" : "pipeline"},]},
				{"Name" : "grp_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_85_6_fu_247","ID" : "43","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_85_6","ID" : "44","Type" : "pipeline"},]},]},]},]},
		{"Name" : "DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0","ID" : "45","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc329_Pipeline_VITIS_LOOP_268_1_fu_52","ID" : "46","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_268_1","ID" : "47","Type" : "pipeline"},]},]},
		{"Name" : "ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0","ID" : "48","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52","ID" : "49","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_104_1_VITIS_LOOP_105_2","ID" : "50","Type" : "pipeline"},]},]},
		{"Name" : "DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0","ID" : "51","Type" : "sequential"},
		{"Name" : "Matrix_Vector_Activate_Batch_1_U0","ID" : "52","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100","ID" : "53","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_122_1","ID" : "54","Type" : "pipeline"},]},]},
		{"Name" : "DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0","ID" : "55","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc4_Pipeline_VITIS_LOOP_300_3_fu_62","ID" : "56","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_300_3","ID" : "57","Type" : "pipeline"},]},]},
		{"Name" : "DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0","ID" : "58","Type" : "sequential"},
		{"Name" : "DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0","ID" : "59","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc6_Pipeline_VITIS_LOOP_268_1_fu_50","ID" : "60","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_268_1","ID" : "61","Type" : "pipeline"},]},]},
		{"Name" : "ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0","ID" : "62","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52","ID" : "63","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_104_1_VITIS_LOOP_105_2","ID" : "64","Type" : "pipeline"},]},]},
		{"Name" : "Matrix_Vector_Activate_Batch_8_U0","ID" : "65","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100","ID" : "66","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_122_1","ID" : "67","Type" : "pipeline"},]},]},
		{"Name" : "DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0","ID" : "68","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc830_Pipeline_VITIS_LOOP_300_3_fu_52","ID" : "69","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_300_3","ID" : "70","Type" : "pipeline"},]},]},
		{"Name" : "StreamingMaxPool_Batch_10u_2u_128u_U0","ID" : "71","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_109_1","ID" : "72","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_73_2","ID" : "73","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4_fu_152","ID" : "74","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_74_3_VITIS_LOOP_75_4","ID" : "75","Type" : "pipeline"},]},
				{"Name" : "grp_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_85_6_fu_159","ID" : "76","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_85_6","ID" : "77","Type" : "pipeline"},]},]},]},]},
		{"Name" : "DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0","ID" : "78","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_268_1","ID" : "79","Type" : "pipeline"},]},
		{"Name" : "ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0","ID" : "80","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58","ID" : "81","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_104_1_VITIS_LOOP_105_2","ID" : "82","Type" : "pipeline"},]},]},
		{"Name" : "DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0","ID" : "83","Type" : "sequential"},
		{"Name" : "Matrix_Vector_Activate_Batch_7_U0","ID" : "84","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52","ID" : "85","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_122_1","ID" : "86","Type" : "pipeline"},]},]},
		{"Name" : "DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0","ID" : "87","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc11_Pipeline_VITIS_LOOP_300_3_fu_38","ID" : "88","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_300_3","ID" : "89","Type" : "pipeline"},]},]},
		{"Name" : "DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0","ID" : "90","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc13_Pipeline_VITIS_LOOP_268_1_fu_58","ID" : "91","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_268_1","ID" : "92","Type" : "pipeline"},]},]},
		{"Name" : "ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0","ID" : "93","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58","ID" : "94","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_104_1_VITIS_LOOP_105_2","ID" : "95","Type" : "pipeline"},]},]},
		{"Name" : "Matrix_Vector_Activate_Batch_6_U0","ID" : "96","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58","ID" : "97","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_122_1","ID" : "98","Type" : "pipeline"},]},]},
		{"Name" : "DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0","ID" : "99","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_Pipeline_VITIS_LOOP_300_3_fu_52","ID" : "100","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_300_3","ID" : "101","Type" : "pipeline"},]},]},
		{"Name" : "DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0","ID" : "102","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc16_Pipeline_VITIS_LOOP_268_1_fu_50","ID" : "103","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_268_1","ID" : "104","Type" : "pipeline"},]},]},
		{"Name" : "Matrix_Vector_Activate_Batch_5_U0","ID" : "105","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56","ID" : "106","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_122_1","ID" : "107","Type" : "pipeline"},]},]},
		{"Name" : "DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0","ID" : "108","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3_fu_50","ID" : "109","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_300_3","ID" : "110","Type" : "pipeline"},]},]},
		{"Name" : "DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0","ID" : "111","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc20_Pipeline_VITIS_LOOP_268_1_fu_38","ID" : "112","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_268_1","ID" : "113","Type" : "pipeline"},]},]},
		{"Name" : "Matrix_Vector_Activate_Batch_3_U0","ID" : "114","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56","ID" : "115","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_122_1","ID" : "116","Type" : "pipeline"},]},]},
		{"Name" : "DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0","ID" : "117","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_DoCompute_Loop_VITIS_LOOP_300_3_proc22_Pipeline_VITIS_LOOP_300_3_fu_50","ID" : "118","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_300_3","ID" : "119","Type" : "pipeline"},]},]},
		{"Name" : "DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0","ID" : "120","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1_fu_38","ID" : "121","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_268_1","ID" : "122","Type" : "pipeline"},]},]},
		{"Name" : "Matrix_Vector_Activate_Batch_2_U0","ID" : "123","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60","ID" : "124","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_122_1","ID" : "125","Type" : "pipeline"},]},]},
		{"Name" : "entry_proc_U0","ID" : "126","Type" : "sequential"},
		{"Name" : "Stream2Mem_Batch_64u_128u_U0","ID" : "127","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_187_1","ID" : "128","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_15_fu_93","ID" : "129","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_153_1","ID" : "130","Type" : "pipeline"},]},
			{"Name" : "grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_1_fu_102","ID" : "131","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_153_1","ID" : "132","Type" : "pipeline"},]},]},]},]},]
}]}