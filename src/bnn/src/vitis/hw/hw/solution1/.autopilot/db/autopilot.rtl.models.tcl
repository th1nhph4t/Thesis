set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME BlackBoxJam_entry_proc}
  {SRCNAME {Mem2Stream_Batch<64u, 3072u>_Pipeline_VITIS_LOOP_140_16} MODELNAME Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_16 RTLNAME BlackBoxJam_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_16
    SUBMODULES {
      {MODELNAME BlackBoxJam_flow_control_loop_pipe_sequential_init RTLNAME BlackBoxJam_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME BlackBoxJam_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {Mem2Stream_Batch<64u, 3072u>_Pipeline_VITIS_LOOP_140_1} MODELNAME Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_1 RTLNAME BlackBoxJam_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_1}
  {SRCNAME {Mem2Stream_Batch<64u, 3072u>} MODELNAME Mem2Stream_Batch_64u_3072u_s RTLNAME BlackBoxJam_Mem2Stream_Batch_64u_3072u_s}
  {SRCNAME {StreamingDataWidthConverter_Batch<64u, 192u, 384u>_Pipeline_VITIS_LOOP_300_3} MODELNAME StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3 RTLNAME BlackBoxJam_StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3}
  {SRCNAME {StreamingDataWidthConverter_Batch<64u, 192u, 384u>} MODELNAME StreamingDataWidthConverter_Batch_64u_192u_384u_s RTLNAME BlackBoxJam_StreamingDataWidthConverter_Batch_64u_192u_384u_s}
  {SRCNAME {StreamingDataWidthConverter_Batch<192u, 24u, 128u>_Pipeline_VITIS_LOOP_268_1} MODELNAME StreamingDataWidthConverter_Batch_192u_24u_128u_Pipeline_VITIS_LOOP_268_1 RTLNAME BlackBoxJam_StreamingDataWidthConverter_Batch_192u_24u_128u_Pipeline_VITIS_LOOP_268_1}
  {SRCNAME {StreamingDataWidthConverter_Batch<192u, 24u, 128u>} MODELNAME StreamingDataWidthConverter_Batch_192u_24u_128u_s RTLNAME BlackBoxJam_StreamingDataWidthConverter_Batch_192u_24u_128u_s}
  {SRCNAME ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2.2 MODELNAME ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2 RTLNAME BlackBoxJam_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2
    SUBMODULES {
      {MODELNAME BlackBoxJam_sparsemux_9_2_24_1_1 RTLNAME BlackBoxJam_sparsemux_9_2_24_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME BlackBoxJam_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_inputBbkb RTLNAME BlackBoxJam_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_inputBbkb BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {ConvolutionInputGenerator<3u, 3u, 8u, 32u, 30u, 3u, 1u>} MODELNAME ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_s RTLNAME BlackBoxJam_ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_s}
  {SRCNAME DoCompute_Block_entry5993_proc MODELNAME DoCompute_Block_entry5993_proc RTLNAME BlackBoxJam_DoCompute_Block_entry5993_proc
    SUBMODULES {
      {MODELNAME BlackBoxJam_mul_30s_11ns_30_2_1 RTLNAME BlackBoxJam_mul_30s_11ns_30_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Matrix_Vector_Activate_Batch.4_Pipeline_VITIS_LOOP_122_1 MODELNAME Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1 RTLNAME BlackBoxJam_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1
    SUBMODULES {
      {MODELNAME BlackBoxJam_sparsemux_19_4_24_1_1 RTLNAME BlackBoxJam_sparsemux_19_4_24_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME Matrix_Vector_Activate_Batch.4 MODELNAME Matrix_Vector_Activate_Batch_4 RTLNAME BlackBoxJam_Matrix_Vector_Activate_Batch_4}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_300_3_proc26_Pipeline_VITIS_LOOP_300_3 MODELNAME DoCompute_Loop_VITIS_LOOP_300_3_proc26_Pipeline_VITIS_LOOP_300_3 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_300_3_proc26_Pipeline_VITIS_LOOP_300_3}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_300_3_proc26 MODELNAME DoCompute_Loop_VITIS_LOOP_300_3_proc26 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_300_3_proc26
    SUBMODULES {
      {MODELNAME BlackBoxJam_mul_32s_13ns_32_2_1 RTLNAME BlackBoxJam_mul_32s_13ns_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME DoCompute_Loop_VITIS_LOOP_268_1_proc27_Pipeline_VITIS_LOOP_268_1 MODELNAME DoCompute_Loop_VITIS_LOOP_268_1_proc27_Pipeline_VITIS_LOOP_268_1 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_268_1_proc27_Pipeline_VITIS_LOOP_268_1}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_268_1_proc27 MODELNAME DoCompute_Loop_VITIS_LOOP_268_1_proc27 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_268_1_proc27
    SUBMODULES {
      {MODELNAME BlackBoxJam_mul_32s_12ns_32_2_1 RTLNAME BlackBoxJam_mul_32s_12ns_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2 MODELNAME ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2 RTLNAME BlackBoxJam_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2
    SUBMODULES {
      {MODELNAME BlackBoxJam_sparsemux_9_2_32_1_1 RTLNAME BlackBoxJam_sparsemux_9_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME BlackBoxJam_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_inputBuffYi RTLNAME BlackBoxJam_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_inputBuffYi BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {ConvolutionInputGenerator<3u, 64u, 1u, 30u, 28u, 32u, 1u>} MODELNAME ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_s RTLNAME BlackBoxJam_ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_s
    SUBMODULES {
      {MODELNAME BlackBoxJam_mul_32ns_15ns_46_2_1 RTLNAME BlackBoxJam_mul_32ns_15ns_46_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME DoCompute_Block__ZN24WidthAdjustedInputStreamILj64ELj32ELj900EEC2ERN3hls6streamI MODELNAME DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj900EEC2ERN3hls6streamI RTLNAME BlackBoxJam_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj900EEC2ERN3hls6streamI}
  {SRCNAME Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1 MODELNAME Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1 RTLNAME BlackBoxJam_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1
    SUBMODULES {
      {MODELNAME BlackBoxJam_sparsemux_37_5_32_1_1 RTLNAME BlackBoxJam_sparsemux_37_5_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME Matrix_Vector_Activate_Batch MODELNAME Matrix_Vector_Activate_Batch RTLNAME BlackBoxJam_Matrix_Vector_Activate_Batch}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3 MODELNAME DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_300_3_proc228 MODELNAME DoCompute_Loop_VITIS_LOOP_300_3_proc228 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_300_3_proc228}
  {SRCNAME {StreamingMaxPool_Batch<28u, 2u, 64u>_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4} MODELNAME StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4 RTLNAME BlackBoxJam_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4}
  {SRCNAME {StreamingMaxPool_Batch<28u, 2u, 64u>_Pipeline_VITIS_LOOP_85_6} MODELNAME StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_85_6 RTLNAME BlackBoxJam_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_85_6}
  {SRCNAME {StreamingMaxPool_Batch<28u, 2u, 64u>} MODELNAME StreamingMaxPool_Batch_28u_2u_64u_s RTLNAME BlackBoxJam_StreamingMaxPool_Batch_28u_2u_64u_s
    SUBMODULES {
      {MODELNAME BlackBoxJam_StreamingMaxPool_Batch_28u_2u_64u_s_buf_RAM_AUTO_1R1W RTLNAME BlackBoxJam_StreamingMaxPool_Batch_28u_2u_64u_s_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME DoCompute_Loop_VITIS_LOOP_268_1_proc329_Pipeline_VITIS_LOOP_268_1 MODELNAME DoCompute_Loop_VITIS_LOOP_268_1_proc329_Pipeline_VITIS_LOOP_268_1 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_268_1_proc329_Pipeline_VITIS_LOOP_268_1}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_268_1_proc329 MODELNAME DoCompute_Loop_VITIS_LOOP_268_1_proc329 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_268_1_proc329
    SUBMODULES {
      {MODELNAME BlackBoxJam_mul_32s_10ns_32_2_1 RTLNAME BlackBoxJam_mul_32s_10ns_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2.1 MODELNAME ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1 RTLNAME BlackBoxJam_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1
    SUBMODULES {
      {MODELNAME BlackBoxJam_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_inputBjbC RTLNAME BlackBoxJam_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_inputBjbC BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {ConvolutionInputGenerator<3u, 64u, 1u, 14u, 12u, 32u, 1u>} MODELNAME ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_s RTLNAME BlackBoxJam_ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_s
    SUBMODULES {
      {MODELNAME BlackBoxJam_mul_32ns_13ns_44_2_1 RTLNAME BlackBoxJam_mul_32ns_13ns_44_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME DoCompute_Block__ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI MODELNAME DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI RTLNAME BlackBoxJam_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI}
  {SRCNAME Matrix_Vector_Activate_Batch.1_Pipeline_VITIS_LOOP_122_1 MODELNAME Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1 RTLNAME BlackBoxJam_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1}
  {SRCNAME Matrix_Vector_Activate_Batch.1 MODELNAME Matrix_Vector_Activate_Batch_1 RTLNAME BlackBoxJam_Matrix_Vector_Activate_Batch_1}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_300_3_proc4_Pipeline_VITIS_LOOP_300_3 MODELNAME DoCompute_Loop_VITIS_LOOP_300_3_proc4_Pipeline_VITIS_LOOP_300_3 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_300_3_proc4_Pipeline_VITIS_LOOP_300_3}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_300_3_proc4 MODELNAME DoCompute_Loop_VITIS_LOOP_300_3_proc4 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_300_3_proc4}
  {SRCNAME DoCompute_Block__ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev.exit.loop MODELNAME DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop RTLNAME BlackBoxJam_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_268_1_proc6_Pipeline_VITIS_LOOP_268_1 MODELNAME DoCompute_Loop_VITIS_LOOP_268_1_proc6_Pipeline_VITIS_LOOP_268_1 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_268_1_proc6_Pipeline_VITIS_LOOP_268_1}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_268_1_proc6 MODELNAME DoCompute_Loop_VITIS_LOOP_268_1_proc6 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_268_1_proc6}
  {SRCNAME ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2.5 MODELNAME ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5 RTLNAME BlackBoxJam_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5
    SUBMODULES {
      {MODELNAME BlackBoxJam_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_inputBncg RTLNAME BlackBoxJam_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_inputBncg BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {ConvolutionInputGenerator<3u, 128u, 1u, 12u, 10u, 32u, 1u>} MODELNAME ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_s RTLNAME BlackBoxJam_ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_s}
  {SRCNAME DoCompute_Block__ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream MODELNAME DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream RTLNAME BlackBoxJam_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream
    SUBMODULES {
      {MODELNAME BlackBoxJam_mul_32s_8ns_32_2_1 RTLNAME BlackBoxJam_mul_32s_8ns_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Matrix_Vector_Activate_Batch.8_Pipeline_VITIS_LOOP_122_1 MODELNAME Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1 RTLNAME BlackBoxJam_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1
    SUBMODULES {
      {MODELNAME BlackBoxJam_sparsemux_73_6_32_1_1 RTLNAME BlackBoxJam_sparsemux_73_6_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME Matrix_Vector_Activate_Batch.8 MODELNAME Matrix_Vector_Activate_Batch_8 RTLNAME BlackBoxJam_Matrix_Vector_Activate_Batch_8}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_300_3_proc830_Pipeline_VITIS_LOOP_300_3 MODELNAME DoCompute_Loop_VITIS_LOOP_300_3_proc830_Pipeline_VITIS_LOOP_300_3 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_300_3_proc830_Pipeline_VITIS_LOOP_300_3}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_300_3_proc830 MODELNAME DoCompute_Loop_VITIS_LOOP_300_3_proc830 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_300_3_proc830
    SUBMODULES {
      {MODELNAME BlackBoxJam_mul_32s_11ns_32_2_1 RTLNAME BlackBoxJam_mul_32s_11ns_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {StreamingMaxPool_Batch<10u, 2u, 128u>_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4} MODELNAME StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4 RTLNAME BlackBoxJam_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4}
  {SRCNAME {StreamingMaxPool_Batch<10u, 2u, 128u>_Pipeline_VITIS_LOOP_85_6} MODELNAME StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_85_6 RTLNAME BlackBoxJam_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_85_6}
  {SRCNAME {StreamingMaxPool_Batch<10u, 2u, 128u>} MODELNAME StreamingMaxPool_Batch_10u_2u_128u_s RTLNAME BlackBoxJam_StreamingMaxPool_Batch_10u_2u_128u_s
    SUBMODULES {
      {MODELNAME BlackBoxJam_StreamingMaxPool_Batch_10u_2u_128u_s_buf_RAM_AUTO_1R1W RTLNAME BlackBoxJam_StreamingMaxPool_Batch_10u_2u_128u_s_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME DoCompute_Loop_VITIS_LOOP_268_1_proc9 MODELNAME DoCompute_Loop_VITIS_LOOP_268_1_proc9 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_268_1_proc9
    SUBMODULES {
      {MODELNAME BlackBoxJam_flow_control_loop_pipe RTLNAME BlackBoxJam_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME BlackBoxJam_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2.4 MODELNAME ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4 RTLNAME BlackBoxJam_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4
    SUBMODULES {
      {MODELNAME BlackBoxJam_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_inputBrcU RTLNAME BlackBoxJam_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_inputBrcU BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {ConvolutionInputGenerator<3u, 128u, 1u, 5u, 3u, 32u, 1u>} MODELNAME ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_s RTLNAME BlackBoxJam_ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_s}
  {SRCNAME DoCompute_Block__ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI MODELNAME DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI RTLNAME BlackBoxJam_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI}
  {SRCNAME Matrix_Vector_Activate_Batch.7_Pipeline_VITIS_LOOP_122_1 MODELNAME Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1 RTLNAME BlackBoxJam_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1}
  {SRCNAME Matrix_Vector_Activate_Batch.7 MODELNAME Matrix_Vector_Activate_Batch_7 RTLNAME BlackBoxJam_Matrix_Vector_Activate_Batch_7}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_300_3_proc11_Pipeline_VITIS_LOOP_300_3 MODELNAME DoCompute_Loop_VITIS_LOOP_300_3_proc11_Pipeline_VITIS_LOOP_300_3 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_300_3_proc11_Pipeline_VITIS_LOOP_300_3}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_300_3_proc11 MODELNAME DoCompute_Loop_VITIS_LOOP_300_3_proc11 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_300_3_proc11}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_268_1_proc13_Pipeline_VITIS_LOOP_268_1 MODELNAME DoCompute_Loop_VITIS_LOOP_268_1_proc13_Pipeline_VITIS_LOOP_268_1 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_268_1_proc13_Pipeline_VITIS_LOOP_268_1}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_268_1_proc13 MODELNAME DoCompute_Loop_VITIS_LOOP_268_1_proc13 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_268_1_proc13}
  {SRCNAME ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2.3 MODELNAME ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3 RTLNAME BlackBoxJam_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3
    SUBMODULES {
      {MODELNAME BlackBoxJam_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_inputBvdy RTLNAME BlackBoxJam_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_inputBvdy BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {ConvolutionInputGenerator<3u, 256u, 1u, 3u, 1u, 32u, 1u>} MODELNAME ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_s RTLNAME BlackBoxJam_ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_s}
  {SRCNAME Matrix_Vector_Activate_Batch.6_Pipeline_VITIS_LOOP_122_1 MODELNAME Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1 RTLNAME BlackBoxJam_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1
    SUBMODULES {
      {MODELNAME BlackBoxJam_sparsemux_145_7_32_1_1 RTLNAME BlackBoxJam_sparsemux_145_7_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME Matrix_Vector_Activate_Batch.6 MODELNAME Matrix_Vector_Activate_Batch_6 RTLNAME BlackBoxJam_Matrix_Vector_Activate_Batch_6}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_300_3_proc1531_Pipeline_VITIS_LOOP_300_3 MODELNAME DoCompute_Loop_VITIS_LOOP_300_3_proc1531_Pipeline_VITIS_LOOP_300_3 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_Pipeline_VITIS_LOOP_300_3}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_300_3_proc1531 MODELNAME DoCompute_Loop_VITIS_LOOP_300_3_proc1531 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_300_3_proc1531}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_268_1_proc16_Pipeline_VITIS_LOOP_268_1 MODELNAME DoCompute_Loop_VITIS_LOOP_268_1_proc16_Pipeline_VITIS_LOOP_268_1 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_268_1_proc16_Pipeline_VITIS_LOOP_268_1}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_268_1_proc16 MODELNAME DoCompute_Loop_VITIS_LOOP_268_1_proc16 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_268_1_proc16}
  {SRCNAME Matrix_Vector_Activate_Batch.5_Pipeline_VITIS_LOOP_122_1 MODELNAME Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1 RTLNAME BlackBoxJam_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1
    SUBMODULES {
      {MODELNAME BlackBoxJam_sparsemux_129_6_4_1_1 RTLNAME BlackBoxJam_sparsemux_129_6_4_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME Matrix_Vector_Activate_Batch.5 MODELNAME Matrix_Vector_Activate_Batch_5 RTLNAME BlackBoxJam_Matrix_Vector_Activate_Batch_5}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3 MODELNAME DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_300_3_proc18 MODELNAME DoCompute_Loop_VITIS_LOOP_300_3_proc18 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_300_3_proc18}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_268_1_proc20_Pipeline_VITIS_LOOP_268_1 MODELNAME DoCompute_Loop_VITIS_LOOP_268_1_proc20_Pipeline_VITIS_LOOP_268_1 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_268_1_proc20_Pipeline_VITIS_LOOP_268_1}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_268_1_proc20 MODELNAME DoCompute_Loop_VITIS_LOOP_268_1_proc20 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_268_1_proc20}
  {SRCNAME Matrix_Vector_Activate_Batch.3_Pipeline_VITIS_LOOP_122_1 MODELNAME Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1 RTLNAME BlackBoxJam_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1
    SUBMODULES {
      {MODELNAME BlackBoxJam_sparsemux_129_6_8_1_1 RTLNAME BlackBoxJam_sparsemux_129_6_8_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME Matrix_Vector_Activate_Batch.3 MODELNAME Matrix_Vector_Activate_Batch_3 RTLNAME BlackBoxJam_Matrix_Vector_Activate_Batch_3}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_300_3_proc22_Pipeline_VITIS_LOOP_300_3 MODELNAME DoCompute_Loop_VITIS_LOOP_300_3_proc22_Pipeline_VITIS_LOOP_300_3 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_300_3_proc22_Pipeline_VITIS_LOOP_300_3}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_300_3_proc22 MODELNAME DoCompute_Loop_VITIS_LOOP_300_3_proc22 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_300_3_proc22}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1 MODELNAME DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1}
  {SRCNAME DoCompute_Loop_VITIS_LOOP_268_1_proc24 MODELNAME DoCompute_Loop_VITIS_LOOP_268_1_proc24 RTLNAME BlackBoxJam_DoCompute_Loop_VITIS_LOOP_268_1_proc24}
  {SRCNAME Matrix_Vector_Activate_Batch.2_Pipeline_VITIS_LOOP_122_1 MODELNAME Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1 RTLNAME BlackBoxJam_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1
    SUBMODULES {
      {MODELNAME BlackBoxJam_sparsemux_1025_9_1_1_1 RTLNAME BlackBoxJam_sparsemux_1025_9_1_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME Matrix_Vector_Activate_Batch.2 MODELNAME Matrix_Vector_Activate_Batch_2 RTLNAME BlackBoxJam_Matrix_Vector_Activate_Batch_2}
  {SRCNAME {Stream2Mem_Batch<64u, 128u>_Pipeline_VITIS_LOOP_153_15} MODELNAME Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_15 RTLNAME BlackBoxJam_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_15}
  {SRCNAME {Stream2Mem_Batch<64u, 128u>_Pipeline_VITIS_LOOP_153_1} MODELNAME Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_1 RTLNAME BlackBoxJam_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_1}
  {SRCNAME {Stream2Mem_Batch<64u, 128u>} MODELNAME Stream2Mem_Batch_64u_128u_s RTLNAME BlackBoxJam_Stream2Mem_Batch_64u_128u_s}
  {SRCNAME DoCompute MODELNAME DoCompute RTLNAME BlackBoxJam_DoCompute
    SUBMODULES {
      {MODELNAME BlackBoxJam_fifo_w64_d38_A RTLNAME BlackBoxJam_fifo_w64_d38_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME out_c_U}
      {MODELNAME BlackBoxJam_fifo_w64_d2_S RTLNAME BlackBoxJam_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME inter0_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c160_U}
      {MODELNAME BlackBoxJam_fifo_w192_d2_S RTLNAME BlackBoxJam_fifo_w192_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME inter0_1_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c159_U}
      {MODELNAME BlackBoxJam_fifo_w24_d128_A RTLNAME BlackBoxJam_fifo_w24_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME inter0_2_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c158_U}
      {MODELNAME BlackBoxJam_fifo_w24_d2_S RTLNAME BlackBoxJam_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convInp_5_U}
      {MODELNAME BlackBoxJam_fifo_w32_d3_S RTLNAME BlackBoxJam_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c157_U}
      {MODELNAME BlackBoxJam_fifo_w30_d2_S RTLNAME BlackBoxJam_fifo_w30_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_loc_channel_U}
      {MODELNAME BlackBoxJam_fifo_w30_d5_S RTLNAME BlackBoxJam_fifo_w30_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mul_ln121_cast_loc_channel_U}
      {MODELNAME BlackBoxJam_fifo_w16_d2_S RTLNAME BlackBoxJam_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mvOut_m_buffer_5_U}
      {MODELNAME BlackBoxJam_fifo_w64_d128_A RTLNAME BlackBoxJam_fifo_w64_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME inter1_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c156_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME wa_in_7_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c155_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convInp_4_U}
      {MODELNAME BlackBoxJam_fifo_w32_d3_S RTLNAME BlackBoxJam_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c154_U}
      {MODELNAME BlackBoxJam_fifo_w30_d8_S RTLNAME BlackBoxJam_fifo_w30_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mul_ln121_1_cast_loc_channel_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mvOut_m_buffer_4_U}
      {MODELNAME BlackBoxJam_fifo_w64_d2_S RTLNAME BlackBoxJam_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME inter2_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c153_U}
      {MODELNAME BlackBoxJam_fifo_w64_d128_A RTLNAME BlackBoxJam_fifo_w64_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME inter3_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c152_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME wa_in_6_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c151_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convInp_3_U}
      {MODELNAME BlackBoxJam_fifo_w32_d3_S RTLNAME BlackBoxJam_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c150_U}
      {MODELNAME BlackBoxJam_fifo_w32_d15_S RTLNAME BlackBoxJam_fifo_w32_d15_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME shl_ln121_loc_channel_U}
      {MODELNAME BlackBoxJam_fifo_w28_d14_S RTLNAME BlackBoxJam_fifo_w28_d14_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME add_ln121_loc_channel_U}
      {MODELNAME BlackBoxJam_fifo_w16_d2_S RTLNAME BlackBoxJam_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mvOut_m_buffer_3_U}
      {MODELNAME BlackBoxJam_fifo_w128_d128_A RTLNAME BlackBoxJam_fifo_w128_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME inter4_U}
      {MODELNAME BlackBoxJam_fifo_w32_d3_S RTLNAME BlackBoxJam_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c149_U}
      {MODELNAME BlackBoxJam_fifo_w32_d16_S RTLNAME BlackBoxJam_fifo_w32_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME totalIters_11_loc_c135_channel_U}
      {MODELNAME BlackBoxJam_fifo_w32_d25_S RTLNAME BlackBoxJam_fifo_w32_d25_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME totalIters_10_loc_c137_channel_U}
      {MODELNAME BlackBoxJam_fifo_w32_d31_S RTLNAME BlackBoxJam_fifo_w32_d31_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME totalIters_16_loc_c139_channel_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME wa_in_5_U}
      {MODELNAME BlackBoxJam_fifo_w32_d9_S RTLNAME BlackBoxJam_fifo_w32_d9_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME totalIters_11_loc_c_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convInp_2_U}
      {MODELNAME BlackBoxJam_fifo_w32_d3_S RTLNAME BlackBoxJam_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c148_U}
      {MODELNAME BlackBoxJam_fifo_w32_d21_S RTLNAME BlackBoxJam_fifo_w32_d21_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME totalIters_13_loc_channel_U}
      {MODELNAME BlackBoxJam_fifo_w27_d18_S RTLNAME BlackBoxJam_fifo_w27_d18_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME totalIters_13_cast_loc_channel_U}
      {MODELNAME BlackBoxJam_fifo_w16_d2_S RTLNAME BlackBoxJam_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mvOut_m_buffer_2_U}
      {MODELNAME BlackBoxJam_fifo_w128_d2_S RTLNAME BlackBoxJam_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME inter5_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c147_U}
      {MODELNAME BlackBoxJam_fifo_w128_d81_A RTLNAME BlackBoxJam_fifo_w128_d81_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME inter6_U}
      {MODELNAME BlackBoxJam_fifo_w32_d3_S RTLNAME BlackBoxJam_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c146_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME wa_in_4_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convInp_1_U}
      {MODELNAME BlackBoxJam_fifo_w32_d5_S RTLNAME BlackBoxJam_fifo_w32_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c145_U}
      {MODELNAME BlackBoxJam_fifo_w32_d25_S RTLNAME BlackBoxJam_fifo_w32_d25_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME shl_ln121_2_loc_channel_U}
      {MODELNAME BlackBoxJam_fifo_w24_d23_S RTLNAME BlackBoxJam_fifo_w24_d23_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME add_ln121_1_loc_channel_U}
      {MODELNAME BlackBoxJam_fifo_w4_d2_S RTLNAME BlackBoxJam_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mvOut_m_buffer_1_U}
      {MODELNAME BlackBoxJam_fifo_w256_d1_S RTLNAME BlackBoxJam_fifo_w256_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME inter7_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME wa_in_3_U}
      {MODELNAME BlackBoxJam_fifo_w32_d5_S RTLNAME BlackBoxJam_fifo_w32_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME totalIters_10_loc_c136_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convInp_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c144_U}
      {MODELNAME BlackBoxJam_fifo_w1_d2_S RTLNAME BlackBoxJam_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mvOut_m_buffer_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c143_U}
      {MODELNAME BlackBoxJam_fifo_w256_d1_S RTLNAME BlackBoxJam_fifo_w256_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME inter8_U}
      {MODELNAME BlackBoxJam_fifo_w32_d3_S RTLNAME BlackBoxJam_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c142_U}
      {MODELNAME BlackBoxJam_fifo_w4_d2_S RTLNAME BlackBoxJam_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME wa_in_2_U}
      {MODELNAME BlackBoxJam_fifo_w32_d4_S RTLNAME BlackBoxJam_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME totalIters_10_loc_c_U}
      {MODELNAME BlackBoxJam_fifo_w1_d2_S RTLNAME BlackBoxJam_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME wa_out_m_buffer_1_U}
      {MODELNAME BlackBoxJam_fifo_w32_d4_S RTLNAME BlackBoxJam_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c141_U}
      {MODELNAME BlackBoxJam_fifo_w64_d128_A RTLNAME BlackBoxJam_fifo_w64_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME inter9_U}
      {MODELNAME BlackBoxJam_fifo_w32_d4_S RTLNAME BlackBoxJam_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME totalIters_16_loc_c138_U}
      {MODELNAME BlackBoxJam_fifo_w8_d2_S RTLNAME BlackBoxJam_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME wa_in_1_U}
      {MODELNAME BlackBoxJam_fifo_w1_d2_S RTLNAME BlackBoxJam_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME wa_out_m_buffer_U}
      {MODELNAME BlackBoxJam_fifo_w32_d4_S RTLNAME BlackBoxJam_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c140_U}
      {MODELNAME BlackBoxJam_fifo_w64_d3_S RTLNAME BlackBoxJam_fifo_w64_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME inter10_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME totalIters_16_loc_c_U}
      {MODELNAME BlackBoxJam_fifo_w1_d2_S RTLNAME BlackBoxJam_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME wa_in_U}
      {MODELNAME BlackBoxJam_fifo_w64_d2_S RTLNAME BlackBoxJam_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME memOutStrm_U}
      {MODELNAME BlackBoxJam_fifo_w32_d2_S RTLNAME BlackBoxJam_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME numReps_c_U}
      {MODELNAME BlackBoxJam_start_for_Stream2Mem_Batch_64u_128u_U0 RTLNAME BlackBoxJam_start_for_Stream2Mem_Batch_64u_128u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Stream2Mem_Batch_64u_128u_U0_U}
      {MODELNAME BlackBoxJam_start_for_StreamingDataWidthConverter_Batch_64u_192u_384u_U0 RTLNAME BlackBoxJam_start_for_StreamingDataWidthConverter_Batch_64u_192u_384u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_StreamingDataWidthConverter_Batch_64u_192u_384u_U0_U}
      {MODELNAME BlackBoxJam_start_for_StreamingDataWidthConverter_Batch_192u_24u_128u_U0 RTLNAME BlackBoxJam_start_for_StreamingDataWidthConverter_Batch_192u_24u_128u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_StreamingDataWidthConverter_Batch_192u_24u_128u_U0_U}
      {MODELNAME BlackBoxJam_start_for_ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0 RTLNAME BlackBoxJam_start_for_ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0_U}
      {MODELNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0 RTLNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0_U}
      {MODELNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0 RTLNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0_U}
      {MODELNAME BlackBoxJam_start_for_ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0 RTLNAME BlackBoxJam_start_for_ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0_U}
      {MODELNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0 RTLNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0_U}
      {MODELNAME BlackBoxJam_start_for_StreamingMaxPool_Batch_28u_2u_64u_U0 RTLNAME BlackBoxJam_start_for_StreamingMaxPool_Batch_28u_2u_64u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_StreamingMaxPool_Batch_28u_2u_64u_U0_U}
      {MODELNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0 RTLNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0_U}
      {MODELNAME BlackBoxJam_start_for_ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0 RTLNAME BlackBoxJam_start_for_ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0_U}
      {MODELNAME BlackBoxJam_start_for_ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0 RTLNAME BlackBoxJam_start_for_ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0_U}
      {MODELNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0 RTLNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0_U}
      {MODELNAME BlackBoxJam_start_for_StreamingMaxPool_Batch_10u_2u_128u_U0 RTLNAME BlackBoxJam_start_for_StreamingMaxPool_Batch_10u_2u_128u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_StreamingMaxPool_Batch_10u_2u_128u_U0_U}
      {MODELNAME BlackBoxJam_start_for_ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0 RTLNAME BlackBoxJam_start_for_ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0_U}
      {MODELNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0 RTLNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0_U}
      {MODELNAME BlackBoxJam_start_for_ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0 RTLNAME BlackBoxJam_start_for_ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0_U}
      {MODELNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0 RTLNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0_U}
      {MODELNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0 RTLNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0_U}
      {MODELNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0 RTLNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0_U}
      {MODELNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0 RTLNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0_U}
      {MODELNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0 RTLNAME BlackBoxJam_start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0_U}
    }
  }
  {SRCNAME BlackBoxJam MODELNAME BlackBoxJam RTLNAME BlackBoxJam IS_TOP 1
    SUBMODULES {
      {MODELNAME BlackBoxJam_p_ZL8weights0_0_RAM_AUTO_1R1W RTLNAME BlackBoxJam_p_ZL8weights0_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME BlackBoxJam_p_ZL8threshs0_0_RAM_AUTO_1R1W RTLNAME BlackBoxJam_p_ZL8threshs0_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME BlackBoxJam_p_ZL8weights1_0_RAM_AUTO_1R1W RTLNAME BlackBoxJam_p_ZL8weights1_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME BlackBoxJam_p_ZL8threshs1_0_RAM_AUTO_1R1W RTLNAME BlackBoxJam_p_ZL8threshs1_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME BlackBoxJam_p_ZL8weights2_0_RAM_AUTO_1R1W RTLNAME BlackBoxJam_p_ZL8weights2_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME BlackBoxJam_p_ZL8threshs2_0_RAM_AUTO_1R1W RTLNAME BlackBoxJam_p_ZL8threshs2_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME BlackBoxJam_p_ZL8weights3_0_RAM_AUTO_1R1W RTLNAME BlackBoxJam_p_ZL8weights3_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME BlackBoxJam_p_ZL8weights4_0_RAM_AUTO_1R1W RTLNAME BlackBoxJam_p_ZL8weights4_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME BlackBoxJam_p_ZL8threshs4_0_RAM_AUTO_1R1W RTLNAME BlackBoxJam_p_ZL8threshs4_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME BlackBoxJam_weights5_RAM_AUTO_1R1W RTLNAME BlackBoxJam_weights5_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME BlackBoxJam_threshs5_RAM_AUTO_1R1W RTLNAME BlackBoxJam_threshs5_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME BlackBoxJam_weights6_RAM_AUTO_1R1W RTLNAME BlackBoxJam_weights6_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME BlackBoxJam_threshs6_RAM_AUTO_1R1W RTLNAME BlackBoxJam_threshs6_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME BlackBoxJam_weights7_RAM_AUTO_1R1W RTLNAME BlackBoxJam_weights7_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME BlackBoxJam_p_ZL8weights8_0_RAM_AUTO_1R1W RTLNAME BlackBoxJam_p_ZL8weights8_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME BlackBoxJam_hostmem_m_axi RTLNAME BlackBoxJam_hostmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME BlackBoxJam_control_s_axi RTLNAME BlackBoxJam_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
