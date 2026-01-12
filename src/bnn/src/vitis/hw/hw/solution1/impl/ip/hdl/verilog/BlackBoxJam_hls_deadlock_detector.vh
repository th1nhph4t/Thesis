
    wire dl_reset;
    wire dl_clock;
    assign dl_reset = ap_rst_n;
    assign dl_clock = ap_clk;
    wire [15:0] proc_0_data_FIFO_blk;
    wire [15:0] proc_0_data_PIPO_blk;
    wire [15:0] proc_0_start_FIFO_blk;
    wire [15:0] proc_0_TLF_FIFO_blk;
    wire [15:0] proc_0_input_sync_blk;
    wire [15:0] proc_0_output_sync_blk;
    wire [15:0] proc_dep_vld_vec_0;
    reg [15:0] proc_dep_vld_vec_0_reg;
    wire [15:0] in_chan_dep_vld_vec_0;
    wire [703:0] in_chan_dep_data_vec_0;
    wire [15:0] token_in_vec_0;
    wire [15:0] out_chan_dep_vld_vec_0;
    wire [43:0] out_chan_dep_data_0;
    wire [15:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [43:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_5_0;
    wire [43:0] dep_chan_data_5_0;
    wire token_5_0;
    wire dep_chan_vld_6_0;
    wire [43:0] dep_chan_data_6_0;
    wire token_6_0;
    wire dep_chan_vld_11_0;
    wire [43:0] dep_chan_data_11_0;
    wire token_11_0;
    wire dep_chan_vld_16_0;
    wire [43:0] dep_chan_data_16_0;
    wire token_16_0;
    wire dep_chan_vld_17_0;
    wire [43:0] dep_chan_data_17_0;
    wire token_17_0;
    wire dep_chan_vld_19_0;
    wire [43:0] dep_chan_data_19_0;
    wire token_19_0;
    wire dep_chan_vld_22_0;
    wire [43:0] dep_chan_data_22_0;
    wire token_22_0;
    wire dep_chan_vld_23_0;
    wire [43:0] dep_chan_data_23_0;
    wire token_23_0;
    wire dep_chan_vld_28_0;
    wire [43:0] dep_chan_data_28_0;
    wire token_28_0;
    wire dep_chan_vld_29_0;
    wire [43:0] dep_chan_data_29_0;
    wire token_29_0;
    wire dep_chan_vld_33_0;
    wire [43:0] dep_chan_data_33_0;
    wire token_33_0;
    wire dep_chan_vld_36_0;
    wire [43:0] dep_chan_data_36_0;
    wire token_36_0;
    wire dep_chan_vld_39_0;
    wire [43:0] dep_chan_data_39_0;
    wire token_39_0;
    wire dep_chan_vld_42_0;
    wire [43:0] dep_chan_data_42_0;
    wire token_42_0;
    wire dep_chan_vld_43_0;
    wire [43:0] dep_chan_data_43_0;
    wire token_43_0;
    wire [15:0] proc_1_data_FIFO_blk;
    wire [15:0] proc_1_data_PIPO_blk;
    wire [15:0] proc_1_start_FIFO_blk;
    wire [15:0] proc_1_TLF_FIFO_blk;
    wire [15:0] proc_1_input_sync_blk;
    wire [15:0] proc_1_output_sync_blk;
    wire [15:0] proc_dep_vld_vec_1;
    reg [15:0] proc_dep_vld_vec_1_reg;
    wire [15:0] in_chan_dep_vld_vec_1;
    wire [703:0] in_chan_dep_data_vec_1;
    wire [15:0] token_in_vec_1;
    wire [15:0] out_chan_dep_vld_vec_1;
    wire [43:0] out_chan_dep_data_1;
    wire [15:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [43:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_2_1;
    wire [43:0] dep_chan_data_2_1;
    wire token_2_1;
    wire dep_chan_vld_5_1;
    wire [43:0] dep_chan_data_5_1;
    wire token_5_1;
    wire dep_chan_vld_6_1;
    wire [43:0] dep_chan_data_6_1;
    wire token_6_1;
    wire dep_chan_vld_11_1;
    wire [43:0] dep_chan_data_11_1;
    wire token_11_1;
    wire dep_chan_vld_16_1;
    wire [43:0] dep_chan_data_16_1;
    wire token_16_1;
    wire dep_chan_vld_17_1;
    wire [43:0] dep_chan_data_17_1;
    wire token_17_1;
    wire dep_chan_vld_19_1;
    wire [43:0] dep_chan_data_19_1;
    wire token_19_1;
    wire dep_chan_vld_22_1;
    wire [43:0] dep_chan_data_22_1;
    wire token_22_1;
    wire dep_chan_vld_23_1;
    wire [43:0] dep_chan_data_23_1;
    wire token_23_1;
    wire dep_chan_vld_28_1;
    wire [43:0] dep_chan_data_28_1;
    wire token_28_1;
    wire dep_chan_vld_29_1;
    wire [43:0] dep_chan_data_29_1;
    wire token_29_1;
    wire dep_chan_vld_33_1;
    wire [43:0] dep_chan_data_33_1;
    wire token_33_1;
    wire dep_chan_vld_36_1;
    wire [43:0] dep_chan_data_36_1;
    wire token_36_1;
    wire dep_chan_vld_39_1;
    wire [43:0] dep_chan_data_39_1;
    wire token_39_1;
    wire dep_chan_vld_42_1;
    wire [43:0] dep_chan_data_42_1;
    wire token_42_1;
    wire [1:0] proc_2_data_FIFO_blk;
    wire [1:0] proc_2_data_PIPO_blk;
    wire [1:0] proc_2_start_FIFO_blk;
    wire [1:0] proc_2_TLF_FIFO_blk;
    wire [1:0] proc_2_input_sync_blk;
    wire [1:0] proc_2_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_2;
    reg [1:0] proc_dep_vld_vec_2_reg;
    wire [1:0] in_chan_dep_vld_vec_2;
    wire [87:0] in_chan_dep_data_vec_2;
    wire [1:0] token_in_vec_2;
    wire [1:0] out_chan_dep_vld_vec_2;
    wire [43:0] out_chan_dep_data_2;
    wire [1:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_1_2;
    wire [43:0] dep_chan_data_1_2;
    wire token_1_2;
    wire dep_chan_vld_3_2;
    wire [43:0] dep_chan_data_3_2;
    wire token_3_2;
    wire [1:0] proc_3_data_FIFO_blk;
    wire [1:0] proc_3_data_PIPO_blk;
    wire [1:0] proc_3_start_FIFO_blk;
    wire [1:0] proc_3_TLF_FIFO_blk;
    wire [1:0] proc_3_input_sync_blk;
    wire [1:0] proc_3_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_3;
    reg [1:0] proc_dep_vld_vec_3_reg;
    wire [1:0] in_chan_dep_vld_vec_3;
    wire [87:0] in_chan_dep_data_vec_3;
    wire [1:0] token_in_vec_3;
    wire [1:0] out_chan_dep_vld_vec_3;
    wire [43:0] out_chan_dep_data_3;
    wire [1:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_2_3;
    wire [43:0] dep_chan_data_2_3;
    wire token_2_3;
    wire dep_chan_vld_4_3;
    wire [43:0] dep_chan_data_4_3;
    wire token_4_3;
    wire [2:0] proc_4_data_FIFO_blk;
    wire [2:0] proc_4_data_PIPO_blk;
    wire [2:0] proc_4_start_FIFO_blk;
    wire [2:0] proc_4_TLF_FIFO_blk;
    wire [2:0] proc_4_input_sync_blk;
    wire [2:0] proc_4_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_4;
    reg [2:0] proc_dep_vld_vec_4_reg;
    wire [2:0] in_chan_dep_vld_vec_4;
    wire [131:0] in_chan_dep_data_vec_4;
    wire [2:0] token_in_vec_4;
    wire [2:0] out_chan_dep_vld_vec_4;
    wire [43:0] out_chan_dep_data_4;
    wire [2:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_3_4;
    wire [43:0] dep_chan_data_3_4;
    wire token_3_4;
    wire dep_chan_vld_6_4;
    wire [43:0] dep_chan_data_6_4;
    wire token_6_4;
    wire dep_chan_vld_7_4;
    wire [43:0] dep_chan_data_7_4;
    wire token_7_4;
    wire [14:0] proc_5_data_FIFO_blk;
    wire [14:0] proc_5_data_PIPO_blk;
    wire [14:0] proc_5_start_FIFO_blk;
    wire [14:0] proc_5_TLF_FIFO_blk;
    wire [14:0] proc_5_input_sync_blk;
    wire [14:0] proc_5_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_5;
    reg [14:0] proc_dep_vld_vec_5_reg;
    wire [15:0] in_chan_dep_vld_vec_5;
    wire [703:0] in_chan_dep_data_vec_5;
    wire [15:0] token_in_vec_5;
    wire [14:0] out_chan_dep_vld_vec_5;
    wire [43:0] out_chan_dep_data_5;
    wire [14:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_0_5;
    wire [43:0] dep_chan_data_0_5;
    wire token_0_5;
    wire dep_chan_vld_1_5;
    wire [43:0] dep_chan_data_1_5;
    wire token_1_5;
    wire dep_chan_vld_6_5;
    wire [43:0] dep_chan_data_6_5;
    wire token_6_5;
    wire dep_chan_vld_10_5;
    wire [43:0] dep_chan_data_10_5;
    wire token_10_5;
    wire dep_chan_vld_11_5;
    wire [43:0] dep_chan_data_11_5;
    wire token_11_5;
    wire dep_chan_vld_16_5;
    wire [43:0] dep_chan_data_16_5;
    wire token_16_5;
    wire dep_chan_vld_17_5;
    wire [43:0] dep_chan_data_17_5;
    wire token_17_5;
    wire dep_chan_vld_19_5;
    wire [43:0] dep_chan_data_19_5;
    wire token_19_5;
    wire dep_chan_vld_22_5;
    wire [43:0] dep_chan_data_22_5;
    wire token_22_5;
    wire dep_chan_vld_23_5;
    wire [43:0] dep_chan_data_23_5;
    wire token_23_5;
    wire dep_chan_vld_28_5;
    wire [43:0] dep_chan_data_28_5;
    wire token_28_5;
    wire dep_chan_vld_29_5;
    wire [43:0] dep_chan_data_29_5;
    wire token_29_5;
    wire dep_chan_vld_33_5;
    wire [43:0] dep_chan_data_33_5;
    wire token_33_5;
    wire dep_chan_vld_36_5;
    wire [43:0] dep_chan_data_36_5;
    wire token_36_5;
    wire dep_chan_vld_39_5;
    wire [43:0] dep_chan_data_39_5;
    wire token_39_5;
    wire dep_chan_vld_42_5;
    wire [43:0] dep_chan_data_42_5;
    wire token_42_5;
    wire [16:0] proc_6_data_FIFO_blk;
    wire [16:0] proc_6_data_PIPO_blk;
    wire [16:0] proc_6_start_FIFO_blk;
    wire [16:0] proc_6_TLF_FIFO_blk;
    wire [16:0] proc_6_input_sync_blk;
    wire [16:0] proc_6_output_sync_blk;
    wire [16:0] proc_dep_vld_vec_6;
    reg [16:0] proc_dep_vld_vec_6_reg;
    wire [16:0] in_chan_dep_vld_vec_6;
    wire [747:0] in_chan_dep_data_vec_6;
    wire [16:0] token_in_vec_6;
    wire [16:0] out_chan_dep_vld_vec_6;
    wire [43:0] out_chan_dep_data_6;
    wire [16:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_0_6;
    wire [43:0] dep_chan_data_0_6;
    wire token_0_6;
    wire dep_chan_vld_1_6;
    wire [43:0] dep_chan_data_1_6;
    wire token_1_6;
    wire dep_chan_vld_4_6;
    wire [43:0] dep_chan_data_4_6;
    wire token_4_6;
    wire dep_chan_vld_5_6;
    wire [43:0] dep_chan_data_5_6;
    wire token_5_6;
    wire dep_chan_vld_7_6;
    wire [43:0] dep_chan_data_7_6;
    wire token_7_6;
    wire dep_chan_vld_11_6;
    wire [43:0] dep_chan_data_11_6;
    wire token_11_6;
    wire dep_chan_vld_16_6;
    wire [43:0] dep_chan_data_16_6;
    wire token_16_6;
    wire dep_chan_vld_17_6;
    wire [43:0] dep_chan_data_17_6;
    wire token_17_6;
    wire dep_chan_vld_19_6;
    wire [43:0] dep_chan_data_19_6;
    wire token_19_6;
    wire dep_chan_vld_22_6;
    wire [43:0] dep_chan_data_22_6;
    wire token_22_6;
    wire dep_chan_vld_23_6;
    wire [43:0] dep_chan_data_23_6;
    wire token_23_6;
    wire dep_chan_vld_28_6;
    wire [43:0] dep_chan_data_28_6;
    wire token_28_6;
    wire dep_chan_vld_29_6;
    wire [43:0] dep_chan_data_29_6;
    wire token_29_6;
    wire dep_chan_vld_33_6;
    wire [43:0] dep_chan_data_33_6;
    wire token_33_6;
    wire dep_chan_vld_36_6;
    wire [43:0] dep_chan_data_36_6;
    wire token_36_6;
    wire dep_chan_vld_39_6;
    wire [43:0] dep_chan_data_39_6;
    wire token_39_6;
    wire dep_chan_vld_42_6;
    wire [43:0] dep_chan_data_42_6;
    wire token_42_6;
    wire [2:0] proc_7_data_FIFO_blk;
    wire [2:0] proc_7_data_PIPO_blk;
    wire [2:0] proc_7_start_FIFO_blk;
    wire [2:0] proc_7_TLF_FIFO_blk;
    wire [2:0] proc_7_input_sync_blk;
    wire [2:0] proc_7_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_7;
    reg [2:0] proc_dep_vld_vec_7_reg;
    wire [2:0] in_chan_dep_vld_vec_7;
    wire [131:0] in_chan_dep_data_vec_7;
    wire [2:0] token_in_vec_7;
    wire [2:0] out_chan_dep_vld_vec_7;
    wire [43:0] out_chan_dep_data_7;
    wire [2:0] token_out_vec_7;
    wire dl_detect_out_7;
    wire dep_chan_vld_4_7;
    wire [43:0] dep_chan_data_4_7;
    wire token_4_7;
    wire dep_chan_vld_6_7;
    wire [43:0] dep_chan_data_6_7;
    wire token_6_7;
    wire dep_chan_vld_8_7;
    wire [43:0] dep_chan_data_8_7;
    wire token_8_7;
    wire [1:0] proc_8_data_FIFO_blk;
    wire [1:0] proc_8_data_PIPO_blk;
    wire [1:0] proc_8_start_FIFO_blk;
    wire [1:0] proc_8_TLF_FIFO_blk;
    wire [1:0] proc_8_input_sync_blk;
    wire [1:0] proc_8_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_8;
    reg [1:0] proc_dep_vld_vec_8_reg;
    wire [1:0] in_chan_dep_vld_vec_8;
    wire [87:0] in_chan_dep_data_vec_8;
    wire [1:0] token_in_vec_8;
    wire [1:0] out_chan_dep_vld_vec_8;
    wire [43:0] out_chan_dep_data_8;
    wire [1:0] token_out_vec_8;
    wire dl_detect_out_8;
    wire dep_chan_vld_7_8;
    wire [43:0] dep_chan_data_7_8;
    wire token_7_8;
    wire dep_chan_vld_9_8;
    wire [43:0] dep_chan_data_9_8;
    wire token_9_8;
    wire [2:0] proc_9_data_FIFO_blk;
    wire [2:0] proc_9_data_PIPO_blk;
    wire [2:0] proc_9_start_FIFO_blk;
    wire [2:0] proc_9_TLF_FIFO_blk;
    wire [2:0] proc_9_input_sync_blk;
    wire [2:0] proc_9_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_9;
    reg [2:0] proc_dep_vld_vec_9_reg;
    wire [2:0] in_chan_dep_vld_vec_9;
    wire [131:0] in_chan_dep_data_vec_9;
    wire [2:0] token_in_vec_9;
    wire [2:0] out_chan_dep_vld_vec_9;
    wire [43:0] out_chan_dep_data_9;
    wire [2:0] token_out_vec_9;
    wire dl_detect_out_9;
    wire dep_chan_vld_8_9;
    wire [43:0] dep_chan_data_8_9;
    wire token_8_9;
    wire dep_chan_vld_11_9;
    wire [43:0] dep_chan_data_11_9;
    wire token_11_9;
    wire dep_chan_vld_12_9;
    wire [43:0] dep_chan_data_12_9;
    wire token_12_9;
    wire [0:0] proc_10_data_FIFO_blk;
    wire [0:0] proc_10_data_PIPO_blk;
    wire [0:0] proc_10_start_FIFO_blk;
    wire [0:0] proc_10_TLF_FIFO_blk;
    wire [0:0] proc_10_input_sync_blk;
    wire [0:0] proc_10_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_10;
    reg [0:0] proc_dep_vld_vec_10_reg;
    wire [0:0] in_chan_dep_vld_vec_10;
    wire [43:0] in_chan_dep_data_vec_10;
    wire [0:0] token_in_vec_10;
    wire [0:0] out_chan_dep_vld_vec_10;
    wire [43:0] out_chan_dep_data_10;
    wire [0:0] token_out_vec_10;
    wire dl_detect_out_10;
    wire dep_chan_vld_11_10;
    wire [43:0] dep_chan_data_11_10;
    wire token_11_10;
    wire [17:0] proc_11_data_FIFO_blk;
    wire [17:0] proc_11_data_PIPO_blk;
    wire [17:0] proc_11_start_FIFO_blk;
    wire [17:0] proc_11_TLF_FIFO_blk;
    wire [17:0] proc_11_input_sync_blk;
    wire [17:0] proc_11_output_sync_blk;
    wire [17:0] proc_dep_vld_vec_11;
    reg [17:0] proc_dep_vld_vec_11_reg;
    wire [16:0] in_chan_dep_vld_vec_11;
    wire [747:0] in_chan_dep_data_vec_11;
    wire [16:0] token_in_vec_11;
    wire [17:0] out_chan_dep_vld_vec_11;
    wire [43:0] out_chan_dep_data_11;
    wire [17:0] token_out_vec_11;
    wire dl_detect_out_11;
    wire dep_chan_vld_0_11;
    wire [43:0] dep_chan_data_0_11;
    wire token_0_11;
    wire dep_chan_vld_1_11;
    wire [43:0] dep_chan_data_1_11;
    wire token_1_11;
    wire dep_chan_vld_5_11;
    wire [43:0] dep_chan_data_5_11;
    wire token_5_11;
    wire dep_chan_vld_6_11;
    wire [43:0] dep_chan_data_6_11;
    wire token_6_11;
    wire dep_chan_vld_9_11;
    wire [43:0] dep_chan_data_9_11;
    wire token_9_11;
    wire dep_chan_vld_12_11;
    wire [43:0] dep_chan_data_12_11;
    wire token_12_11;
    wire dep_chan_vld_16_11;
    wire [43:0] dep_chan_data_16_11;
    wire token_16_11;
    wire dep_chan_vld_17_11;
    wire [43:0] dep_chan_data_17_11;
    wire token_17_11;
    wire dep_chan_vld_19_11;
    wire [43:0] dep_chan_data_19_11;
    wire token_19_11;
    wire dep_chan_vld_22_11;
    wire [43:0] dep_chan_data_22_11;
    wire token_22_11;
    wire dep_chan_vld_23_11;
    wire [43:0] dep_chan_data_23_11;
    wire token_23_11;
    wire dep_chan_vld_28_11;
    wire [43:0] dep_chan_data_28_11;
    wire token_28_11;
    wire dep_chan_vld_29_11;
    wire [43:0] dep_chan_data_29_11;
    wire token_29_11;
    wire dep_chan_vld_33_11;
    wire [43:0] dep_chan_data_33_11;
    wire token_33_11;
    wire dep_chan_vld_36_11;
    wire [43:0] dep_chan_data_36_11;
    wire token_36_11;
    wire dep_chan_vld_39_11;
    wire [43:0] dep_chan_data_39_11;
    wire token_39_11;
    wire dep_chan_vld_42_11;
    wire [43:0] dep_chan_data_42_11;
    wire token_42_11;
    wire [2:0] proc_12_data_FIFO_blk;
    wire [2:0] proc_12_data_PIPO_blk;
    wire [2:0] proc_12_start_FIFO_blk;
    wire [2:0] proc_12_TLF_FIFO_blk;
    wire [2:0] proc_12_input_sync_blk;
    wire [2:0] proc_12_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_12;
    reg [2:0] proc_dep_vld_vec_12_reg;
    wire [2:0] in_chan_dep_vld_vec_12;
    wire [131:0] in_chan_dep_data_vec_12;
    wire [2:0] token_in_vec_12;
    wire [2:0] out_chan_dep_vld_vec_12;
    wire [43:0] out_chan_dep_data_12;
    wire [2:0] token_out_vec_12;
    wire dl_detect_out_12;
    wire dep_chan_vld_9_12;
    wire [43:0] dep_chan_data_9_12;
    wire token_9_12;
    wire dep_chan_vld_11_12;
    wire [43:0] dep_chan_data_11_12;
    wire token_11_12;
    wire dep_chan_vld_13_12;
    wire [43:0] dep_chan_data_13_12;
    wire token_13_12;
    wire [1:0] proc_13_data_FIFO_blk;
    wire [1:0] proc_13_data_PIPO_blk;
    wire [1:0] proc_13_start_FIFO_blk;
    wire [1:0] proc_13_TLF_FIFO_blk;
    wire [1:0] proc_13_input_sync_blk;
    wire [1:0] proc_13_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_13;
    reg [1:0] proc_dep_vld_vec_13_reg;
    wire [1:0] in_chan_dep_vld_vec_13;
    wire [87:0] in_chan_dep_data_vec_13;
    wire [1:0] token_in_vec_13;
    wire [1:0] out_chan_dep_vld_vec_13;
    wire [43:0] out_chan_dep_data_13;
    wire [1:0] token_out_vec_13;
    wire dl_detect_out_13;
    wire dep_chan_vld_12_13;
    wire [43:0] dep_chan_data_12_13;
    wire token_12_13;
    wire dep_chan_vld_14_13;
    wire [43:0] dep_chan_data_14_13;
    wire token_14_13;
    wire [1:0] proc_14_data_FIFO_blk;
    wire [1:0] proc_14_data_PIPO_blk;
    wire [1:0] proc_14_start_FIFO_blk;
    wire [1:0] proc_14_TLF_FIFO_blk;
    wire [1:0] proc_14_input_sync_blk;
    wire [1:0] proc_14_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_14;
    reg [1:0] proc_dep_vld_vec_14_reg;
    wire [1:0] in_chan_dep_vld_vec_14;
    wire [87:0] in_chan_dep_data_vec_14;
    wire [1:0] token_in_vec_14;
    wire [1:0] out_chan_dep_vld_vec_14;
    wire [43:0] out_chan_dep_data_14;
    wire [1:0] token_out_vec_14;
    wire dl_detect_out_14;
    wire dep_chan_vld_13_14;
    wire [43:0] dep_chan_data_13_14;
    wire token_13_14;
    wire dep_chan_vld_15_14;
    wire [43:0] dep_chan_data_15_14;
    wire token_15_14;
    wire [2:0] proc_15_data_FIFO_blk;
    wire [2:0] proc_15_data_PIPO_blk;
    wire [2:0] proc_15_start_FIFO_blk;
    wire [2:0] proc_15_TLF_FIFO_blk;
    wire [2:0] proc_15_input_sync_blk;
    wire [2:0] proc_15_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_15;
    reg [2:0] proc_dep_vld_vec_15_reg;
    wire [2:0] in_chan_dep_vld_vec_15;
    wire [131:0] in_chan_dep_data_vec_15;
    wire [2:0] token_in_vec_15;
    wire [2:0] out_chan_dep_vld_vec_15;
    wire [43:0] out_chan_dep_data_15;
    wire [2:0] token_out_vec_15;
    wire dl_detect_out_15;
    wire dep_chan_vld_14_15;
    wire [43:0] dep_chan_data_14_15;
    wire token_14_15;
    wire dep_chan_vld_17_15;
    wire [43:0] dep_chan_data_17_15;
    wire token_17_15;
    wire dep_chan_vld_18_15;
    wire [43:0] dep_chan_data_18_15;
    wire token_18_15;
    wire [14:0] proc_16_data_FIFO_blk;
    wire [14:0] proc_16_data_PIPO_blk;
    wire [14:0] proc_16_start_FIFO_blk;
    wire [14:0] proc_16_TLF_FIFO_blk;
    wire [14:0] proc_16_input_sync_blk;
    wire [14:0] proc_16_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_16;
    reg [14:0] proc_dep_vld_vec_16_reg;
    wire [15:0] in_chan_dep_vld_vec_16;
    wire [703:0] in_chan_dep_data_vec_16;
    wire [15:0] token_in_vec_16;
    wire [14:0] out_chan_dep_vld_vec_16;
    wire [43:0] out_chan_dep_data_16;
    wire [14:0] token_out_vec_16;
    wire dl_detect_out_16;
    wire dep_chan_vld_0_16;
    wire [43:0] dep_chan_data_0_16;
    wire token_0_16;
    wire dep_chan_vld_1_16;
    wire [43:0] dep_chan_data_1_16;
    wire token_1_16;
    wire dep_chan_vld_5_16;
    wire [43:0] dep_chan_data_5_16;
    wire token_5_16;
    wire dep_chan_vld_6_16;
    wire [43:0] dep_chan_data_6_16;
    wire token_6_16;
    wire dep_chan_vld_11_16;
    wire [43:0] dep_chan_data_11_16;
    wire token_11_16;
    wire dep_chan_vld_17_16;
    wire [43:0] dep_chan_data_17_16;
    wire token_17_16;
    wire dep_chan_vld_18_16;
    wire [43:0] dep_chan_data_18_16;
    wire token_18_16;
    wire dep_chan_vld_19_16;
    wire [43:0] dep_chan_data_19_16;
    wire token_19_16;
    wire dep_chan_vld_22_16;
    wire [43:0] dep_chan_data_22_16;
    wire token_22_16;
    wire dep_chan_vld_23_16;
    wire [43:0] dep_chan_data_23_16;
    wire token_23_16;
    wire dep_chan_vld_28_16;
    wire [43:0] dep_chan_data_28_16;
    wire token_28_16;
    wire dep_chan_vld_29_16;
    wire [43:0] dep_chan_data_29_16;
    wire token_29_16;
    wire dep_chan_vld_33_16;
    wire [43:0] dep_chan_data_33_16;
    wire token_33_16;
    wire dep_chan_vld_36_16;
    wire [43:0] dep_chan_data_36_16;
    wire token_36_16;
    wire dep_chan_vld_39_16;
    wire [43:0] dep_chan_data_39_16;
    wire token_39_16;
    wire dep_chan_vld_42_16;
    wire [43:0] dep_chan_data_42_16;
    wire token_42_16;
    wire [16:0] proc_17_data_FIFO_blk;
    wire [16:0] proc_17_data_PIPO_blk;
    wire [16:0] proc_17_start_FIFO_blk;
    wire [16:0] proc_17_TLF_FIFO_blk;
    wire [16:0] proc_17_input_sync_blk;
    wire [16:0] proc_17_output_sync_blk;
    wire [16:0] proc_dep_vld_vec_17;
    reg [16:0] proc_dep_vld_vec_17_reg;
    wire [16:0] in_chan_dep_vld_vec_17;
    wire [747:0] in_chan_dep_data_vec_17;
    wire [16:0] token_in_vec_17;
    wire [16:0] out_chan_dep_vld_vec_17;
    wire [43:0] out_chan_dep_data_17;
    wire [16:0] token_out_vec_17;
    wire dl_detect_out_17;
    wire dep_chan_vld_0_17;
    wire [43:0] dep_chan_data_0_17;
    wire token_0_17;
    wire dep_chan_vld_1_17;
    wire [43:0] dep_chan_data_1_17;
    wire token_1_17;
    wire dep_chan_vld_5_17;
    wire [43:0] dep_chan_data_5_17;
    wire token_5_17;
    wire dep_chan_vld_6_17;
    wire [43:0] dep_chan_data_6_17;
    wire token_6_17;
    wire dep_chan_vld_11_17;
    wire [43:0] dep_chan_data_11_17;
    wire token_11_17;
    wire dep_chan_vld_15_17;
    wire [43:0] dep_chan_data_15_17;
    wire token_15_17;
    wire dep_chan_vld_16_17;
    wire [43:0] dep_chan_data_16_17;
    wire token_16_17;
    wire dep_chan_vld_18_17;
    wire [43:0] dep_chan_data_18_17;
    wire token_18_17;
    wire dep_chan_vld_19_17;
    wire [43:0] dep_chan_data_19_17;
    wire token_19_17;
    wire dep_chan_vld_22_17;
    wire [43:0] dep_chan_data_22_17;
    wire token_22_17;
    wire dep_chan_vld_23_17;
    wire [43:0] dep_chan_data_23_17;
    wire token_23_17;
    wire dep_chan_vld_28_17;
    wire [43:0] dep_chan_data_28_17;
    wire token_28_17;
    wire dep_chan_vld_29_17;
    wire [43:0] dep_chan_data_29_17;
    wire token_29_17;
    wire dep_chan_vld_33_17;
    wire [43:0] dep_chan_data_33_17;
    wire token_33_17;
    wire dep_chan_vld_36_17;
    wire [43:0] dep_chan_data_36_17;
    wire token_36_17;
    wire dep_chan_vld_39_17;
    wire [43:0] dep_chan_data_39_17;
    wire token_39_17;
    wire dep_chan_vld_42_17;
    wire [43:0] dep_chan_data_42_17;
    wire token_42_17;
    wire [4:0] proc_18_data_FIFO_blk;
    wire [4:0] proc_18_data_PIPO_blk;
    wire [4:0] proc_18_start_FIFO_blk;
    wire [4:0] proc_18_TLF_FIFO_blk;
    wire [4:0] proc_18_input_sync_blk;
    wire [4:0] proc_18_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_18;
    reg [4:0] proc_dep_vld_vec_18_reg;
    wire [3:0] in_chan_dep_vld_vec_18;
    wire [175:0] in_chan_dep_data_vec_18;
    wire [3:0] token_in_vec_18;
    wire [4:0] out_chan_dep_vld_vec_18;
    wire [43:0] out_chan_dep_data_18;
    wire [4:0] token_out_vec_18;
    wire dl_detect_out_18;
    wire dep_chan_vld_15_18;
    wire [43:0] dep_chan_data_15_18;
    wire token_15_18;
    wire dep_chan_vld_17_18;
    wire [43:0] dep_chan_data_17_18;
    wire token_17_18;
    wire dep_chan_vld_20_18;
    wire [43:0] dep_chan_data_20_18;
    wire token_20_18;
    wire dep_chan_vld_21_18;
    wire [43:0] dep_chan_data_21_18;
    wire token_21_18;
    wire [14:0] proc_19_data_FIFO_blk;
    wire [14:0] proc_19_data_PIPO_blk;
    wire [14:0] proc_19_start_FIFO_blk;
    wire [14:0] proc_19_TLF_FIFO_blk;
    wire [14:0] proc_19_input_sync_blk;
    wire [14:0] proc_19_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_19;
    reg [14:0] proc_dep_vld_vec_19_reg;
    wire [17:0] in_chan_dep_vld_vec_19;
    wire [791:0] in_chan_dep_data_vec_19;
    wire [17:0] token_in_vec_19;
    wire [14:0] out_chan_dep_vld_vec_19;
    wire [43:0] out_chan_dep_data_19;
    wire [14:0] token_out_vec_19;
    wire dl_detect_out_19;
    wire dep_chan_vld_0_19;
    wire [43:0] dep_chan_data_0_19;
    wire token_0_19;
    wire dep_chan_vld_1_19;
    wire [43:0] dep_chan_data_1_19;
    wire token_1_19;
    wire dep_chan_vld_5_19;
    wire [43:0] dep_chan_data_5_19;
    wire token_5_19;
    wire dep_chan_vld_6_19;
    wire [43:0] dep_chan_data_6_19;
    wire token_6_19;
    wire dep_chan_vld_11_19;
    wire [43:0] dep_chan_data_11_19;
    wire token_11_19;
    wire dep_chan_vld_16_19;
    wire [43:0] dep_chan_data_16_19;
    wire token_16_19;
    wire dep_chan_vld_17_19;
    wire [43:0] dep_chan_data_17_19;
    wire token_17_19;
    wire dep_chan_vld_20_19;
    wire [43:0] dep_chan_data_20_19;
    wire token_20_19;
    wire dep_chan_vld_22_19;
    wire [43:0] dep_chan_data_22_19;
    wire token_22_19;
    wire dep_chan_vld_23_19;
    wire [43:0] dep_chan_data_23_19;
    wire token_23_19;
    wire dep_chan_vld_28_19;
    wire [43:0] dep_chan_data_28_19;
    wire token_28_19;
    wire dep_chan_vld_29_19;
    wire [43:0] dep_chan_data_29_19;
    wire token_29_19;
    wire dep_chan_vld_31_19;
    wire [43:0] dep_chan_data_31_19;
    wire token_31_19;
    wire dep_chan_vld_33_19;
    wire [43:0] dep_chan_data_33_19;
    wire token_33_19;
    wire dep_chan_vld_36_19;
    wire [43:0] dep_chan_data_36_19;
    wire token_36_19;
    wire dep_chan_vld_37_19;
    wire [43:0] dep_chan_data_37_19;
    wire token_37_19;
    wire dep_chan_vld_39_19;
    wire [43:0] dep_chan_data_39_19;
    wire token_39_19;
    wire dep_chan_vld_42_19;
    wire [43:0] dep_chan_data_42_19;
    wire token_42_19;
    wire [3:0] proc_20_data_FIFO_blk;
    wire [3:0] proc_20_data_PIPO_blk;
    wire [3:0] proc_20_start_FIFO_blk;
    wire [3:0] proc_20_TLF_FIFO_blk;
    wire [3:0] proc_20_input_sync_blk;
    wire [3:0] proc_20_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_20;
    reg [3:0] proc_dep_vld_vec_20_reg;
    wire [2:0] in_chan_dep_vld_vec_20;
    wire [131:0] in_chan_dep_data_vec_20;
    wire [2:0] token_in_vec_20;
    wire [3:0] out_chan_dep_vld_vec_20;
    wire [43:0] out_chan_dep_data_20;
    wire [3:0] token_out_vec_20;
    wire dl_detect_out_20;
    wire dep_chan_vld_18_20;
    wire [43:0] dep_chan_data_18_20;
    wire token_18_20;
    wire dep_chan_vld_21_20;
    wire [43:0] dep_chan_data_21_20;
    wire token_21_20;
    wire dep_chan_vld_30_20;
    wire [43:0] dep_chan_data_30_20;
    wire token_30_20;
    wire [3:0] proc_21_data_FIFO_blk;
    wire [3:0] proc_21_data_PIPO_blk;
    wire [3:0] proc_21_start_FIFO_blk;
    wire [3:0] proc_21_TLF_FIFO_blk;
    wire [3:0] proc_21_input_sync_blk;
    wire [3:0] proc_21_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_21;
    reg [3:0] proc_dep_vld_vec_21_reg;
    wire [3:0] in_chan_dep_vld_vec_21;
    wire [175:0] in_chan_dep_data_vec_21;
    wire [3:0] token_in_vec_21;
    wire [3:0] out_chan_dep_vld_vec_21;
    wire [43:0] out_chan_dep_data_21;
    wire [3:0] token_out_vec_21;
    wire dl_detect_out_21;
    wire dep_chan_vld_18_21;
    wire [43:0] dep_chan_data_18_21;
    wire token_18_21;
    wire dep_chan_vld_20_21;
    wire [43:0] dep_chan_data_20_21;
    wire token_20_21;
    wire dep_chan_vld_23_21;
    wire [43:0] dep_chan_data_23_21;
    wire token_23_21;
    wire dep_chan_vld_24_21;
    wire [43:0] dep_chan_data_24_21;
    wire token_24_21;
    wire [14:0] proc_22_data_FIFO_blk;
    wire [14:0] proc_22_data_PIPO_blk;
    wire [14:0] proc_22_start_FIFO_blk;
    wire [14:0] proc_22_TLF_FIFO_blk;
    wire [14:0] proc_22_input_sync_blk;
    wire [14:0] proc_22_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_22;
    reg [14:0] proc_dep_vld_vec_22_reg;
    wire [15:0] in_chan_dep_vld_vec_22;
    wire [703:0] in_chan_dep_data_vec_22;
    wire [15:0] token_in_vec_22;
    wire [14:0] out_chan_dep_vld_vec_22;
    wire [43:0] out_chan_dep_data_22;
    wire [14:0] token_out_vec_22;
    wire dl_detect_out_22;
    wire dep_chan_vld_0_22;
    wire [43:0] dep_chan_data_0_22;
    wire token_0_22;
    wire dep_chan_vld_1_22;
    wire [43:0] dep_chan_data_1_22;
    wire token_1_22;
    wire dep_chan_vld_5_22;
    wire [43:0] dep_chan_data_5_22;
    wire token_5_22;
    wire dep_chan_vld_6_22;
    wire [43:0] dep_chan_data_6_22;
    wire token_6_22;
    wire dep_chan_vld_11_22;
    wire [43:0] dep_chan_data_11_22;
    wire token_11_22;
    wire dep_chan_vld_16_22;
    wire [43:0] dep_chan_data_16_22;
    wire token_16_22;
    wire dep_chan_vld_17_22;
    wire [43:0] dep_chan_data_17_22;
    wire token_17_22;
    wire dep_chan_vld_19_22;
    wire [43:0] dep_chan_data_19_22;
    wire token_19_22;
    wire dep_chan_vld_23_22;
    wire [43:0] dep_chan_data_23_22;
    wire token_23_22;
    wire dep_chan_vld_26_22;
    wire [43:0] dep_chan_data_26_22;
    wire token_26_22;
    wire dep_chan_vld_28_22;
    wire [43:0] dep_chan_data_28_22;
    wire token_28_22;
    wire dep_chan_vld_29_22;
    wire [43:0] dep_chan_data_29_22;
    wire token_29_22;
    wire dep_chan_vld_33_22;
    wire [43:0] dep_chan_data_33_22;
    wire token_33_22;
    wire dep_chan_vld_36_22;
    wire [43:0] dep_chan_data_36_22;
    wire token_36_22;
    wire dep_chan_vld_39_22;
    wire [43:0] dep_chan_data_39_22;
    wire token_39_22;
    wire dep_chan_vld_42_22;
    wire [43:0] dep_chan_data_42_22;
    wire token_42_22;
    wire [16:0] proc_23_data_FIFO_blk;
    wire [16:0] proc_23_data_PIPO_blk;
    wire [16:0] proc_23_start_FIFO_blk;
    wire [16:0] proc_23_TLF_FIFO_blk;
    wire [16:0] proc_23_input_sync_blk;
    wire [16:0] proc_23_output_sync_blk;
    wire [16:0] proc_dep_vld_vec_23;
    reg [16:0] proc_dep_vld_vec_23_reg;
    wire [16:0] in_chan_dep_vld_vec_23;
    wire [747:0] in_chan_dep_data_vec_23;
    wire [16:0] token_in_vec_23;
    wire [16:0] out_chan_dep_vld_vec_23;
    wire [43:0] out_chan_dep_data_23;
    wire [16:0] token_out_vec_23;
    wire dl_detect_out_23;
    wire dep_chan_vld_0_23;
    wire [43:0] dep_chan_data_0_23;
    wire token_0_23;
    wire dep_chan_vld_1_23;
    wire [43:0] dep_chan_data_1_23;
    wire token_1_23;
    wire dep_chan_vld_5_23;
    wire [43:0] dep_chan_data_5_23;
    wire token_5_23;
    wire dep_chan_vld_6_23;
    wire [43:0] dep_chan_data_6_23;
    wire token_6_23;
    wire dep_chan_vld_11_23;
    wire [43:0] dep_chan_data_11_23;
    wire token_11_23;
    wire dep_chan_vld_16_23;
    wire [43:0] dep_chan_data_16_23;
    wire token_16_23;
    wire dep_chan_vld_17_23;
    wire [43:0] dep_chan_data_17_23;
    wire token_17_23;
    wire dep_chan_vld_19_23;
    wire [43:0] dep_chan_data_19_23;
    wire token_19_23;
    wire dep_chan_vld_21_23;
    wire [43:0] dep_chan_data_21_23;
    wire token_21_23;
    wire dep_chan_vld_22_23;
    wire [43:0] dep_chan_data_22_23;
    wire token_22_23;
    wire dep_chan_vld_24_23;
    wire [43:0] dep_chan_data_24_23;
    wire token_24_23;
    wire dep_chan_vld_28_23;
    wire [43:0] dep_chan_data_28_23;
    wire token_28_23;
    wire dep_chan_vld_29_23;
    wire [43:0] dep_chan_data_29_23;
    wire token_29_23;
    wire dep_chan_vld_33_23;
    wire [43:0] dep_chan_data_33_23;
    wire token_33_23;
    wire dep_chan_vld_36_23;
    wire [43:0] dep_chan_data_36_23;
    wire token_36_23;
    wire dep_chan_vld_39_23;
    wire [43:0] dep_chan_data_39_23;
    wire token_39_23;
    wire dep_chan_vld_42_23;
    wire [43:0] dep_chan_data_42_23;
    wire token_42_23;
    wire [2:0] proc_24_data_FIFO_blk;
    wire [2:0] proc_24_data_PIPO_blk;
    wire [2:0] proc_24_start_FIFO_blk;
    wire [2:0] proc_24_TLF_FIFO_blk;
    wire [2:0] proc_24_input_sync_blk;
    wire [2:0] proc_24_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_24;
    reg [2:0] proc_dep_vld_vec_24_reg;
    wire [2:0] in_chan_dep_vld_vec_24;
    wire [131:0] in_chan_dep_data_vec_24;
    wire [2:0] token_in_vec_24;
    wire [2:0] out_chan_dep_vld_vec_24;
    wire [43:0] out_chan_dep_data_24;
    wire [2:0] token_out_vec_24;
    wire dl_detect_out_24;
    wire dep_chan_vld_21_24;
    wire [43:0] dep_chan_data_21_24;
    wire token_21_24;
    wire dep_chan_vld_23_24;
    wire [43:0] dep_chan_data_23_24;
    wire token_23_24;
    wire dep_chan_vld_25_24;
    wire [43:0] dep_chan_data_25_24;
    wire token_25_24;
    wire [2:0] proc_25_data_FIFO_blk;
    wire [2:0] proc_25_data_PIPO_blk;
    wire [2:0] proc_25_start_FIFO_blk;
    wire [2:0] proc_25_TLF_FIFO_blk;
    wire [2:0] proc_25_input_sync_blk;
    wire [2:0] proc_25_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_25;
    reg [2:0] proc_dep_vld_vec_25_reg;
    wire [2:0] in_chan_dep_vld_vec_25;
    wire [131:0] in_chan_dep_data_vec_25;
    wire [2:0] token_in_vec_25;
    wire [2:0] out_chan_dep_vld_vec_25;
    wire [43:0] out_chan_dep_data_25;
    wire [2:0] token_out_vec_25;
    wire dl_detect_out_25;
    wire dep_chan_vld_24_25;
    wire [43:0] dep_chan_data_24_25;
    wire token_24_25;
    wire dep_chan_vld_26_25;
    wire [43:0] dep_chan_data_26_25;
    wire token_26_25;
    wire dep_chan_vld_27_25;
    wire [43:0] dep_chan_data_27_25;
    wire token_27_25;
    wire [2:0] proc_26_data_FIFO_blk;
    wire [2:0] proc_26_data_PIPO_blk;
    wire [2:0] proc_26_start_FIFO_blk;
    wire [2:0] proc_26_TLF_FIFO_blk;
    wire [2:0] proc_26_input_sync_blk;
    wire [2:0] proc_26_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_26;
    reg [2:0] proc_dep_vld_vec_26_reg;
    wire [1:0] in_chan_dep_vld_vec_26;
    wire [87:0] in_chan_dep_data_vec_26;
    wire [1:0] token_in_vec_26;
    wire [2:0] out_chan_dep_vld_vec_26;
    wire [43:0] out_chan_dep_data_26;
    wire [2:0] token_out_vec_26;
    wire dl_detect_out_26;
    wire dep_chan_vld_25_26;
    wire [43:0] dep_chan_data_25_26;
    wire token_25_26;
    wire dep_chan_vld_27_26;
    wire [43:0] dep_chan_data_27_26;
    wire token_27_26;
    wire [3:0] proc_27_data_FIFO_blk;
    wire [3:0] proc_27_data_PIPO_blk;
    wire [3:0] proc_27_start_FIFO_blk;
    wire [3:0] proc_27_TLF_FIFO_blk;
    wire [3:0] proc_27_input_sync_blk;
    wire [3:0] proc_27_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_27;
    reg [3:0] proc_dep_vld_vec_27_reg;
    wire [3:0] in_chan_dep_vld_vec_27;
    wire [175:0] in_chan_dep_data_vec_27;
    wire [3:0] token_in_vec_27;
    wire [3:0] out_chan_dep_vld_vec_27;
    wire [43:0] out_chan_dep_data_27;
    wire [3:0] token_out_vec_27;
    wire dl_detect_out_27;
    wire dep_chan_vld_25_27;
    wire [43:0] dep_chan_data_25_27;
    wire token_25_27;
    wire dep_chan_vld_26_27;
    wire [43:0] dep_chan_data_26_27;
    wire token_26_27;
    wire dep_chan_vld_29_27;
    wire [43:0] dep_chan_data_29_27;
    wire token_29_27;
    wire dep_chan_vld_32_27;
    wire [43:0] dep_chan_data_32_27;
    wire token_32_27;
    wire [14:0] proc_28_data_FIFO_blk;
    wire [14:0] proc_28_data_PIPO_blk;
    wire [14:0] proc_28_start_FIFO_blk;
    wire [14:0] proc_28_TLF_FIFO_blk;
    wire [14:0] proc_28_input_sync_blk;
    wire [14:0] proc_28_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_28;
    reg [14:0] proc_dep_vld_vec_28_reg;
    wire [15:0] in_chan_dep_vld_vec_28;
    wire [703:0] in_chan_dep_data_vec_28;
    wire [15:0] token_in_vec_28;
    wire [14:0] out_chan_dep_vld_vec_28;
    wire [43:0] out_chan_dep_data_28;
    wire [14:0] token_out_vec_28;
    wire dl_detect_out_28;
    wire dep_chan_vld_0_28;
    wire [43:0] dep_chan_data_0_28;
    wire token_0_28;
    wire dep_chan_vld_1_28;
    wire [43:0] dep_chan_data_1_28;
    wire token_1_28;
    wire dep_chan_vld_5_28;
    wire [43:0] dep_chan_data_5_28;
    wire token_5_28;
    wire dep_chan_vld_6_28;
    wire [43:0] dep_chan_data_6_28;
    wire token_6_28;
    wire dep_chan_vld_11_28;
    wire [43:0] dep_chan_data_11_28;
    wire token_11_28;
    wire dep_chan_vld_16_28;
    wire [43:0] dep_chan_data_16_28;
    wire token_16_28;
    wire dep_chan_vld_17_28;
    wire [43:0] dep_chan_data_17_28;
    wire token_17_28;
    wire dep_chan_vld_19_28;
    wire [43:0] dep_chan_data_19_28;
    wire token_19_28;
    wire dep_chan_vld_22_28;
    wire [43:0] dep_chan_data_22_28;
    wire token_22_28;
    wire dep_chan_vld_23_28;
    wire [43:0] dep_chan_data_23_28;
    wire token_23_28;
    wire dep_chan_vld_29_28;
    wire [43:0] dep_chan_data_29_28;
    wire token_29_28;
    wire dep_chan_vld_31_28;
    wire [43:0] dep_chan_data_31_28;
    wire token_31_28;
    wire dep_chan_vld_33_28;
    wire [43:0] dep_chan_data_33_28;
    wire token_33_28;
    wire dep_chan_vld_36_28;
    wire [43:0] dep_chan_data_36_28;
    wire token_36_28;
    wire dep_chan_vld_39_28;
    wire [43:0] dep_chan_data_39_28;
    wire token_39_28;
    wire dep_chan_vld_42_28;
    wire [43:0] dep_chan_data_42_28;
    wire token_42_28;
    wire [16:0] proc_29_data_FIFO_blk;
    wire [16:0] proc_29_data_PIPO_blk;
    wire [16:0] proc_29_start_FIFO_blk;
    wire [16:0] proc_29_TLF_FIFO_blk;
    wire [16:0] proc_29_input_sync_blk;
    wire [16:0] proc_29_output_sync_blk;
    wire [16:0] proc_dep_vld_vec_29;
    reg [16:0] proc_dep_vld_vec_29_reg;
    wire [16:0] in_chan_dep_vld_vec_29;
    wire [747:0] in_chan_dep_data_vec_29;
    wire [16:0] token_in_vec_29;
    wire [16:0] out_chan_dep_vld_vec_29;
    wire [43:0] out_chan_dep_data_29;
    wire [16:0] token_out_vec_29;
    wire dl_detect_out_29;
    wire dep_chan_vld_0_29;
    wire [43:0] dep_chan_data_0_29;
    wire token_0_29;
    wire dep_chan_vld_1_29;
    wire [43:0] dep_chan_data_1_29;
    wire token_1_29;
    wire dep_chan_vld_5_29;
    wire [43:0] dep_chan_data_5_29;
    wire token_5_29;
    wire dep_chan_vld_6_29;
    wire [43:0] dep_chan_data_6_29;
    wire token_6_29;
    wire dep_chan_vld_11_29;
    wire [43:0] dep_chan_data_11_29;
    wire token_11_29;
    wire dep_chan_vld_16_29;
    wire [43:0] dep_chan_data_16_29;
    wire token_16_29;
    wire dep_chan_vld_17_29;
    wire [43:0] dep_chan_data_17_29;
    wire token_17_29;
    wire dep_chan_vld_19_29;
    wire [43:0] dep_chan_data_19_29;
    wire token_19_29;
    wire dep_chan_vld_22_29;
    wire [43:0] dep_chan_data_22_29;
    wire token_22_29;
    wire dep_chan_vld_23_29;
    wire [43:0] dep_chan_data_23_29;
    wire token_23_29;
    wire dep_chan_vld_27_29;
    wire [43:0] dep_chan_data_27_29;
    wire token_27_29;
    wire dep_chan_vld_28_29;
    wire [43:0] dep_chan_data_28_29;
    wire token_28_29;
    wire dep_chan_vld_30_29;
    wire [43:0] dep_chan_data_30_29;
    wire token_30_29;
    wire dep_chan_vld_33_29;
    wire [43:0] dep_chan_data_33_29;
    wire token_33_29;
    wire dep_chan_vld_36_29;
    wire [43:0] dep_chan_data_36_29;
    wire token_36_29;
    wire dep_chan_vld_39_29;
    wire [43:0] dep_chan_data_39_29;
    wire token_39_29;
    wire dep_chan_vld_42_29;
    wire [43:0] dep_chan_data_42_29;
    wire token_42_29;
    wire [2:0] proc_30_data_FIFO_blk;
    wire [2:0] proc_30_data_PIPO_blk;
    wire [2:0] proc_30_start_FIFO_blk;
    wire [2:0] proc_30_TLF_FIFO_blk;
    wire [2:0] proc_30_input_sync_blk;
    wire [2:0] proc_30_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_30;
    reg [2:0] proc_dep_vld_vec_30_reg;
    wire [2:0] in_chan_dep_vld_vec_30;
    wire [131:0] in_chan_dep_data_vec_30;
    wire [2:0] token_in_vec_30;
    wire [2:0] out_chan_dep_vld_vec_30;
    wire [43:0] out_chan_dep_data_30;
    wire [2:0] token_out_vec_30;
    wire dl_detect_out_30;
    wire dep_chan_vld_20_30;
    wire [43:0] dep_chan_data_20_30;
    wire token_20_30;
    wire dep_chan_vld_29_30;
    wire [43:0] dep_chan_data_29_30;
    wire token_29_30;
    wire dep_chan_vld_31_30;
    wire [43:0] dep_chan_data_31_30;
    wire token_31_30;
    wire [4:0] proc_31_data_FIFO_blk;
    wire [4:0] proc_31_data_PIPO_blk;
    wire [4:0] proc_31_start_FIFO_blk;
    wire [4:0] proc_31_TLF_FIFO_blk;
    wire [4:0] proc_31_input_sync_blk;
    wire [4:0] proc_31_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_31;
    reg [4:0] proc_dep_vld_vec_31_reg;
    wire [2:0] in_chan_dep_vld_vec_31;
    wire [131:0] in_chan_dep_data_vec_31;
    wire [2:0] token_in_vec_31;
    wire [4:0] out_chan_dep_vld_vec_31;
    wire [43:0] out_chan_dep_data_31;
    wire [4:0] token_out_vec_31;
    wire dl_detect_out_31;
    wire dep_chan_vld_30_31;
    wire [43:0] dep_chan_data_30_31;
    wire token_30_31;
    wire dep_chan_vld_32_31;
    wire [43:0] dep_chan_data_32_31;
    wire token_32_31;
    wire dep_chan_vld_35_31;
    wire [43:0] dep_chan_data_35_31;
    wire token_35_31;
    wire [2:0] proc_32_data_FIFO_blk;
    wire [2:0] proc_32_data_PIPO_blk;
    wire [2:0] proc_32_start_FIFO_blk;
    wire [2:0] proc_32_TLF_FIFO_blk;
    wire [2:0] proc_32_input_sync_blk;
    wire [2:0] proc_32_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_32;
    reg [2:0] proc_dep_vld_vec_32_reg;
    wire [2:0] in_chan_dep_vld_vec_32;
    wire [131:0] in_chan_dep_data_vec_32;
    wire [2:0] token_in_vec_32;
    wire [2:0] out_chan_dep_vld_vec_32;
    wire [43:0] out_chan_dep_data_32;
    wire [2:0] token_out_vec_32;
    wire dl_detect_out_32;
    wire dep_chan_vld_27_32;
    wire [43:0] dep_chan_data_27_32;
    wire token_27_32;
    wire dep_chan_vld_31_32;
    wire [43:0] dep_chan_data_31_32;
    wire token_31_32;
    wire dep_chan_vld_33_32;
    wire [43:0] dep_chan_data_33_32;
    wire token_33_32;
    wire [16:0] proc_33_data_FIFO_blk;
    wire [16:0] proc_33_data_PIPO_blk;
    wire [16:0] proc_33_start_FIFO_blk;
    wire [16:0] proc_33_TLF_FIFO_blk;
    wire [16:0] proc_33_input_sync_blk;
    wire [16:0] proc_33_output_sync_blk;
    wire [16:0] proc_dep_vld_vec_33;
    reg [16:0] proc_dep_vld_vec_33_reg;
    wire [16:0] in_chan_dep_vld_vec_33;
    wire [747:0] in_chan_dep_data_vec_33;
    wire [16:0] token_in_vec_33;
    wire [16:0] out_chan_dep_vld_vec_33;
    wire [43:0] out_chan_dep_data_33;
    wire [16:0] token_out_vec_33;
    wire dl_detect_out_33;
    wire dep_chan_vld_0_33;
    wire [43:0] dep_chan_data_0_33;
    wire token_0_33;
    wire dep_chan_vld_1_33;
    wire [43:0] dep_chan_data_1_33;
    wire token_1_33;
    wire dep_chan_vld_5_33;
    wire [43:0] dep_chan_data_5_33;
    wire token_5_33;
    wire dep_chan_vld_6_33;
    wire [43:0] dep_chan_data_6_33;
    wire token_6_33;
    wire dep_chan_vld_11_33;
    wire [43:0] dep_chan_data_11_33;
    wire token_11_33;
    wire dep_chan_vld_16_33;
    wire [43:0] dep_chan_data_16_33;
    wire token_16_33;
    wire dep_chan_vld_17_33;
    wire [43:0] dep_chan_data_17_33;
    wire token_17_33;
    wire dep_chan_vld_19_33;
    wire [43:0] dep_chan_data_19_33;
    wire token_19_33;
    wire dep_chan_vld_22_33;
    wire [43:0] dep_chan_data_22_33;
    wire token_22_33;
    wire dep_chan_vld_23_33;
    wire [43:0] dep_chan_data_23_33;
    wire token_23_33;
    wire dep_chan_vld_28_33;
    wire [43:0] dep_chan_data_28_33;
    wire token_28_33;
    wire dep_chan_vld_29_33;
    wire [43:0] dep_chan_data_29_33;
    wire token_29_33;
    wire dep_chan_vld_32_33;
    wire [43:0] dep_chan_data_32_33;
    wire token_32_33;
    wire dep_chan_vld_34_33;
    wire [43:0] dep_chan_data_34_33;
    wire token_34_33;
    wire dep_chan_vld_36_33;
    wire [43:0] dep_chan_data_36_33;
    wire token_36_33;
    wire dep_chan_vld_39_33;
    wire [43:0] dep_chan_data_39_33;
    wire token_39_33;
    wire dep_chan_vld_42_33;
    wire [43:0] dep_chan_data_42_33;
    wire token_42_33;
    wire [2:0] proc_34_data_FIFO_blk;
    wire [2:0] proc_34_data_PIPO_blk;
    wire [2:0] proc_34_start_FIFO_blk;
    wire [2:0] proc_34_TLF_FIFO_blk;
    wire [2:0] proc_34_input_sync_blk;
    wire [2:0] proc_34_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_34;
    reg [2:0] proc_dep_vld_vec_34_reg;
    wire [2:0] in_chan_dep_vld_vec_34;
    wire [131:0] in_chan_dep_data_vec_34;
    wire [2:0] token_in_vec_34;
    wire [2:0] out_chan_dep_vld_vec_34;
    wire [43:0] out_chan_dep_data_34;
    wire [2:0] token_out_vec_34;
    wire dl_detect_out_34;
    wire dep_chan_vld_33_34;
    wire [43:0] dep_chan_data_33_34;
    wire token_33_34;
    wire dep_chan_vld_35_34;
    wire [43:0] dep_chan_data_35_34;
    wire token_35_34;
    wire dep_chan_vld_36_34;
    wire [43:0] dep_chan_data_36_34;
    wire token_36_34;
    wire [3:0] proc_35_data_FIFO_blk;
    wire [3:0] proc_35_data_PIPO_blk;
    wire [3:0] proc_35_start_FIFO_blk;
    wire [3:0] proc_35_TLF_FIFO_blk;
    wire [3:0] proc_35_input_sync_blk;
    wire [3:0] proc_35_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_35;
    reg [3:0] proc_dep_vld_vec_35_reg;
    wire [3:0] in_chan_dep_vld_vec_35;
    wire [175:0] in_chan_dep_data_vec_35;
    wire [3:0] token_in_vec_35;
    wire [3:0] out_chan_dep_vld_vec_35;
    wire [43:0] out_chan_dep_data_35;
    wire [3:0] token_out_vec_35;
    wire dl_detect_out_35;
    wire dep_chan_vld_31_35;
    wire [43:0] dep_chan_data_31_35;
    wire token_31_35;
    wire dep_chan_vld_34_35;
    wire [43:0] dep_chan_data_34_35;
    wire token_34_35;
    wire dep_chan_vld_36_35;
    wire [43:0] dep_chan_data_36_35;
    wire token_36_35;
    wire dep_chan_vld_38_35;
    wire [43:0] dep_chan_data_38_35;
    wire token_38_35;
    wire [17:0] proc_36_data_FIFO_blk;
    wire [17:0] proc_36_data_PIPO_blk;
    wire [17:0] proc_36_start_FIFO_blk;
    wire [17:0] proc_36_TLF_FIFO_blk;
    wire [17:0] proc_36_input_sync_blk;
    wire [17:0] proc_36_output_sync_blk;
    wire [17:0] proc_dep_vld_vec_36;
    reg [17:0] proc_dep_vld_vec_36_reg;
    wire [17:0] in_chan_dep_vld_vec_36;
    wire [791:0] in_chan_dep_data_vec_36;
    wire [17:0] token_in_vec_36;
    wire [17:0] out_chan_dep_vld_vec_36;
    wire [43:0] out_chan_dep_data_36;
    wire [17:0] token_out_vec_36;
    wire dl_detect_out_36;
    wire dep_chan_vld_0_36;
    wire [43:0] dep_chan_data_0_36;
    wire token_0_36;
    wire dep_chan_vld_1_36;
    wire [43:0] dep_chan_data_1_36;
    wire token_1_36;
    wire dep_chan_vld_5_36;
    wire [43:0] dep_chan_data_5_36;
    wire token_5_36;
    wire dep_chan_vld_6_36;
    wire [43:0] dep_chan_data_6_36;
    wire token_6_36;
    wire dep_chan_vld_11_36;
    wire [43:0] dep_chan_data_11_36;
    wire token_11_36;
    wire dep_chan_vld_16_36;
    wire [43:0] dep_chan_data_16_36;
    wire token_16_36;
    wire dep_chan_vld_17_36;
    wire [43:0] dep_chan_data_17_36;
    wire token_17_36;
    wire dep_chan_vld_19_36;
    wire [43:0] dep_chan_data_19_36;
    wire token_19_36;
    wire dep_chan_vld_22_36;
    wire [43:0] dep_chan_data_22_36;
    wire token_22_36;
    wire dep_chan_vld_23_36;
    wire [43:0] dep_chan_data_23_36;
    wire token_23_36;
    wire dep_chan_vld_28_36;
    wire [43:0] dep_chan_data_28_36;
    wire token_28_36;
    wire dep_chan_vld_29_36;
    wire [43:0] dep_chan_data_29_36;
    wire token_29_36;
    wire dep_chan_vld_33_36;
    wire [43:0] dep_chan_data_33_36;
    wire token_33_36;
    wire dep_chan_vld_34_36;
    wire [43:0] dep_chan_data_34_36;
    wire token_34_36;
    wire dep_chan_vld_35_36;
    wire [43:0] dep_chan_data_35_36;
    wire token_35_36;
    wire dep_chan_vld_37_36;
    wire [43:0] dep_chan_data_37_36;
    wire token_37_36;
    wire dep_chan_vld_39_36;
    wire [43:0] dep_chan_data_39_36;
    wire token_39_36;
    wire dep_chan_vld_42_36;
    wire [43:0] dep_chan_data_42_36;
    wire token_42_36;
    wire [3:0] proc_37_data_FIFO_blk;
    wire [3:0] proc_37_data_PIPO_blk;
    wire [3:0] proc_37_start_FIFO_blk;
    wire [3:0] proc_37_TLF_FIFO_blk;
    wire [3:0] proc_37_input_sync_blk;
    wire [3:0] proc_37_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_37;
    reg [3:0] proc_dep_vld_vec_37_reg;
    wire [2:0] in_chan_dep_vld_vec_37;
    wire [131:0] in_chan_dep_data_vec_37;
    wire [2:0] token_in_vec_37;
    wire [3:0] out_chan_dep_vld_vec_37;
    wire [43:0] out_chan_dep_data_37;
    wire [3:0] token_out_vec_37;
    wire dl_detect_out_37;
    wire dep_chan_vld_36_37;
    wire [43:0] dep_chan_data_36_37;
    wire token_36_37;
    wire dep_chan_vld_38_37;
    wire [43:0] dep_chan_data_38_37;
    wire token_38_37;
    wire dep_chan_vld_40_37;
    wire [43:0] dep_chan_data_40_37;
    wire token_40_37;
    wire [2:0] proc_38_data_FIFO_blk;
    wire [2:0] proc_38_data_PIPO_blk;
    wire [2:0] proc_38_start_FIFO_blk;
    wire [2:0] proc_38_TLF_FIFO_blk;
    wire [2:0] proc_38_input_sync_blk;
    wire [2:0] proc_38_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_38;
    reg [2:0] proc_dep_vld_vec_38_reg;
    wire [2:0] in_chan_dep_vld_vec_38;
    wire [131:0] in_chan_dep_data_vec_38;
    wire [2:0] token_in_vec_38;
    wire [2:0] out_chan_dep_vld_vec_38;
    wire [43:0] out_chan_dep_data_38;
    wire [2:0] token_out_vec_38;
    wire dl_detect_out_38;
    wire dep_chan_vld_35_38;
    wire [43:0] dep_chan_data_35_38;
    wire token_35_38;
    wire dep_chan_vld_37_38;
    wire [43:0] dep_chan_data_37_38;
    wire token_37_38;
    wire dep_chan_vld_39_38;
    wire [43:0] dep_chan_data_39_38;
    wire token_39_38;
    wire [16:0] proc_39_data_FIFO_blk;
    wire [16:0] proc_39_data_PIPO_blk;
    wire [16:0] proc_39_start_FIFO_blk;
    wire [16:0] proc_39_TLF_FIFO_blk;
    wire [16:0] proc_39_input_sync_blk;
    wire [16:0] proc_39_output_sync_blk;
    wire [16:0] proc_dep_vld_vec_39;
    reg [16:0] proc_dep_vld_vec_39_reg;
    wire [16:0] in_chan_dep_vld_vec_39;
    wire [747:0] in_chan_dep_data_vec_39;
    wire [16:0] token_in_vec_39;
    wire [16:0] out_chan_dep_vld_vec_39;
    wire [43:0] out_chan_dep_data_39;
    wire [16:0] token_out_vec_39;
    wire dl_detect_out_39;
    wire dep_chan_vld_0_39;
    wire [43:0] dep_chan_data_0_39;
    wire token_0_39;
    wire dep_chan_vld_1_39;
    wire [43:0] dep_chan_data_1_39;
    wire token_1_39;
    wire dep_chan_vld_5_39;
    wire [43:0] dep_chan_data_5_39;
    wire token_5_39;
    wire dep_chan_vld_6_39;
    wire [43:0] dep_chan_data_6_39;
    wire token_6_39;
    wire dep_chan_vld_11_39;
    wire [43:0] dep_chan_data_11_39;
    wire token_11_39;
    wire dep_chan_vld_16_39;
    wire [43:0] dep_chan_data_16_39;
    wire token_16_39;
    wire dep_chan_vld_17_39;
    wire [43:0] dep_chan_data_17_39;
    wire token_17_39;
    wire dep_chan_vld_19_39;
    wire [43:0] dep_chan_data_19_39;
    wire token_19_39;
    wire dep_chan_vld_22_39;
    wire [43:0] dep_chan_data_22_39;
    wire token_22_39;
    wire dep_chan_vld_23_39;
    wire [43:0] dep_chan_data_23_39;
    wire token_23_39;
    wire dep_chan_vld_28_39;
    wire [43:0] dep_chan_data_28_39;
    wire token_28_39;
    wire dep_chan_vld_29_39;
    wire [43:0] dep_chan_data_29_39;
    wire token_29_39;
    wire dep_chan_vld_33_39;
    wire [43:0] dep_chan_data_33_39;
    wire token_33_39;
    wire dep_chan_vld_36_39;
    wire [43:0] dep_chan_data_36_39;
    wire token_36_39;
    wire dep_chan_vld_38_39;
    wire [43:0] dep_chan_data_38_39;
    wire token_38_39;
    wire dep_chan_vld_40_39;
    wire [43:0] dep_chan_data_40_39;
    wire token_40_39;
    wire dep_chan_vld_42_39;
    wire [43:0] dep_chan_data_42_39;
    wire token_42_39;
    wire [2:0] proc_40_data_FIFO_blk;
    wire [2:0] proc_40_data_PIPO_blk;
    wire [2:0] proc_40_start_FIFO_blk;
    wire [2:0] proc_40_TLF_FIFO_blk;
    wire [2:0] proc_40_input_sync_blk;
    wire [2:0] proc_40_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_40;
    reg [2:0] proc_dep_vld_vec_40_reg;
    wire [2:0] in_chan_dep_vld_vec_40;
    wire [131:0] in_chan_dep_data_vec_40;
    wire [2:0] token_in_vec_40;
    wire [2:0] out_chan_dep_vld_vec_40;
    wire [43:0] out_chan_dep_data_40;
    wire [2:0] token_out_vec_40;
    wire dl_detect_out_40;
    wire dep_chan_vld_37_40;
    wire [43:0] dep_chan_data_37_40;
    wire token_37_40;
    wire dep_chan_vld_39_40;
    wire [43:0] dep_chan_data_39_40;
    wire token_39_40;
    wire dep_chan_vld_41_40;
    wire [43:0] dep_chan_data_41_40;
    wire token_41_40;
    wire [1:0] proc_41_data_FIFO_blk;
    wire [1:0] proc_41_data_PIPO_blk;
    wire [1:0] proc_41_start_FIFO_blk;
    wire [1:0] proc_41_TLF_FIFO_blk;
    wire [1:0] proc_41_input_sync_blk;
    wire [1:0] proc_41_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_41;
    reg [1:0] proc_dep_vld_vec_41_reg;
    wire [1:0] in_chan_dep_vld_vec_41;
    wire [87:0] in_chan_dep_data_vec_41;
    wire [1:0] token_in_vec_41;
    wire [1:0] out_chan_dep_vld_vec_41;
    wire [43:0] out_chan_dep_data_41;
    wire [1:0] token_out_vec_41;
    wire dl_detect_out_41;
    wire dep_chan_vld_40_41;
    wire [43:0] dep_chan_data_40_41;
    wire token_40_41;
    wire dep_chan_vld_42_41;
    wire [43:0] dep_chan_data_42_41;
    wire token_42_41;
    wire [16:0] proc_42_data_FIFO_blk;
    wire [16:0] proc_42_data_PIPO_blk;
    wire [16:0] proc_42_start_FIFO_blk;
    wire [16:0] proc_42_TLF_FIFO_blk;
    wire [16:0] proc_42_input_sync_blk;
    wire [16:0] proc_42_output_sync_blk;
    wire [16:0] proc_dep_vld_vec_42;
    reg [16:0] proc_dep_vld_vec_42_reg;
    wire [16:0] in_chan_dep_vld_vec_42;
    wire [747:0] in_chan_dep_data_vec_42;
    wire [16:0] token_in_vec_42;
    wire [16:0] out_chan_dep_vld_vec_42;
    wire [43:0] out_chan_dep_data_42;
    wire [16:0] token_out_vec_42;
    wire dl_detect_out_42;
    wire dep_chan_vld_0_42;
    wire [43:0] dep_chan_data_0_42;
    wire token_0_42;
    wire dep_chan_vld_1_42;
    wire [43:0] dep_chan_data_1_42;
    wire token_1_42;
    wire dep_chan_vld_5_42;
    wire [43:0] dep_chan_data_5_42;
    wire token_5_42;
    wire dep_chan_vld_6_42;
    wire [43:0] dep_chan_data_6_42;
    wire token_6_42;
    wire dep_chan_vld_11_42;
    wire [43:0] dep_chan_data_11_42;
    wire token_11_42;
    wire dep_chan_vld_16_42;
    wire [43:0] dep_chan_data_16_42;
    wire token_16_42;
    wire dep_chan_vld_17_42;
    wire [43:0] dep_chan_data_17_42;
    wire token_17_42;
    wire dep_chan_vld_19_42;
    wire [43:0] dep_chan_data_19_42;
    wire token_19_42;
    wire dep_chan_vld_22_42;
    wire [43:0] dep_chan_data_22_42;
    wire token_22_42;
    wire dep_chan_vld_23_42;
    wire [43:0] dep_chan_data_23_42;
    wire token_23_42;
    wire dep_chan_vld_28_42;
    wire [43:0] dep_chan_data_28_42;
    wire token_28_42;
    wire dep_chan_vld_29_42;
    wire [43:0] dep_chan_data_29_42;
    wire token_29_42;
    wire dep_chan_vld_33_42;
    wire [43:0] dep_chan_data_33_42;
    wire token_33_42;
    wire dep_chan_vld_36_42;
    wire [43:0] dep_chan_data_36_42;
    wire token_36_42;
    wire dep_chan_vld_39_42;
    wire [43:0] dep_chan_data_39_42;
    wire token_39_42;
    wire dep_chan_vld_41_42;
    wire [43:0] dep_chan_data_41_42;
    wire token_41_42;
    wire dep_chan_vld_43_42;
    wire [43:0] dep_chan_data_43_42;
    wire token_43_42;
    wire [1:0] proc_43_data_FIFO_blk;
    wire [1:0] proc_43_data_PIPO_blk;
    wire [1:0] proc_43_start_FIFO_blk;
    wire [1:0] proc_43_TLF_FIFO_blk;
    wire [1:0] proc_43_input_sync_blk;
    wire [1:0] proc_43_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_43;
    reg [1:0] proc_dep_vld_vec_43_reg;
    wire [1:0] in_chan_dep_vld_vec_43;
    wire [87:0] in_chan_dep_data_vec_43;
    wire [1:0] token_in_vec_43;
    wire [1:0] out_chan_dep_vld_vec_43;
    wire [43:0] out_chan_dep_data_43;
    wire [1:0] token_out_vec_43;
    wire dl_detect_out_43;
    wire dep_chan_vld_0_43;
    wire [43:0] dep_chan_data_0_43;
    wire token_0_43;
    wire dep_chan_vld_42_43;
    wire [43:0] dep_chan_data_42_43;
    wire token_42_43;
    wire [43:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    reg [43:0] origin;

    reg ap_done_reg_0;// for module grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_0 <= 'b0;
        end
        else begin
            ap_done_reg_0 <= grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_done & ~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_continue;
        end
    end

    reg ap_done_reg_1;// for module grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj900EEC2ERN3hls6streamI_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_1 <= 'b0;
        end
        else begin
            ap_done_reg_1 <= grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj900EEC2ERN3hls6streamI_U0.ap_done & ~grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj900EEC2ERN3hls6streamI_U0.ap_continue;
        end
    end

    reg ap_done_reg_2;// for module grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_2 <= 'b0;
        end
        else begin
            ap_done_reg_2 <= grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_done & ~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_continue;
        end
    end

    reg ap_done_reg_3;// for module grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_3 <= 'b0;
        end
        else begin
            ap_done_reg_3 <= grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_done & ~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_continue;
        end
    end

    reg ap_done_reg_4;// for module grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_4 <= 'b0;
        end
        else begin
            ap_done_reg_4 <= grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.ap_done & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.ap_continue;
        end
    end

    reg ap_done_reg_5;// for module grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_5 <= 'b0;
        end
        else begin
            ap_done_reg_5 <= grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0.ap_done & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0.ap_continue;
        end
    end

    reg ap_done_reg_6;// for module grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_6 <= 'b0;
        end
        else begin
            ap_done_reg_6 <= grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_done & ~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_continue;
        end
    end

    reg ap_done_reg_7;// for module grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_7 <= 'b0;
        end
        else begin
            ap_done_reg_7 <= grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0.ap_done & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0.ap_continue;
        end
    end

    reg ap_done_reg_8;// for module grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_8 <= 'b0;
        end
        else begin
            ap_done_reg_8 <= grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_done & ~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_continue;
        end
    end

    reg ap_done_reg_9;// for module grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_9 <= 'b0;
        end
        else begin
            ap_done_reg_9 <= grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.ap_done & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.ap_continue;
        end
    end

    reg ap_done_reg_10;// for module grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_10 <= 'b0;
        end
        else begin
            ap_done_reg_10 <= grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.ap_done & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.ap_continue;
        end
    end

reg [15:0] trans_in_cnt_0;// for process grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_0 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.start_write == 1'b1) begin
        trans_in_cnt_0 <= trans_in_cnt_0 + 16'h1;
    end
    else begin
        trans_in_cnt_0 <= trans_in_cnt_0;
    end
end

reg [15:0] trans_out_cnt_0;// for process grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_0 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_continue == 1'b1) begin
        trans_out_cnt_0 <= trans_out_cnt_0 + 16'h1;
    end
    else begin
        trans_out_cnt_0 <= trans_out_cnt_0;
    end
end

reg [15:0] trans_in_cnt_1;// for process grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_1 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.start_write == 1'b1) begin
        trans_in_cnt_1 <= trans_in_cnt_1 + 16'h1;
    end
    else begin
        trans_in_cnt_1 <= trans_in_cnt_1;
    end
end

reg [15:0] trans_out_cnt_1;// for process grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_1 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.ap_continue == 1'b1) begin
        trans_out_cnt_1 <= trans_out_cnt_1 + 16'h1;
    end
    else begin
        trans_out_cnt_1 <= trans_out_cnt_1;
    end
end

reg [15:0] trans_in_cnt_2;// for process grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_2 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.start_write == 1'b1) begin
        trans_in_cnt_2 <= trans_in_cnt_2 + 16'h1;
    end
    else begin
        trans_in_cnt_2 <= trans_in_cnt_2;
    end
end

reg [15:0] trans_out_cnt_2;// for process grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_2 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.ap_continue == 1'b1) begin
        trans_out_cnt_2 <= trans_out_cnt_2 + 16'h1;
    end
    else begin
        trans_out_cnt_2 <= trans_out_cnt_2;
    end
end

reg [15:0] trans_in_cnt_3;// for process grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_3 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.start_write == 1'b1) begin
        trans_in_cnt_3 <= trans_in_cnt_3 + 16'h1;
    end
    else begin
        trans_in_cnt_3 <= trans_in_cnt_3;
    end
end

reg [15:0] trans_out_cnt_3;// for process grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_3 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_continue == 1'b1) begin
        trans_out_cnt_3 <= trans_out_cnt_3 + 16'h1;
    end
    else begin
        trans_out_cnt_3 <= trans_out_cnt_3;
    end
end

reg [15:0] trans_in_cnt_4;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_4 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.start_write == 1'b1) begin
        trans_in_cnt_4 <= trans_in_cnt_4 + 16'h1;
    end
    else begin
        trans_in_cnt_4 <= trans_in_cnt_4;
    end
end

reg [15:0] trans_out_cnt_4;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_4 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.ap_continue == 1'b1) begin
        trans_out_cnt_4 <= trans_out_cnt_4 + 16'h1;
    end
    else begin
        trans_out_cnt_4 <= trans_out_cnt_4;
    end
end

reg [15:0] trans_in_cnt_5;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_5 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.start_write == 1'b1) begin
        trans_in_cnt_5 <= trans_in_cnt_5 + 16'h1;
    end
    else begin
        trans_in_cnt_5 <= trans_in_cnt_5;
    end
end

reg [15:0] trans_out_cnt_5;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_5 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.ap_continue == 1'b1) begin
        trans_out_cnt_5 <= trans_out_cnt_5 + 16'h1;
    end
    else begin
        trans_out_cnt_5 <= trans_out_cnt_5;
    end
end

reg [15:0] trans_in_cnt_6;// for process grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_6 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.start_write == 1'b1) begin
        trans_in_cnt_6 <= trans_in_cnt_6 + 16'h1;
    end
    else begin
        trans_in_cnt_6 <= trans_in_cnt_6;
    end
end

reg [15:0] trans_out_cnt_6;// for process grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_6 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_continue == 1'b1) begin
        trans_out_cnt_6 <= trans_out_cnt_6 + 16'h1;
    end
    else begin
        trans_out_cnt_6 <= trans_out_cnt_6;
    end
end

reg [15:0] trans_in_cnt_7;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_7 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.start_write == 1'b1) begin
        trans_in_cnt_7 <= trans_in_cnt_7 + 16'h1;
    end
    else begin
        trans_in_cnt_7 <= trans_in_cnt_7;
    end
end

reg [15:0] trans_out_cnt_7;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_7 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.ap_continue == 1'b1) begin
        trans_out_cnt_7 <= trans_out_cnt_7 + 16'h1;
    end
    else begin
        trans_out_cnt_7 <= trans_out_cnt_7;
    end
end

reg [15:0] trans_in_cnt_8;// for process grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_8 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.start_write == 1'b1) begin
        trans_in_cnt_8 <= trans_in_cnt_8 + 16'h1;
    end
    else begin
        trans_in_cnt_8 <= trans_in_cnt_8;
    end
end

reg [15:0] trans_out_cnt_8;// for process grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_8 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.ap_continue == 1'b1) begin
        trans_out_cnt_8 <= trans_out_cnt_8 + 16'h1;
    end
    else begin
        trans_out_cnt_8 <= trans_out_cnt_8;
    end
end

reg [15:0] trans_in_cnt_9;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_9 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.start_write == 1'b1) begin
        trans_in_cnt_9 <= trans_in_cnt_9 + 16'h1;
    end
    else begin
        trans_in_cnt_9 <= trans_in_cnt_9;
    end
end

reg [15:0] trans_out_cnt_9;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_9 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.ap_continue == 1'b1) begin
        trans_out_cnt_9 <= trans_out_cnt_9 + 16'h1;
    end
    else begin
        trans_out_cnt_9 <= trans_out_cnt_9;
    end
end

reg [15:0] trans_in_cnt_10;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_10 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.start_write == 1'b1) begin
        trans_in_cnt_10 <= trans_in_cnt_10 + 16'h1;
    end
    else begin
        trans_in_cnt_10 <= trans_in_cnt_10;
    end
end

reg [15:0] trans_out_cnt_10;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_10 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.ap_continue == 1'b1) begin
        trans_out_cnt_10 <= trans_out_cnt_10 + 16'h1;
    end
    else begin
        trans_out_cnt_10 <= trans_out_cnt_10;
    end
end

reg [15:0] trans_in_cnt_11;// for process grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_11 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.start_write == 1'b1) begin
        trans_in_cnt_11 <= trans_in_cnt_11 + 16'h1;
    end
    else begin
        trans_in_cnt_11 <= trans_in_cnt_11;
    end
end

reg [15:0] trans_out_cnt_11;// for process grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_11 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_continue == 1'b1) begin
        trans_out_cnt_11 <= trans_out_cnt_11 + 16'h1;
    end
    else begin
        trans_out_cnt_11 <= trans_out_cnt_11;
    end
end

reg [15:0] trans_in_cnt_12;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_12 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.start_write == 1'b1) begin
        trans_in_cnt_12 <= trans_in_cnt_12 + 16'h1;
    end
    else begin
        trans_in_cnt_12 <= trans_in_cnt_12;
    end
end

reg [15:0] trans_out_cnt_12;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_12 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.ap_continue == 1'b1) begin
        trans_out_cnt_12 <= trans_out_cnt_12 + 16'h1;
    end
    else begin
        trans_out_cnt_12 <= trans_out_cnt_12;
    end
end

reg [15:0] trans_in_cnt_13;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_13 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0.start_write == 1'b1) begin
        trans_in_cnt_13 <= trans_in_cnt_13 + 16'h1;
    end
    else begin
        trans_in_cnt_13 <= trans_in_cnt_13;
    end
end

reg [15:0] trans_out_cnt_13;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_13 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0.ap_continue == 1'b1) begin
        trans_out_cnt_13 <= trans_out_cnt_13 + 16'h1;
    end
    else begin
        trans_out_cnt_13 <= trans_out_cnt_13;
    end
end

reg [15:0] trans_in_cnt_14;// for process grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_14 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.start_write == 1'b1) begin
        trans_in_cnt_14 <= trans_in_cnt_14 + 16'h1;
    end
    else begin
        trans_in_cnt_14 <= trans_in_cnt_14;
    end
end

reg [15:0] trans_out_cnt_14;// for process grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_14 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_continue == 1'b1) begin
        trans_out_cnt_14 <= trans_out_cnt_14 + 16'h1;
    end
    else begin
        trans_out_cnt_14 <= trans_out_cnt_14;
    end
end

reg [15:0] trans_in_cnt_15;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_15 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.start_write == 1'b1) begin
        trans_in_cnt_15 <= trans_in_cnt_15 + 16'h1;
    end
    else begin
        trans_in_cnt_15 <= trans_in_cnt_15;
    end
end

reg [15:0] trans_out_cnt_15;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_15 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.ap_continue == 1'b1) begin
        trans_out_cnt_15 <= trans_out_cnt_15 + 16'h1;
    end
    else begin
        trans_out_cnt_15 <= trans_out_cnt_15;
    end
end

reg [15:0] trans_in_cnt_16;// for process grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_16 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.start_write == 1'b1) begin
        trans_in_cnt_16 <= trans_in_cnt_16 + 16'h1;
    end
    else begin
        trans_in_cnt_16 <= trans_in_cnt_16;
    end
end

reg [15:0] trans_out_cnt_16;// for process grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_16 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_continue == 1'b1) begin
        trans_out_cnt_16 <= trans_out_cnt_16 + 16'h1;
    end
    else begin
        trans_out_cnt_16 <= trans_out_cnt_16;
    end
end

reg [15:0] trans_in_cnt_17;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_17 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.start_write == 1'b1) begin
        trans_in_cnt_17 <= trans_in_cnt_17 + 16'h1;
    end
    else begin
        trans_in_cnt_17 <= trans_in_cnt_17;
    end
end

reg [15:0] trans_out_cnt_17;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_17 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.ap_continue == 1'b1) begin
        trans_out_cnt_17 <= trans_out_cnt_17 + 16'h1;
    end
    else begin
        trans_out_cnt_17 <= trans_out_cnt_17;
    end
end

reg [15:0] trans_in_cnt_18;// for process grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_18 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.start_write == 1'b1) begin
        trans_in_cnt_18 <= trans_in_cnt_18 + 16'h1;
    end
    else begin
        trans_in_cnt_18 <= trans_in_cnt_18;
    end
end

reg [15:0] trans_out_cnt_18;// for process grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_18 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_continue == 1'b1) begin
        trans_out_cnt_18 <= trans_out_cnt_18 + 16'h1;
    end
    else begin
        trans_out_cnt_18 <= trans_out_cnt_18;
    end
end

reg [15:0] trans_in_cnt_19;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_19 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.start_write == 1'b1) begin
        trans_in_cnt_19 <= trans_in_cnt_19 + 16'h1;
    end
    else begin
        trans_in_cnt_19 <= trans_in_cnt_19;
    end
end

reg [15:0] trans_out_cnt_19;// for process grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_19 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.ap_continue == 1'b1) begin
        trans_out_cnt_19 <= trans_out_cnt_19 + 16'h1;
    end
    else begin
        trans_out_cnt_19 <= trans_out_cnt_19;
    end
end

reg [15:0] trans_in_cnt_20;// for process grp_DoCompute_fu_2926.entry_proc_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_20 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.entry_proc_U0.start_write == 1'b1) begin
        trans_in_cnt_20 <= trans_in_cnt_20 + 16'h1;
    end
    else begin
        trans_in_cnt_20 <= trans_in_cnt_20;
    end
end

reg [15:0] trans_out_cnt_20;// for process grp_DoCompute_fu_2926.entry_proc_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_20 <= 16'h0;
    end
    else if (grp_DoCompute_fu_2926.entry_proc_U0.ap_done == 1'b1 && grp_DoCompute_fu_2926.entry_proc_U0.ap_continue == 1'b1) begin
        trans_out_cnt_20 <= trans_out_cnt_20 + 16'h1;
    end
    else begin
        trans_out_cnt_20 <= trans_out_cnt_20;
    end
end

    // Process: grp_DoCompute_fu_2926.entry_proc_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 0, 16, 16) BlackBoxJam_hls_deadlock_detect_unit_0 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.entry_proc_U0.out_c_blk_n);
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_Stream2Mem_Batch_64u_128u_U0_U.if_full_n & grp_DoCompute_fu_2926.entry_proc_U0.ap_start & ~grp_DoCompute_fu_2926.entry_proc_U0.real_start & (trans_in_cnt_20 == trans_out_cnt_20) & ~grp_DoCompute_fu_2926.start_for_Stream2Mem_Batch_64u_128u_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0;
    assign proc_0_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    assign proc_0_data_FIFO_blk[1] = 1'b0;
    assign proc_0_data_PIPO_blk[1] = 1'b0;
    assign proc_0_start_FIFO_blk[1] = 1'b0;
    assign proc_0_TLF_FIFO_blk[1] = 1'b0;
    assign proc_0_input_sync_blk[1] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready);
    assign proc_0_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (proc_0_data_FIFO_blk[1] | proc_0_data_PIPO_blk[1] | proc_0_start_FIFO_blk[1] | proc_0_TLF_FIFO_blk[1] | proc_0_input_sync_blk[1] | proc_0_output_sync_blk[1]);
    assign proc_0_data_FIFO_blk[2] = 1'b0;
    assign proc_0_data_PIPO_blk[2] = 1'b0;
    assign proc_0_start_FIFO_blk[2] = 1'b0;
    assign proc_0_TLF_FIFO_blk[2] = 1'b0;
    assign proc_0_input_sync_blk[2] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready);
    assign proc_0_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_0[2] = dl_detect_out ? proc_dep_vld_vec_0_reg[2] : (proc_0_data_FIFO_blk[2] | proc_0_data_PIPO_blk[2] | proc_0_start_FIFO_blk[2] | proc_0_TLF_FIFO_blk[2] | proc_0_input_sync_blk[2] | proc_0_output_sync_blk[2]);
    assign proc_0_data_FIFO_blk[3] = 1'b0;
    assign proc_0_data_PIPO_blk[3] = 1'b0;
    assign proc_0_start_FIFO_blk[3] = 1'b0;
    assign proc_0_TLF_FIFO_blk[3] = 1'b0;
    assign proc_0_input_sync_blk[3] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready);
    assign proc_0_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_0[3] = dl_detect_out ? proc_dep_vld_vec_0_reg[3] : (proc_0_data_FIFO_blk[3] | proc_0_data_PIPO_blk[3] | proc_0_start_FIFO_blk[3] | proc_0_TLF_FIFO_blk[3] | proc_0_input_sync_blk[3] | proc_0_output_sync_blk[3]);
    assign proc_0_data_FIFO_blk[4] = 1'b0;
    assign proc_0_data_PIPO_blk[4] = 1'b0;
    assign proc_0_start_FIFO_blk[4] = 1'b0;
    assign proc_0_TLF_FIFO_blk[4] = 1'b0;
    assign proc_0_input_sync_blk[4] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready);
    assign proc_0_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_0[4] = dl_detect_out ? proc_dep_vld_vec_0_reg[4] : (proc_0_data_FIFO_blk[4] | proc_0_data_PIPO_blk[4] | proc_0_start_FIFO_blk[4] | proc_0_TLF_FIFO_blk[4] | proc_0_input_sync_blk[4] | proc_0_output_sync_blk[4]);
    assign proc_0_data_FIFO_blk[5] = 1'b0;
    assign proc_0_data_PIPO_blk[5] = 1'b0;
    assign proc_0_start_FIFO_blk[5] = 1'b0;
    assign proc_0_TLF_FIFO_blk[5] = 1'b0;
    assign proc_0_input_sync_blk[5] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_0_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_0[5] = dl_detect_out ? proc_dep_vld_vec_0_reg[5] : (proc_0_data_FIFO_blk[5] | proc_0_data_PIPO_blk[5] | proc_0_start_FIFO_blk[5] | proc_0_TLF_FIFO_blk[5] | proc_0_input_sync_blk[5] | proc_0_output_sync_blk[5]);
    assign proc_0_data_FIFO_blk[6] = 1'b0;
    assign proc_0_data_PIPO_blk[6] = 1'b0;
    assign proc_0_start_FIFO_blk[6] = 1'b0;
    assign proc_0_TLF_FIFO_blk[6] = 1'b0;
    assign proc_0_input_sync_blk[6] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready);
    assign proc_0_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_0[6] = dl_detect_out ? proc_dep_vld_vec_0_reg[6] : (proc_0_data_FIFO_blk[6] | proc_0_data_PIPO_blk[6] | proc_0_start_FIFO_blk[6] | proc_0_TLF_FIFO_blk[6] | proc_0_input_sync_blk[6] | proc_0_output_sync_blk[6]);
    assign proc_0_data_FIFO_blk[7] = 1'b0;
    assign proc_0_data_PIPO_blk[7] = 1'b0;
    assign proc_0_start_FIFO_blk[7] = 1'b0;
    assign proc_0_TLF_FIFO_blk[7] = 1'b0;
    assign proc_0_input_sync_blk[7] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready);
    assign proc_0_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_0[7] = dl_detect_out ? proc_dep_vld_vec_0_reg[7] : (proc_0_data_FIFO_blk[7] | proc_0_data_PIPO_blk[7] | proc_0_start_FIFO_blk[7] | proc_0_TLF_FIFO_blk[7] | proc_0_input_sync_blk[7] | proc_0_output_sync_blk[7]);
    assign proc_0_data_FIFO_blk[8] = 1'b0;
    assign proc_0_data_PIPO_blk[8] = 1'b0;
    assign proc_0_start_FIFO_blk[8] = 1'b0;
    assign proc_0_TLF_FIFO_blk[8] = 1'b0;
    assign proc_0_input_sync_blk[8] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready);
    assign proc_0_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_0[8] = dl_detect_out ? proc_dep_vld_vec_0_reg[8] : (proc_0_data_FIFO_blk[8] | proc_0_data_PIPO_blk[8] | proc_0_start_FIFO_blk[8] | proc_0_TLF_FIFO_blk[8] | proc_0_input_sync_blk[8] | proc_0_output_sync_blk[8]);
    assign proc_0_data_FIFO_blk[9] = 1'b0;
    assign proc_0_data_PIPO_blk[9] = 1'b0;
    assign proc_0_start_FIFO_blk[9] = 1'b0;
    assign proc_0_TLF_FIFO_blk[9] = 1'b0;
    assign proc_0_input_sync_blk[9] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready);
    assign proc_0_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_0[9] = dl_detect_out ? proc_dep_vld_vec_0_reg[9] : (proc_0_data_FIFO_blk[9] | proc_0_data_PIPO_blk[9] | proc_0_start_FIFO_blk[9] | proc_0_TLF_FIFO_blk[9] | proc_0_input_sync_blk[9] | proc_0_output_sync_blk[9]);
    assign proc_0_data_FIFO_blk[10] = 1'b0;
    assign proc_0_data_PIPO_blk[10] = 1'b0;
    assign proc_0_start_FIFO_blk[10] = 1'b0;
    assign proc_0_TLF_FIFO_blk[10] = 1'b0;
    assign proc_0_input_sync_blk[10] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_0_output_sync_blk[10] = 1'b0;
    assign proc_dep_vld_vec_0[10] = dl_detect_out ? proc_dep_vld_vec_0_reg[10] : (proc_0_data_FIFO_blk[10] | proc_0_data_PIPO_blk[10] | proc_0_start_FIFO_blk[10] | proc_0_TLF_FIFO_blk[10] | proc_0_input_sync_blk[10] | proc_0_output_sync_blk[10]);
    assign proc_0_data_FIFO_blk[11] = 1'b0;
    assign proc_0_data_PIPO_blk[11] = 1'b0;
    assign proc_0_start_FIFO_blk[11] = 1'b0;
    assign proc_0_TLF_FIFO_blk[11] = 1'b0;
    assign proc_0_input_sync_blk[11] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready);
    assign proc_0_output_sync_blk[11] = 1'b0;
    assign proc_dep_vld_vec_0[11] = dl_detect_out ? proc_dep_vld_vec_0_reg[11] : (proc_0_data_FIFO_blk[11] | proc_0_data_PIPO_blk[11] | proc_0_start_FIFO_blk[11] | proc_0_TLF_FIFO_blk[11] | proc_0_input_sync_blk[11] | proc_0_output_sync_blk[11]);
    assign proc_0_data_FIFO_blk[12] = 1'b0;
    assign proc_0_data_PIPO_blk[12] = 1'b0;
    assign proc_0_start_FIFO_blk[12] = 1'b0;
    assign proc_0_TLF_FIFO_blk[12] = 1'b0;
    assign proc_0_input_sync_blk[12] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready);
    assign proc_0_output_sync_blk[12] = 1'b0;
    assign proc_dep_vld_vec_0[12] = dl_detect_out ? proc_dep_vld_vec_0_reg[12] : (proc_0_data_FIFO_blk[12] | proc_0_data_PIPO_blk[12] | proc_0_start_FIFO_blk[12] | proc_0_TLF_FIFO_blk[12] | proc_0_input_sync_blk[12] | proc_0_output_sync_blk[12]);
    assign proc_0_data_FIFO_blk[13] = 1'b0;
    assign proc_0_data_PIPO_blk[13] = 1'b0;
    assign proc_0_start_FIFO_blk[13] = 1'b0;
    assign proc_0_TLF_FIFO_blk[13] = 1'b0;
    assign proc_0_input_sync_blk[13] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready);
    assign proc_0_output_sync_blk[13] = 1'b0;
    assign proc_dep_vld_vec_0[13] = dl_detect_out ? proc_dep_vld_vec_0_reg[13] : (proc_0_data_FIFO_blk[13] | proc_0_data_PIPO_blk[13] | proc_0_start_FIFO_blk[13] | proc_0_TLF_FIFO_blk[13] | proc_0_input_sync_blk[13] | proc_0_output_sync_blk[13]);
    assign proc_0_data_FIFO_blk[14] = 1'b0;
    assign proc_0_data_PIPO_blk[14] = 1'b0;
    assign proc_0_start_FIFO_blk[14] = 1'b0;
    assign proc_0_TLF_FIFO_blk[14] = 1'b0;
    assign proc_0_input_sync_blk[14] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready);
    assign proc_0_output_sync_blk[14] = 1'b0;
    assign proc_dep_vld_vec_0[14] = dl_detect_out ? proc_dep_vld_vec_0_reg[14] : (proc_0_data_FIFO_blk[14] | proc_0_data_PIPO_blk[14] | proc_0_start_FIFO_blk[14] | proc_0_TLF_FIFO_blk[14] | proc_0_input_sync_blk[14] | proc_0_output_sync_blk[14]);
    assign proc_0_data_FIFO_blk[15] = 1'b0;
    assign proc_0_data_PIPO_blk[15] = 1'b0;
    assign proc_0_start_FIFO_blk[15] = 1'b0;
    assign proc_0_TLF_FIFO_blk[15] = 1'b0;
    assign proc_0_input_sync_blk[15] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready);
    assign proc_0_output_sync_blk[15] = 1'b0;
    assign proc_dep_vld_vec_0[15] = dl_detect_out ? proc_dep_vld_vec_0_reg[15] : (proc_0_data_FIFO_blk[15] | proc_0_data_PIPO_blk[15] | proc_0_start_FIFO_blk[15] | proc_0_TLF_FIFO_blk[15] | proc_0_input_sync_blk[15] | proc_0_output_sync_blk[15]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[43 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_5_0;
    assign in_chan_dep_data_vec_0[87 : 44] = dep_chan_data_5_0;
    assign token_in_vec_0[1] = token_5_0;
    assign in_chan_dep_vld_vec_0[2] = dep_chan_vld_6_0;
    assign in_chan_dep_data_vec_0[131 : 88] = dep_chan_data_6_0;
    assign token_in_vec_0[2] = token_6_0;
    assign in_chan_dep_vld_vec_0[3] = dep_chan_vld_11_0;
    assign in_chan_dep_data_vec_0[175 : 132] = dep_chan_data_11_0;
    assign token_in_vec_0[3] = token_11_0;
    assign in_chan_dep_vld_vec_0[4] = dep_chan_vld_16_0;
    assign in_chan_dep_data_vec_0[219 : 176] = dep_chan_data_16_0;
    assign token_in_vec_0[4] = token_16_0;
    assign in_chan_dep_vld_vec_0[5] = dep_chan_vld_17_0;
    assign in_chan_dep_data_vec_0[263 : 220] = dep_chan_data_17_0;
    assign token_in_vec_0[5] = token_17_0;
    assign in_chan_dep_vld_vec_0[6] = dep_chan_vld_19_0;
    assign in_chan_dep_data_vec_0[307 : 264] = dep_chan_data_19_0;
    assign token_in_vec_0[6] = token_19_0;
    assign in_chan_dep_vld_vec_0[7] = dep_chan_vld_22_0;
    assign in_chan_dep_data_vec_0[351 : 308] = dep_chan_data_22_0;
    assign token_in_vec_0[7] = token_22_0;
    assign in_chan_dep_vld_vec_0[8] = dep_chan_vld_23_0;
    assign in_chan_dep_data_vec_0[395 : 352] = dep_chan_data_23_0;
    assign token_in_vec_0[8] = token_23_0;
    assign in_chan_dep_vld_vec_0[9] = dep_chan_vld_28_0;
    assign in_chan_dep_data_vec_0[439 : 396] = dep_chan_data_28_0;
    assign token_in_vec_0[9] = token_28_0;
    assign in_chan_dep_vld_vec_0[10] = dep_chan_vld_29_0;
    assign in_chan_dep_data_vec_0[483 : 440] = dep_chan_data_29_0;
    assign token_in_vec_0[10] = token_29_0;
    assign in_chan_dep_vld_vec_0[11] = dep_chan_vld_33_0;
    assign in_chan_dep_data_vec_0[527 : 484] = dep_chan_data_33_0;
    assign token_in_vec_0[11] = token_33_0;
    assign in_chan_dep_vld_vec_0[12] = dep_chan_vld_36_0;
    assign in_chan_dep_data_vec_0[571 : 528] = dep_chan_data_36_0;
    assign token_in_vec_0[12] = token_36_0;
    assign in_chan_dep_vld_vec_0[13] = dep_chan_vld_39_0;
    assign in_chan_dep_data_vec_0[615 : 572] = dep_chan_data_39_0;
    assign token_in_vec_0[13] = token_39_0;
    assign in_chan_dep_vld_vec_0[14] = dep_chan_vld_42_0;
    assign in_chan_dep_data_vec_0[659 : 616] = dep_chan_data_42_0;
    assign token_in_vec_0[14] = token_42_0;
    assign in_chan_dep_vld_vec_0[15] = dep_chan_vld_43_0;
    assign in_chan_dep_data_vec_0[703 : 660] = dep_chan_data_43_0;
    assign token_in_vec_0[15] = token_43_0;
    assign dep_chan_vld_0_43 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_43 = out_chan_dep_data_0;
    assign token_0_43 = token_out_vec_0[0];
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[1];
    assign dep_chan_vld_0_5 = out_chan_dep_vld_vec_0[2];
    assign dep_chan_data_0_5 = out_chan_dep_data_0;
    assign token_0_5 = token_out_vec_0[2];
    assign dep_chan_vld_0_6 = out_chan_dep_vld_vec_0[3];
    assign dep_chan_data_0_6 = out_chan_dep_data_0;
    assign token_0_6 = token_out_vec_0[3];
    assign dep_chan_vld_0_11 = out_chan_dep_vld_vec_0[4];
    assign dep_chan_data_0_11 = out_chan_dep_data_0;
    assign token_0_11 = token_out_vec_0[4];
    assign dep_chan_vld_0_16 = out_chan_dep_vld_vec_0[5];
    assign dep_chan_data_0_16 = out_chan_dep_data_0;
    assign token_0_16 = token_out_vec_0[5];
    assign dep_chan_vld_0_17 = out_chan_dep_vld_vec_0[6];
    assign dep_chan_data_0_17 = out_chan_dep_data_0;
    assign token_0_17 = token_out_vec_0[6];
    assign dep_chan_vld_0_19 = out_chan_dep_vld_vec_0[7];
    assign dep_chan_data_0_19 = out_chan_dep_data_0;
    assign token_0_19 = token_out_vec_0[7];
    assign dep_chan_vld_0_22 = out_chan_dep_vld_vec_0[8];
    assign dep_chan_data_0_22 = out_chan_dep_data_0;
    assign token_0_22 = token_out_vec_0[8];
    assign dep_chan_vld_0_23 = out_chan_dep_vld_vec_0[9];
    assign dep_chan_data_0_23 = out_chan_dep_data_0;
    assign token_0_23 = token_out_vec_0[9];
    assign dep_chan_vld_0_28 = out_chan_dep_vld_vec_0[10];
    assign dep_chan_data_0_28 = out_chan_dep_data_0;
    assign token_0_28 = token_out_vec_0[10];
    assign dep_chan_vld_0_29 = out_chan_dep_vld_vec_0[11];
    assign dep_chan_data_0_29 = out_chan_dep_data_0;
    assign token_0_29 = token_out_vec_0[11];
    assign dep_chan_vld_0_33 = out_chan_dep_vld_vec_0[12];
    assign dep_chan_data_0_33 = out_chan_dep_data_0;
    assign token_0_33 = token_out_vec_0[12];
    assign dep_chan_vld_0_36 = out_chan_dep_vld_vec_0[13];
    assign dep_chan_data_0_36 = out_chan_dep_data_0;
    assign token_0_36 = token_out_vec_0[13];
    assign dep_chan_vld_0_39 = out_chan_dep_vld_vec_0[14];
    assign dep_chan_data_0_39 = out_chan_dep_data_0;
    assign token_0_39 = token_out_vec_0[14];
    assign dep_chan_vld_0_42 = out_chan_dep_vld_vec_0[15];
    assign dep_chan_data_0_42 = out_chan_dep_data_0;
    assign token_0_42 = token_out_vec_0[15];

    // Process: grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 1, 16, 16) BlackBoxJam_hls_deadlock_detect_unit_1 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_1_fu_117.inter0_blk_n) | (~grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.numReps_c160_blk_n);
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_64u_192u_384u_U0_U.if_full_n & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_start & ~grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_64u_192u_384u_U0_U.if_read);
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0;
    assign proc_1_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0;
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0;
    assign proc_1_TLF_FIFO_blk[1] = 1'b0;
    assign proc_1_input_sync_blk[1] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready);
    assign proc_1_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    assign proc_1_data_FIFO_blk[2] = 1'b0;
    assign proc_1_data_PIPO_blk[2] = 1'b0;
    assign proc_1_start_FIFO_blk[2] = 1'b0;
    assign proc_1_TLF_FIFO_blk[2] = 1'b0;
    assign proc_1_input_sync_blk[2] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready);
    assign proc_1_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_1[2] = dl_detect_out ? proc_dep_vld_vec_1_reg[2] : (proc_1_data_FIFO_blk[2] | proc_1_data_PIPO_blk[2] | proc_1_start_FIFO_blk[2] | proc_1_TLF_FIFO_blk[2] | proc_1_input_sync_blk[2] | proc_1_output_sync_blk[2]);
    assign proc_1_data_FIFO_blk[3] = 1'b0;
    assign proc_1_data_PIPO_blk[3] = 1'b0;
    assign proc_1_start_FIFO_blk[3] = 1'b0;
    assign proc_1_TLF_FIFO_blk[3] = 1'b0;
    assign proc_1_input_sync_blk[3] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready);
    assign proc_1_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_1[3] = dl_detect_out ? proc_dep_vld_vec_1_reg[3] : (proc_1_data_FIFO_blk[3] | proc_1_data_PIPO_blk[3] | proc_1_start_FIFO_blk[3] | proc_1_TLF_FIFO_blk[3] | proc_1_input_sync_blk[3] | proc_1_output_sync_blk[3]);
    assign proc_1_data_FIFO_blk[4] = 1'b0;
    assign proc_1_data_PIPO_blk[4] = 1'b0;
    assign proc_1_start_FIFO_blk[4] = 1'b0;
    assign proc_1_TLF_FIFO_blk[4] = 1'b0;
    assign proc_1_input_sync_blk[4] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready);
    assign proc_1_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_1[4] = dl_detect_out ? proc_dep_vld_vec_1_reg[4] : (proc_1_data_FIFO_blk[4] | proc_1_data_PIPO_blk[4] | proc_1_start_FIFO_blk[4] | proc_1_TLF_FIFO_blk[4] | proc_1_input_sync_blk[4] | proc_1_output_sync_blk[4]);
    assign proc_1_data_FIFO_blk[5] = 1'b0;
    assign proc_1_data_PIPO_blk[5] = 1'b0;
    assign proc_1_start_FIFO_blk[5] = 1'b0;
    assign proc_1_TLF_FIFO_blk[5] = 1'b0;
    assign proc_1_input_sync_blk[5] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_1_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_1[5] = dl_detect_out ? proc_dep_vld_vec_1_reg[5] : (proc_1_data_FIFO_blk[5] | proc_1_data_PIPO_blk[5] | proc_1_start_FIFO_blk[5] | proc_1_TLF_FIFO_blk[5] | proc_1_input_sync_blk[5] | proc_1_output_sync_blk[5]);
    assign proc_1_data_FIFO_blk[6] = 1'b0;
    assign proc_1_data_PIPO_blk[6] = 1'b0;
    assign proc_1_start_FIFO_blk[6] = 1'b0;
    assign proc_1_TLF_FIFO_blk[6] = 1'b0;
    assign proc_1_input_sync_blk[6] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready);
    assign proc_1_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_1[6] = dl_detect_out ? proc_dep_vld_vec_1_reg[6] : (proc_1_data_FIFO_blk[6] | proc_1_data_PIPO_blk[6] | proc_1_start_FIFO_blk[6] | proc_1_TLF_FIFO_blk[6] | proc_1_input_sync_blk[6] | proc_1_output_sync_blk[6]);
    assign proc_1_data_FIFO_blk[7] = 1'b0;
    assign proc_1_data_PIPO_blk[7] = 1'b0;
    assign proc_1_start_FIFO_blk[7] = 1'b0;
    assign proc_1_TLF_FIFO_blk[7] = 1'b0;
    assign proc_1_input_sync_blk[7] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready);
    assign proc_1_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_1[7] = dl_detect_out ? proc_dep_vld_vec_1_reg[7] : (proc_1_data_FIFO_blk[7] | proc_1_data_PIPO_blk[7] | proc_1_start_FIFO_blk[7] | proc_1_TLF_FIFO_blk[7] | proc_1_input_sync_blk[7] | proc_1_output_sync_blk[7]);
    assign proc_1_data_FIFO_blk[8] = 1'b0;
    assign proc_1_data_PIPO_blk[8] = 1'b0;
    assign proc_1_start_FIFO_blk[8] = 1'b0;
    assign proc_1_TLF_FIFO_blk[8] = 1'b0;
    assign proc_1_input_sync_blk[8] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready);
    assign proc_1_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_1[8] = dl_detect_out ? proc_dep_vld_vec_1_reg[8] : (proc_1_data_FIFO_blk[8] | proc_1_data_PIPO_blk[8] | proc_1_start_FIFO_blk[8] | proc_1_TLF_FIFO_blk[8] | proc_1_input_sync_blk[8] | proc_1_output_sync_blk[8]);
    assign proc_1_data_FIFO_blk[9] = 1'b0;
    assign proc_1_data_PIPO_blk[9] = 1'b0;
    assign proc_1_start_FIFO_blk[9] = 1'b0;
    assign proc_1_TLF_FIFO_blk[9] = 1'b0;
    assign proc_1_input_sync_blk[9] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready);
    assign proc_1_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_1[9] = dl_detect_out ? proc_dep_vld_vec_1_reg[9] : (proc_1_data_FIFO_blk[9] | proc_1_data_PIPO_blk[9] | proc_1_start_FIFO_blk[9] | proc_1_TLF_FIFO_blk[9] | proc_1_input_sync_blk[9] | proc_1_output_sync_blk[9]);
    assign proc_1_data_FIFO_blk[10] = 1'b0;
    assign proc_1_data_PIPO_blk[10] = 1'b0;
    assign proc_1_start_FIFO_blk[10] = 1'b0;
    assign proc_1_TLF_FIFO_blk[10] = 1'b0;
    assign proc_1_input_sync_blk[10] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_1_output_sync_blk[10] = 1'b0;
    assign proc_dep_vld_vec_1[10] = dl_detect_out ? proc_dep_vld_vec_1_reg[10] : (proc_1_data_FIFO_blk[10] | proc_1_data_PIPO_blk[10] | proc_1_start_FIFO_blk[10] | proc_1_TLF_FIFO_blk[10] | proc_1_input_sync_blk[10] | proc_1_output_sync_blk[10]);
    assign proc_1_data_FIFO_blk[11] = 1'b0;
    assign proc_1_data_PIPO_blk[11] = 1'b0;
    assign proc_1_start_FIFO_blk[11] = 1'b0;
    assign proc_1_TLF_FIFO_blk[11] = 1'b0;
    assign proc_1_input_sync_blk[11] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready);
    assign proc_1_output_sync_blk[11] = 1'b0;
    assign proc_dep_vld_vec_1[11] = dl_detect_out ? proc_dep_vld_vec_1_reg[11] : (proc_1_data_FIFO_blk[11] | proc_1_data_PIPO_blk[11] | proc_1_start_FIFO_blk[11] | proc_1_TLF_FIFO_blk[11] | proc_1_input_sync_blk[11] | proc_1_output_sync_blk[11]);
    assign proc_1_data_FIFO_blk[12] = 1'b0;
    assign proc_1_data_PIPO_blk[12] = 1'b0;
    assign proc_1_start_FIFO_blk[12] = 1'b0;
    assign proc_1_TLF_FIFO_blk[12] = 1'b0;
    assign proc_1_input_sync_blk[12] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready);
    assign proc_1_output_sync_blk[12] = 1'b0;
    assign proc_dep_vld_vec_1[12] = dl_detect_out ? proc_dep_vld_vec_1_reg[12] : (proc_1_data_FIFO_blk[12] | proc_1_data_PIPO_blk[12] | proc_1_start_FIFO_blk[12] | proc_1_TLF_FIFO_blk[12] | proc_1_input_sync_blk[12] | proc_1_output_sync_blk[12]);
    assign proc_1_data_FIFO_blk[13] = 1'b0;
    assign proc_1_data_PIPO_blk[13] = 1'b0;
    assign proc_1_start_FIFO_blk[13] = 1'b0;
    assign proc_1_TLF_FIFO_blk[13] = 1'b0;
    assign proc_1_input_sync_blk[13] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready);
    assign proc_1_output_sync_blk[13] = 1'b0;
    assign proc_dep_vld_vec_1[13] = dl_detect_out ? proc_dep_vld_vec_1_reg[13] : (proc_1_data_FIFO_blk[13] | proc_1_data_PIPO_blk[13] | proc_1_start_FIFO_blk[13] | proc_1_TLF_FIFO_blk[13] | proc_1_input_sync_blk[13] | proc_1_output_sync_blk[13]);
    assign proc_1_data_FIFO_blk[14] = 1'b0;
    assign proc_1_data_PIPO_blk[14] = 1'b0;
    assign proc_1_start_FIFO_blk[14] = 1'b0;
    assign proc_1_TLF_FIFO_blk[14] = 1'b0;
    assign proc_1_input_sync_blk[14] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready);
    assign proc_1_output_sync_blk[14] = 1'b0;
    assign proc_dep_vld_vec_1[14] = dl_detect_out ? proc_dep_vld_vec_1_reg[14] : (proc_1_data_FIFO_blk[14] | proc_1_data_PIPO_blk[14] | proc_1_start_FIFO_blk[14] | proc_1_TLF_FIFO_blk[14] | proc_1_input_sync_blk[14] | proc_1_output_sync_blk[14]);
    assign proc_1_data_FIFO_blk[15] = 1'b0;
    assign proc_1_data_PIPO_blk[15] = 1'b0;
    assign proc_1_start_FIFO_blk[15] = 1'b0;
    assign proc_1_TLF_FIFO_blk[15] = 1'b0;
    assign proc_1_input_sync_blk[15] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready);
    assign proc_1_output_sync_blk[15] = 1'b0;
    assign proc_dep_vld_vec_1[15] = dl_detect_out ? proc_dep_vld_vec_1_reg[15] : (proc_1_data_FIFO_blk[15] | proc_1_data_PIPO_blk[15] | proc_1_start_FIFO_blk[15] | proc_1_TLF_FIFO_blk[15] | proc_1_input_sync_blk[15] | proc_1_output_sync_blk[15]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[43 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_2_1;
    assign in_chan_dep_data_vec_1[87 : 44] = dep_chan_data_2_1;
    assign token_in_vec_1[1] = token_2_1;
    assign in_chan_dep_vld_vec_1[2] = dep_chan_vld_5_1;
    assign in_chan_dep_data_vec_1[131 : 88] = dep_chan_data_5_1;
    assign token_in_vec_1[2] = token_5_1;
    assign in_chan_dep_vld_vec_1[3] = dep_chan_vld_6_1;
    assign in_chan_dep_data_vec_1[175 : 132] = dep_chan_data_6_1;
    assign token_in_vec_1[3] = token_6_1;
    assign in_chan_dep_vld_vec_1[4] = dep_chan_vld_11_1;
    assign in_chan_dep_data_vec_1[219 : 176] = dep_chan_data_11_1;
    assign token_in_vec_1[4] = token_11_1;
    assign in_chan_dep_vld_vec_1[5] = dep_chan_vld_16_1;
    assign in_chan_dep_data_vec_1[263 : 220] = dep_chan_data_16_1;
    assign token_in_vec_1[5] = token_16_1;
    assign in_chan_dep_vld_vec_1[6] = dep_chan_vld_17_1;
    assign in_chan_dep_data_vec_1[307 : 264] = dep_chan_data_17_1;
    assign token_in_vec_1[6] = token_17_1;
    assign in_chan_dep_vld_vec_1[7] = dep_chan_vld_19_1;
    assign in_chan_dep_data_vec_1[351 : 308] = dep_chan_data_19_1;
    assign token_in_vec_1[7] = token_19_1;
    assign in_chan_dep_vld_vec_1[8] = dep_chan_vld_22_1;
    assign in_chan_dep_data_vec_1[395 : 352] = dep_chan_data_22_1;
    assign token_in_vec_1[8] = token_22_1;
    assign in_chan_dep_vld_vec_1[9] = dep_chan_vld_23_1;
    assign in_chan_dep_data_vec_1[439 : 396] = dep_chan_data_23_1;
    assign token_in_vec_1[9] = token_23_1;
    assign in_chan_dep_vld_vec_1[10] = dep_chan_vld_28_1;
    assign in_chan_dep_data_vec_1[483 : 440] = dep_chan_data_28_1;
    assign token_in_vec_1[10] = token_28_1;
    assign in_chan_dep_vld_vec_1[11] = dep_chan_vld_29_1;
    assign in_chan_dep_data_vec_1[527 : 484] = dep_chan_data_29_1;
    assign token_in_vec_1[11] = token_29_1;
    assign in_chan_dep_vld_vec_1[12] = dep_chan_vld_33_1;
    assign in_chan_dep_data_vec_1[571 : 528] = dep_chan_data_33_1;
    assign token_in_vec_1[12] = token_33_1;
    assign in_chan_dep_vld_vec_1[13] = dep_chan_vld_36_1;
    assign in_chan_dep_data_vec_1[615 : 572] = dep_chan_data_36_1;
    assign token_in_vec_1[13] = token_36_1;
    assign in_chan_dep_vld_vec_1[14] = dep_chan_vld_39_1;
    assign in_chan_dep_data_vec_1[659 : 616] = dep_chan_data_39_1;
    assign token_in_vec_1[14] = token_39_1;
    assign in_chan_dep_vld_vec_1[15] = dep_chan_vld_42_1;
    assign in_chan_dep_data_vec_1[703 : 660] = dep_chan_data_42_1;
    assign token_in_vec_1[15] = token_42_1;
    assign dep_chan_vld_1_2 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_2 = out_chan_dep_data_1;
    assign token_1_2 = token_out_vec_1[0];
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[1];
    assign dep_chan_vld_1_5 = out_chan_dep_vld_vec_1[2];
    assign dep_chan_data_1_5 = out_chan_dep_data_1;
    assign token_1_5 = token_out_vec_1[2];
    assign dep_chan_vld_1_6 = out_chan_dep_vld_vec_1[3];
    assign dep_chan_data_1_6 = out_chan_dep_data_1;
    assign token_1_6 = token_out_vec_1[3];
    assign dep_chan_vld_1_11 = out_chan_dep_vld_vec_1[4];
    assign dep_chan_data_1_11 = out_chan_dep_data_1;
    assign token_1_11 = token_out_vec_1[4];
    assign dep_chan_vld_1_16 = out_chan_dep_vld_vec_1[5];
    assign dep_chan_data_1_16 = out_chan_dep_data_1;
    assign token_1_16 = token_out_vec_1[5];
    assign dep_chan_vld_1_17 = out_chan_dep_vld_vec_1[6];
    assign dep_chan_data_1_17 = out_chan_dep_data_1;
    assign token_1_17 = token_out_vec_1[6];
    assign dep_chan_vld_1_19 = out_chan_dep_vld_vec_1[7];
    assign dep_chan_data_1_19 = out_chan_dep_data_1;
    assign token_1_19 = token_out_vec_1[7];
    assign dep_chan_vld_1_22 = out_chan_dep_vld_vec_1[8];
    assign dep_chan_data_1_22 = out_chan_dep_data_1;
    assign token_1_22 = token_out_vec_1[8];
    assign dep_chan_vld_1_23 = out_chan_dep_vld_vec_1[9];
    assign dep_chan_data_1_23 = out_chan_dep_data_1;
    assign token_1_23 = token_out_vec_1[9];
    assign dep_chan_vld_1_28 = out_chan_dep_vld_vec_1[10];
    assign dep_chan_data_1_28 = out_chan_dep_data_1;
    assign token_1_28 = token_out_vec_1[10];
    assign dep_chan_vld_1_29 = out_chan_dep_vld_vec_1[11];
    assign dep_chan_data_1_29 = out_chan_dep_data_1;
    assign token_1_29 = token_out_vec_1[11];
    assign dep_chan_vld_1_33 = out_chan_dep_vld_vec_1[12];
    assign dep_chan_data_1_33 = out_chan_dep_data_1;
    assign token_1_33 = token_out_vec_1[12];
    assign dep_chan_vld_1_36 = out_chan_dep_vld_vec_1[13];
    assign dep_chan_data_1_36 = out_chan_dep_data_1;
    assign token_1_36 = token_out_vec_1[13];
    assign dep_chan_vld_1_39 = out_chan_dep_vld_vec_1[14];
    assign dep_chan_data_1_39 = out_chan_dep_data_1;
    assign token_1_39 = token_out_vec_1[14];
    assign dep_chan_vld_1_42 = out_chan_dep_vld_vec_1[15];
    assign dep_chan_data_1_42 = out_chan_dep_data_1;
    assign token_1_42 = token_out_vec_1[15];

    // Process: grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 2, 2, 2) BlackBoxJam_hls_deadlock_detect_unit_2 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.grp_StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3_fu_54.inter0_blk_n) | (~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.numReps_blk_n);
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_64u_192u_384u_U0_U.if_empty_n & grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_64u_192u_384u_U0_U.if_write);
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0;
    assign proc_2_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    assign proc_2_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.grp_StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3_fu_54.inter0_1_blk_n) | (~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.numReps_c159_blk_n);
    assign proc_2_data_PIPO_blk[1] = 1'b0;
    assign proc_2_start_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_192u_24u_128u_U0_U.if_full_n & grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.ap_start & ~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_192u_24u_128u_U0_U.if_read);
    assign proc_2_TLF_FIFO_blk[1] = 1'b0;
    assign proc_2_input_sync_blk[1] = 1'b0;
    assign proc_2_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (proc_2_data_FIFO_blk[1] | proc_2_data_PIPO_blk[1] | proc_2_start_FIFO_blk[1] | proc_2_TLF_FIFO_blk[1] | proc_2_input_sync_blk[1] | proc_2_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_1_2;
    assign in_chan_dep_data_vec_2[43 : 0] = dep_chan_data_1_2;
    assign token_in_vec_2[0] = token_1_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_3_2;
    assign in_chan_dep_data_vec_2[87 : 44] = dep_chan_data_3_2;
    assign token_in_vec_2[1] = token_3_2;
    assign dep_chan_vld_2_1 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_1 = out_chan_dep_data_2;
    assign token_2_1 = token_out_vec_2[0];
    assign dep_chan_vld_2_3 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_3 = out_chan_dep_data_2;
    assign token_2_3 = token_out_vec_2[1];

    // Process: grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 3, 2, 2) BlackBoxJam_hls_deadlock_detect_unit_3 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.grp_StreamingDataWidthConverter_Batch_192u_24u_128u_Pipeline_VITIS_LOOP_268_1_fu_52.inter0_1_blk_n) | (~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.numReps_blk_n);
    assign proc_3_data_PIPO_blk[0] = 1'b0;
    assign proc_3_start_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_192u_24u_128u_U0_U.if_empty_n & grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_192u_24u_128u_U0_U.if_write);
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0;
    assign proc_3_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    assign proc_3_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.grp_StreamingDataWidthConverter_Batch_192u_24u_128u_Pipeline_VITIS_LOOP_268_1_fu_52.inter0_2_blk_n) | (~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.numReps_c158_blk_n);
    assign proc_3_data_PIPO_blk[1] = 1'b0;
    assign proc_3_start_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0_U.if_full_n & grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.ap_start & ~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0_U.if_read);
    assign proc_3_TLF_FIFO_blk[1] = 1'b0;
    assign proc_3_input_sync_blk[1] = 1'b0;
    assign proc_3_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (proc_3_data_FIFO_blk[1] | proc_3_data_PIPO_blk[1] | proc_3_start_FIFO_blk[1] | proc_3_TLF_FIFO_blk[1] | proc_3_input_sync_blk[1] | proc_3_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_2_3;
    assign in_chan_dep_data_vec_3[43 : 0] = dep_chan_data_2_3;
    assign token_in_vec_3[0] = token_2_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_4_3;
    assign in_chan_dep_data_vec_3[87 : 44] = dep_chan_data_4_3;
    assign token_in_vec_3[1] = token_4_3;
    assign dep_chan_vld_3_2 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_2 = out_chan_dep_data_3;
    assign token_3_2 = token_out_vec_3[0];
    assign dep_chan_vld_3_4 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_4 = out_chan_dep_data_3;
    assign token_3_4 = token_out_vec_3[1];

    // Process: grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 4, 3, 3) BlackBoxJam_hls_deadlock_detect_unit_4 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_4_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58.inter0_233_blk_n) | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.numReps_blk_n);
    assign proc_4_data_PIPO_blk[0] = 1'b0;
    assign proc_4_start_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0_U.if_empty_n & grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0_U.if_write);
    assign proc_4_TLF_FIFO_blk[0] = 1'b0;
    assign proc_4_input_sync_blk[0] = 1'b0;
    assign proc_4_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    assign proc_4_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58.convInp_i_blk_n);
    assign proc_4_data_PIPO_blk[1] = 1'b0;
    assign proc_4_start_FIFO_blk[1] = 1'b0;
    assign proc_4_TLF_FIFO_blk[1] = 1'b0;
    assign proc_4_input_sync_blk[1] = 1'b0;
    assign proc_4_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_4[1] = dl_detect_out ? proc_dep_vld_vec_4_reg[1] : (proc_4_data_FIFO_blk[1] | proc_4_data_PIPO_blk[1] | proc_4_start_FIFO_blk[1] | proc_4_TLF_FIFO_blk[1] | proc_4_input_sync_blk[1] | proc_4_output_sync_blk[1]);
    assign proc_4_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.numReps_c157_blk_n);
    assign proc_4_data_PIPO_blk[2] = 1'b0;
    assign proc_4_start_FIFO_blk[2] = 1'b0;
    assign proc_4_TLF_FIFO_blk[2] = 1'b0;
    assign proc_4_input_sync_blk[2] = 1'b0;
    assign proc_4_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_4[2] = dl_detect_out ? proc_dep_vld_vec_4_reg[2] : (proc_4_data_FIFO_blk[2] | proc_4_data_PIPO_blk[2] | proc_4_start_FIFO_blk[2] | proc_4_TLF_FIFO_blk[2] | proc_4_input_sync_blk[2] | proc_4_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_3_4;
    assign in_chan_dep_data_vec_4[43 : 0] = dep_chan_data_3_4;
    assign token_in_vec_4[0] = token_3_4;
    assign in_chan_dep_vld_vec_4[1] = dep_chan_vld_6_4;
    assign in_chan_dep_data_vec_4[87 : 44] = dep_chan_data_6_4;
    assign token_in_vec_4[1] = token_6_4;
    assign in_chan_dep_vld_vec_4[2] = dep_chan_vld_7_4;
    assign in_chan_dep_data_vec_4[131 : 88] = dep_chan_data_7_4;
    assign token_in_vec_4[2] = token_7_4;
    assign dep_chan_vld_4_3 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_3 = out_chan_dep_data_4;
    assign token_4_3 = token_out_vec_4[0];
    assign dep_chan_vld_4_6 = out_chan_dep_vld_vec_4[1];
    assign dep_chan_data_4_6 = out_chan_dep_data_4;
    assign token_4_6 = token_out_vec_4[1];
    assign dep_chan_vld_4_7 = out_chan_dep_vld_vec_4[2];
    assign dep_chan_data_4_7 = out_chan_dep_data_4;
    assign token_4_7 = token_out_vec_4[2];

    // Process: grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 5, 16, 15) BlackBoxJam_hls_deadlock_detect_unit_5 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_5),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_5),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_5),
        .token_in_vec(token_in_vec_5),
        .dl_detect_in(dl_detect_out),
        .origin(origin[5]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_5),
        .out_chan_dep_data(out_chan_dep_data_5),
        .token_out_vec(token_out_vec_5),
        .dl_detect_out(dl_in_vec[5]));

    assign proc_5_data_FIFO_blk[0] = 1'b0;
    assign proc_5_data_PIPO_blk[0] = 1'b0;
    assign proc_5_start_FIFO_blk[0] = 1'b0;
    assign proc_5_TLF_FIFO_blk[0] = 1'b0;
    assign proc_5_input_sync_blk[0] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready);
    assign proc_5_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (proc_5_data_FIFO_blk[0] | proc_5_data_PIPO_blk[0] | proc_5_start_FIFO_blk[0] | proc_5_TLF_FIFO_blk[0] | proc_5_input_sync_blk[0] | proc_5_output_sync_blk[0]);
    assign proc_5_data_FIFO_blk[1] = 1'b0;
    assign proc_5_data_PIPO_blk[1] = 1'b0;
    assign proc_5_start_FIFO_blk[1] = 1'b0;
    assign proc_5_TLF_FIFO_blk[1] = 1'b0;
    assign proc_5_input_sync_blk[1] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready);
    assign proc_5_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_5[1] = dl_detect_out ? proc_dep_vld_vec_5_reg[1] : (proc_5_data_FIFO_blk[1] | proc_5_data_PIPO_blk[1] | proc_5_start_FIFO_blk[1] | proc_5_TLF_FIFO_blk[1] | proc_5_input_sync_blk[1] | proc_5_output_sync_blk[1]);
    assign proc_5_data_FIFO_blk[2] = 1'b0;
    assign proc_5_data_PIPO_blk[2] = 1'b0;
    assign proc_5_start_FIFO_blk[2] = 1'b0;
    assign proc_5_TLF_FIFO_blk[2] = 1'b0;
    assign proc_5_input_sync_blk[2] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready);
    assign proc_5_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_5[2] = dl_detect_out ? proc_dep_vld_vec_5_reg[2] : (proc_5_data_FIFO_blk[2] | proc_5_data_PIPO_blk[2] | proc_5_start_FIFO_blk[2] | proc_5_TLF_FIFO_blk[2] | proc_5_input_sync_blk[2] | proc_5_output_sync_blk[2]);
    assign proc_5_data_FIFO_blk[3] = 1'b0;
    assign proc_5_data_PIPO_blk[3] = 1'b0;
    assign proc_5_start_FIFO_blk[3] = 1'b0;
    assign proc_5_TLF_FIFO_blk[3] = 1'b0;
    assign proc_5_input_sync_blk[3] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready);
    assign proc_5_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_5[3] = dl_detect_out ? proc_dep_vld_vec_5_reg[3] : (proc_5_data_FIFO_blk[3] | proc_5_data_PIPO_blk[3] | proc_5_start_FIFO_blk[3] | proc_5_TLF_FIFO_blk[3] | proc_5_input_sync_blk[3] | proc_5_output_sync_blk[3]);
    assign proc_5_data_FIFO_blk[4] = 1'b0;
    assign proc_5_data_PIPO_blk[4] = 1'b0;
    assign proc_5_start_FIFO_blk[4] = 1'b0;
    assign proc_5_TLF_FIFO_blk[4] = 1'b0;
    assign proc_5_input_sync_blk[4] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_5_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_5[4] = dl_detect_out ? proc_dep_vld_vec_5_reg[4] : (proc_5_data_FIFO_blk[4] | proc_5_data_PIPO_blk[4] | proc_5_start_FIFO_blk[4] | proc_5_TLF_FIFO_blk[4] | proc_5_input_sync_blk[4] | proc_5_output_sync_blk[4]);
    assign proc_5_data_FIFO_blk[5] = 1'b0;
    assign proc_5_data_PIPO_blk[5] = 1'b0;
    assign proc_5_start_FIFO_blk[5] = 1'b0;
    assign proc_5_TLF_FIFO_blk[5] = 1'b0;
    assign proc_5_input_sync_blk[5] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready);
    assign proc_5_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_5[5] = dl_detect_out ? proc_dep_vld_vec_5_reg[5] : (proc_5_data_FIFO_blk[5] | proc_5_data_PIPO_blk[5] | proc_5_start_FIFO_blk[5] | proc_5_TLF_FIFO_blk[5] | proc_5_input_sync_blk[5] | proc_5_output_sync_blk[5]);
    assign proc_5_data_FIFO_blk[6] = 1'b0;
    assign proc_5_data_PIPO_blk[6] = 1'b0;
    assign proc_5_start_FIFO_blk[6] = 1'b0;
    assign proc_5_TLF_FIFO_blk[6] = 1'b0;
    assign proc_5_input_sync_blk[6] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready);
    assign proc_5_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_5[6] = dl_detect_out ? proc_dep_vld_vec_5_reg[6] : (proc_5_data_FIFO_blk[6] | proc_5_data_PIPO_blk[6] | proc_5_start_FIFO_blk[6] | proc_5_TLF_FIFO_blk[6] | proc_5_input_sync_blk[6] | proc_5_output_sync_blk[6]);
    assign proc_5_data_FIFO_blk[7] = 1'b0;
    assign proc_5_data_PIPO_blk[7] = 1'b0;
    assign proc_5_start_FIFO_blk[7] = 1'b0;
    assign proc_5_TLF_FIFO_blk[7] = 1'b0;
    assign proc_5_input_sync_blk[7] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready);
    assign proc_5_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_5[7] = dl_detect_out ? proc_dep_vld_vec_5_reg[7] : (proc_5_data_FIFO_blk[7] | proc_5_data_PIPO_blk[7] | proc_5_start_FIFO_blk[7] | proc_5_TLF_FIFO_blk[7] | proc_5_input_sync_blk[7] | proc_5_output_sync_blk[7]);
    assign proc_5_data_FIFO_blk[8] = 1'b0;
    assign proc_5_data_PIPO_blk[8] = 1'b0;
    assign proc_5_start_FIFO_blk[8] = 1'b0;
    assign proc_5_TLF_FIFO_blk[8] = 1'b0;
    assign proc_5_input_sync_blk[8] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready);
    assign proc_5_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_5[8] = dl_detect_out ? proc_dep_vld_vec_5_reg[8] : (proc_5_data_FIFO_blk[8] | proc_5_data_PIPO_blk[8] | proc_5_start_FIFO_blk[8] | proc_5_TLF_FIFO_blk[8] | proc_5_input_sync_blk[8] | proc_5_output_sync_blk[8]);
    assign proc_5_data_FIFO_blk[9] = 1'b0;
    assign proc_5_data_PIPO_blk[9] = 1'b0;
    assign proc_5_start_FIFO_blk[9] = 1'b0;
    assign proc_5_TLF_FIFO_blk[9] = 1'b0;
    assign proc_5_input_sync_blk[9] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_5_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_5[9] = dl_detect_out ? proc_dep_vld_vec_5_reg[9] : (proc_5_data_FIFO_blk[9] | proc_5_data_PIPO_blk[9] | proc_5_start_FIFO_blk[9] | proc_5_TLF_FIFO_blk[9] | proc_5_input_sync_blk[9] | proc_5_output_sync_blk[9]);
    assign proc_5_data_FIFO_blk[10] = 1'b0;
    assign proc_5_data_PIPO_blk[10] = 1'b0;
    assign proc_5_start_FIFO_blk[10] = 1'b0;
    assign proc_5_TLF_FIFO_blk[10] = 1'b0;
    assign proc_5_input_sync_blk[10] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready);
    assign proc_5_output_sync_blk[10] = 1'b0;
    assign proc_dep_vld_vec_5[10] = dl_detect_out ? proc_dep_vld_vec_5_reg[10] : (proc_5_data_FIFO_blk[10] | proc_5_data_PIPO_blk[10] | proc_5_start_FIFO_blk[10] | proc_5_TLF_FIFO_blk[10] | proc_5_input_sync_blk[10] | proc_5_output_sync_blk[10]);
    assign proc_5_data_FIFO_blk[11] = 1'b0;
    assign proc_5_data_PIPO_blk[11] = 1'b0;
    assign proc_5_start_FIFO_blk[11] = 1'b0;
    assign proc_5_TLF_FIFO_blk[11] = 1'b0;
    assign proc_5_input_sync_blk[11] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready);
    assign proc_5_output_sync_blk[11] = 1'b0;
    assign proc_dep_vld_vec_5[11] = dl_detect_out ? proc_dep_vld_vec_5_reg[11] : (proc_5_data_FIFO_blk[11] | proc_5_data_PIPO_blk[11] | proc_5_start_FIFO_blk[11] | proc_5_TLF_FIFO_blk[11] | proc_5_input_sync_blk[11] | proc_5_output_sync_blk[11]);
    assign proc_5_data_FIFO_blk[12] = 1'b0;
    assign proc_5_data_PIPO_blk[12] = 1'b0;
    assign proc_5_start_FIFO_blk[12] = 1'b0;
    assign proc_5_TLF_FIFO_blk[12] = 1'b0;
    assign proc_5_input_sync_blk[12] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready);
    assign proc_5_output_sync_blk[12] = 1'b0;
    assign proc_dep_vld_vec_5[12] = dl_detect_out ? proc_dep_vld_vec_5_reg[12] : (proc_5_data_FIFO_blk[12] | proc_5_data_PIPO_blk[12] | proc_5_start_FIFO_blk[12] | proc_5_TLF_FIFO_blk[12] | proc_5_input_sync_blk[12] | proc_5_output_sync_blk[12]);
    assign proc_5_data_FIFO_blk[13] = 1'b0;
    assign proc_5_data_PIPO_blk[13] = 1'b0;
    assign proc_5_start_FIFO_blk[13] = 1'b0;
    assign proc_5_TLF_FIFO_blk[13] = 1'b0;
    assign proc_5_input_sync_blk[13] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready);
    assign proc_5_output_sync_blk[13] = 1'b0;
    assign proc_dep_vld_vec_5[13] = dl_detect_out ? proc_dep_vld_vec_5_reg[13] : (proc_5_data_FIFO_blk[13] | proc_5_data_PIPO_blk[13] | proc_5_start_FIFO_blk[13] | proc_5_TLF_FIFO_blk[13] | proc_5_input_sync_blk[13] | proc_5_output_sync_blk[13]);
    assign proc_5_data_FIFO_blk[14] = 1'b0;
    assign proc_5_data_PIPO_blk[14] = 1'b0;
    assign proc_5_start_FIFO_blk[14] = 1'b0;
    assign proc_5_TLF_FIFO_blk[14] = 1'b0;
    assign proc_5_input_sync_blk[14] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready);
    assign proc_5_output_sync_blk[14] = 1'b0;
    assign proc_dep_vld_vec_5[14] = dl_detect_out ? proc_dep_vld_vec_5_reg[14] : (proc_5_data_FIFO_blk[14] | proc_5_data_PIPO_blk[14] | proc_5_start_FIFO_blk[14] | proc_5_TLF_FIFO_blk[14] | proc_5_input_sync_blk[14] | proc_5_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_0_5;
    assign in_chan_dep_data_vec_5[43 : 0] = dep_chan_data_0_5;
    assign token_in_vec_5[0] = token_0_5;
    assign in_chan_dep_vld_vec_5[1] = dep_chan_vld_1_5;
    assign in_chan_dep_data_vec_5[87 : 44] = dep_chan_data_1_5;
    assign token_in_vec_5[1] = token_1_5;
    assign in_chan_dep_vld_vec_5[2] = dep_chan_vld_6_5;
    assign in_chan_dep_data_vec_5[131 : 88] = dep_chan_data_6_5;
    assign token_in_vec_5[2] = token_6_5;
    assign in_chan_dep_vld_vec_5[3] = dep_chan_vld_10_5;
    assign in_chan_dep_data_vec_5[175 : 132] = dep_chan_data_10_5;
    assign token_in_vec_5[3] = token_10_5;
    assign in_chan_dep_vld_vec_5[4] = dep_chan_vld_11_5;
    assign in_chan_dep_data_vec_5[219 : 176] = dep_chan_data_11_5;
    assign token_in_vec_5[4] = token_11_5;
    assign in_chan_dep_vld_vec_5[5] = dep_chan_vld_16_5;
    assign in_chan_dep_data_vec_5[263 : 220] = dep_chan_data_16_5;
    assign token_in_vec_5[5] = token_16_5;
    assign in_chan_dep_vld_vec_5[6] = dep_chan_vld_17_5;
    assign in_chan_dep_data_vec_5[307 : 264] = dep_chan_data_17_5;
    assign token_in_vec_5[6] = token_17_5;
    assign in_chan_dep_vld_vec_5[7] = dep_chan_vld_19_5;
    assign in_chan_dep_data_vec_5[351 : 308] = dep_chan_data_19_5;
    assign token_in_vec_5[7] = token_19_5;
    assign in_chan_dep_vld_vec_5[8] = dep_chan_vld_22_5;
    assign in_chan_dep_data_vec_5[395 : 352] = dep_chan_data_22_5;
    assign token_in_vec_5[8] = token_22_5;
    assign in_chan_dep_vld_vec_5[9] = dep_chan_vld_23_5;
    assign in_chan_dep_data_vec_5[439 : 396] = dep_chan_data_23_5;
    assign token_in_vec_5[9] = token_23_5;
    assign in_chan_dep_vld_vec_5[10] = dep_chan_vld_28_5;
    assign in_chan_dep_data_vec_5[483 : 440] = dep_chan_data_28_5;
    assign token_in_vec_5[10] = token_28_5;
    assign in_chan_dep_vld_vec_5[11] = dep_chan_vld_29_5;
    assign in_chan_dep_data_vec_5[527 : 484] = dep_chan_data_29_5;
    assign token_in_vec_5[11] = token_29_5;
    assign in_chan_dep_vld_vec_5[12] = dep_chan_vld_33_5;
    assign in_chan_dep_data_vec_5[571 : 528] = dep_chan_data_33_5;
    assign token_in_vec_5[12] = token_33_5;
    assign in_chan_dep_vld_vec_5[13] = dep_chan_vld_36_5;
    assign in_chan_dep_data_vec_5[615 : 572] = dep_chan_data_36_5;
    assign token_in_vec_5[13] = token_36_5;
    assign in_chan_dep_vld_vec_5[14] = dep_chan_vld_39_5;
    assign in_chan_dep_data_vec_5[659 : 616] = dep_chan_data_39_5;
    assign token_in_vec_5[14] = token_39_5;
    assign in_chan_dep_vld_vec_5[15] = dep_chan_vld_42_5;
    assign in_chan_dep_data_vec_5[703 : 660] = dep_chan_data_42_5;
    assign token_in_vec_5[15] = token_42_5;
    assign dep_chan_vld_5_0 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_0 = out_chan_dep_data_5;
    assign token_5_0 = token_out_vec_5[0];
    assign dep_chan_vld_5_1 = out_chan_dep_vld_vec_5[1];
    assign dep_chan_data_5_1 = out_chan_dep_data_5;
    assign token_5_1 = token_out_vec_5[1];
    assign dep_chan_vld_5_6 = out_chan_dep_vld_vec_5[2];
    assign dep_chan_data_5_6 = out_chan_dep_data_5;
    assign token_5_6 = token_out_vec_5[2];
    assign dep_chan_vld_5_11 = out_chan_dep_vld_vec_5[3];
    assign dep_chan_data_5_11 = out_chan_dep_data_5;
    assign token_5_11 = token_out_vec_5[3];
    assign dep_chan_vld_5_16 = out_chan_dep_vld_vec_5[4];
    assign dep_chan_data_5_16 = out_chan_dep_data_5;
    assign token_5_16 = token_out_vec_5[4];
    assign dep_chan_vld_5_17 = out_chan_dep_vld_vec_5[5];
    assign dep_chan_data_5_17 = out_chan_dep_data_5;
    assign token_5_17 = token_out_vec_5[5];
    assign dep_chan_vld_5_19 = out_chan_dep_vld_vec_5[6];
    assign dep_chan_data_5_19 = out_chan_dep_data_5;
    assign token_5_19 = token_out_vec_5[6];
    assign dep_chan_vld_5_22 = out_chan_dep_vld_vec_5[7];
    assign dep_chan_data_5_22 = out_chan_dep_data_5;
    assign token_5_22 = token_out_vec_5[7];
    assign dep_chan_vld_5_23 = out_chan_dep_vld_vec_5[8];
    assign dep_chan_data_5_23 = out_chan_dep_data_5;
    assign token_5_23 = token_out_vec_5[8];
    assign dep_chan_vld_5_28 = out_chan_dep_vld_vec_5[9];
    assign dep_chan_data_5_28 = out_chan_dep_data_5;
    assign token_5_28 = token_out_vec_5[9];
    assign dep_chan_vld_5_29 = out_chan_dep_vld_vec_5[10];
    assign dep_chan_data_5_29 = out_chan_dep_data_5;
    assign token_5_29 = token_out_vec_5[10];
    assign dep_chan_vld_5_33 = out_chan_dep_vld_vec_5[11];
    assign dep_chan_data_5_33 = out_chan_dep_data_5;
    assign token_5_33 = token_out_vec_5[11];
    assign dep_chan_vld_5_36 = out_chan_dep_vld_vec_5[12];
    assign dep_chan_data_5_36 = out_chan_dep_data_5;
    assign token_5_36 = token_out_vec_5[12];
    assign dep_chan_vld_5_39 = out_chan_dep_vld_vec_5[13];
    assign dep_chan_data_5_39 = out_chan_dep_data_5;
    assign token_5_39 = token_out_vec_5[13];
    assign dep_chan_vld_5_42 = out_chan_dep_vld_vec_5[14];
    assign dep_chan_data_5_42 = out_chan_dep_data_5;
    assign token_5_42 = token_out_vec_5[14];

    // Process: grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 6, 17, 17) BlackBoxJam_hls_deadlock_detect_unit_6 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_6),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_6),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_6),
        .token_in_vec(token_in_vec_6),
        .dl_detect_in(dl_detect_out),
        .origin(origin[6]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_6),
        .out_chan_dep_data(out_chan_dep_data_6),
        .token_out_vec(token_out_vec_6),
        .dl_detect_out(dl_in_vec[6]));

    assign proc_6_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100.convInp_5_blk_n);
    assign proc_6_data_PIPO_blk[0] = 1'b0;
    assign proc_6_start_FIFO_blk[0] = 1'b0;
    assign proc_6_TLF_FIFO_blk[0] = 1'b0;
    assign proc_6_input_sync_blk[0] = 1'b0;
    assign proc_6_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (proc_6_data_FIFO_blk[0] | proc_6_data_PIPO_blk[0] | proc_6_start_FIFO_blk[0] | proc_6_TLF_FIFO_blk[0] | proc_6_input_sync_blk[0] | proc_6_output_sync_blk[0]);
    assign proc_6_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100.mvOut_m_buffer_10_blk_n);
    assign proc_6_data_PIPO_blk[1] = 1'b0;
    assign proc_6_start_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0_U.if_full_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_start & ~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0_U.if_read);
    assign proc_6_TLF_FIFO_blk[1] = 1'b0;
    assign proc_6_input_sync_blk[1] = 1'b0;
    assign proc_6_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_6[1] = dl_detect_out ? proc_dep_vld_vec_6_reg[1] : (proc_6_data_FIFO_blk[1] | proc_6_data_PIPO_blk[1] | proc_6_start_FIFO_blk[1] | proc_6_TLF_FIFO_blk[1] | proc_6_input_sync_blk[1] | proc_6_output_sync_blk[1]);
    assign proc_6_data_FIFO_blk[2] = 1'b0;
    assign proc_6_data_PIPO_blk[2] = 1'b0;
    assign proc_6_start_FIFO_blk[2] = 1'b0;
    assign proc_6_TLF_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.mul_ln121_cast_loc_channel_U.if_empty_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.mul_ln121_cast_loc_channel_U.if_write);
    assign proc_6_input_sync_blk[2] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready);
    assign proc_6_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_6[2] = dl_detect_out ? proc_dep_vld_vec_6_reg[2] : (proc_6_data_FIFO_blk[2] | proc_6_data_PIPO_blk[2] | proc_6_start_FIFO_blk[2] | proc_6_TLF_FIFO_blk[2] | proc_6_input_sync_blk[2] | proc_6_output_sync_blk[2]);
    assign proc_6_data_FIFO_blk[3] = 1'b0;
    assign proc_6_data_PIPO_blk[3] = 1'b0;
    assign proc_6_start_FIFO_blk[3] = 1'b0;
    assign proc_6_TLF_FIFO_blk[3] = 1'b0;
    assign proc_6_input_sync_blk[3] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready);
    assign proc_6_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_6[3] = dl_detect_out ? proc_dep_vld_vec_6_reg[3] : (proc_6_data_FIFO_blk[3] | proc_6_data_PIPO_blk[3] | proc_6_start_FIFO_blk[3] | proc_6_TLF_FIFO_blk[3] | proc_6_input_sync_blk[3] | proc_6_output_sync_blk[3]);
    assign proc_6_data_FIFO_blk[4] = 1'b0;
    assign proc_6_data_PIPO_blk[4] = 1'b0;
    assign proc_6_start_FIFO_blk[4] = 1'b0;
    assign proc_6_TLF_FIFO_blk[4] = 1'b0;
    assign proc_6_input_sync_blk[4] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready);
    assign proc_6_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_6[4] = dl_detect_out ? proc_dep_vld_vec_6_reg[4] : (proc_6_data_FIFO_blk[4] | proc_6_data_PIPO_blk[4] | proc_6_start_FIFO_blk[4] | proc_6_TLF_FIFO_blk[4] | proc_6_input_sync_blk[4] | proc_6_output_sync_blk[4]);
    assign proc_6_data_FIFO_blk[5] = 1'b0;
    assign proc_6_data_PIPO_blk[5] = 1'b0;
    assign proc_6_start_FIFO_blk[5] = 1'b0;
    assign proc_6_TLF_FIFO_blk[5] = 1'b0;
    assign proc_6_input_sync_blk[5] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready);
    assign proc_6_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_6[5] = dl_detect_out ? proc_dep_vld_vec_6_reg[5] : (proc_6_data_FIFO_blk[5] | proc_6_data_PIPO_blk[5] | proc_6_start_FIFO_blk[5] | proc_6_TLF_FIFO_blk[5] | proc_6_input_sync_blk[5] | proc_6_output_sync_blk[5]);
    assign proc_6_data_FIFO_blk[6] = 1'b0;
    assign proc_6_data_PIPO_blk[6] = 1'b0;
    assign proc_6_start_FIFO_blk[6] = 1'b0;
    assign proc_6_TLF_FIFO_blk[6] = 1'b0;
    assign proc_6_input_sync_blk[6] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_6_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_6[6] = dl_detect_out ? proc_dep_vld_vec_6_reg[6] : (proc_6_data_FIFO_blk[6] | proc_6_data_PIPO_blk[6] | proc_6_start_FIFO_blk[6] | proc_6_TLF_FIFO_blk[6] | proc_6_input_sync_blk[6] | proc_6_output_sync_blk[6]);
    assign proc_6_data_FIFO_blk[7] = 1'b0;
    assign proc_6_data_PIPO_blk[7] = 1'b0;
    assign proc_6_start_FIFO_blk[7] = 1'b0;
    assign proc_6_TLF_FIFO_blk[7] = 1'b0;
    assign proc_6_input_sync_blk[7] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready);
    assign proc_6_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_6[7] = dl_detect_out ? proc_dep_vld_vec_6_reg[7] : (proc_6_data_FIFO_blk[7] | proc_6_data_PIPO_blk[7] | proc_6_start_FIFO_blk[7] | proc_6_TLF_FIFO_blk[7] | proc_6_input_sync_blk[7] | proc_6_output_sync_blk[7]);
    assign proc_6_data_FIFO_blk[8] = 1'b0;
    assign proc_6_data_PIPO_blk[8] = 1'b0;
    assign proc_6_start_FIFO_blk[8] = 1'b0;
    assign proc_6_TLF_FIFO_blk[8] = 1'b0;
    assign proc_6_input_sync_blk[8] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready);
    assign proc_6_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_6[8] = dl_detect_out ? proc_dep_vld_vec_6_reg[8] : (proc_6_data_FIFO_blk[8] | proc_6_data_PIPO_blk[8] | proc_6_start_FIFO_blk[8] | proc_6_TLF_FIFO_blk[8] | proc_6_input_sync_blk[8] | proc_6_output_sync_blk[8]);
    assign proc_6_data_FIFO_blk[9] = 1'b0;
    assign proc_6_data_PIPO_blk[9] = 1'b0;
    assign proc_6_start_FIFO_blk[9] = 1'b0;
    assign proc_6_TLF_FIFO_blk[9] = 1'b0;
    assign proc_6_input_sync_blk[9] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready);
    assign proc_6_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_6[9] = dl_detect_out ? proc_dep_vld_vec_6_reg[9] : (proc_6_data_FIFO_blk[9] | proc_6_data_PIPO_blk[9] | proc_6_start_FIFO_blk[9] | proc_6_TLF_FIFO_blk[9] | proc_6_input_sync_blk[9] | proc_6_output_sync_blk[9]);
    assign proc_6_data_FIFO_blk[10] = 1'b0;
    assign proc_6_data_PIPO_blk[10] = 1'b0;
    assign proc_6_start_FIFO_blk[10] = 1'b0;
    assign proc_6_TLF_FIFO_blk[10] = 1'b0;
    assign proc_6_input_sync_blk[10] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready);
    assign proc_6_output_sync_blk[10] = 1'b0;
    assign proc_dep_vld_vec_6[10] = dl_detect_out ? proc_dep_vld_vec_6_reg[10] : (proc_6_data_FIFO_blk[10] | proc_6_data_PIPO_blk[10] | proc_6_start_FIFO_blk[10] | proc_6_TLF_FIFO_blk[10] | proc_6_input_sync_blk[10] | proc_6_output_sync_blk[10]);
    assign proc_6_data_FIFO_blk[11] = 1'b0;
    assign proc_6_data_PIPO_blk[11] = 1'b0;
    assign proc_6_start_FIFO_blk[11] = 1'b0;
    assign proc_6_TLF_FIFO_blk[11] = 1'b0;
    assign proc_6_input_sync_blk[11] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_6_output_sync_blk[11] = 1'b0;
    assign proc_dep_vld_vec_6[11] = dl_detect_out ? proc_dep_vld_vec_6_reg[11] : (proc_6_data_FIFO_blk[11] | proc_6_data_PIPO_blk[11] | proc_6_start_FIFO_blk[11] | proc_6_TLF_FIFO_blk[11] | proc_6_input_sync_blk[11] | proc_6_output_sync_blk[11]);
    assign proc_6_data_FIFO_blk[12] = 1'b0;
    assign proc_6_data_PIPO_blk[12] = 1'b0;
    assign proc_6_start_FIFO_blk[12] = 1'b0;
    assign proc_6_TLF_FIFO_blk[12] = 1'b0;
    assign proc_6_input_sync_blk[12] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready);
    assign proc_6_output_sync_blk[12] = 1'b0;
    assign proc_dep_vld_vec_6[12] = dl_detect_out ? proc_dep_vld_vec_6_reg[12] : (proc_6_data_FIFO_blk[12] | proc_6_data_PIPO_blk[12] | proc_6_start_FIFO_blk[12] | proc_6_TLF_FIFO_blk[12] | proc_6_input_sync_blk[12] | proc_6_output_sync_blk[12]);
    assign proc_6_data_FIFO_blk[13] = 1'b0;
    assign proc_6_data_PIPO_blk[13] = 1'b0;
    assign proc_6_start_FIFO_blk[13] = 1'b0;
    assign proc_6_TLF_FIFO_blk[13] = 1'b0;
    assign proc_6_input_sync_blk[13] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready);
    assign proc_6_output_sync_blk[13] = 1'b0;
    assign proc_dep_vld_vec_6[13] = dl_detect_out ? proc_dep_vld_vec_6_reg[13] : (proc_6_data_FIFO_blk[13] | proc_6_data_PIPO_blk[13] | proc_6_start_FIFO_blk[13] | proc_6_TLF_FIFO_blk[13] | proc_6_input_sync_blk[13] | proc_6_output_sync_blk[13]);
    assign proc_6_data_FIFO_blk[14] = 1'b0;
    assign proc_6_data_PIPO_blk[14] = 1'b0;
    assign proc_6_start_FIFO_blk[14] = 1'b0;
    assign proc_6_TLF_FIFO_blk[14] = 1'b0;
    assign proc_6_input_sync_blk[14] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready);
    assign proc_6_output_sync_blk[14] = 1'b0;
    assign proc_dep_vld_vec_6[14] = dl_detect_out ? proc_dep_vld_vec_6_reg[14] : (proc_6_data_FIFO_blk[14] | proc_6_data_PIPO_blk[14] | proc_6_start_FIFO_blk[14] | proc_6_TLF_FIFO_blk[14] | proc_6_input_sync_blk[14] | proc_6_output_sync_blk[14]);
    assign proc_6_data_FIFO_blk[15] = 1'b0;
    assign proc_6_data_PIPO_blk[15] = 1'b0;
    assign proc_6_start_FIFO_blk[15] = 1'b0;
    assign proc_6_TLF_FIFO_blk[15] = 1'b0;
    assign proc_6_input_sync_blk[15] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready);
    assign proc_6_output_sync_blk[15] = 1'b0;
    assign proc_dep_vld_vec_6[15] = dl_detect_out ? proc_dep_vld_vec_6_reg[15] : (proc_6_data_FIFO_blk[15] | proc_6_data_PIPO_blk[15] | proc_6_start_FIFO_blk[15] | proc_6_TLF_FIFO_blk[15] | proc_6_input_sync_blk[15] | proc_6_output_sync_blk[15]);
    assign proc_6_data_FIFO_blk[16] = 1'b0;
    assign proc_6_data_PIPO_blk[16] = 1'b0;
    assign proc_6_start_FIFO_blk[16] = 1'b0;
    assign proc_6_TLF_FIFO_blk[16] = 1'b0;
    assign proc_6_input_sync_blk[16] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready);
    assign proc_6_output_sync_blk[16] = 1'b0;
    assign proc_dep_vld_vec_6[16] = dl_detect_out ? proc_dep_vld_vec_6_reg[16] : (proc_6_data_FIFO_blk[16] | proc_6_data_PIPO_blk[16] | proc_6_start_FIFO_blk[16] | proc_6_TLF_FIFO_blk[16] | proc_6_input_sync_blk[16] | proc_6_output_sync_blk[16]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_0_6;
    assign in_chan_dep_data_vec_6[43 : 0] = dep_chan_data_0_6;
    assign token_in_vec_6[0] = token_0_6;
    assign in_chan_dep_vld_vec_6[1] = dep_chan_vld_1_6;
    assign in_chan_dep_data_vec_6[87 : 44] = dep_chan_data_1_6;
    assign token_in_vec_6[1] = token_1_6;
    assign in_chan_dep_vld_vec_6[2] = dep_chan_vld_4_6;
    assign in_chan_dep_data_vec_6[131 : 88] = dep_chan_data_4_6;
    assign token_in_vec_6[2] = token_4_6;
    assign in_chan_dep_vld_vec_6[3] = dep_chan_vld_5_6;
    assign in_chan_dep_data_vec_6[175 : 132] = dep_chan_data_5_6;
    assign token_in_vec_6[3] = token_5_6;
    assign in_chan_dep_vld_vec_6[4] = dep_chan_vld_7_6;
    assign in_chan_dep_data_vec_6[219 : 176] = dep_chan_data_7_6;
    assign token_in_vec_6[4] = token_7_6;
    assign in_chan_dep_vld_vec_6[5] = dep_chan_vld_11_6;
    assign in_chan_dep_data_vec_6[263 : 220] = dep_chan_data_11_6;
    assign token_in_vec_6[5] = token_11_6;
    assign in_chan_dep_vld_vec_6[6] = dep_chan_vld_16_6;
    assign in_chan_dep_data_vec_6[307 : 264] = dep_chan_data_16_6;
    assign token_in_vec_6[6] = token_16_6;
    assign in_chan_dep_vld_vec_6[7] = dep_chan_vld_17_6;
    assign in_chan_dep_data_vec_6[351 : 308] = dep_chan_data_17_6;
    assign token_in_vec_6[7] = token_17_6;
    assign in_chan_dep_vld_vec_6[8] = dep_chan_vld_19_6;
    assign in_chan_dep_data_vec_6[395 : 352] = dep_chan_data_19_6;
    assign token_in_vec_6[8] = token_19_6;
    assign in_chan_dep_vld_vec_6[9] = dep_chan_vld_22_6;
    assign in_chan_dep_data_vec_6[439 : 396] = dep_chan_data_22_6;
    assign token_in_vec_6[9] = token_22_6;
    assign in_chan_dep_vld_vec_6[10] = dep_chan_vld_23_6;
    assign in_chan_dep_data_vec_6[483 : 440] = dep_chan_data_23_6;
    assign token_in_vec_6[10] = token_23_6;
    assign in_chan_dep_vld_vec_6[11] = dep_chan_vld_28_6;
    assign in_chan_dep_data_vec_6[527 : 484] = dep_chan_data_28_6;
    assign token_in_vec_6[11] = token_28_6;
    assign in_chan_dep_vld_vec_6[12] = dep_chan_vld_29_6;
    assign in_chan_dep_data_vec_6[571 : 528] = dep_chan_data_29_6;
    assign token_in_vec_6[12] = token_29_6;
    assign in_chan_dep_vld_vec_6[13] = dep_chan_vld_33_6;
    assign in_chan_dep_data_vec_6[615 : 572] = dep_chan_data_33_6;
    assign token_in_vec_6[13] = token_33_6;
    assign in_chan_dep_vld_vec_6[14] = dep_chan_vld_36_6;
    assign in_chan_dep_data_vec_6[659 : 616] = dep_chan_data_36_6;
    assign token_in_vec_6[14] = token_36_6;
    assign in_chan_dep_vld_vec_6[15] = dep_chan_vld_39_6;
    assign in_chan_dep_data_vec_6[703 : 660] = dep_chan_data_39_6;
    assign token_in_vec_6[15] = token_39_6;
    assign in_chan_dep_vld_vec_6[16] = dep_chan_vld_42_6;
    assign in_chan_dep_data_vec_6[747 : 704] = dep_chan_data_42_6;
    assign token_in_vec_6[16] = token_42_6;
    assign dep_chan_vld_6_4 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_4 = out_chan_dep_data_6;
    assign token_6_4 = token_out_vec_6[0];
    assign dep_chan_vld_6_7 = out_chan_dep_vld_vec_6[1];
    assign dep_chan_data_6_7 = out_chan_dep_data_6;
    assign token_6_7 = token_out_vec_6[1];
    assign dep_chan_vld_6_5 = out_chan_dep_vld_vec_6[2];
    assign dep_chan_data_6_5 = out_chan_dep_data_6;
    assign token_6_5 = token_out_vec_6[2];
    assign dep_chan_vld_6_0 = out_chan_dep_vld_vec_6[3];
    assign dep_chan_data_6_0 = out_chan_dep_data_6;
    assign token_6_0 = token_out_vec_6[3];
    assign dep_chan_vld_6_1 = out_chan_dep_vld_vec_6[4];
    assign dep_chan_data_6_1 = out_chan_dep_data_6;
    assign token_6_1 = token_out_vec_6[4];
    assign dep_chan_vld_6_11 = out_chan_dep_vld_vec_6[5];
    assign dep_chan_data_6_11 = out_chan_dep_data_6;
    assign token_6_11 = token_out_vec_6[5];
    assign dep_chan_vld_6_16 = out_chan_dep_vld_vec_6[6];
    assign dep_chan_data_6_16 = out_chan_dep_data_6;
    assign token_6_16 = token_out_vec_6[6];
    assign dep_chan_vld_6_17 = out_chan_dep_vld_vec_6[7];
    assign dep_chan_data_6_17 = out_chan_dep_data_6;
    assign token_6_17 = token_out_vec_6[7];
    assign dep_chan_vld_6_19 = out_chan_dep_vld_vec_6[8];
    assign dep_chan_data_6_19 = out_chan_dep_data_6;
    assign token_6_19 = token_out_vec_6[8];
    assign dep_chan_vld_6_22 = out_chan_dep_vld_vec_6[9];
    assign dep_chan_data_6_22 = out_chan_dep_data_6;
    assign token_6_22 = token_out_vec_6[9];
    assign dep_chan_vld_6_23 = out_chan_dep_vld_vec_6[10];
    assign dep_chan_data_6_23 = out_chan_dep_data_6;
    assign token_6_23 = token_out_vec_6[10];
    assign dep_chan_vld_6_28 = out_chan_dep_vld_vec_6[11];
    assign dep_chan_data_6_28 = out_chan_dep_data_6;
    assign token_6_28 = token_out_vec_6[11];
    assign dep_chan_vld_6_29 = out_chan_dep_vld_vec_6[12];
    assign dep_chan_data_6_29 = out_chan_dep_data_6;
    assign token_6_29 = token_out_vec_6[12];
    assign dep_chan_vld_6_33 = out_chan_dep_vld_vec_6[13];
    assign dep_chan_data_6_33 = out_chan_dep_data_6;
    assign token_6_33 = token_out_vec_6[13];
    assign dep_chan_vld_6_36 = out_chan_dep_vld_vec_6[14];
    assign dep_chan_data_6_36 = out_chan_dep_data_6;
    assign token_6_36 = token_out_vec_6[14];
    assign dep_chan_vld_6_39 = out_chan_dep_vld_vec_6[15];
    assign dep_chan_data_6_39 = out_chan_dep_data_6;
    assign token_6_39 = token_out_vec_6[15];
    assign dep_chan_vld_6_42 = out_chan_dep_vld_vec_6[16];
    assign dep_chan_data_6_42 = out_chan_dep_data_6;
    assign token_6_42 = token_out_vec_6[16];

    // Process: grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 7, 3, 3) BlackBoxJam_hls_deadlock_detect_unit_7 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_7),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_7),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_7),
        .token_in_vec(token_in_vec_7),
        .dl_detect_in(dl_detect_out),
        .origin(origin[7]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_7),
        .out_chan_dep_data(out_chan_dep_data_7),
        .token_out_vec(token_out_vec_7),
        .dl_detect_out(dl_in_vec[7]));

    assign proc_7_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.numReps_blk_n);
    assign proc_7_data_PIPO_blk[0] = 1'b0;
    assign proc_7_start_FIFO_blk[0] = 1'b0;
    assign proc_7_TLF_FIFO_blk[0] = 1'b0;
    assign proc_7_input_sync_blk[0] = 1'b0;
    assign proc_7_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_7[0] = dl_detect_out ? proc_dep_vld_vec_7_reg[0] : (proc_7_data_FIFO_blk[0] | proc_7_data_PIPO_blk[0] | proc_7_start_FIFO_blk[0] | proc_7_TLF_FIFO_blk[0] | proc_7_input_sync_blk[0] | proc_7_output_sync_blk[0]);
    assign proc_7_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc26_Pipeline_VITIS_LOOP_300_3_fu_52.mvOut_m_buffer_10_blk_n);
    assign proc_7_data_PIPO_blk[1] = 1'b0;
    assign proc_7_start_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0_U.if_write);
    assign proc_7_TLF_FIFO_blk[1] = 1'b0;
    assign proc_7_input_sync_blk[1] = 1'b0;
    assign proc_7_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_7[1] = dl_detect_out ? proc_dep_vld_vec_7_reg[1] : (proc_7_data_FIFO_blk[1] | proc_7_data_PIPO_blk[1] | proc_7_start_FIFO_blk[1] | proc_7_TLF_FIFO_blk[1] | proc_7_input_sync_blk[1] | proc_7_output_sync_blk[1]);
    assign proc_7_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc26_Pipeline_VITIS_LOOP_300_3_fu_52.inter1_blk_n) | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.numReps_c156_blk_n);
    assign proc_7_data_PIPO_blk[2] = 1'b0;
    assign proc_7_start_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.real_start & (trans_in_cnt_4 == trans_out_cnt_4) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0_U.if_read);
    assign proc_7_TLF_FIFO_blk[2] = 1'b0;
    assign proc_7_input_sync_blk[2] = 1'b0;
    assign proc_7_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_7[2] = dl_detect_out ? proc_dep_vld_vec_7_reg[2] : (proc_7_data_FIFO_blk[2] | proc_7_data_PIPO_blk[2] | proc_7_start_FIFO_blk[2] | proc_7_TLF_FIFO_blk[2] | proc_7_input_sync_blk[2] | proc_7_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_7_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_7_reg <= proc_dep_vld_vec_7;
        end
    end
    assign in_chan_dep_vld_vec_7[0] = dep_chan_vld_4_7;
    assign in_chan_dep_data_vec_7[43 : 0] = dep_chan_data_4_7;
    assign token_in_vec_7[0] = token_4_7;
    assign in_chan_dep_vld_vec_7[1] = dep_chan_vld_6_7;
    assign in_chan_dep_data_vec_7[87 : 44] = dep_chan_data_6_7;
    assign token_in_vec_7[1] = token_6_7;
    assign in_chan_dep_vld_vec_7[2] = dep_chan_vld_8_7;
    assign in_chan_dep_data_vec_7[131 : 88] = dep_chan_data_8_7;
    assign token_in_vec_7[2] = token_8_7;
    assign dep_chan_vld_7_4 = out_chan_dep_vld_vec_7[0];
    assign dep_chan_data_7_4 = out_chan_dep_data_7;
    assign token_7_4 = token_out_vec_7[0];
    assign dep_chan_vld_7_6 = out_chan_dep_vld_vec_7[1];
    assign dep_chan_data_7_6 = out_chan_dep_data_7;
    assign token_7_6 = token_out_vec_7[1];
    assign dep_chan_vld_7_8 = out_chan_dep_vld_vec_7[2];
    assign dep_chan_data_7_8 = out_chan_dep_data_7;
    assign token_7_8 = token_out_vec_7[2];

    // Process: grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 8, 2, 2) BlackBoxJam_hls_deadlock_detect_unit_8 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_8),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_8),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_8),
        .token_in_vec(token_in_vec_8),
        .dl_detect_in(dl_detect_out),
        .origin(origin[8]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_8),
        .out_chan_dep_data(out_chan_dep_data_8),
        .token_out_vec(token_out_vec_8),
        .dl_detect_out(dl_in_vec[8]));

    assign proc_8_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.numReps_blk_n) | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc27_Pipeline_VITIS_LOOP_268_1_fu_52.inter1_blk_n);
    assign proc_8_data_PIPO_blk[0] = 1'b0;
    assign proc_8_start_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0_U.if_write);
    assign proc_8_TLF_FIFO_blk[0] = 1'b0;
    assign proc_8_input_sync_blk[0] = 1'b0;
    assign proc_8_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_8[0] = dl_detect_out ? proc_dep_vld_vec_8_reg[0] : (proc_8_data_FIFO_blk[0] | proc_8_data_PIPO_blk[0] | proc_8_start_FIFO_blk[0] | proc_8_TLF_FIFO_blk[0] | proc_8_input_sync_blk[0] | proc_8_output_sync_blk[0]);
    assign proc_8_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc27_Pipeline_VITIS_LOOP_268_1_fu_52.wa_in_12_blk_n) | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.numReps_c155_blk_n);
    assign proc_8_data_PIPO_blk[1] = 1'b0;
    assign proc_8_start_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.real_start & (trans_in_cnt_5 == trans_out_cnt_5) & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0_U.if_read);
    assign proc_8_TLF_FIFO_blk[1] = 1'b0;
    assign proc_8_input_sync_blk[1] = 1'b0;
    assign proc_8_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_8[1] = dl_detect_out ? proc_dep_vld_vec_8_reg[1] : (proc_8_data_FIFO_blk[1] | proc_8_data_PIPO_blk[1] | proc_8_start_FIFO_blk[1] | proc_8_TLF_FIFO_blk[1] | proc_8_input_sync_blk[1] | proc_8_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_8_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_8_reg <= proc_dep_vld_vec_8;
        end
    end
    assign in_chan_dep_vld_vec_8[0] = dep_chan_vld_7_8;
    assign in_chan_dep_data_vec_8[43 : 0] = dep_chan_data_7_8;
    assign token_in_vec_8[0] = token_7_8;
    assign in_chan_dep_vld_vec_8[1] = dep_chan_vld_9_8;
    assign in_chan_dep_data_vec_8[87 : 44] = dep_chan_data_9_8;
    assign token_in_vec_8[1] = token_9_8;
    assign dep_chan_vld_8_7 = out_chan_dep_vld_vec_8[0];
    assign dep_chan_data_8_7 = out_chan_dep_data_8;
    assign token_8_7 = token_out_vec_8[0];
    assign dep_chan_vld_8_9 = out_chan_dep_vld_vec_8[1];
    assign dep_chan_data_8_9 = out_chan_dep_data_8;
    assign token_8_9 = token_out_vec_8[1];

    // Process: grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 9, 3, 3) BlackBoxJam_hls_deadlock_detect_unit_9 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_9),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_9),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_9),
        .token_in_vec(token_in_vec_9),
        .dl_detect_in(dl_detect_out),
        .origin(origin[9]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_9),
        .out_chan_dep_data(out_chan_dep_data_9),
        .token_out_vec(token_out_vec_9),
        .dl_detect_out(dl_in_vec[9]));

    assign proc_9_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.wa_in_i126_blk_n) | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.numReps_blk_n);
    assign proc_9_data_PIPO_blk[0] = 1'b0;
    assign proc_9_start_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0_U.if_empty_n & grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0_U.if_write);
    assign proc_9_TLF_FIFO_blk[0] = 1'b0;
    assign proc_9_input_sync_blk[0] = 1'b0;
    assign proc_9_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_9[0] = dl_detect_out ? proc_dep_vld_vec_9_reg[0] : (proc_9_data_FIFO_blk[0] | proc_9_data_PIPO_blk[0] | proc_9_start_FIFO_blk[0] | proc_9_TLF_FIFO_blk[0] | proc_9_input_sync_blk[0] | proc_9_output_sync_blk[0]);
    assign proc_9_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.convInp_i3_blk_n);
    assign proc_9_data_PIPO_blk[1] = 1'b0;
    assign proc_9_start_FIFO_blk[1] = 1'b0;
    assign proc_9_TLF_FIFO_blk[1] = 1'b0;
    assign proc_9_input_sync_blk[1] = 1'b0;
    assign proc_9_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_9[1] = dl_detect_out ? proc_dep_vld_vec_9_reg[1] : (proc_9_data_FIFO_blk[1] | proc_9_data_PIPO_blk[1] | proc_9_start_FIFO_blk[1] | proc_9_TLF_FIFO_blk[1] | proc_9_input_sync_blk[1] | proc_9_output_sync_blk[1]);
    assign proc_9_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.numReps_c154_blk_n);
    assign proc_9_data_PIPO_blk[2] = 1'b0;
    assign proc_9_start_FIFO_blk[2] = 1'b0;
    assign proc_9_TLF_FIFO_blk[2] = 1'b0;
    assign proc_9_input_sync_blk[2] = 1'b0;
    assign proc_9_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_9[2] = dl_detect_out ? proc_dep_vld_vec_9_reg[2] : (proc_9_data_FIFO_blk[2] | proc_9_data_PIPO_blk[2] | proc_9_start_FIFO_blk[2] | proc_9_TLF_FIFO_blk[2] | proc_9_input_sync_blk[2] | proc_9_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_9_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_9_reg <= proc_dep_vld_vec_9;
        end
    end
    assign in_chan_dep_vld_vec_9[0] = dep_chan_vld_8_9;
    assign in_chan_dep_data_vec_9[43 : 0] = dep_chan_data_8_9;
    assign token_in_vec_9[0] = token_8_9;
    assign in_chan_dep_vld_vec_9[1] = dep_chan_vld_11_9;
    assign in_chan_dep_data_vec_9[87 : 44] = dep_chan_data_11_9;
    assign token_in_vec_9[1] = token_11_9;
    assign in_chan_dep_vld_vec_9[2] = dep_chan_vld_12_9;
    assign in_chan_dep_data_vec_9[131 : 88] = dep_chan_data_12_9;
    assign token_in_vec_9[2] = token_12_9;
    assign dep_chan_vld_9_8 = out_chan_dep_vld_vec_9[0];
    assign dep_chan_data_9_8 = out_chan_dep_data_9;
    assign token_9_8 = token_out_vec_9[0];
    assign dep_chan_vld_9_11 = out_chan_dep_vld_vec_9[1];
    assign dep_chan_data_9_11 = out_chan_dep_data_9;
    assign token_9_11 = token_out_vec_9[1];
    assign dep_chan_vld_9_12 = out_chan_dep_vld_vec_9[2];
    assign dep_chan_data_9_12 = out_chan_dep_data_9;
    assign token_9_12 = token_out_vec_9[2];

    // Process: grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj900EEC2ERN3hls6streamI_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 10, 1, 1) BlackBoxJam_hls_deadlock_detect_unit_10 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_10),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_10),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_10),
        .token_in_vec(token_in_vec_10),
        .dl_detect_in(dl_detect_out),
        .origin(origin[10]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_10),
        .out_chan_dep_data(out_chan_dep_data_10),
        .token_out_vec(token_out_vec_10),
        .dl_detect_out(dl_in_vec[10]));

    assign proc_10_data_FIFO_blk[0] = 1'b0;
    assign proc_10_data_PIPO_blk[0] = 1'b0;
    assign proc_10_start_FIFO_blk[0] = 1'b0;
    assign proc_10_TLF_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.p_loc_channel_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj900EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.p_loc_channel_U.if_write);
    assign proc_10_input_sync_blk[0] = 1'b0;
    assign proc_10_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_10[0] = dl_detect_out ? proc_dep_vld_vec_10_reg[0] : (proc_10_data_FIFO_blk[0] | proc_10_data_PIPO_blk[0] | proc_10_start_FIFO_blk[0] | proc_10_TLF_FIFO_blk[0] | proc_10_input_sync_blk[0] | proc_10_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_10_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_10_reg <= proc_dep_vld_vec_10;
        end
    end
    assign in_chan_dep_vld_vec_10[0] = dep_chan_vld_11_10;
    assign in_chan_dep_data_vec_10[43 : 0] = dep_chan_data_11_10;
    assign token_in_vec_10[0] = token_11_10;
    assign dep_chan_vld_10_5 = out_chan_dep_vld_vec_10[0];
    assign dep_chan_data_10_5 = out_chan_dep_data_10;
    assign token_10_5 = token_out_vec_10[0];

    // Process: grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 11, 17, 18) BlackBoxJam_hls_deadlock_detect_unit_11 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_11),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_11),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_11),
        .token_in_vec(token_in_vec_11),
        .dl_detect_in(dl_detect_out),
        .origin(origin[11]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_11),
        .out_chan_dep_data(out_chan_dep_data_11),
        .token_out_vec(token_out_vec_11),
        .dl_detect_out(dl_in_vec[11]));

    assign proc_11_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164.convInp_4_blk_n);
    assign proc_11_data_PIPO_blk[0] = 1'b0;
    assign proc_11_start_FIFO_blk[0] = 1'b0;
    assign proc_11_TLF_FIFO_blk[0] = 1'b0;
    assign proc_11_input_sync_blk[0] = 1'b0;
    assign proc_11_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_11[0] = dl_detect_out ? proc_dep_vld_vec_11_reg[0] : (proc_11_data_FIFO_blk[0] | proc_11_data_PIPO_blk[0] | proc_11_start_FIFO_blk[0] | proc_11_TLF_FIFO_blk[0] | proc_11_input_sync_blk[0] | proc_11_output_sync_blk[0]);
    assign proc_11_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164.mvOut_m_buffer_9_blk_n);
    assign proc_11_data_PIPO_blk[1] = 1'b0;
    assign proc_11_start_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0_U.if_full_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_start & ~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.real_start & (trans_in_cnt_6 == trans_out_cnt_6) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0_U.if_read);
    assign proc_11_TLF_FIFO_blk[1] = 1'b0;
    assign proc_11_input_sync_blk[1] = 1'b0;
    assign proc_11_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_11[1] = dl_detect_out ? proc_dep_vld_vec_11_reg[1] : (proc_11_data_FIFO_blk[1] | proc_11_data_PIPO_blk[1] | proc_11_start_FIFO_blk[1] | proc_11_TLF_FIFO_blk[1] | proc_11_input_sync_blk[1] | proc_11_output_sync_blk[1]);
    assign proc_11_data_FIFO_blk[2] = 1'b0;
    assign proc_11_data_PIPO_blk[2] = 1'b0;
    assign proc_11_start_FIFO_blk[2] = 1'b0;
    assign proc_11_TLF_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.mul_ln121_1_cast_loc_channel_U.if_empty_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.mul_ln121_1_cast_loc_channel_U.if_write);
    assign proc_11_input_sync_blk[2] = 1'b0;
    assign proc_11_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_11[2] = dl_detect_out ? proc_dep_vld_vec_11_reg[2] : (proc_11_data_FIFO_blk[2] | proc_11_data_PIPO_blk[2] | proc_11_start_FIFO_blk[2] | proc_11_TLF_FIFO_blk[2] | proc_11_input_sync_blk[2] | proc_11_output_sync_blk[2]);
    assign proc_11_data_FIFO_blk[3] = 1'b0;
    assign proc_11_data_PIPO_blk[3] = 1'b0;
    assign proc_11_start_FIFO_blk[3] = 1'b0;
    assign proc_11_TLF_FIFO_blk[3] = 1'b0;
    assign proc_11_input_sync_blk[3] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready);
    assign proc_11_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_11[3] = dl_detect_out ? proc_dep_vld_vec_11_reg[3] : (proc_11_data_FIFO_blk[3] | proc_11_data_PIPO_blk[3] | proc_11_start_FIFO_blk[3] | proc_11_TLF_FIFO_blk[3] | proc_11_input_sync_blk[3] | proc_11_output_sync_blk[3]);
    assign proc_11_data_FIFO_blk[4] = 1'b0;
    assign proc_11_data_PIPO_blk[4] = 1'b0;
    assign proc_11_start_FIFO_blk[4] = 1'b0;
    assign proc_11_TLF_FIFO_blk[4] = 1'b0;
    assign proc_11_input_sync_blk[4] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready);
    assign proc_11_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_11[4] = dl_detect_out ? proc_dep_vld_vec_11_reg[4] : (proc_11_data_FIFO_blk[4] | proc_11_data_PIPO_blk[4] | proc_11_start_FIFO_blk[4] | proc_11_TLF_FIFO_blk[4] | proc_11_input_sync_blk[4] | proc_11_output_sync_blk[4]);
    assign proc_11_data_FIFO_blk[5] = 1'b0;
    assign proc_11_data_PIPO_blk[5] = 1'b0;
    assign proc_11_start_FIFO_blk[5] = 1'b0;
    assign proc_11_TLF_FIFO_blk[5] = 1'b0;
    assign proc_11_input_sync_blk[5] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready);
    assign proc_11_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_11[5] = dl_detect_out ? proc_dep_vld_vec_11_reg[5] : (proc_11_data_FIFO_blk[5] | proc_11_data_PIPO_blk[5] | proc_11_start_FIFO_blk[5] | proc_11_TLF_FIFO_blk[5] | proc_11_input_sync_blk[5] | proc_11_output_sync_blk[5]);
    assign proc_11_data_FIFO_blk[6] = 1'b0;
    assign proc_11_data_PIPO_blk[6] = 1'b0;
    assign proc_11_start_FIFO_blk[6] = 1'b0;
    assign proc_11_TLF_FIFO_blk[6] = 1'b0;
    assign proc_11_input_sync_blk[6] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready);
    assign proc_11_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_11[6] = dl_detect_out ? proc_dep_vld_vec_11_reg[6] : (proc_11_data_FIFO_blk[6] | proc_11_data_PIPO_blk[6] | proc_11_start_FIFO_blk[6] | proc_11_TLF_FIFO_blk[6] | proc_11_input_sync_blk[6] | proc_11_output_sync_blk[6]);
    assign proc_11_data_FIFO_blk[7] = 1'b0;
    assign proc_11_data_PIPO_blk[7] = 1'b0;
    assign proc_11_start_FIFO_blk[7] = 1'b0;
    assign proc_11_TLF_FIFO_blk[7] = 1'b0;
    assign proc_11_input_sync_blk[7] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_11_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_11[7] = dl_detect_out ? proc_dep_vld_vec_11_reg[7] : (proc_11_data_FIFO_blk[7] | proc_11_data_PIPO_blk[7] | proc_11_start_FIFO_blk[7] | proc_11_TLF_FIFO_blk[7] | proc_11_input_sync_blk[7] | proc_11_output_sync_blk[7]);
    assign proc_11_data_FIFO_blk[8] = 1'b0;
    assign proc_11_data_PIPO_blk[8] = 1'b0;
    assign proc_11_start_FIFO_blk[8] = 1'b0;
    assign proc_11_TLF_FIFO_blk[8] = 1'b0;
    assign proc_11_input_sync_blk[8] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready);
    assign proc_11_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_11[8] = dl_detect_out ? proc_dep_vld_vec_11_reg[8] : (proc_11_data_FIFO_blk[8] | proc_11_data_PIPO_blk[8] | proc_11_start_FIFO_blk[8] | proc_11_TLF_FIFO_blk[8] | proc_11_input_sync_blk[8] | proc_11_output_sync_blk[8]);
    assign proc_11_data_FIFO_blk[9] = 1'b0;
    assign proc_11_data_PIPO_blk[9] = 1'b0;
    assign proc_11_start_FIFO_blk[9] = 1'b0;
    assign proc_11_TLF_FIFO_blk[9] = 1'b0;
    assign proc_11_input_sync_blk[9] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready);
    assign proc_11_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_11[9] = dl_detect_out ? proc_dep_vld_vec_11_reg[9] : (proc_11_data_FIFO_blk[9] | proc_11_data_PIPO_blk[9] | proc_11_start_FIFO_blk[9] | proc_11_TLF_FIFO_blk[9] | proc_11_input_sync_blk[9] | proc_11_output_sync_blk[9]);
    assign proc_11_data_FIFO_blk[10] = 1'b0;
    assign proc_11_data_PIPO_blk[10] = 1'b0;
    assign proc_11_start_FIFO_blk[10] = 1'b0;
    assign proc_11_TLF_FIFO_blk[10] = 1'b0;
    assign proc_11_input_sync_blk[10] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready);
    assign proc_11_output_sync_blk[10] = 1'b0;
    assign proc_dep_vld_vec_11[10] = dl_detect_out ? proc_dep_vld_vec_11_reg[10] : (proc_11_data_FIFO_blk[10] | proc_11_data_PIPO_blk[10] | proc_11_start_FIFO_blk[10] | proc_11_TLF_FIFO_blk[10] | proc_11_input_sync_blk[10] | proc_11_output_sync_blk[10]);
    assign proc_11_data_FIFO_blk[11] = 1'b0;
    assign proc_11_data_PIPO_blk[11] = 1'b0;
    assign proc_11_start_FIFO_blk[11] = 1'b0;
    assign proc_11_TLF_FIFO_blk[11] = 1'b0;
    assign proc_11_input_sync_blk[11] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready);
    assign proc_11_output_sync_blk[11] = 1'b0;
    assign proc_dep_vld_vec_11[11] = dl_detect_out ? proc_dep_vld_vec_11_reg[11] : (proc_11_data_FIFO_blk[11] | proc_11_data_PIPO_blk[11] | proc_11_start_FIFO_blk[11] | proc_11_TLF_FIFO_blk[11] | proc_11_input_sync_blk[11] | proc_11_output_sync_blk[11]);
    assign proc_11_data_FIFO_blk[12] = 1'b0;
    assign proc_11_data_PIPO_blk[12] = 1'b0;
    assign proc_11_start_FIFO_blk[12] = 1'b0;
    assign proc_11_TLF_FIFO_blk[12] = 1'b0;
    assign proc_11_input_sync_blk[12] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_11_output_sync_blk[12] = 1'b0;
    assign proc_dep_vld_vec_11[12] = dl_detect_out ? proc_dep_vld_vec_11_reg[12] : (proc_11_data_FIFO_blk[12] | proc_11_data_PIPO_blk[12] | proc_11_start_FIFO_blk[12] | proc_11_TLF_FIFO_blk[12] | proc_11_input_sync_blk[12] | proc_11_output_sync_blk[12]);
    assign proc_11_data_FIFO_blk[13] = 1'b0;
    assign proc_11_data_PIPO_blk[13] = 1'b0;
    assign proc_11_start_FIFO_blk[13] = 1'b0;
    assign proc_11_TLF_FIFO_blk[13] = 1'b0;
    assign proc_11_input_sync_blk[13] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready);
    assign proc_11_output_sync_blk[13] = 1'b0;
    assign proc_dep_vld_vec_11[13] = dl_detect_out ? proc_dep_vld_vec_11_reg[13] : (proc_11_data_FIFO_blk[13] | proc_11_data_PIPO_blk[13] | proc_11_start_FIFO_blk[13] | proc_11_TLF_FIFO_blk[13] | proc_11_input_sync_blk[13] | proc_11_output_sync_blk[13]);
    assign proc_11_data_FIFO_blk[14] = 1'b0;
    assign proc_11_data_PIPO_blk[14] = 1'b0;
    assign proc_11_start_FIFO_blk[14] = 1'b0;
    assign proc_11_TLF_FIFO_blk[14] = 1'b0;
    assign proc_11_input_sync_blk[14] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready);
    assign proc_11_output_sync_blk[14] = 1'b0;
    assign proc_dep_vld_vec_11[14] = dl_detect_out ? proc_dep_vld_vec_11_reg[14] : (proc_11_data_FIFO_blk[14] | proc_11_data_PIPO_blk[14] | proc_11_start_FIFO_blk[14] | proc_11_TLF_FIFO_blk[14] | proc_11_input_sync_blk[14] | proc_11_output_sync_blk[14]);
    assign proc_11_data_FIFO_blk[15] = 1'b0;
    assign proc_11_data_PIPO_blk[15] = 1'b0;
    assign proc_11_start_FIFO_blk[15] = 1'b0;
    assign proc_11_TLF_FIFO_blk[15] = 1'b0;
    assign proc_11_input_sync_blk[15] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready);
    assign proc_11_output_sync_blk[15] = 1'b0;
    assign proc_dep_vld_vec_11[15] = dl_detect_out ? proc_dep_vld_vec_11_reg[15] : (proc_11_data_FIFO_blk[15] | proc_11_data_PIPO_blk[15] | proc_11_start_FIFO_blk[15] | proc_11_TLF_FIFO_blk[15] | proc_11_input_sync_blk[15] | proc_11_output_sync_blk[15]);
    assign proc_11_data_FIFO_blk[16] = 1'b0;
    assign proc_11_data_PIPO_blk[16] = 1'b0;
    assign proc_11_start_FIFO_blk[16] = 1'b0;
    assign proc_11_TLF_FIFO_blk[16] = 1'b0;
    assign proc_11_input_sync_blk[16] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready);
    assign proc_11_output_sync_blk[16] = 1'b0;
    assign proc_dep_vld_vec_11[16] = dl_detect_out ? proc_dep_vld_vec_11_reg[16] : (proc_11_data_FIFO_blk[16] | proc_11_data_PIPO_blk[16] | proc_11_start_FIFO_blk[16] | proc_11_TLF_FIFO_blk[16] | proc_11_input_sync_blk[16] | proc_11_output_sync_blk[16]);
    assign proc_11_data_FIFO_blk[17] = 1'b0;
    assign proc_11_data_PIPO_blk[17] = 1'b0;
    assign proc_11_start_FIFO_blk[17] = 1'b0;
    assign proc_11_TLF_FIFO_blk[17] = 1'b0;
    assign proc_11_input_sync_blk[17] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready);
    assign proc_11_output_sync_blk[17] = 1'b0;
    assign proc_dep_vld_vec_11[17] = dl_detect_out ? proc_dep_vld_vec_11_reg[17] : (proc_11_data_FIFO_blk[17] | proc_11_data_PIPO_blk[17] | proc_11_start_FIFO_blk[17] | proc_11_TLF_FIFO_blk[17] | proc_11_input_sync_blk[17] | proc_11_output_sync_blk[17]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_11_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_11_reg <= proc_dep_vld_vec_11;
        end
    end
    assign in_chan_dep_vld_vec_11[0] = dep_chan_vld_0_11;
    assign in_chan_dep_data_vec_11[43 : 0] = dep_chan_data_0_11;
    assign token_in_vec_11[0] = token_0_11;
    assign in_chan_dep_vld_vec_11[1] = dep_chan_vld_1_11;
    assign in_chan_dep_data_vec_11[87 : 44] = dep_chan_data_1_11;
    assign token_in_vec_11[1] = token_1_11;
    assign in_chan_dep_vld_vec_11[2] = dep_chan_vld_5_11;
    assign in_chan_dep_data_vec_11[131 : 88] = dep_chan_data_5_11;
    assign token_in_vec_11[2] = token_5_11;
    assign in_chan_dep_vld_vec_11[3] = dep_chan_vld_6_11;
    assign in_chan_dep_data_vec_11[175 : 132] = dep_chan_data_6_11;
    assign token_in_vec_11[3] = token_6_11;
    assign in_chan_dep_vld_vec_11[4] = dep_chan_vld_9_11;
    assign in_chan_dep_data_vec_11[219 : 176] = dep_chan_data_9_11;
    assign token_in_vec_11[4] = token_9_11;
    assign in_chan_dep_vld_vec_11[5] = dep_chan_vld_12_11;
    assign in_chan_dep_data_vec_11[263 : 220] = dep_chan_data_12_11;
    assign token_in_vec_11[5] = token_12_11;
    assign in_chan_dep_vld_vec_11[6] = dep_chan_vld_16_11;
    assign in_chan_dep_data_vec_11[307 : 264] = dep_chan_data_16_11;
    assign token_in_vec_11[6] = token_16_11;
    assign in_chan_dep_vld_vec_11[7] = dep_chan_vld_17_11;
    assign in_chan_dep_data_vec_11[351 : 308] = dep_chan_data_17_11;
    assign token_in_vec_11[7] = token_17_11;
    assign in_chan_dep_vld_vec_11[8] = dep_chan_vld_19_11;
    assign in_chan_dep_data_vec_11[395 : 352] = dep_chan_data_19_11;
    assign token_in_vec_11[8] = token_19_11;
    assign in_chan_dep_vld_vec_11[9] = dep_chan_vld_22_11;
    assign in_chan_dep_data_vec_11[439 : 396] = dep_chan_data_22_11;
    assign token_in_vec_11[9] = token_22_11;
    assign in_chan_dep_vld_vec_11[10] = dep_chan_vld_23_11;
    assign in_chan_dep_data_vec_11[483 : 440] = dep_chan_data_23_11;
    assign token_in_vec_11[10] = token_23_11;
    assign in_chan_dep_vld_vec_11[11] = dep_chan_vld_28_11;
    assign in_chan_dep_data_vec_11[527 : 484] = dep_chan_data_28_11;
    assign token_in_vec_11[11] = token_28_11;
    assign in_chan_dep_vld_vec_11[12] = dep_chan_vld_29_11;
    assign in_chan_dep_data_vec_11[571 : 528] = dep_chan_data_29_11;
    assign token_in_vec_11[12] = token_29_11;
    assign in_chan_dep_vld_vec_11[13] = dep_chan_vld_33_11;
    assign in_chan_dep_data_vec_11[615 : 572] = dep_chan_data_33_11;
    assign token_in_vec_11[13] = token_33_11;
    assign in_chan_dep_vld_vec_11[14] = dep_chan_vld_36_11;
    assign in_chan_dep_data_vec_11[659 : 616] = dep_chan_data_36_11;
    assign token_in_vec_11[14] = token_36_11;
    assign in_chan_dep_vld_vec_11[15] = dep_chan_vld_39_11;
    assign in_chan_dep_data_vec_11[703 : 660] = dep_chan_data_39_11;
    assign token_in_vec_11[15] = token_39_11;
    assign in_chan_dep_vld_vec_11[16] = dep_chan_vld_42_11;
    assign in_chan_dep_data_vec_11[747 : 704] = dep_chan_data_42_11;
    assign token_in_vec_11[16] = token_42_11;
    assign dep_chan_vld_11_9 = out_chan_dep_vld_vec_11[0];
    assign dep_chan_data_11_9 = out_chan_dep_data_11;
    assign token_11_9 = token_out_vec_11[0];
    assign dep_chan_vld_11_12 = out_chan_dep_vld_vec_11[1];
    assign dep_chan_data_11_12 = out_chan_dep_data_11;
    assign token_11_12 = token_out_vec_11[1];
    assign dep_chan_vld_11_10 = out_chan_dep_vld_vec_11[2];
    assign dep_chan_data_11_10 = out_chan_dep_data_11;
    assign token_11_10 = token_out_vec_11[2];
    assign dep_chan_vld_11_0 = out_chan_dep_vld_vec_11[3];
    assign dep_chan_data_11_0 = out_chan_dep_data_11;
    assign token_11_0 = token_out_vec_11[3];
    assign dep_chan_vld_11_1 = out_chan_dep_vld_vec_11[4];
    assign dep_chan_data_11_1 = out_chan_dep_data_11;
    assign token_11_1 = token_out_vec_11[4];
    assign dep_chan_vld_11_5 = out_chan_dep_vld_vec_11[5];
    assign dep_chan_data_11_5 = out_chan_dep_data_11;
    assign token_11_5 = token_out_vec_11[5];
    assign dep_chan_vld_11_6 = out_chan_dep_vld_vec_11[6];
    assign dep_chan_data_11_6 = out_chan_dep_data_11;
    assign token_11_6 = token_out_vec_11[6];
    assign dep_chan_vld_11_16 = out_chan_dep_vld_vec_11[7];
    assign dep_chan_data_11_16 = out_chan_dep_data_11;
    assign token_11_16 = token_out_vec_11[7];
    assign dep_chan_vld_11_17 = out_chan_dep_vld_vec_11[8];
    assign dep_chan_data_11_17 = out_chan_dep_data_11;
    assign token_11_17 = token_out_vec_11[8];
    assign dep_chan_vld_11_19 = out_chan_dep_vld_vec_11[9];
    assign dep_chan_data_11_19 = out_chan_dep_data_11;
    assign token_11_19 = token_out_vec_11[9];
    assign dep_chan_vld_11_22 = out_chan_dep_vld_vec_11[10];
    assign dep_chan_data_11_22 = out_chan_dep_data_11;
    assign token_11_22 = token_out_vec_11[10];
    assign dep_chan_vld_11_23 = out_chan_dep_vld_vec_11[11];
    assign dep_chan_data_11_23 = out_chan_dep_data_11;
    assign token_11_23 = token_out_vec_11[11];
    assign dep_chan_vld_11_28 = out_chan_dep_vld_vec_11[12];
    assign dep_chan_data_11_28 = out_chan_dep_data_11;
    assign token_11_28 = token_out_vec_11[12];
    assign dep_chan_vld_11_29 = out_chan_dep_vld_vec_11[13];
    assign dep_chan_data_11_29 = out_chan_dep_data_11;
    assign token_11_29 = token_out_vec_11[13];
    assign dep_chan_vld_11_33 = out_chan_dep_vld_vec_11[14];
    assign dep_chan_data_11_33 = out_chan_dep_data_11;
    assign token_11_33 = token_out_vec_11[14];
    assign dep_chan_vld_11_36 = out_chan_dep_vld_vec_11[15];
    assign dep_chan_data_11_36 = out_chan_dep_data_11;
    assign token_11_36 = token_out_vec_11[15];
    assign dep_chan_vld_11_39 = out_chan_dep_vld_vec_11[16];
    assign dep_chan_data_11_39 = out_chan_dep_data_11;
    assign token_11_39 = token_out_vec_11[16];
    assign dep_chan_vld_11_42 = out_chan_dep_vld_vec_11[17];
    assign dep_chan_data_11_42 = out_chan_dep_data_11;
    assign token_11_42 = token_out_vec_11[17];

    // Process: grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 12, 3, 3) BlackBoxJam_hls_deadlock_detect_unit_12 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_12),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_12),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_12),
        .token_in_vec(token_in_vec_12),
        .dl_detect_in(dl_detect_out),
        .origin(origin[12]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_12),
        .out_chan_dep_data(out_chan_dep_data_12),
        .token_out_vec(token_out_vec_12),
        .dl_detect_out(dl_in_vec[12]));

    assign proc_12_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.numReps_blk_n);
    assign proc_12_data_PIPO_blk[0] = 1'b0;
    assign proc_12_start_FIFO_blk[0] = 1'b0;
    assign proc_12_TLF_FIFO_blk[0] = 1'b0;
    assign proc_12_input_sync_blk[0] = 1'b0;
    assign proc_12_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_12[0] = dl_detect_out ? proc_dep_vld_vec_12_reg[0] : (proc_12_data_FIFO_blk[0] | proc_12_data_PIPO_blk[0] | proc_12_start_FIFO_blk[0] | proc_12_TLF_FIFO_blk[0] | proc_12_input_sync_blk[0] | proc_12_output_sync_blk[0]);
    assign proc_12_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3_fu_52.mvOut_m_buffer_9_blk_n);
    assign proc_12_data_PIPO_blk[1] = 1'b0;
    assign proc_12_start_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0_U.if_write);
    assign proc_12_TLF_FIFO_blk[1] = 1'b0;
    assign proc_12_input_sync_blk[1] = 1'b0;
    assign proc_12_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_12[1] = dl_detect_out ? proc_dep_vld_vec_12_reg[1] : (proc_12_data_FIFO_blk[1] | proc_12_data_PIPO_blk[1] | proc_12_start_FIFO_blk[1] | proc_12_TLF_FIFO_blk[1] | proc_12_input_sync_blk[1] | proc_12_output_sync_blk[1]);
    assign proc_12_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3_fu_52.inter2_blk_n) | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.numReps_c153_blk_n);
    assign proc_12_data_PIPO_blk[2] = 1'b0;
    assign proc_12_start_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_28u_2u_64u_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.real_start & (trans_in_cnt_7 == trans_out_cnt_7) & ~grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_28u_2u_64u_U0_U.if_read);
    assign proc_12_TLF_FIFO_blk[2] = 1'b0;
    assign proc_12_input_sync_blk[2] = 1'b0;
    assign proc_12_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_12[2] = dl_detect_out ? proc_dep_vld_vec_12_reg[2] : (proc_12_data_FIFO_blk[2] | proc_12_data_PIPO_blk[2] | proc_12_start_FIFO_blk[2] | proc_12_TLF_FIFO_blk[2] | proc_12_input_sync_blk[2] | proc_12_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_12_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_12_reg <= proc_dep_vld_vec_12;
        end
    end
    assign in_chan_dep_vld_vec_12[0] = dep_chan_vld_9_12;
    assign in_chan_dep_data_vec_12[43 : 0] = dep_chan_data_9_12;
    assign token_in_vec_12[0] = token_9_12;
    assign in_chan_dep_vld_vec_12[1] = dep_chan_vld_11_12;
    assign in_chan_dep_data_vec_12[87 : 44] = dep_chan_data_11_12;
    assign token_in_vec_12[1] = token_11_12;
    assign in_chan_dep_vld_vec_12[2] = dep_chan_vld_13_12;
    assign in_chan_dep_data_vec_12[131 : 88] = dep_chan_data_13_12;
    assign token_in_vec_12[2] = token_13_12;
    assign dep_chan_vld_12_9 = out_chan_dep_vld_vec_12[0];
    assign dep_chan_data_12_9 = out_chan_dep_data_12;
    assign token_12_9 = token_out_vec_12[0];
    assign dep_chan_vld_12_11 = out_chan_dep_vld_vec_12[1];
    assign dep_chan_data_12_11 = out_chan_dep_data_12;
    assign token_12_11 = token_out_vec_12[1];
    assign dep_chan_vld_12_13 = out_chan_dep_vld_vec_12[2];
    assign dep_chan_data_12_13 = out_chan_dep_data_12;
    assign token_12_13 = token_out_vec_12[2];

    // Process: grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 13, 2, 2) BlackBoxJam_hls_deadlock_detect_unit_13 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_13),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_13),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_13),
        .token_in_vec(token_in_vec_13),
        .dl_detect_in(dl_detect_out),
        .origin(origin[13]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_13),
        .out_chan_dep_data(out_chan_dep_data_13),
        .token_out_vec(token_out_vec_13),
        .dl_detect_out(dl_in_vec[13]));

    assign proc_13_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.grp_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4_fu_240.inter2_blk_n) | (~grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.numReps_blk_n);
    assign proc_13_data_PIPO_blk[0] = 1'b0;
    assign proc_13_start_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_28u_2u_64u_U0_U.if_empty_n & grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_28u_2u_64u_U0_U.if_write);
    assign proc_13_TLF_FIFO_blk[0] = 1'b0;
    assign proc_13_input_sync_blk[0] = 1'b0;
    assign proc_13_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_13[0] = dl_detect_out ? proc_dep_vld_vec_13_reg[0] : (proc_13_data_FIFO_blk[0] | proc_13_data_PIPO_blk[0] | proc_13_start_FIFO_blk[0] | proc_13_TLF_FIFO_blk[0] | proc_13_input_sync_blk[0] | proc_13_output_sync_blk[0]);
    assign proc_13_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.grp_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_85_6_fu_247.inter3_blk_n) | (~grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.numReps_c152_blk_n);
    assign proc_13_data_PIPO_blk[1] = 1'b0;
    assign proc_13_start_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0_U.if_full_n & grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.ap_start & ~grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.real_start & (trans_in_cnt_8 == trans_out_cnt_8) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0_U.if_read);
    assign proc_13_TLF_FIFO_blk[1] = 1'b0;
    assign proc_13_input_sync_blk[1] = 1'b0;
    assign proc_13_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_13[1] = dl_detect_out ? proc_dep_vld_vec_13_reg[1] : (proc_13_data_FIFO_blk[1] | proc_13_data_PIPO_blk[1] | proc_13_start_FIFO_blk[1] | proc_13_TLF_FIFO_blk[1] | proc_13_input_sync_blk[1] | proc_13_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_13_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_13_reg <= proc_dep_vld_vec_13;
        end
    end
    assign in_chan_dep_vld_vec_13[0] = dep_chan_vld_12_13;
    assign in_chan_dep_data_vec_13[43 : 0] = dep_chan_data_12_13;
    assign token_in_vec_13[0] = token_12_13;
    assign in_chan_dep_vld_vec_13[1] = dep_chan_vld_14_13;
    assign in_chan_dep_data_vec_13[87 : 44] = dep_chan_data_14_13;
    assign token_in_vec_13[1] = token_14_13;
    assign dep_chan_vld_13_12 = out_chan_dep_vld_vec_13[0];
    assign dep_chan_data_13_12 = out_chan_dep_data_13;
    assign token_13_12 = token_out_vec_13[0];
    assign dep_chan_vld_13_14 = out_chan_dep_vld_vec_13[1];
    assign dep_chan_data_13_14 = out_chan_dep_data_13;
    assign token_13_14 = token_out_vec_13[1];

    // Process: grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 14, 2, 2) BlackBoxJam_hls_deadlock_detect_unit_14 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_14),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_14),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_14),
        .token_in_vec(token_in_vec_14),
        .dl_detect_in(dl_detect_out),
        .origin(origin[14]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_14),
        .out_chan_dep_data(out_chan_dep_data_14),
        .token_out_vec(token_out_vec_14),
        .dl_detect_out(dl_in_vec[14]));

    assign proc_14_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.numReps_blk_n) | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc329_Pipeline_VITIS_LOOP_268_1_fu_52.inter3_blk_n);
    assign proc_14_data_PIPO_blk[0] = 1'b0;
    assign proc_14_start_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0_U.if_write);
    assign proc_14_TLF_FIFO_blk[0] = 1'b0;
    assign proc_14_input_sync_blk[0] = 1'b0;
    assign proc_14_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_14[0] = dl_detect_out ? proc_dep_vld_vec_14_reg[0] : (proc_14_data_FIFO_blk[0] | proc_14_data_PIPO_blk[0] | proc_14_start_FIFO_blk[0] | proc_14_TLF_FIFO_blk[0] | proc_14_input_sync_blk[0] | proc_14_output_sync_blk[0]);
    assign proc_14_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc329_Pipeline_VITIS_LOOP_268_1_fu_52.wa_in_11_blk_n) | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.numReps_c151_blk_n);
    assign proc_14_data_PIPO_blk[1] = 1'b0;
    assign proc_14_start_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.real_start & (trans_in_cnt_9 == trans_out_cnt_9) & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0_U.if_read);
    assign proc_14_TLF_FIFO_blk[1] = 1'b0;
    assign proc_14_input_sync_blk[1] = 1'b0;
    assign proc_14_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_14[1] = dl_detect_out ? proc_dep_vld_vec_14_reg[1] : (proc_14_data_FIFO_blk[1] | proc_14_data_PIPO_blk[1] | proc_14_start_FIFO_blk[1] | proc_14_TLF_FIFO_blk[1] | proc_14_input_sync_blk[1] | proc_14_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_14_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_14_reg <= proc_dep_vld_vec_14;
        end
    end
    assign in_chan_dep_vld_vec_14[0] = dep_chan_vld_13_14;
    assign in_chan_dep_data_vec_14[43 : 0] = dep_chan_data_13_14;
    assign token_in_vec_14[0] = token_13_14;
    assign in_chan_dep_vld_vec_14[1] = dep_chan_vld_15_14;
    assign in_chan_dep_data_vec_14[87 : 44] = dep_chan_data_15_14;
    assign token_in_vec_14[1] = token_15_14;
    assign dep_chan_vld_14_13 = out_chan_dep_vld_vec_14[0];
    assign dep_chan_data_14_13 = out_chan_dep_data_14;
    assign token_14_13 = token_out_vec_14[0];
    assign dep_chan_vld_14_15 = out_chan_dep_vld_vec_14[1];
    assign dep_chan_data_14_15 = out_chan_dep_data_14;
    assign token_14_15 = token_out_vec_14[1];

    // Process: grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 15, 3, 3) BlackBoxJam_hls_deadlock_detect_unit_15 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_15),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_15),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_15),
        .token_in_vec(token_in_vec_15),
        .dl_detect_in(dl_detect_out),
        .origin(origin[15]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_15),
        .out_chan_dep_data(out_chan_dep_data_15),
        .token_out_vec(token_out_vec_15),
        .dl_detect_out(dl_in_vec[15]));

    assign proc_15_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52.wa_in_i822_blk_n) | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.numReps_blk_n);
    assign proc_15_data_PIPO_blk[0] = 1'b0;
    assign proc_15_start_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0_U.if_empty_n & grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0_U.if_write);
    assign proc_15_TLF_FIFO_blk[0] = 1'b0;
    assign proc_15_input_sync_blk[0] = 1'b0;
    assign proc_15_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_15[0] = dl_detect_out ? proc_dep_vld_vec_15_reg[0] : (proc_15_data_FIFO_blk[0] | proc_15_data_PIPO_blk[0] | proc_15_start_FIFO_blk[0] | proc_15_TLF_FIFO_blk[0] | proc_15_input_sync_blk[0] | proc_15_output_sync_blk[0]);
    assign proc_15_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52.convInp_i10_blk_n);
    assign proc_15_data_PIPO_blk[1] = 1'b0;
    assign proc_15_start_FIFO_blk[1] = 1'b0;
    assign proc_15_TLF_FIFO_blk[1] = 1'b0;
    assign proc_15_input_sync_blk[1] = 1'b0;
    assign proc_15_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_15[1] = dl_detect_out ? proc_dep_vld_vec_15_reg[1] : (proc_15_data_FIFO_blk[1] | proc_15_data_PIPO_blk[1] | proc_15_start_FIFO_blk[1] | proc_15_TLF_FIFO_blk[1] | proc_15_input_sync_blk[1] | proc_15_output_sync_blk[1]);
    assign proc_15_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.numReps_c150_blk_n);
    assign proc_15_data_PIPO_blk[2] = 1'b0;
    assign proc_15_start_FIFO_blk[2] = 1'b0;
    assign proc_15_TLF_FIFO_blk[2] = 1'b0;
    assign proc_15_input_sync_blk[2] = 1'b0;
    assign proc_15_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_15[2] = dl_detect_out ? proc_dep_vld_vec_15_reg[2] : (proc_15_data_FIFO_blk[2] | proc_15_data_PIPO_blk[2] | proc_15_start_FIFO_blk[2] | proc_15_TLF_FIFO_blk[2] | proc_15_input_sync_blk[2] | proc_15_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_15_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_15_reg <= proc_dep_vld_vec_15;
        end
    end
    assign in_chan_dep_vld_vec_15[0] = dep_chan_vld_14_15;
    assign in_chan_dep_data_vec_15[43 : 0] = dep_chan_data_14_15;
    assign token_in_vec_15[0] = token_14_15;
    assign in_chan_dep_vld_vec_15[1] = dep_chan_vld_17_15;
    assign in_chan_dep_data_vec_15[87 : 44] = dep_chan_data_17_15;
    assign token_in_vec_15[1] = token_17_15;
    assign in_chan_dep_vld_vec_15[2] = dep_chan_vld_18_15;
    assign in_chan_dep_data_vec_15[131 : 88] = dep_chan_data_18_15;
    assign token_in_vec_15[2] = token_18_15;
    assign dep_chan_vld_15_14 = out_chan_dep_vld_vec_15[0];
    assign dep_chan_data_15_14 = out_chan_dep_data_15;
    assign token_15_14 = token_out_vec_15[0];
    assign dep_chan_vld_15_17 = out_chan_dep_vld_vec_15[1];
    assign dep_chan_data_15_17 = out_chan_dep_data_15;
    assign token_15_17 = token_out_vec_15[1];
    assign dep_chan_vld_15_18 = out_chan_dep_vld_vec_15[2];
    assign dep_chan_data_15_18 = out_chan_dep_data_15;
    assign token_15_18 = token_out_vec_15[2];

    // Process: grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 16, 16, 15) BlackBoxJam_hls_deadlock_detect_unit_16 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_16),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_16),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_16),
        .token_in_vec(token_in_vec_16),
        .dl_detect_in(dl_detect_out),
        .origin(origin[16]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_16),
        .out_chan_dep_data(out_chan_dep_data_16),
        .token_out_vec(token_out_vec_16),
        .dl_detect_out(dl_in_vec[16]));

    assign proc_16_data_FIFO_blk[0] = 1'b0;
    assign proc_16_data_PIPO_blk[0] = 1'b0;
    assign proc_16_start_FIFO_blk[0] = 1'b0;
    assign proc_16_TLF_FIFO_blk[0] = 1'b0;
    assign proc_16_input_sync_blk[0] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready);
    assign proc_16_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_16[0] = dl_detect_out ? proc_dep_vld_vec_16_reg[0] : (proc_16_data_FIFO_blk[0] | proc_16_data_PIPO_blk[0] | proc_16_start_FIFO_blk[0] | proc_16_TLF_FIFO_blk[0] | proc_16_input_sync_blk[0] | proc_16_output_sync_blk[0]);
    assign proc_16_data_FIFO_blk[1] = 1'b0;
    assign proc_16_data_PIPO_blk[1] = 1'b0;
    assign proc_16_start_FIFO_blk[1] = 1'b0;
    assign proc_16_TLF_FIFO_blk[1] = 1'b0;
    assign proc_16_input_sync_blk[1] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready);
    assign proc_16_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_16[1] = dl_detect_out ? proc_dep_vld_vec_16_reg[1] : (proc_16_data_FIFO_blk[1] | proc_16_data_PIPO_blk[1] | proc_16_start_FIFO_blk[1] | proc_16_TLF_FIFO_blk[1] | proc_16_input_sync_blk[1] | proc_16_output_sync_blk[1]);
    assign proc_16_data_FIFO_blk[2] = 1'b0;
    assign proc_16_data_PIPO_blk[2] = 1'b0;
    assign proc_16_start_FIFO_blk[2] = 1'b0;
    assign proc_16_TLF_FIFO_blk[2] = 1'b0;
    assign proc_16_input_sync_blk[2] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready);
    assign proc_16_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_16[2] = dl_detect_out ? proc_dep_vld_vec_16_reg[2] : (proc_16_data_FIFO_blk[2] | proc_16_data_PIPO_blk[2] | proc_16_start_FIFO_blk[2] | proc_16_TLF_FIFO_blk[2] | proc_16_input_sync_blk[2] | proc_16_output_sync_blk[2]);
    assign proc_16_data_FIFO_blk[3] = 1'b0;
    assign proc_16_data_PIPO_blk[3] = 1'b0;
    assign proc_16_start_FIFO_blk[3] = 1'b0;
    assign proc_16_TLF_FIFO_blk[3] = 1'b0;
    assign proc_16_input_sync_blk[3] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready);
    assign proc_16_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_16[3] = dl_detect_out ? proc_dep_vld_vec_16_reg[3] : (proc_16_data_FIFO_blk[3] | proc_16_data_PIPO_blk[3] | proc_16_start_FIFO_blk[3] | proc_16_TLF_FIFO_blk[3] | proc_16_input_sync_blk[3] | proc_16_output_sync_blk[3]);
    assign proc_16_data_FIFO_blk[4] = 1'b0;
    assign proc_16_data_PIPO_blk[4] = 1'b0;
    assign proc_16_start_FIFO_blk[4] = 1'b0;
    assign proc_16_TLF_FIFO_blk[4] = 1'b0;
    assign proc_16_input_sync_blk[4] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready);
    assign proc_16_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_16[4] = dl_detect_out ? proc_dep_vld_vec_16_reg[4] : (proc_16_data_FIFO_blk[4] | proc_16_data_PIPO_blk[4] | proc_16_start_FIFO_blk[4] | proc_16_TLF_FIFO_blk[4] | proc_16_input_sync_blk[4] | proc_16_output_sync_blk[4]);
    assign proc_16_data_FIFO_blk[5] = 1'b0;
    assign proc_16_data_PIPO_blk[5] = 1'b0;
    assign proc_16_start_FIFO_blk[5] = 1'b0;
    assign proc_16_TLF_FIFO_blk[5] = 1'b0;
    assign proc_16_input_sync_blk[5] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready);
    assign proc_16_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_16[5] = dl_detect_out ? proc_dep_vld_vec_16_reg[5] : (proc_16_data_FIFO_blk[5] | proc_16_data_PIPO_blk[5] | proc_16_start_FIFO_blk[5] | proc_16_TLF_FIFO_blk[5] | proc_16_input_sync_blk[5] | proc_16_output_sync_blk[5]);
    assign proc_16_data_FIFO_blk[6] = 1'b0;
    assign proc_16_data_PIPO_blk[6] = 1'b0;
    assign proc_16_start_FIFO_blk[6] = 1'b0;
    assign proc_16_TLF_FIFO_blk[6] = 1'b0;
    assign proc_16_input_sync_blk[6] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready);
    assign proc_16_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_16[6] = dl_detect_out ? proc_dep_vld_vec_16_reg[6] : (proc_16_data_FIFO_blk[6] | proc_16_data_PIPO_blk[6] | proc_16_start_FIFO_blk[6] | proc_16_TLF_FIFO_blk[6] | proc_16_input_sync_blk[6] | proc_16_output_sync_blk[6]);
    assign proc_16_data_FIFO_blk[7] = 1'b0;
    assign proc_16_data_PIPO_blk[7] = 1'b0;
    assign proc_16_start_FIFO_blk[7] = 1'b0;
    assign proc_16_TLF_FIFO_blk[7] = 1'b0;
    assign proc_16_input_sync_blk[7] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready);
    assign proc_16_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_16[7] = dl_detect_out ? proc_dep_vld_vec_16_reg[7] : (proc_16_data_FIFO_blk[7] | proc_16_data_PIPO_blk[7] | proc_16_start_FIFO_blk[7] | proc_16_TLF_FIFO_blk[7] | proc_16_input_sync_blk[7] | proc_16_output_sync_blk[7]);
    assign proc_16_data_FIFO_blk[8] = 1'b0;
    assign proc_16_data_PIPO_blk[8] = 1'b0;
    assign proc_16_start_FIFO_blk[8] = 1'b0;
    assign proc_16_TLF_FIFO_blk[8] = 1'b0;
    assign proc_16_input_sync_blk[8] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready);
    assign proc_16_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_16[8] = dl_detect_out ? proc_dep_vld_vec_16_reg[8] : (proc_16_data_FIFO_blk[8] | proc_16_data_PIPO_blk[8] | proc_16_start_FIFO_blk[8] | proc_16_TLF_FIFO_blk[8] | proc_16_input_sync_blk[8] | proc_16_output_sync_blk[8]);
    assign proc_16_data_FIFO_blk[9] = 1'b0;
    assign proc_16_data_PIPO_blk[9] = 1'b0;
    assign proc_16_start_FIFO_blk[9] = 1'b0;
    assign proc_16_TLF_FIFO_blk[9] = 1'b0;
    assign proc_16_input_sync_blk[9] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_16_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_16[9] = dl_detect_out ? proc_dep_vld_vec_16_reg[9] : (proc_16_data_FIFO_blk[9] | proc_16_data_PIPO_blk[9] | proc_16_start_FIFO_blk[9] | proc_16_TLF_FIFO_blk[9] | proc_16_input_sync_blk[9] | proc_16_output_sync_blk[9]);
    assign proc_16_data_FIFO_blk[10] = 1'b0;
    assign proc_16_data_PIPO_blk[10] = 1'b0;
    assign proc_16_start_FIFO_blk[10] = 1'b0;
    assign proc_16_TLF_FIFO_blk[10] = 1'b0;
    assign proc_16_input_sync_blk[10] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready);
    assign proc_16_output_sync_blk[10] = 1'b0;
    assign proc_dep_vld_vec_16[10] = dl_detect_out ? proc_dep_vld_vec_16_reg[10] : (proc_16_data_FIFO_blk[10] | proc_16_data_PIPO_blk[10] | proc_16_start_FIFO_blk[10] | proc_16_TLF_FIFO_blk[10] | proc_16_input_sync_blk[10] | proc_16_output_sync_blk[10]);
    assign proc_16_data_FIFO_blk[11] = 1'b0;
    assign proc_16_data_PIPO_blk[11] = 1'b0;
    assign proc_16_start_FIFO_blk[11] = 1'b0;
    assign proc_16_TLF_FIFO_blk[11] = 1'b0;
    assign proc_16_input_sync_blk[11] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready);
    assign proc_16_output_sync_blk[11] = 1'b0;
    assign proc_dep_vld_vec_16[11] = dl_detect_out ? proc_dep_vld_vec_16_reg[11] : (proc_16_data_FIFO_blk[11] | proc_16_data_PIPO_blk[11] | proc_16_start_FIFO_blk[11] | proc_16_TLF_FIFO_blk[11] | proc_16_input_sync_blk[11] | proc_16_output_sync_blk[11]);
    assign proc_16_data_FIFO_blk[12] = 1'b0;
    assign proc_16_data_PIPO_blk[12] = 1'b0;
    assign proc_16_start_FIFO_blk[12] = 1'b0;
    assign proc_16_TLF_FIFO_blk[12] = 1'b0;
    assign proc_16_input_sync_blk[12] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready);
    assign proc_16_output_sync_blk[12] = 1'b0;
    assign proc_dep_vld_vec_16[12] = dl_detect_out ? proc_dep_vld_vec_16_reg[12] : (proc_16_data_FIFO_blk[12] | proc_16_data_PIPO_blk[12] | proc_16_start_FIFO_blk[12] | proc_16_TLF_FIFO_blk[12] | proc_16_input_sync_blk[12] | proc_16_output_sync_blk[12]);
    assign proc_16_data_FIFO_blk[13] = 1'b0;
    assign proc_16_data_PIPO_blk[13] = 1'b0;
    assign proc_16_start_FIFO_blk[13] = 1'b0;
    assign proc_16_TLF_FIFO_blk[13] = 1'b0;
    assign proc_16_input_sync_blk[13] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready);
    assign proc_16_output_sync_blk[13] = 1'b0;
    assign proc_dep_vld_vec_16[13] = dl_detect_out ? proc_dep_vld_vec_16_reg[13] : (proc_16_data_FIFO_blk[13] | proc_16_data_PIPO_blk[13] | proc_16_start_FIFO_blk[13] | proc_16_TLF_FIFO_blk[13] | proc_16_input_sync_blk[13] | proc_16_output_sync_blk[13]);
    assign proc_16_data_FIFO_blk[14] = 1'b0;
    assign proc_16_data_PIPO_blk[14] = 1'b0;
    assign proc_16_start_FIFO_blk[14] = 1'b0;
    assign proc_16_TLF_FIFO_blk[14] = 1'b0;
    assign proc_16_input_sync_blk[14] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready);
    assign proc_16_output_sync_blk[14] = 1'b0;
    assign proc_dep_vld_vec_16[14] = dl_detect_out ? proc_dep_vld_vec_16_reg[14] : (proc_16_data_FIFO_blk[14] | proc_16_data_PIPO_blk[14] | proc_16_start_FIFO_blk[14] | proc_16_TLF_FIFO_blk[14] | proc_16_input_sync_blk[14] | proc_16_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_16_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_16_reg <= proc_dep_vld_vec_16;
        end
    end
    assign in_chan_dep_vld_vec_16[0] = dep_chan_vld_0_16;
    assign in_chan_dep_data_vec_16[43 : 0] = dep_chan_data_0_16;
    assign token_in_vec_16[0] = token_0_16;
    assign in_chan_dep_vld_vec_16[1] = dep_chan_vld_1_16;
    assign in_chan_dep_data_vec_16[87 : 44] = dep_chan_data_1_16;
    assign token_in_vec_16[1] = token_1_16;
    assign in_chan_dep_vld_vec_16[2] = dep_chan_vld_5_16;
    assign in_chan_dep_data_vec_16[131 : 88] = dep_chan_data_5_16;
    assign token_in_vec_16[2] = token_5_16;
    assign in_chan_dep_vld_vec_16[3] = dep_chan_vld_6_16;
    assign in_chan_dep_data_vec_16[175 : 132] = dep_chan_data_6_16;
    assign token_in_vec_16[3] = token_6_16;
    assign in_chan_dep_vld_vec_16[4] = dep_chan_vld_11_16;
    assign in_chan_dep_data_vec_16[219 : 176] = dep_chan_data_11_16;
    assign token_in_vec_16[4] = token_11_16;
    assign in_chan_dep_vld_vec_16[5] = dep_chan_vld_17_16;
    assign in_chan_dep_data_vec_16[263 : 220] = dep_chan_data_17_16;
    assign token_in_vec_16[5] = token_17_16;
    assign in_chan_dep_vld_vec_16[6] = dep_chan_vld_18_16;
    assign in_chan_dep_data_vec_16[307 : 264] = dep_chan_data_18_16;
    assign token_in_vec_16[6] = token_18_16;
    assign in_chan_dep_vld_vec_16[7] = dep_chan_vld_19_16;
    assign in_chan_dep_data_vec_16[351 : 308] = dep_chan_data_19_16;
    assign token_in_vec_16[7] = token_19_16;
    assign in_chan_dep_vld_vec_16[8] = dep_chan_vld_22_16;
    assign in_chan_dep_data_vec_16[395 : 352] = dep_chan_data_22_16;
    assign token_in_vec_16[8] = token_22_16;
    assign in_chan_dep_vld_vec_16[9] = dep_chan_vld_23_16;
    assign in_chan_dep_data_vec_16[439 : 396] = dep_chan_data_23_16;
    assign token_in_vec_16[9] = token_23_16;
    assign in_chan_dep_vld_vec_16[10] = dep_chan_vld_28_16;
    assign in_chan_dep_data_vec_16[483 : 440] = dep_chan_data_28_16;
    assign token_in_vec_16[10] = token_28_16;
    assign in_chan_dep_vld_vec_16[11] = dep_chan_vld_29_16;
    assign in_chan_dep_data_vec_16[527 : 484] = dep_chan_data_29_16;
    assign token_in_vec_16[11] = token_29_16;
    assign in_chan_dep_vld_vec_16[12] = dep_chan_vld_33_16;
    assign in_chan_dep_data_vec_16[571 : 528] = dep_chan_data_33_16;
    assign token_in_vec_16[12] = token_33_16;
    assign in_chan_dep_vld_vec_16[13] = dep_chan_vld_36_16;
    assign in_chan_dep_data_vec_16[615 : 572] = dep_chan_data_36_16;
    assign token_in_vec_16[13] = token_36_16;
    assign in_chan_dep_vld_vec_16[14] = dep_chan_vld_39_16;
    assign in_chan_dep_data_vec_16[659 : 616] = dep_chan_data_39_16;
    assign token_in_vec_16[14] = token_39_16;
    assign in_chan_dep_vld_vec_16[15] = dep_chan_vld_42_16;
    assign in_chan_dep_data_vec_16[703 : 660] = dep_chan_data_42_16;
    assign token_in_vec_16[15] = token_42_16;
    assign dep_chan_vld_16_0 = out_chan_dep_vld_vec_16[0];
    assign dep_chan_data_16_0 = out_chan_dep_data_16;
    assign token_16_0 = token_out_vec_16[0];
    assign dep_chan_vld_16_1 = out_chan_dep_vld_vec_16[1];
    assign dep_chan_data_16_1 = out_chan_dep_data_16;
    assign token_16_1 = token_out_vec_16[1];
    assign dep_chan_vld_16_5 = out_chan_dep_vld_vec_16[2];
    assign dep_chan_data_16_5 = out_chan_dep_data_16;
    assign token_16_5 = token_out_vec_16[2];
    assign dep_chan_vld_16_6 = out_chan_dep_vld_vec_16[3];
    assign dep_chan_data_16_6 = out_chan_dep_data_16;
    assign token_16_6 = token_out_vec_16[3];
    assign dep_chan_vld_16_11 = out_chan_dep_vld_vec_16[4];
    assign dep_chan_data_16_11 = out_chan_dep_data_16;
    assign token_16_11 = token_out_vec_16[4];
    assign dep_chan_vld_16_17 = out_chan_dep_vld_vec_16[5];
    assign dep_chan_data_16_17 = out_chan_dep_data_16;
    assign token_16_17 = token_out_vec_16[5];
    assign dep_chan_vld_16_19 = out_chan_dep_vld_vec_16[6];
    assign dep_chan_data_16_19 = out_chan_dep_data_16;
    assign token_16_19 = token_out_vec_16[6];
    assign dep_chan_vld_16_22 = out_chan_dep_vld_vec_16[7];
    assign dep_chan_data_16_22 = out_chan_dep_data_16;
    assign token_16_22 = token_out_vec_16[7];
    assign dep_chan_vld_16_23 = out_chan_dep_vld_vec_16[8];
    assign dep_chan_data_16_23 = out_chan_dep_data_16;
    assign token_16_23 = token_out_vec_16[8];
    assign dep_chan_vld_16_28 = out_chan_dep_vld_vec_16[9];
    assign dep_chan_data_16_28 = out_chan_dep_data_16;
    assign token_16_28 = token_out_vec_16[9];
    assign dep_chan_vld_16_29 = out_chan_dep_vld_vec_16[10];
    assign dep_chan_data_16_29 = out_chan_dep_data_16;
    assign token_16_29 = token_out_vec_16[10];
    assign dep_chan_vld_16_33 = out_chan_dep_vld_vec_16[11];
    assign dep_chan_data_16_33 = out_chan_dep_data_16;
    assign token_16_33 = token_out_vec_16[11];
    assign dep_chan_vld_16_36 = out_chan_dep_vld_vec_16[12];
    assign dep_chan_data_16_36 = out_chan_dep_data_16;
    assign token_16_36 = token_out_vec_16[12];
    assign dep_chan_vld_16_39 = out_chan_dep_vld_vec_16[13];
    assign dep_chan_data_16_39 = out_chan_dep_data_16;
    assign token_16_39 = token_out_vec_16[13];
    assign dep_chan_vld_16_42 = out_chan_dep_vld_vec_16[14];
    assign dep_chan_data_16_42 = out_chan_dep_data_16;
    assign token_16_42 = token_out_vec_16[14];

    // Process: grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 17, 17, 17) BlackBoxJam_hls_deadlock_detect_unit_17 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_17),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_17),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_17),
        .token_in_vec(token_in_vec_17),
        .dl_detect_in(dl_detect_out),
        .origin(origin[17]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_17),
        .out_chan_dep_data(out_chan_dep_data_17),
        .token_out_vec(token_out_vec_17),
        .dl_detect_out(dl_in_vec[17]));

    assign proc_17_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100.convInp_3_blk_n);
    assign proc_17_data_PIPO_blk[0] = 1'b0;
    assign proc_17_start_FIFO_blk[0] = 1'b0;
    assign proc_17_TLF_FIFO_blk[0] = 1'b0;
    assign proc_17_input_sync_blk[0] = 1'b0;
    assign proc_17_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_17[0] = dl_detect_out ? proc_dep_vld_vec_17_reg[0] : (proc_17_data_FIFO_blk[0] | proc_17_data_PIPO_blk[0] | proc_17_start_FIFO_blk[0] | proc_17_TLF_FIFO_blk[0] | proc_17_input_sync_blk[0] | proc_17_output_sync_blk[0]);
    assign proc_17_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100.mvOut_m_buffer_8_blk_n);
    assign proc_17_data_PIPO_blk[1] = 1'b0;
    assign proc_17_start_FIFO_blk[1] = 1'b0;
    assign proc_17_TLF_FIFO_blk[1] = 1'b0;
    assign proc_17_input_sync_blk[1] = 1'b0;
    assign proc_17_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_17[1] = dl_detect_out ? proc_dep_vld_vec_17_reg[1] : (proc_17_data_FIFO_blk[1] | proc_17_data_PIPO_blk[1] | proc_17_start_FIFO_blk[1] | proc_17_TLF_FIFO_blk[1] | proc_17_input_sync_blk[1] | proc_17_output_sync_blk[1]);
    assign proc_17_data_FIFO_blk[2] = 1'b0;
    assign proc_17_data_PIPO_blk[2] = 1'b0;
    assign proc_17_start_FIFO_blk[2] = 1'b0;
    assign proc_17_TLF_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.add_ln121_loc_channel_U.if_empty_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.add_ln121_loc_channel_U.if_write);
    assign proc_17_input_sync_blk[2] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_17_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_17[2] = dl_detect_out ? proc_dep_vld_vec_17_reg[2] : (proc_17_data_FIFO_blk[2] | proc_17_data_PIPO_blk[2] | proc_17_start_FIFO_blk[2] | proc_17_TLF_FIFO_blk[2] | proc_17_input_sync_blk[2] | proc_17_output_sync_blk[2]);
    assign proc_17_data_FIFO_blk[3] = 1'b0;
    assign proc_17_data_PIPO_blk[3] = 1'b0;
    assign proc_17_start_FIFO_blk[3] = 1'b0;
    assign proc_17_TLF_FIFO_blk[3] = 1'b0;
    assign proc_17_input_sync_blk[3] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready);
    assign proc_17_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_17[3] = dl_detect_out ? proc_dep_vld_vec_17_reg[3] : (proc_17_data_FIFO_blk[3] | proc_17_data_PIPO_blk[3] | proc_17_start_FIFO_blk[3] | proc_17_TLF_FIFO_blk[3] | proc_17_input_sync_blk[3] | proc_17_output_sync_blk[3]);
    assign proc_17_data_FIFO_blk[4] = 1'b0;
    assign proc_17_data_PIPO_blk[4] = 1'b0;
    assign proc_17_start_FIFO_blk[4] = 1'b0;
    assign proc_17_TLF_FIFO_blk[4] = 1'b0;
    assign proc_17_input_sync_blk[4] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready);
    assign proc_17_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_17[4] = dl_detect_out ? proc_dep_vld_vec_17_reg[4] : (proc_17_data_FIFO_blk[4] | proc_17_data_PIPO_blk[4] | proc_17_start_FIFO_blk[4] | proc_17_TLF_FIFO_blk[4] | proc_17_input_sync_blk[4] | proc_17_output_sync_blk[4]);
    assign proc_17_data_FIFO_blk[5] = 1'b0;
    assign proc_17_data_PIPO_blk[5] = 1'b0;
    assign proc_17_start_FIFO_blk[5] = 1'b0;
    assign proc_17_TLF_FIFO_blk[5] = 1'b0;
    assign proc_17_input_sync_blk[5] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready);
    assign proc_17_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_17[5] = dl_detect_out ? proc_dep_vld_vec_17_reg[5] : (proc_17_data_FIFO_blk[5] | proc_17_data_PIPO_blk[5] | proc_17_start_FIFO_blk[5] | proc_17_TLF_FIFO_blk[5] | proc_17_input_sync_blk[5] | proc_17_output_sync_blk[5]);
    assign proc_17_data_FIFO_blk[6] = 1'b0;
    assign proc_17_data_PIPO_blk[6] = 1'b0;
    assign proc_17_start_FIFO_blk[6] = 1'b0;
    assign proc_17_TLF_FIFO_blk[6] = 1'b0;
    assign proc_17_input_sync_blk[6] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready);
    assign proc_17_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_17[6] = dl_detect_out ? proc_dep_vld_vec_17_reg[6] : (proc_17_data_FIFO_blk[6] | proc_17_data_PIPO_blk[6] | proc_17_start_FIFO_blk[6] | proc_17_TLF_FIFO_blk[6] | proc_17_input_sync_blk[6] | proc_17_output_sync_blk[6]);
    assign proc_17_data_FIFO_blk[7] = 1'b0;
    assign proc_17_data_PIPO_blk[7] = 1'b0;
    assign proc_17_start_FIFO_blk[7] = 1'b0;
    assign proc_17_TLF_FIFO_blk[7] = 1'b0;
    assign proc_17_input_sync_blk[7] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready);
    assign proc_17_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_17[7] = dl_detect_out ? proc_dep_vld_vec_17_reg[7] : (proc_17_data_FIFO_blk[7] | proc_17_data_PIPO_blk[7] | proc_17_start_FIFO_blk[7] | proc_17_TLF_FIFO_blk[7] | proc_17_input_sync_blk[7] | proc_17_output_sync_blk[7]);
    assign proc_17_data_FIFO_blk[8] = 1'b0;
    assign proc_17_data_PIPO_blk[8] = 1'b0;
    assign proc_17_start_FIFO_blk[8] = 1'b0;
    assign proc_17_TLF_FIFO_blk[8] = 1'b0;
    assign proc_17_input_sync_blk[8] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready);
    assign proc_17_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_17[8] = dl_detect_out ? proc_dep_vld_vec_17_reg[8] : (proc_17_data_FIFO_blk[8] | proc_17_data_PIPO_blk[8] | proc_17_start_FIFO_blk[8] | proc_17_TLF_FIFO_blk[8] | proc_17_input_sync_blk[8] | proc_17_output_sync_blk[8]);
    assign proc_17_data_FIFO_blk[9] = 1'b0;
    assign proc_17_data_PIPO_blk[9] = 1'b0;
    assign proc_17_start_FIFO_blk[9] = 1'b0;
    assign proc_17_TLF_FIFO_blk[9] = 1'b0;
    assign proc_17_input_sync_blk[9] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready);
    assign proc_17_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_17[9] = dl_detect_out ? proc_dep_vld_vec_17_reg[9] : (proc_17_data_FIFO_blk[9] | proc_17_data_PIPO_blk[9] | proc_17_start_FIFO_blk[9] | proc_17_TLF_FIFO_blk[9] | proc_17_input_sync_blk[9] | proc_17_output_sync_blk[9]);
    assign proc_17_data_FIFO_blk[10] = 1'b0;
    assign proc_17_data_PIPO_blk[10] = 1'b0;
    assign proc_17_start_FIFO_blk[10] = 1'b0;
    assign proc_17_TLF_FIFO_blk[10] = 1'b0;
    assign proc_17_input_sync_blk[10] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready);
    assign proc_17_output_sync_blk[10] = 1'b0;
    assign proc_dep_vld_vec_17[10] = dl_detect_out ? proc_dep_vld_vec_17_reg[10] : (proc_17_data_FIFO_blk[10] | proc_17_data_PIPO_blk[10] | proc_17_start_FIFO_blk[10] | proc_17_TLF_FIFO_blk[10] | proc_17_input_sync_blk[10] | proc_17_output_sync_blk[10]);
    assign proc_17_data_FIFO_blk[11] = 1'b0;
    assign proc_17_data_PIPO_blk[11] = 1'b0;
    assign proc_17_start_FIFO_blk[11] = 1'b0;
    assign proc_17_TLF_FIFO_blk[11] = 1'b0;
    assign proc_17_input_sync_blk[11] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_17_output_sync_blk[11] = 1'b0;
    assign proc_dep_vld_vec_17[11] = dl_detect_out ? proc_dep_vld_vec_17_reg[11] : (proc_17_data_FIFO_blk[11] | proc_17_data_PIPO_blk[11] | proc_17_start_FIFO_blk[11] | proc_17_TLF_FIFO_blk[11] | proc_17_input_sync_blk[11] | proc_17_output_sync_blk[11]);
    assign proc_17_data_FIFO_blk[12] = 1'b0;
    assign proc_17_data_PIPO_blk[12] = 1'b0;
    assign proc_17_start_FIFO_blk[12] = 1'b0;
    assign proc_17_TLF_FIFO_blk[12] = 1'b0;
    assign proc_17_input_sync_blk[12] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready);
    assign proc_17_output_sync_blk[12] = 1'b0;
    assign proc_dep_vld_vec_17[12] = dl_detect_out ? proc_dep_vld_vec_17_reg[12] : (proc_17_data_FIFO_blk[12] | proc_17_data_PIPO_blk[12] | proc_17_start_FIFO_blk[12] | proc_17_TLF_FIFO_blk[12] | proc_17_input_sync_blk[12] | proc_17_output_sync_blk[12]);
    assign proc_17_data_FIFO_blk[13] = 1'b0;
    assign proc_17_data_PIPO_blk[13] = 1'b0;
    assign proc_17_start_FIFO_blk[13] = 1'b0;
    assign proc_17_TLF_FIFO_blk[13] = 1'b0;
    assign proc_17_input_sync_blk[13] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready);
    assign proc_17_output_sync_blk[13] = 1'b0;
    assign proc_dep_vld_vec_17[13] = dl_detect_out ? proc_dep_vld_vec_17_reg[13] : (proc_17_data_FIFO_blk[13] | proc_17_data_PIPO_blk[13] | proc_17_start_FIFO_blk[13] | proc_17_TLF_FIFO_blk[13] | proc_17_input_sync_blk[13] | proc_17_output_sync_blk[13]);
    assign proc_17_data_FIFO_blk[14] = 1'b0;
    assign proc_17_data_PIPO_blk[14] = 1'b0;
    assign proc_17_start_FIFO_blk[14] = 1'b0;
    assign proc_17_TLF_FIFO_blk[14] = 1'b0;
    assign proc_17_input_sync_blk[14] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready);
    assign proc_17_output_sync_blk[14] = 1'b0;
    assign proc_dep_vld_vec_17[14] = dl_detect_out ? proc_dep_vld_vec_17_reg[14] : (proc_17_data_FIFO_blk[14] | proc_17_data_PIPO_blk[14] | proc_17_start_FIFO_blk[14] | proc_17_TLF_FIFO_blk[14] | proc_17_input_sync_blk[14] | proc_17_output_sync_blk[14]);
    assign proc_17_data_FIFO_blk[15] = 1'b0;
    assign proc_17_data_PIPO_blk[15] = 1'b0;
    assign proc_17_start_FIFO_blk[15] = 1'b0;
    assign proc_17_TLF_FIFO_blk[15] = 1'b0;
    assign proc_17_input_sync_blk[15] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready);
    assign proc_17_output_sync_blk[15] = 1'b0;
    assign proc_dep_vld_vec_17[15] = dl_detect_out ? proc_dep_vld_vec_17_reg[15] : (proc_17_data_FIFO_blk[15] | proc_17_data_PIPO_blk[15] | proc_17_start_FIFO_blk[15] | proc_17_TLF_FIFO_blk[15] | proc_17_input_sync_blk[15] | proc_17_output_sync_blk[15]);
    assign proc_17_data_FIFO_blk[16] = 1'b0;
    assign proc_17_data_PIPO_blk[16] = 1'b0;
    assign proc_17_start_FIFO_blk[16] = 1'b0;
    assign proc_17_TLF_FIFO_blk[16] = 1'b0;
    assign proc_17_input_sync_blk[16] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready);
    assign proc_17_output_sync_blk[16] = 1'b0;
    assign proc_dep_vld_vec_17[16] = dl_detect_out ? proc_dep_vld_vec_17_reg[16] : (proc_17_data_FIFO_blk[16] | proc_17_data_PIPO_blk[16] | proc_17_start_FIFO_blk[16] | proc_17_TLF_FIFO_blk[16] | proc_17_input_sync_blk[16] | proc_17_output_sync_blk[16]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_17_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_17_reg <= proc_dep_vld_vec_17;
        end
    end
    assign in_chan_dep_vld_vec_17[0] = dep_chan_vld_0_17;
    assign in_chan_dep_data_vec_17[43 : 0] = dep_chan_data_0_17;
    assign token_in_vec_17[0] = token_0_17;
    assign in_chan_dep_vld_vec_17[1] = dep_chan_vld_1_17;
    assign in_chan_dep_data_vec_17[87 : 44] = dep_chan_data_1_17;
    assign token_in_vec_17[1] = token_1_17;
    assign in_chan_dep_vld_vec_17[2] = dep_chan_vld_5_17;
    assign in_chan_dep_data_vec_17[131 : 88] = dep_chan_data_5_17;
    assign token_in_vec_17[2] = token_5_17;
    assign in_chan_dep_vld_vec_17[3] = dep_chan_vld_6_17;
    assign in_chan_dep_data_vec_17[175 : 132] = dep_chan_data_6_17;
    assign token_in_vec_17[3] = token_6_17;
    assign in_chan_dep_vld_vec_17[4] = dep_chan_vld_11_17;
    assign in_chan_dep_data_vec_17[219 : 176] = dep_chan_data_11_17;
    assign token_in_vec_17[4] = token_11_17;
    assign in_chan_dep_vld_vec_17[5] = dep_chan_vld_15_17;
    assign in_chan_dep_data_vec_17[263 : 220] = dep_chan_data_15_17;
    assign token_in_vec_17[5] = token_15_17;
    assign in_chan_dep_vld_vec_17[6] = dep_chan_vld_16_17;
    assign in_chan_dep_data_vec_17[307 : 264] = dep_chan_data_16_17;
    assign token_in_vec_17[6] = token_16_17;
    assign in_chan_dep_vld_vec_17[7] = dep_chan_vld_18_17;
    assign in_chan_dep_data_vec_17[351 : 308] = dep_chan_data_18_17;
    assign token_in_vec_17[7] = token_18_17;
    assign in_chan_dep_vld_vec_17[8] = dep_chan_vld_19_17;
    assign in_chan_dep_data_vec_17[395 : 352] = dep_chan_data_19_17;
    assign token_in_vec_17[8] = token_19_17;
    assign in_chan_dep_vld_vec_17[9] = dep_chan_vld_22_17;
    assign in_chan_dep_data_vec_17[439 : 396] = dep_chan_data_22_17;
    assign token_in_vec_17[9] = token_22_17;
    assign in_chan_dep_vld_vec_17[10] = dep_chan_vld_23_17;
    assign in_chan_dep_data_vec_17[483 : 440] = dep_chan_data_23_17;
    assign token_in_vec_17[10] = token_23_17;
    assign in_chan_dep_vld_vec_17[11] = dep_chan_vld_28_17;
    assign in_chan_dep_data_vec_17[527 : 484] = dep_chan_data_28_17;
    assign token_in_vec_17[11] = token_28_17;
    assign in_chan_dep_vld_vec_17[12] = dep_chan_vld_29_17;
    assign in_chan_dep_data_vec_17[571 : 528] = dep_chan_data_29_17;
    assign token_in_vec_17[12] = token_29_17;
    assign in_chan_dep_vld_vec_17[13] = dep_chan_vld_33_17;
    assign in_chan_dep_data_vec_17[615 : 572] = dep_chan_data_33_17;
    assign token_in_vec_17[13] = token_33_17;
    assign in_chan_dep_vld_vec_17[14] = dep_chan_vld_36_17;
    assign in_chan_dep_data_vec_17[659 : 616] = dep_chan_data_36_17;
    assign token_in_vec_17[14] = token_36_17;
    assign in_chan_dep_vld_vec_17[15] = dep_chan_vld_39_17;
    assign in_chan_dep_data_vec_17[703 : 660] = dep_chan_data_39_17;
    assign token_in_vec_17[15] = token_39_17;
    assign in_chan_dep_vld_vec_17[16] = dep_chan_vld_42_17;
    assign in_chan_dep_data_vec_17[747 : 704] = dep_chan_data_42_17;
    assign token_in_vec_17[16] = token_42_17;
    assign dep_chan_vld_17_15 = out_chan_dep_vld_vec_17[0];
    assign dep_chan_data_17_15 = out_chan_dep_data_17;
    assign token_17_15 = token_out_vec_17[0];
    assign dep_chan_vld_17_18 = out_chan_dep_vld_vec_17[1];
    assign dep_chan_data_17_18 = out_chan_dep_data_17;
    assign token_17_18 = token_out_vec_17[1];
    assign dep_chan_vld_17_16 = out_chan_dep_vld_vec_17[2];
    assign dep_chan_data_17_16 = out_chan_dep_data_17;
    assign token_17_16 = token_out_vec_17[2];
    assign dep_chan_vld_17_0 = out_chan_dep_vld_vec_17[3];
    assign dep_chan_data_17_0 = out_chan_dep_data_17;
    assign token_17_0 = token_out_vec_17[3];
    assign dep_chan_vld_17_1 = out_chan_dep_vld_vec_17[4];
    assign dep_chan_data_17_1 = out_chan_dep_data_17;
    assign token_17_1 = token_out_vec_17[4];
    assign dep_chan_vld_17_5 = out_chan_dep_vld_vec_17[5];
    assign dep_chan_data_17_5 = out_chan_dep_data_17;
    assign token_17_5 = token_out_vec_17[5];
    assign dep_chan_vld_17_6 = out_chan_dep_vld_vec_17[6];
    assign dep_chan_data_17_6 = out_chan_dep_data_17;
    assign token_17_6 = token_out_vec_17[6];
    assign dep_chan_vld_17_11 = out_chan_dep_vld_vec_17[7];
    assign dep_chan_data_17_11 = out_chan_dep_data_17;
    assign token_17_11 = token_out_vec_17[7];
    assign dep_chan_vld_17_19 = out_chan_dep_vld_vec_17[8];
    assign dep_chan_data_17_19 = out_chan_dep_data_17;
    assign token_17_19 = token_out_vec_17[8];
    assign dep_chan_vld_17_22 = out_chan_dep_vld_vec_17[9];
    assign dep_chan_data_17_22 = out_chan_dep_data_17;
    assign token_17_22 = token_out_vec_17[9];
    assign dep_chan_vld_17_23 = out_chan_dep_vld_vec_17[10];
    assign dep_chan_data_17_23 = out_chan_dep_data_17;
    assign token_17_23 = token_out_vec_17[10];
    assign dep_chan_vld_17_28 = out_chan_dep_vld_vec_17[11];
    assign dep_chan_data_17_28 = out_chan_dep_data_17;
    assign token_17_28 = token_out_vec_17[11];
    assign dep_chan_vld_17_29 = out_chan_dep_vld_vec_17[12];
    assign dep_chan_data_17_29 = out_chan_dep_data_17;
    assign token_17_29 = token_out_vec_17[12];
    assign dep_chan_vld_17_33 = out_chan_dep_vld_vec_17[13];
    assign dep_chan_data_17_33 = out_chan_dep_data_17;
    assign token_17_33 = token_out_vec_17[13];
    assign dep_chan_vld_17_36 = out_chan_dep_vld_vec_17[14];
    assign dep_chan_data_17_36 = out_chan_dep_data_17;
    assign token_17_36 = token_out_vec_17[14];
    assign dep_chan_vld_17_39 = out_chan_dep_vld_vec_17[15];
    assign dep_chan_data_17_39 = out_chan_dep_data_17;
    assign token_17_39 = token_out_vec_17[15];
    assign dep_chan_vld_17_42 = out_chan_dep_vld_vec_17[16];
    assign dep_chan_data_17_42 = out_chan_dep_data_17;
    assign token_17_42 = token_out_vec_17[16];

    // Process: grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 18, 4, 5) BlackBoxJam_hls_deadlock_detect_unit_18 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_18),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_18),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_18),
        .token_in_vec(token_in_vec_18),
        .dl_detect_in(dl_detect_out),
        .origin(origin[18]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_18),
        .out_chan_dep_data(out_chan_dep_data_18),
        .token_out_vec(token_out_vec_18),
        .dl_detect_out(dl_in_vec[18]));

    assign proc_18_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.numReps_blk_n);
    assign proc_18_data_PIPO_blk[0] = 1'b0;
    assign proc_18_start_FIFO_blk[0] = 1'b0;
    assign proc_18_TLF_FIFO_blk[0] = 1'b0;
    assign proc_18_input_sync_blk[0] = 1'b0;
    assign proc_18_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_18[0] = dl_detect_out ? proc_dep_vld_vec_18_reg[0] : (proc_18_data_FIFO_blk[0] | proc_18_data_PIPO_blk[0] | proc_18_start_FIFO_blk[0] | proc_18_TLF_FIFO_blk[0] | proc_18_input_sync_blk[0] | proc_18_output_sync_blk[0]);
    assign proc_18_data_FIFO_blk[1] = 1'b0;
    assign proc_18_data_PIPO_blk[1] = 1'b0;
    assign proc_18_start_FIFO_blk[1] = 1'b0;
    assign proc_18_TLF_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.shl_ln121_loc_channel_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.ap_idle & ~grp_DoCompute_fu_2926.shl_ln121_loc_channel_U.if_write);
    assign proc_18_input_sync_blk[1] = 1'b0;
    assign proc_18_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_18[1] = dl_detect_out ? proc_dep_vld_vec_18_reg[1] : (proc_18_data_FIFO_blk[1] | proc_18_data_PIPO_blk[1] | proc_18_start_FIFO_blk[1] | proc_18_TLF_FIFO_blk[1] | proc_18_input_sync_blk[1] | proc_18_output_sync_blk[1]);
    assign proc_18_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc4_Pipeline_VITIS_LOOP_300_3_fu_62.mvOut_m_buffer_8_blk_n);
    assign proc_18_data_PIPO_blk[2] = 1'b0;
    assign proc_18_start_FIFO_blk[2] = 1'b0;
    assign proc_18_TLF_FIFO_blk[2] = 1'b0;
    assign proc_18_input_sync_blk[2] = 1'b0;
    assign proc_18_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_18[2] = dl_detect_out ? proc_dep_vld_vec_18_reg[2] : (proc_18_data_FIFO_blk[2] | proc_18_data_PIPO_blk[2] | proc_18_start_FIFO_blk[2] | proc_18_TLF_FIFO_blk[2] | proc_18_input_sync_blk[2] | proc_18_output_sync_blk[2]);
    assign proc_18_data_FIFO_blk[3] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc4_Pipeline_VITIS_LOOP_300_3_fu_62.inter4_blk_n);
    assign proc_18_data_PIPO_blk[3] = 1'b0;
    assign proc_18_start_FIFO_blk[3] = 1'b0;
    assign proc_18_TLF_FIFO_blk[3] = 1'b0;
    assign proc_18_input_sync_blk[3] = 1'b0;
    assign proc_18_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_18[3] = dl_detect_out ? proc_dep_vld_vec_18_reg[3] : (proc_18_data_FIFO_blk[3] | proc_18_data_PIPO_blk[3] | proc_18_start_FIFO_blk[3] | proc_18_TLF_FIFO_blk[3] | proc_18_input_sync_blk[3] | proc_18_output_sync_blk[3]);
    assign proc_18_data_FIFO_blk[4] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.numReps_c149_blk_n);
    assign proc_18_data_PIPO_blk[4] = 1'b0;
    assign proc_18_start_FIFO_blk[4] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.real_start & (trans_in_cnt_10 == trans_out_cnt_10) & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0_U.if_read);
    assign proc_18_TLF_FIFO_blk[4] = 1'b0;
    assign proc_18_input_sync_blk[4] = 1'b0;
    assign proc_18_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_18[4] = dl_detect_out ? proc_dep_vld_vec_18_reg[4] : (proc_18_data_FIFO_blk[4] | proc_18_data_PIPO_blk[4] | proc_18_start_FIFO_blk[4] | proc_18_TLF_FIFO_blk[4] | proc_18_input_sync_blk[4] | proc_18_output_sync_blk[4]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_18_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_18_reg <= proc_dep_vld_vec_18;
        end
    end
    assign in_chan_dep_vld_vec_18[0] = dep_chan_vld_15_18;
    assign in_chan_dep_data_vec_18[43 : 0] = dep_chan_data_15_18;
    assign token_in_vec_18[0] = token_15_18;
    assign in_chan_dep_vld_vec_18[1] = dep_chan_vld_17_18;
    assign in_chan_dep_data_vec_18[87 : 44] = dep_chan_data_17_18;
    assign token_in_vec_18[1] = token_17_18;
    assign in_chan_dep_vld_vec_18[2] = dep_chan_vld_20_18;
    assign in_chan_dep_data_vec_18[131 : 88] = dep_chan_data_20_18;
    assign token_in_vec_18[2] = token_20_18;
    assign in_chan_dep_vld_vec_18[3] = dep_chan_vld_21_18;
    assign in_chan_dep_data_vec_18[175 : 132] = dep_chan_data_21_18;
    assign token_in_vec_18[3] = token_21_18;
    assign dep_chan_vld_18_15 = out_chan_dep_vld_vec_18[0];
    assign dep_chan_data_18_15 = out_chan_dep_data_18;
    assign token_18_15 = token_out_vec_18[0];
    assign dep_chan_vld_18_16 = out_chan_dep_vld_vec_18[1];
    assign dep_chan_data_18_16 = out_chan_dep_data_18;
    assign token_18_16 = token_out_vec_18[1];
    assign dep_chan_vld_18_17 = out_chan_dep_vld_vec_18[2];
    assign dep_chan_data_18_17 = out_chan_dep_data_18;
    assign token_18_17 = token_out_vec_18[2];
    assign dep_chan_vld_18_20 = out_chan_dep_vld_vec_18[3];
    assign dep_chan_data_18_20 = out_chan_dep_data_18;
    assign token_18_20 = token_out_vec_18[3];
    assign dep_chan_vld_18_21 = out_chan_dep_vld_vec_18[4];
    assign dep_chan_data_18_21 = out_chan_dep_data_18;
    assign token_18_21 = token_out_vec_18[4];

    // Process: grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 19, 18, 15) BlackBoxJam_hls_deadlock_detect_unit_19 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_19),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_19),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_19),
        .token_in_vec(token_in_vec_19),
        .dl_detect_in(dl_detect_out),
        .origin(origin[19]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_19),
        .out_chan_dep_data(out_chan_dep_data_19),
        .token_out_vec(token_out_vec_19),
        .dl_detect_out(dl_in_vec[19]));

    assign proc_19_data_FIFO_blk[0] = 1'b0;
    assign proc_19_data_PIPO_blk[0] = 1'b0;
    assign proc_19_start_FIFO_blk[0] = 1'b0;
    assign proc_19_TLF_FIFO_blk[0] = 1'b0;
    assign proc_19_input_sync_blk[0] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready);
    assign proc_19_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_19[0] = dl_detect_out ? proc_dep_vld_vec_19_reg[0] : (proc_19_data_FIFO_blk[0] | proc_19_data_PIPO_blk[0] | proc_19_start_FIFO_blk[0] | proc_19_TLF_FIFO_blk[0] | proc_19_input_sync_blk[0] | proc_19_output_sync_blk[0]);
    assign proc_19_data_FIFO_blk[1] = 1'b0;
    assign proc_19_data_PIPO_blk[1] = 1'b0;
    assign proc_19_start_FIFO_blk[1] = 1'b0;
    assign proc_19_TLF_FIFO_blk[1] = 1'b0;
    assign proc_19_input_sync_blk[1] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready);
    assign proc_19_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_19[1] = dl_detect_out ? proc_dep_vld_vec_19_reg[1] : (proc_19_data_FIFO_blk[1] | proc_19_data_PIPO_blk[1] | proc_19_start_FIFO_blk[1] | proc_19_TLF_FIFO_blk[1] | proc_19_input_sync_blk[1] | proc_19_output_sync_blk[1]);
    assign proc_19_data_FIFO_blk[2] = 1'b0;
    assign proc_19_data_PIPO_blk[2] = 1'b0;
    assign proc_19_start_FIFO_blk[2] = 1'b0;
    assign proc_19_TLF_FIFO_blk[2] = 1'b0;
    assign proc_19_input_sync_blk[2] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready);
    assign proc_19_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_19[2] = dl_detect_out ? proc_dep_vld_vec_19_reg[2] : (proc_19_data_FIFO_blk[2] | proc_19_data_PIPO_blk[2] | proc_19_start_FIFO_blk[2] | proc_19_TLF_FIFO_blk[2] | proc_19_input_sync_blk[2] | proc_19_output_sync_blk[2]);
    assign proc_19_data_FIFO_blk[3] = 1'b0;
    assign proc_19_data_PIPO_blk[3] = 1'b0;
    assign proc_19_start_FIFO_blk[3] = 1'b0;
    assign proc_19_TLF_FIFO_blk[3] = 1'b0;
    assign proc_19_input_sync_blk[3] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready);
    assign proc_19_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_19[3] = dl_detect_out ? proc_dep_vld_vec_19_reg[3] : (proc_19_data_FIFO_blk[3] | proc_19_data_PIPO_blk[3] | proc_19_start_FIFO_blk[3] | proc_19_TLF_FIFO_blk[3] | proc_19_input_sync_blk[3] | proc_19_output_sync_blk[3]);
    assign proc_19_data_FIFO_blk[4] = 1'b0;
    assign proc_19_data_PIPO_blk[4] = 1'b0;
    assign proc_19_start_FIFO_blk[4] = 1'b0;
    assign proc_19_TLF_FIFO_blk[4] = 1'b0;
    assign proc_19_input_sync_blk[4] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready);
    assign proc_19_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_19[4] = dl_detect_out ? proc_dep_vld_vec_19_reg[4] : (proc_19_data_FIFO_blk[4] | proc_19_data_PIPO_blk[4] | proc_19_start_FIFO_blk[4] | proc_19_TLF_FIFO_blk[4] | proc_19_input_sync_blk[4] | proc_19_output_sync_blk[4]);
    assign proc_19_data_FIFO_blk[5] = 1'b0;
    assign proc_19_data_PIPO_blk[5] = 1'b0;
    assign proc_19_start_FIFO_blk[5] = 1'b0;
    assign proc_19_TLF_FIFO_blk[5] = 1'b0;
    assign proc_19_input_sync_blk[5] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_19_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_19[5] = dl_detect_out ? proc_dep_vld_vec_19_reg[5] : (proc_19_data_FIFO_blk[5] | proc_19_data_PIPO_blk[5] | proc_19_start_FIFO_blk[5] | proc_19_TLF_FIFO_blk[5] | proc_19_input_sync_blk[5] | proc_19_output_sync_blk[5]);
    assign proc_19_data_FIFO_blk[6] = 1'b0;
    assign proc_19_data_PIPO_blk[6] = 1'b0;
    assign proc_19_start_FIFO_blk[6] = 1'b0;
    assign proc_19_TLF_FIFO_blk[6] = 1'b0;
    assign proc_19_input_sync_blk[6] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready);
    assign proc_19_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_19[6] = dl_detect_out ? proc_dep_vld_vec_19_reg[6] : (proc_19_data_FIFO_blk[6] | proc_19_data_PIPO_blk[6] | proc_19_start_FIFO_blk[6] | proc_19_TLF_FIFO_blk[6] | proc_19_input_sync_blk[6] | proc_19_output_sync_blk[6]);
    assign proc_19_data_FIFO_blk[7] = 1'b0;
    assign proc_19_data_PIPO_blk[7] = 1'b0;
    assign proc_19_start_FIFO_blk[7] = 1'b0;
    assign proc_19_TLF_FIFO_blk[7] = 1'b0;
    assign proc_19_input_sync_blk[7] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready);
    assign proc_19_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_19[7] = dl_detect_out ? proc_dep_vld_vec_19_reg[7] : (proc_19_data_FIFO_blk[7] | proc_19_data_PIPO_blk[7] | proc_19_start_FIFO_blk[7] | proc_19_TLF_FIFO_blk[7] | proc_19_input_sync_blk[7] | proc_19_output_sync_blk[7]);
    assign proc_19_data_FIFO_blk[8] = 1'b0;
    assign proc_19_data_PIPO_blk[8] = 1'b0;
    assign proc_19_start_FIFO_blk[8] = 1'b0;
    assign proc_19_TLF_FIFO_blk[8] = 1'b0;
    assign proc_19_input_sync_blk[8] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready);
    assign proc_19_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_19[8] = dl_detect_out ? proc_dep_vld_vec_19_reg[8] : (proc_19_data_FIFO_blk[8] | proc_19_data_PIPO_blk[8] | proc_19_start_FIFO_blk[8] | proc_19_TLF_FIFO_blk[8] | proc_19_input_sync_blk[8] | proc_19_output_sync_blk[8]);
    assign proc_19_data_FIFO_blk[9] = 1'b0;
    assign proc_19_data_PIPO_blk[9] = 1'b0;
    assign proc_19_start_FIFO_blk[9] = 1'b0;
    assign proc_19_TLF_FIFO_blk[9] = 1'b0;
    assign proc_19_input_sync_blk[9] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_19_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_19[9] = dl_detect_out ? proc_dep_vld_vec_19_reg[9] : (proc_19_data_FIFO_blk[9] | proc_19_data_PIPO_blk[9] | proc_19_start_FIFO_blk[9] | proc_19_TLF_FIFO_blk[9] | proc_19_input_sync_blk[9] | proc_19_output_sync_blk[9]);
    assign proc_19_data_FIFO_blk[10] = 1'b0;
    assign proc_19_data_PIPO_blk[10] = 1'b0;
    assign proc_19_start_FIFO_blk[10] = 1'b0;
    assign proc_19_TLF_FIFO_blk[10] = 1'b0;
    assign proc_19_input_sync_blk[10] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready);
    assign proc_19_output_sync_blk[10] = 1'b0;
    assign proc_dep_vld_vec_19[10] = dl_detect_out ? proc_dep_vld_vec_19_reg[10] : (proc_19_data_FIFO_blk[10] | proc_19_data_PIPO_blk[10] | proc_19_start_FIFO_blk[10] | proc_19_TLF_FIFO_blk[10] | proc_19_input_sync_blk[10] | proc_19_output_sync_blk[10]);
    assign proc_19_data_FIFO_blk[11] = 1'b0;
    assign proc_19_data_PIPO_blk[11] = 1'b0;
    assign proc_19_start_FIFO_blk[11] = 1'b0;
    assign proc_19_TLF_FIFO_blk[11] = 1'b0;
    assign proc_19_input_sync_blk[11] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready);
    assign proc_19_output_sync_blk[11] = 1'b0;
    assign proc_dep_vld_vec_19[11] = dl_detect_out ? proc_dep_vld_vec_19_reg[11] : (proc_19_data_FIFO_blk[11] | proc_19_data_PIPO_blk[11] | proc_19_start_FIFO_blk[11] | proc_19_TLF_FIFO_blk[11] | proc_19_input_sync_blk[11] | proc_19_output_sync_blk[11]);
    assign proc_19_data_FIFO_blk[12] = 1'b0;
    assign proc_19_data_PIPO_blk[12] = 1'b0;
    assign proc_19_start_FIFO_blk[12] = 1'b0;
    assign proc_19_TLF_FIFO_blk[12] = 1'b0;
    assign proc_19_input_sync_blk[12] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready);
    assign proc_19_output_sync_blk[12] = 1'b0;
    assign proc_dep_vld_vec_19[12] = dl_detect_out ? proc_dep_vld_vec_19_reg[12] : (proc_19_data_FIFO_blk[12] | proc_19_data_PIPO_blk[12] | proc_19_start_FIFO_blk[12] | proc_19_TLF_FIFO_blk[12] | proc_19_input_sync_blk[12] | proc_19_output_sync_blk[12]);
    assign proc_19_data_FIFO_blk[13] = 1'b0;
    assign proc_19_data_PIPO_blk[13] = 1'b0;
    assign proc_19_start_FIFO_blk[13] = 1'b0;
    assign proc_19_TLF_FIFO_blk[13] = 1'b0;
    assign proc_19_input_sync_blk[13] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready);
    assign proc_19_output_sync_blk[13] = 1'b0;
    assign proc_dep_vld_vec_19[13] = dl_detect_out ? proc_dep_vld_vec_19_reg[13] : (proc_19_data_FIFO_blk[13] | proc_19_data_PIPO_blk[13] | proc_19_start_FIFO_blk[13] | proc_19_TLF_FIFO_blk[13] | proc_19_input_sync_blk[13] | proc_19_output_sync_blk[13]);
    assign proc_19_data_FIFO_blk[14] = 1'b0;
    assign proc_19_data_PIPO_blk[14] = 1'b0;
    assign proc_19_start_FIFO_blk[14] = 1'b0;
    assign proc_19_TLF_FIFO_blk[14] = 1'b0;
    assign proc_19_input_sync_blk[14] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready);
    assign proc_19_output_sync_blk[14] = 1'b0;
    assign proc_dep_vld_vec_19[14] = dl_detect_out ? proc_dep_vld_vec_19_reg[14] : (proc_19_data_FIFO_blk[14] | proc_19_data_PIPO_blk[14] | proc_19_start_FIFO_blk[14] | proc_19_TLF_FIFO_blk[14] | proc_19_input_sync_blk[14] | proc_19_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_19_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_19_reg <= proc_dep_vld_vec_19;
        end
    end
    assign in_chan_dep_vld_vec_19[0] = dep_chan_vld_0_19;
    assign in_chan_dep_data_vec_19[43 : 0] = dep_chan_data_0_19;
    assign token_in_vec_19[0] = token_0_19;
    assign in_chan_dep_vld_vec_19[1] = dep_chan_vld_1_19;
    assign in_chan_dep_data_vec_19[87 : 44] = dep_chan_data_1_19;
    assign token_in_vec_19[1] = token_1_19;
    assign in_chan_dep_vld_vec_19[2] = dep_chan_vld_5_19;
    assign in_chan_dep_data_vec_19[131 : 88] = dep_chan_data_5_19;
    assign token_in_vec_19[2] = token_5_19;
    assign in_chan_dep_vld_vec_19[3] = dep_chan_vld_6_19;
    assign in_chan_dep_data_vec_19[175 : 132] = dep_chan_data_6_19;
    assign token_in_vec_19[3] = token_6_19;
    assign in_chan_dep_vld_vec_19[4] = dep_chan_vld_11_19;
    assign in_chan_dep_data_vec_19[219 : 176] = dep_chan_data_11_19;
    assign token_in_vec_19[4] = token_11_19;
    assign in_chan_dep_vld_vec_19[5] = dep_chan_vld_16_19;
    assign in_chan_dep_data_vec_19[263 : 220] = dep_chan_data_16_19;
    assign token_in_vec_19[5] = token_16_19;
    assign in_chan_dep_vld_vec_19[6] = dep_chan_vld_17_19;
    assign in_chan_dep_data_vec_19[307 : 264] = dep_chan_data_17_19;
    assign token_in_vec_19[6] = token_17_19;
    assign in_chan_dep_vld_vec_19[7] = dep_chan_vld_20_19;
    assign in_chan_dep_data_vec_19[351 : 308] = dep_chan_data_20_19;
    assign token_in_vec_19[7] = token_20_19;
    assign in_chan_dep_vld_vec_19[8] = dep_chan_vld_22_19;
    assign in_chan_dep_data_vec_19[395 : 352] = dep_chan_data_22_19;
    assign token_in_vec_19[8] = token_22_19;
    assign in_chan_dep_vld_vec_19[9] = dep_chan_vld_23_19;
    assign in_chan_dep_data_vec_19[439 : 396] = dep_chan_data_23_19;
    assign token_in_vec_19[9] = token_23_19;
    assign in_chan_dep_vld_vec_19[10] = dep_chan_vld_28_19;
    assign in_chan_dep_data_vec_19[483 : 440] = dep_chan_data_28_19;
    assign token_in_vec_19[10] = token_28_19;
    assign in_chan_dep_vld_vec_19[11] = dep_chan_vld_29_19;
    assign in_chan_dep_data_vec_19[527 : 484] = dep_chan_data_29_19;
    assign token_in_vec_19[11] = token_29_19;
    assign in_chan_dep_vld_vec_19[12] = dep_chan_vld_31_19;
    assign in_chan_dep_data_vec_19[571 : 528] = dep_chan_data_31_19;
    assign token_in_vec_19[12] = token_31_19;
    assign in_chan_dep_vld_vec_19[13] = dep_chan_vld_33_19;
    assign in_chan_dep_data_vec_19[615 : 572] = dep_chan_data_33_19;
    assign token_in_vec_19[13] = token_33_19;
    assign in_chan_dep_vld_vec_19[14] = dep_chan_vld_36_19;
    assign in_chan_dep_data_vec_19[659 : 616] = dep_chan_data_36_19;
    assign token_in_vec_19[14] = token_36_19;
    assign in_chan_dep_vld_vec_19[15] = dep_chan_vld_37_19;
    assign in_chan_dep_data_vec_19[703 : 660] = dep_chan_data_37_19;
    assign token_in_vec_19[15] = token_37_19;
    assign in_chan_dep_vld_vec_19[16] = dep_chan_vld_39_19;
    assign in_chan_dep_data_vec_19[747 : 704] = dep_chan_data_39_19;
    assign token_in_vec_19[16] = token_39_19;
    assign in_chan_dep_vld_vec_19[17] = dep_chan_vld_42_19;
    assign in_chan_dep_data_vec_19[791 : 748] = dep_chan_data_42_19;
    assign token_in_vec_19[17] = token_42_19;
    assign dep_chan_vld_19_0 = out_chan_dep_vld_vec_19[0];
    assign dep_chan_data_19_0 = out_chan_dep_data_19;
    assign token_19_0 = token_out_vec_19[0];
    assign dep_chan_vld_19_1 = out_chan_dep_vld_vec_19[1];
    assign dep_chan_data_19_1 = out_chan_dep_data_19;
    assign token_19_1 = token_out_vec_19[1];
    assign dep_chan_vld_19_5 = out_chan_dep_vld_vec_19[2];
    assign dep_chan_data_19_5 = out_chan_dep_data_19;
    assign token_19_5 = token_out_vec_19[2];
    assign dep_chan_vld_19_6 = out_chan_dep_vld_vec_19[3];
    assign dep_chan_data_19_6 = out_chan_dep_data_19;
    assign token_19_6 = token_out_vec_19[3];
    assign dep_chan_vld_19_11 = out_chan_dep_vld_vec_19[4];
    assign dep_chan_data_19_11 = out_chan_dep_data_19;
    assign token_19_11 = token_out_vec_19[4];
    assign dep_chan_vld_19_16 = out_chan_dep_vld_vec_19[5];
    assign dep_chan_data_19_16 = out_chan_dep_data_19;
    assign token_19_16 = token_out_vec_19[5];
    assign dep_chan_vld_19_17 = out_chan_dep_vld_vec_19[6];
    assign dep_chan_data_19_17 = out_chan_dep_data_19;
    assign token_19_17 = token_out_vec_19[6];
    assign dep_chan_vld_19_22 = out_chan_dep_vld_vec_19[7];
    assign dep_chan_data_19_22 = out_chan_dep_data_19;
    assign token_19_22 = token_out_vec_19[7];
    assign dep_chan_vld_19_23 = out_chan_dep_vld_vec_19[8];
    assign dep_chan_data_19_23 = out_chan_dep_data_19;
    assign token_19_23 = token_out_vec_19[8];
    assign dep_chan_vld_19_28 = out_chan_dep_vld_vec_19[9];
    assign dep_chan_data_19_28 = out_chan_dep_data_19;
    assign token_19_28 = token_out_vec_19[9];
    assign dep_chan_vld_19_29 = out_chan_dep_vld_vec_19[10];
    assign dep_chan_data_19_29 = out_chan_dep_data_19;
    assign token_19_29 = token_out_vec_19[10];
    assign dep_chan_vld_19_33 = out_chan_dep_vld_vec_19[11];
    assign dep_chan_data_19_33 = out_chan_dep_data_19;
    assign token_19_33 = token_out_vec_19[11];
    assign dep_chan_vld_19_36 = out_chan_dep_vld_vec_19[12];
    assign dep_chan_data_19_36 = out_chan_dep_data_19;
    assign token_19_36 = token_out_vec_19[12];
    assign dep_chan_vld_19_39 = out_chan_dep_vld_vec_19[13];
    assign dep_chan_data_19_39 = out_chan_dep_data_19;
    assign token_19_39 = token_out_vec_19[13];
    assign dep_chan_vld_19_42 = out_chan_dep_vld_vec_19[14];
    assign dep_chan_data_19_42 = out_chan_dep_data_19;
    assign token_19_42 = token_out_vec_19[14];

    // Process: grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 20, 3, 4) BlackBoxJam_hls_deadlock_detect_unit_20 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_20),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_20),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_20),
        .token_in_vec(token_in_vec_20),
        .dl_detect_in(dl_detect_out),
        .origin(origin[20]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_20),
        .out_chan_dep_data(out_chan_dep_data_20),
        .token_out_vec(token_out_vec_20),
        .dl_detect_out(dl_in_vec[20]));

    assign proc_20_data_FIFO_blk[0] = 1'b0;
    assign proc_20_data_PIPO_blk[0] = 1'b0;
    assign proc_20_start_FIFO_blk[0] = 1'b0;
    assign proc_20_TLF_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.totalIters_11_loc_c135_channel_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0.ap_idle & ~grp_DoCompute_fu_2926.totalIters_11_loc_c135_channel_U.if_write);
    assign proc_20_input_sync_blk[0] = 1'b0;
    assign proc_20_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_20[0] = dl_detect_out ? proc_dep_vld_vec_20_reg[0] : (proc_20_data_FIFO_blk[0] | proc_20_data_PIPO_blk[0] | proc_20_start_FIFO_blk[0] | proc_20_TLF_FIFO_blk[0] | proc_20_input_sync_blk[0] | proc_20_output_sync_blk[0]);
    assign proc_20_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc6_Pipeline_VITIS_LOOP_268_1_fu_50.wa_in_10_blk_n);
    assign proc_20_data_PIPO_blk[1] = 1'b0;
    assign proc_20_start_FIFO_blk[1] = 1'b0;
    assign proc_20_TLF_FIFO_blk[1] = 1'b0;
    assign proc_20_input_sync_blk[1] = 1'b0;
    assign proc_20_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_20[1] = dl_detect_out ? proc_dep_vld_vec_20_reg[1] : (proc_20_data_FIFO_blk[1] | proc_20_data_PIPO_blk[1] | proc_20_start_FIFO_blk[1] | proc_20_TLF_FIFO_blk[1] | proc_20_input_sync_blk[1] | proc_20_output_sync_blk[1]);
    assign proc_20_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc6_Pipeline_VITIS_LOOP_268_1_fu_50.inter4_blk_n);
    assign proc_20_data_PIPO_blk[2] = 1'b0;
    assign proc_20_start_FIFO_blk[2] = 1'b0;
    assign proc_20_TLF_FIFO_blk[2] = 1'b0;
    assign proc_20_input_sync_blk[2] = 1'b0;
    assign proc_20_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_20[2] = dl_detect_out ? proc_dep_vld_vec_20_reg[2] : (proc_20_data_FIFO_blk[2] | proc_20_data_PIPO_blk[2] | proc_20_start_FIFO_blk[2] | proc_20_TLF_FIFO_blk[2] | proc_20_input_sync_blk[2] | proc_20_output_sync_blk[2]);
    assign proc_20_data_FIFO_blk[3] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0.totalIters_11_loc_c_blk_n);
    assign proc_20_data_PIPO_blk[3] = 1'b0;
    assign proc_20_start_FIFO_blk[3] = 1'b0;
    assign proc_20_TLF_FIFO_blk[3] = 1'b0;
    assign proc_20_input_sync_blk[3] = 1'b0;
    assign proc_20_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_20[3] = dl_detect_out ? proc_dep_vld_vec_20_reg[3] : (proc_20_data_FIFO_blk[3] | proc_20_data_PIPO_blk[3] | proc_20_start_FIFO_blk[3] | proc_20_TLF_FIFO_blk[3] | proc_20_input_sync_blk[3] | proc_20_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_20_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_20_reg <= proc_dep_vld_vec_20;
        end
    end
    assign in_chan_dep_vld_vec_20[0] = dep_chan_vld_18_20;
    assign in_chan_dep_data_vec_20[43 : 0] = dep_chan_data_18_20;
    assign token_in_vec_20[0] = token_18_20;
    assign in_chan_dep_vld_vec_20[1] = dep_chan_vld_21_20;
    assign in_chan_dep_data_vec_20[87 : 44] = dep_chan_data_21_20;
    assign token_in_vec_20[1] = token_21_20;
    assign in_chan_dep_vld_vec_20[2] = dep_chan_vld_30_20;
    assign in_chan_dep_data_vec_20[131 : 88] = dep_chan_data_30_20;
    assign token_in_vec_20[2] = token_30_20;
    assign dep_chan_vld_20_19 = out_chan_dep_vld_vec_20[0];
    assign dep_chan_data_20_19 = out_chan_dep_data_20;
    assign token_20_19 = token_out_vec_20[0];
    assign dep_chan_vld_20_21 = out_chan_dep_vld_vec_20[1];
    assign dep_chan_data_20_21 = out_chan_dep_data_20;
    assign token_20_21 = token_out_vec_20[1];
    assign dep_chan_vld_20_18 = out_chan_dep_vld_vec_20[2];
    assign dep_chan_data_20_18 = out_chan_dep_data_20;
    assign token_20_18 = token_out_vec_20[2];
    assign dep_chan_vld_20_30 = out_chan_dep_vld_vec_20[3];
    assign dep_chan_data_20_30 = out_chan_dep_data_20;
    assign token_20_30 = token_out_vec_20[3];

    // Process: grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 21, 4, 4) BlackBoxJam_hls_deadlock_detect_unit_21 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_21),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_21),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_21),
        .token_in_vec(token_in_vec_21),
        .dl_detect_in(dl_detect_out),
        .origin(origin[21]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_21),
        .out_chan_dep_data(out_chan_dep_data_21),
        .token_out_vec(token_out_vec_21),
        .dl_detect_out(dl_in_vec[21]));

    assign proc_21_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52.wa_in_i1518_blk_n);
    assign proc_21_data_PIPO_blk[0] = 1'b0;
    assign proc_21_start_FIFO_blk[0] = 1'b0;
    assign proc_21_TLF_FIFO_blk[0] = 1'b0;
    assign proc_21_input_sync_blk[0] = 1'b0;
    assign proc_21_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_21[0] = dl_detect_out ? proc_dep_vld_vec_21_reg[0] : (proc_21_data_FIFO_blk[0] | proc_21_data_PIPO_blk[0] | proc_21_start_FIFO_blk[0] | proc_21_TLF_FIFO_blk[0] | proc_21_input_sync_blk[0] | proc_21_output_sync_blk[0]);
    assign proc_21_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52.convInp_i17_blk_n);
    assign proc_21_data_PIPO_blk[1] = 1'b0;
    assign proc_21_start_FIFO_blk[1] = 1'b0;
    assign proc_21_TLF_FIFO_blk[1] = 1'b0;
    assign proc_21_input_sync_blk[1] = 1'b0;
    assign proc_21_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_21[1] = dl_detect_out ? proc_dep_vld_vec_21_reg[1] : (proc_21_data_FIFO_blk[1] | proc_21_data_PIPO_blk[1] | proc_21_start_FIFO_blk[1] | proc_21_TLF_FIFO_blk[1] | proc_21_input_sync_blk[1] | proc_21_output_sync_blk[1]);
    assign proc_21_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.numReps_blk_n);
    assign proc_21_data_PIPO_blk[2] = 1'b0;
    assign proc_21_start_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0_U.if_empty_n & grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0_U.if_write);
    assign proc_21_TLF_FIFO_blk[2] = 1'b0;
    assign proc_21_input_sync_blk[2] = 1'b0;
    assign proc_21_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_21[2] = dl_detect_out ? proc_dep_vld_vec_21_reg[2] : (proc_21_data_FIFO_blk[2] | proc_21_data_PIPO_blk[2] | proc_21_start_FIFO_blk[2] | proc_21_TLF_FIFO_blk[2] | proc_21_input_sync_blk[2] | proc_21_output_sync_blk[2]);
    assign proc_21_data_FIFO_blk[3] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.numReps_c148_blk_n);
    assign proc_21_data_PIPO_blk[3] = 1'b0;
    assign proc_21_start_FIFO_blk[3] = 1'b0;
    assign proc_21_TLF_FIFO_blk[3] = 1'b0;
    assign proc_21_input_sync_blk[3] = 1'b0;
    assign proc_21_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_21[3] = dl_detect_out ? proc_dep_vld_vec_21_reg[3] : (proc_21_data_FIFO_blk[3] | proc_21_data_PIPO_blk[3] | proc_21_start_FIFO_blk[3] | proc_21_TLF_FIFO_blk[3] | proc_21_input_sync_blk[3] | proc_21_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_21_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_21_reg <= proc_dep_vld_vec_21;
        end
    end
    assign in_chan_dep_vld_vec_21[0] = dep_chan_vld_18_21;
    assign in_chan_dep_data_vec_21[43 : 0] = dep_chan_data_18_21;
    assign token_in_vec_21[0] = token_18_21;
    assign in_chan_dep_vld_vec_21[1] = dep_chan_vld_20_21;
    assign in_chan_dep_data_vec_21[87 : 44] = dep_chan_data_20_21;
    assign token_in_vec_21[1] = token_20_21;
    assign in_chan_dep_vld_vec_21[2] = dep_chan_vld_23_21;
    assign in_chan_dep_data_vec_21[131 : 88] = dep_chan_data_23_21;
    assign token_in_vec_21[2] = token_23_21;
    assign in_chan_dep_vld_vec_21[3] = dep_chan_vld_24_21;
    assign in_chan_dep_data_vec_21[175 : 132] = dep_chan_data_24_21;
    assign token_in_vec_21[3] = token_24_21;
    assign dep_chan_vld_21_20 = out_chan_dep_vld_vec_21[0];
    assign dep_chan_data_21_20 = out_chan_dep_data_21;
    assign token_21_20 = token_out_vec_21[0];
    assign dep_chan_vld_21_23 = out_chan_dep_vld_vec_21[1];
    assign dep_chan_data_21_23 = out_chan_dep_data_21;
    assign token_21_23 = token_out_vec_21[1];
    assign dep_chan_vld_21_18 = out_chan_dep_vld_vec_21[2];
    assign dep_chan_data_21_18 = out_chan_dep_data_21;
    assign token_21_18 = token_out_vec_21[2];
    assign dep_chan_vld_21_24 = out_chan_dep_vld_vec_21[3];
    assign dep_chan_data_21_24 = out_chan_dep_data_21;
    assign token_21_24 = token_out_vec_21[3];

    // Process: grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 22, 16, 15) BlackBoxJam_hls_deadlock_detect_unit_22 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_22),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_22),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_22),
        .token_in_vec(token_in_vec_22),
        .dl_detect_in(dl_detect_out),
        .origin(origin[22]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_22),
        .out_chan_dep_data(out_chan_dep_data_22),
        .token_out_vec(token_out_vec_22),
        .dl_detect_out(dl_in_vec[22]));

    assign proc_22_data_FIFO_blk[0] = 1'b0;
    assign proc_22_data_PIPO_blk[0] = 1'b0;
    assign proc_22_start_FIFO_blk[0] = 1'b0;
    assign proc_22_TLF_FIFO_blk[0] = 1'b0;
    assign proc_22_input_sync_blk[0] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready);
    assign proc_22_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_22[0] = dl_detect_out ? proc_dep_vld_vec_22_reg[0] : (proc_22_data_FIFO_blk[0] | proc_22_data_PIPO_blk[0] | proc_22_start_FIFO_blk[0] | proc_22_TLF_FIFO_blk[0] | proc_22_input_sync_blk[0] | proc_22_output_sync_blk[0]);
    assign proc_22_data_FIFO_blk[1] = 1'b0;
    assign proc_22_data_PIPO_blk[1] = 1'b0;
    assign proc_22_start_FIFO_blk[1] = 1'b0;
    assign proc_22_TLF_FIFO_blk[1] = 1'b0;
    assign proc_22_input_sync_blk[1] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready);
    assign proc_22_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_22[1] = dl_detect_out ? proc_dep_vld_vec_22_reg[1] : (proc_22_data_FIFO_blk[1] | proc_22_data_PIPO_blk[1] | proc_22_start_FIFO_blk[1] | proc_22_TLF_FIFO_blk[1] | proc_22_input_sync_blk[1] | proc_22_output_sync_blk[1]);
    assign proc_22_data_FIFO_blk[2] = 1'b0;
    assign proc_22_data_PIPO_blk[2] = 1'b0;
    assign proc_22_start_FIFO_blk[2] = 1'b0;
    assign proc_22_TLF_FIFO_blk[2] = 1'b0;
    assign proc_22_input_sync_blk[2] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready);
    assign proc_22_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_22[2] = dl_detect_out ? proc_dep_vld_vec_22_reg[2] : (proc_22_data_FIFO_blk[2] | proc_22_data_PIPO_blk[2] | proc_22_start_FIFO_blk[2] | proc_22_TLF_FIFO_blk[2] | proc_22_input_sync_blk[2] | proc_22_output_sync_blk[2]);
    assign proc_22_data_FIFO_blk[3] = 1'b0;
    assign proc_22_data_PIPO_blk[3] = 1'b0;
    assign proc_22_start_FIFO_blk[3] = 1'b0;
    assign proc_22_TLF_FIFO_blk[3] = 1'b0;
    assign proc_22_input_sync_blk[3] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready);
    assign proc_22_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_22[3] = dl_detect_out ? proc_dep_vld_vec_22_reg[3] : (proc_22_data_FIFO_blk[3] | proc_22_data_PIPO_blk[3] | proc_22_start_FIFO_blk[3] | proc_22_TLF_FIFO_blk[3] | proc_22_input_sync_blk[3] | proc_22_output_sync_blk[3]);
    assign proc_22_data_FIFO_blk[4] = 1'b0;
    assign proc_22_data_PIPO_blk[4] = 1'b0;
    assign proc_22_start_FIFO_blk[4] = 1'b0;
    assign proc_22_TLF_FIFO_blk[4] = 1'b0;
    assign proc_22_input_sync_blk[4] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready);
    assign proc_22_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_22[4] = dl_detect_out ? proc_dep_vld_vec_22_reg[4] : (proc_22_data_FIFO_blk[4] | proc_22_data_PIPO_blk[4] | proc_22_start_FIFO_blk[4] | proc_22_TLF_FIFO_blk[4] | proc_22_input_sync_blk[4] | proc_22_output_sync_blk[4]);
    assign proc_22_data_FIFO_blk[5] = 1'b0;
    assign proc_22_data_PIPO_blk[5] = 1'b0;
    assign proc_22_start_FIFO_blk[5] = 1'b0;
    assign proc_22_TLF_FIFO_blk[5] = 1'b0;
    assign proc_22_input_sync_blk[5] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_22_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_22[5] = dl_detect_out ? proc_dep_vld_vec_22_reg[5] : (proc_22_data_FIFO_blk[5] | proc_22_data_PIPO_blk[5] | proc_22_start_FIFO_blk[5] | proc_22_TLF_FIFO_blk[5] | proc_22_input_sync_blk[5] | proc_22_output_sync_blk[5]);
    assign proc_22_data_FIFO_blk[6] = 1'b0;
    assign proc_22_data_PIPO_blk[6] = 1'b0;
    assign proc_22_start_FIFO_blk[6] = 1'b0;
    assign proc_22_TLF_FIFO_blk[6] = 1'b0;
    assign proc_22_input_sync_blk[6] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready);
    assign proc_22_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_22[6] = dl_detect_out ? proc_dep_vld_vec_22_reg[6] : (proc_22_data_FIFO_blk[6] | proc_22_data_PIPO_blk[6] | proc_22_start_FIFO_blk[6] | proc_22_TLF_FIFO_blk[6] | proc_22_input_sync_blk[6] | proc_22_output_sync_blk[6]);
    assign proc_22_data_FIFO_blk[7] = 1'b0;
    assign proc_22_data_PIPO_blk[7] = 1'b0;
    assign proc_22_start_FIFO_blk[7] = 1'b0;
    assign proc_22_TLF_FIFO_blk[7] = 1'b0;
    assign proc_22_input_sync_blk[7] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready);
    assign proc_22_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_22[7] = dl_detect_out ? proc_dep_vld_vec_22_reg[7] : (proc_22_data_FIFO_blk[7] | proc_22_data_PIPO_blk[7] | proc_22_start_FIFO_blk[7] | proc_22_TLF_FIFO_blk[7] | proc_22_input_sync_blk[7] | proc_22_output_sync_blk[7]);
    assign proc_22_data_FIFO_blk[8] = 1'b0;
    assign proc_22_data_PIPO_blk[8] = 1'b0;
    assign proc_22_start_FIFO_blk[8] = 1'b0;
    assign proc_22_TLF_FIFO_blk[8] = 1'b0;
    assign proc_22_input_sync_blk[8] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready);
    assign proc_22_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_22[8] = dl_detect_out ? proc_dep_vld_vec_22_reg[8] : (proc_22_data_FIFO_blk[8] | proc_22_data_PIPO_blk[8] | proc_22_start_FIFO_blk[8] | proc_22_TLF_FIFO_blk[8] | proc_22_input_sync_blk[8] | proc_22_output_sync_blk[8]);
    assign proc_22_data_FIFO_blk[9] = 1'b0;
    assign proc_22_data_PIPO_blk[9] = 1'b0;
    assign proc_22_start_FIFO_blk[9] = 1'b0;
    assign proc_22_TLF_FIFO_blk[9] = 1'b0;
    assign proc_22_input_sync_blk[9] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_22_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_22[9] = dl_detect_out ? proc_dep_vld_vec_22_reg[9] : (proc_22_data_FIFO_blk[9] | proc_22_data_PIPO_blk[9] | proc_22_start_FIFO_blk[9] | proc_22_TLF_FIFO_blk[9] | proc_22_input_sync_blk[9] | proc_22_output_sync_blk[9]);
    assign proc_22_data_FIFO_blk[10] = 1'b0;
    assign proc_22_data_PIPO_blk[10] = 1'b0;
    assign proc_22_start_FIFO_blk[10] = 1'b0;
    assign proc_22_TLF_FIFO_blk[10] = 1'b0;
    assign proc_22_input_sync_blk[10] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready);
    assign proc_22_output_sync_blk[10] = 1'b0;
    assign proc_dep_vld_vec_22[10] = dl_detect_out ? proc_dep_vld_vec_22_reg[10] : (proc_22_data_FIFO_blk[10] | proc_22_data_PIPO_blk[10] | proc_22_start_FIFO_blk[10] | proc_22_TLF_FIFO_blk[10] | proc_22_input_sync_blk[10] | proc_22_output_sync_blk[10]);
    assign proc_22_data_FIFO_blk[11] = 1'b0;
    assign proc_22_data_PIPO_blk[11] = 1'b0;
    assign proc_22_start_FIFO_blk[11] = 1'b0;
    assign proc_22_TLF_FIFO_blk[11] = 1'b0;
    assign proc_22_input_sync_blk[11] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready);
    assign proc_22_output_sync_blk[11] = 1'b0;
    assign proc_dep_vld_vec_22[11] = dl_detect_out ? proc_dep_vld_vec_22_reg[11] : (proc_22_data_FIFO_blk[11] | proc_22_data_PIPO_blk[11] | proc_22_start_FIFO_blk[11] | proc_22_TLF_FIFO_blk[11] | proc_22_input_sync_blk[11] | proc_22_output_sync_blk[11]);
    assign proc_22_data_FIFO_blk[12] = 1'b0;
    assign proc_22_data_PIPO_blk[12] = 1'b0;
    assign proc_22_start_FIFO_blk[12] = 1'b0;
    assign proc_22_TLF_FIFO_blk[12] = 1'b0;
    assign proc_22_input_sync_blk[12] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready);
    assign proc_22_output_sync_blk[12] = 1'b0;
    assign proc_dep_vld_vec_22[12] = dl_detect_out ? proc_dep_vld_vec_22_reg[12] : (proc_22_data_FIFO_blk[12] | proc_22_data_PIPO_blk[12] | proc_22_start_FIFO_blk[12] | proc_22_TLF_FIFO_blk[12] | proc_22_input_sync_blk[12] | proc_22_output_sync_blk[12]);
    assign proc_22_data_FIFO_blk[13] = 1'b0;
    assign proc_22_data_PIPO_blk[13] = 1'b0;
    assign proc_22_start_FIFO_blk[13] = 1'b0;
    assign proc_22_TLF_FIFO_blk[13] = 1'b0;
    assign proc_22_input_sync_blk[13] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready);
    assign proc_22_output_sync_blk[13] = 1'b0;
    assign proc_dep_vld_vec_22[13] = dl_detect_out ? proc_dep_vld_vec_22_reg[13] : (proc_22_data_FIFO_blk[13] | proc_22_data_PIPO_blk[13] | proc_22_start_FIFO_blk[13] | proc_22_TLF_FIFO_blk[13] | proc_22_input_sync_blk[13] | proc_22_output_sync_blk[13]);
    assign proc_22_data_FIFO_blk[14] = 1'b0;
    assign proc_22_data_PIPO_blk[14] = 1'b0;
    assign proc_22_start_FIFO_blk[14] = 1'b0;
    assign proc_22_TLF_FIFO_blk[14] = 1'b0;
    assign proc_22_input_sync_blk[14] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready);
    assign proc_22_output_sync_blk[14] = 1'b0;
    assign proc_dep_vld_vec_22[14] = dl_detect_out ? proc_dep_vld_vec_22_reg[14] : (proc_22_data_FIFO_blk[14] | proc_22_data_PIPO_blk[14] | proc_22_start_FIFO_blk[14] | proc_22_TLF_FIFO_blk[14] | proc_22_input_sync_blk[14] | proc_22_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_22_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_22_reg <= proc_dep_vld_vec_22;
        end
    end
    assign in_chan_dep_vld_vec_22[0] = dep_chan_vld_0_22;
    assign in_chan_dep_data_vec_22[43 : 0] = dep_chan_data_0_22;
    assign token_in_vec_22[0] = token_0_22;
    assign in_chan_dep_vld_vec_22[1] = dep_chan_vld_1_22;
    assign in_chan_dep_data_vec_22[87 : 44] = dep_chan_data_1_22;
    assign token_in_vec_22[1] = token_1_22;
    assign in_chan_dep_vld_vec_22[2] = dep_chan_vld_5_22;
    assign in_chan_dep_data_vec_22[131 : 88] = dep_chan_data_5_22;
    assign token_in_vec_22[2] = token_5_22;
    assign in_chan_dep_vld_vec_22[3] = dep_chan_vld_6_22;
    assign in_chan_dep_data_vec_22[175 : 132] = dep_chan_data_6_22;
    assign token_in_vec_22[3] = token_6_22;
    assign in_chan_dep_vld_vec_22[4] = dep_chan_vld_11_22;
    assign in_chan_dep_data_vec_22[219 : 176] = dep_chan_data_11_22;
    assign token_in_vec_22[4] = token_11_22;
    assign in_chan_dep_vld_vec_22[5] = dep_chan_vld_16_22;
    assign in_chan_dep_data_vec_22[263 : 220] = dep_chan_data_16_22;
    assign token_in_vec_22[5] = token_16_22;
    assign in_chan_dep_vld_vec_22[6] = dep_chan_vld_17_22;
    assign in_chan_dep_data_vec_22[307 : 264] = dep_chan_data_17_22;
    assign token_in_vec_22[6] = token_17_22;
    assign in_chan_dep_vld_vec_22[7] = dep_chan_vld_19_22;
    assign in_chan_dep_data_vec_22[351 : 308] = dep_chan_data_19_22;
    assign token_in_vec_22[7] = token_19_22;
    assign in_chan_dep_vld_vec_22[8] = dep_chan_vld_23_22;
    assign in_chan_dep_data_vec_22[395 : 352] = dep_chan_data_23_22;
    assign token_in_vec_22[8] = token_23_22;
    assign in_chan_dep_vld_vec_22[9] = dep_chan_vld_26_22;
    assign in_chan_dep_data_vec_22[439 : 396] = dep_chan_data_26_22;
    assign token_in_vec_22[9] = token_26_22;
    assign in_chan_dep_vld_vec_22[10] = dep_chan_vld_28_22;
    assign in_chan_dep_data_vec_22[483 : 440] = dep_chan_data_28_22;
    assign token_in_vec_22[10] = token_28_22;
    assign in_chan_dep_vld_vec_22[11] = dep_chan_vld_29_22;
    assign in_chan_dep_data_vec_22[527 : 484] = dep_chan_data_29_22;
    assign token_in_vec_22[11] = token_29_22;
    assign in_chan_dep_vld_vec_22[12] = dep_chan_vld_33_22;
    assign in_chan_dep_data_vec_22[571 : 528] = dep_chan_data_33_22;
    assign token_in_vec_22[12] = token_33_22;
    assign in_chan_dep_vld_vec_22[13] = dep_chan_vld_36_22;
    assign in_chan_dep_data_vec_22[615 : 572] = dep_chan_data_36_22;
    assign token_in_vec_22[13] = token_36_22;
    assign in_chan_dep_vld_vec_22[14] = dep_chan_vld_39_22;
    assign in_chan_dep_data_vec_22[659 : 616] = dep_chan_data_39_22;
    assign token_in_vec_22[14] = token_39_22;
    assign in_chan_dep_vld_vec_22[15] = dep_chan_vld_42_22;
    assign in_chan_dep_data_vec_22[703 : 660] = dep_chan_data_42_22;
    assign token_in_vec_22[15] = token_42_22;
    assign dep_chan_vld_22_0 = out_chan_dep_vld_vec_22[0];
    assign dep_chan_data_22_0 = out_chan_dep_data_22;
    assign token_22_0 = token_out_vec_22[0];
    assign dep_chan_vld_22_1 = out_chan_dep_vld_vec_22[1];
    assign dep_chan_data_22_1 = out_chan_dep_data_22;
    assign token_22_1 = token_out_vec_22[1];
    assign dep_chan_vld_22_5 = out_chan_dep_vld_vec_22[2];
    assign dep_chan_data_22_5 = out_chan_dep_data_22;
    assign token_22_5 = token_out_vec_22[2];
    assign dep_chan_vld_22_6 = out_chan_dep_vld_vec_22[3];
    assign dep_chan_data_22_6 = out_chan_dep_data_22;
    assign token_22_6 = token_out_vec_22[3];
    assign dep_chan_vld_22_11 = out_chan_dep_vld_vec_22[4];
    assign dep_chan_data_22_11 = out_chan_dep_data_22;
    assign token_22_11 = token_out_vec_22[4];
    assign dep_chan_vld_22_16 = out_chan_dep_vld_vec_22[5];
    assign dep_chan_data_22_16 = out_chan_dep_data_22;
    assign token_22_16 = token_out_vec_22[5];
    assign dep_chan_vld_22_17 = out_chan_dep_vld_vec_22[6];
    assign dep_chan_data_22_17 = out_chan_dep_data_22;
    assign token_22_17 = token_out_vec_22[6];
    assign dep_chan_vld_22_19 = out_chan_dep_vld_vec_22[7];
    assign dep_chan_data_22_19 = out_chan_dep_data_22;
    assign token_22_19 = token_out_vec_22[7];
    assign dep_chan_vld_22_23 = out_chan_dep_vld_vec_22[8];
    assign dep_chan_data_22_23 = out_chan_dep_data_22;
    assign token_22_23 = token_out_vec_22[8];
    assign dep_chan_vld_22_28 = out_chan_dep_vld_vec_22[9];
    assign dep_chan_data_22_28 = out_chan_dep_data_22;
    assign token_22_28 = token_out_vec_22[9];
    assign dep_chan_vld_22_29 = out_chan_dep_vld_vec_22[10];
    assign dep_chan_data_22_29 = out_chan_dep_data_22;
    assign token_22_29 = token_out_vec_22[10];
    assign dep_chan_vld_22_33 = out_chan_dep_vld_vec_22[11];
    assign dep_chan_data_22_33 = out_chan_dep_data_22;
    assign token_22_33 = token_out_vec_22[11];
    assign dep_chan_vld_22_36 = out_chan_dep_vld_vec_22[12];
    assign dep_chan_data_22_36 = out_chan_dep_data_22;
    assign token_22_36 = token_out_vec_22[12];
    assign dep_chan_vld_22_39 = out_chan_dep_vld_vec_22[13];
    assign dep_chan_data_22_39 = out_chan_dep_data_22;
    assign token_22_39 = token_out_vec_22[13];
    assign dep_chan_vld_22_42 = out_chan_dep_vld_vec_22[14];
    assign dep_chan_data_22_42 = out_chan_dep_data_22;
    assign token_22_42 = token_out_vec_22[14];

    // Process: grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 23, 17, 17) BlackBoxJam_hls_deadlock_detect_unit_23 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_23),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_23),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_23),
        .token_in_vec(token_in_vec_23),
        .dl_detect_in(dl_detect_out),
        .origin(origin[23]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_23),
        .out_chan_dep_data(out_chan_dep_data_23),
        .token_out_vec(token_out_vec_23),
        .dl_detect_out(dl_in_vec[23]));

    assign proc_23_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100.convInp_2_blk_n);
    assign proc_23_data_PIPO_blk[0] = 1'b0;
    assign proc_23_start_FIFO_blk[0] = 1'b0;
    assign proc_23_TLF_FIFO_blk[0] = 1'b0;
    assign proc_23_input_sync_blk[0] = 1'b0;
    assign proc_23_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_23[0] = dl_detect_out ? proc_dep_vld_vec_23_reg[0] : (proc_23_data_FIFO_blk[0] | proc_23_data_PIPO_blk[0] | proc_23_start_FIFO_blk[0] | proc_23_TLF_FIFO_blk[0] | proc_23_input_sync_blk[0] | proc_23_output_sync_blk[0]);
    assign proc_23_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100.mvOut_m_buffer_7_blk_n);
    assign proc_23_data_PIPO_blk[1] = 1'b0;
    assign proc_23_start_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0_U.if_full_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_start & ~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.real_start & (trans_in_cnt_11 == trans_out_cnt_11) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0_U.if_read);
    assign proc_23_TLF_FIFO_blk[1] = 1'b0;
    assign proc_23_input_sync_blk[1] = 1'b0;
    assign proc_23_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_23[1] = dl_detect_out ? proc_dep_vld_vec_23_reg[1] : (proc_23_data_FIFO_blk[1] | proc_23_data_PIPO_blk[1] | proc_23_start_FIFO_blk[1] | proc_23_TLF_FIFO_blk[1] | proc_23_input_sync_blk[1] | proc_23_output_sync_blk[1]);
    assign proc_23_data_FIFO_blk[2] = 1'b0;
    assign proc_23_data_PIPO_blk[2] = 1'b0;
    assign proc_23_start_FIFO_blk[2] = 1'b0;
    assign proc_23_TLF_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.totalIters_13_cast_loc_channel_U.if_empty_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.totalIters_13_cast_loc_channel_U.if_write);
    assign proc_23_input_sync_blk[2] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready);
    assign proc_23_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_23[2] = dl_detect_out ? proc_dep_vld_vec_23_reg[2] : (proc_23_data_FIFO_blk[2] | proc_23_data_PIPO_blk[2] | proc_23_start_FIFO_blk[2] | proc_23_TLF_FIFO_blk[2] | proc_23_input_sync_blk[2] | proc_23_output_sync_blk[2]);
    assign proc_23_data_FIFO_blk[3] = 1'b0;
    assign proc_23_data_PIPO_blk[3] = 1'b0;
    assign proc_23_start_FIFO_blk[3] = 1'b0;
    assign proc_23_TLF_FIFO_blk[3] = 1'b0;
    assign proc_23_input_sync_blk[3] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready);
    assign proc_23_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_23[3] = dl_detect_out ? proc_dep_vld_vec_23_reg[3] : (proc_23_data_FIFO_blk[3] | proc_23_data_PIPO_blk[3] | proc_23_start_FIFO_blk[3] | proc_23_TLF_FIFO_blk[3] | proc_23_input_sync_blk[3] | proc_23_output_sync_blk[3]);
    assign proc_23_data_FIFO_blk[4] = 1'b0;
    assign proc_23_data_PIPO_blk[4] = 1'b0;
    assign proc_23_start_FIFO_blk[4] = 1'b0;
    assign proc_23_TLF_FIFO_blk[4] = 1'b0;
    assign proc_23_input_sync_blk[4] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready);
    assign proc_23_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_23[4] = dl_detect_out ? proc_dep_vld_vec_23_reg[4] : (proc_23_data_FIFO_blk[4] | proc_23_data_PIPO_blk[4] | proc_23_start_FIFO_blk[4] | proc_23_TLF_FIFO_blk[4] | proc_23_input_sync_blk[4] | proc_23_output_sync_blk[4]);
    assign proc_23_data_FIFO_blk[5] = 1'b0;
    assign proc_23_data_PIPO_blk[5] = 1'b0;
    assign proc_23_start_FIFO_blk[5] = 1'b0;
    assign proc_23_TLF_FIFO_blk[5] = 1'b0;
    assign proc_23_input_sync_blk[5] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready);
    assign proc_23_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_23[5] = dl_detect_out ? proc_dep_vld_vec_23_reg[5] : (proc_23_data_FIFO_blk[5] | proc_23_data_PIPO_blk[5] | proc_23_start_FIFO_blk[5] | proc_23_TLF_FIFO_blk[5] | proc_23_input_sync_blk[5] | proc_23_output_sync_blk[5]);
    assign proc_23_data_FIFO_blk[6] = 1'b0;
    assign proc_23_data_PIPO_blk[6] = 1'b0;
    assign proc_23_start_FIFO_blk[6] = 1'b0;
    assign proc_23_TLF_FIFO_blk[6] = 1'b0;
    assign proc_23_input_sync_blk[6] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready);
    assign proc_23_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_23[6] = dl_detect_out ? proc_dep_vld_vec_23_reg[6] : (proc_23_data_FIFO_blk[6] | proc_23_data_PIPO_blk[6] | proc_23_start_FIFO_blk[6] | proc_23_TLF_FIFO_blk[6] | proc_23_input_sync_blk[6] | proc_23_output_sync_blk[6]);
    assign proc_23_data_FIFO_blk[7] = 1'b0;
    assign proc_23_data_PIPO_blk[7] = 1'b0;
    assign proc_23_start_FIFO_blk[7] = 1'b0;
    assign proc_23_TLF_FIFO_blk[7] = 1'b0;
    assign proc_23_input_sync_blk[7] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready);
    assign proc_23_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_23[7] = dl_detect_out ? proc_dep_vld_vec_23_reg[7] : (proc_23_data_FIFO_blk[7] | proc_23_data_PIPO_blk[7] | proc_23_start_FIFO_blk[7] | proc_23_TLF_FIFO_blk[7] | proc_23_input_sync_blk[7] | proc_23_output_sync_blk[7]);
    assign proc_23_data_FIFO_blk[8] = 1'b0;
    assign proc_23_data_PIPO_blk[8] = 1'b0;
    assign proc_23_start_FIFO_blk[8] = 1'b0;
    assign proc_23_TLF_FIFO_blk[8] = 1'b0;
    assign proc_23_input_sync_blk[8] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_23_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_23[8] = dl_detect_out ? proc_dep_vld_vec_23_reg[8] : (proc_23_data_FIFO_blk[8] | proc_23_data_PIPO_blk[8] | proc_23_start_FIFO_blk[8] | proc_23_TLF_FIFO_blk[8] | proc_23_input_sync_blk[8] | proc_23_output_sync_blk[8]);
    assign proc_23_data_FIFO_blk[9] = 1'b0;
    assign proc_23_data_PIPO_blk[9] = 1'b0;
    assign proc_23_start_FIFO_blk[9] = 1'b0;
    assign proc_23_TLF_FIFO_blk[9] = 1'b0;
    assign proc_23_input_sync_blk[9] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready);
    assign proc_23_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_23[9] = dl_detect_out ? proc_dep_vld_vec_23_reg[9] : (proc_23_data_FIFO_blk[9] | proc_23_data_PIPO_blk[9] | proc_23_start_FIFO_blk[9] | proc_23_TLF_FIFO_blk[9] | proc_23_input_sync_blk[9] | proc_23_output_sync_blk[9]);
    assign proc_23_data_FIFO_blk[10] = 1'b0;
    assign proc_23_data_PIPO_blk[10] = 1'b0;
    assign proc_23_start_FIFO_blk[10] = 1'b0;
    assign proc_23_TLF_FIFO_blk[10] = 1'b0;
    assign proc_23_input_sync_blk[10] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready);
    assign proc_23_output_sync_blk[10] = 1'b0;
    assign proc_dep_vld_vec_23[10] = dl_detect_out ? proc_dep_vld_vec_23_reg[10] : (proc_23_data_FIFO_blk[10] | proc_23_data_PIPO_blk[10] | proc_23_start_FIFO_blk[10] | proc_23_TLF_FIFO_blk[10] | proc_23_input_sync_blk[10] | proc_23_output_sync_blk[10]);
    assign proc_23_data_FIFO_blk[11] = 1'b0;
    assign proc_23_data_PIPO_blk[11] = 1'b0;
    assign proc_23_start_FIFO_blk[11] = 1'b0;
    assign proc_23_TLF_FIFO_blk[11] = 1'b0;
    assign proc_23_input_sync_blk[11] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_23_output_sync_blk[11] = 1'b0;
    assign proc_dep_vld_vec_23[11] = dl_detect_out ? proc_dep_vld_vec_23_reg[11] : (proc_23_data_FIFO_blk[11] | proc_23_data_PIPO_blk[11] | proc_23_start_FIFO_blk[11] | proc_23_TLF_FIFO_blk[11] | proc_23_input_sync_blk[11] | proc_23_output_sync_blk[11]);
    assign proc_23_data_FIFO_blk[12] = 1'b0;
    assign proc_23_data_PIPO_blk[12] = 1'b0;
    assign proc_23_start_FIFO_blk[12] = 1'b0;
    assign proc_23_TLF_FIFO_blk[12] = 1'b0;
    assign proc_23_input_sync_blk[12] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready);
    assign proc_23_output_sync_blk[12] = 1'b0;
    assign proc_dep_vld_vec_23[12] = dl_detect_out ? proc_dep_vld_vec_23_reg[12] : (proc_23_data_FIFO_blk[12] | proc_23_data_PIPO_blk[12] | proc_23_start_FIFO_blk[12] | proc_23_TLF_FIFO_blk[12] | proc_23_input_sync_blk[12] | proc_23_output_sync_blk[12]);
    assign proc_23_data_FIFO_blk[13] = 1'b0;
    assign proc_23_data_PIPO_blk[13] = 1'b0;
    assign proc_23_start_FIFO_blk[13] = 1'b0;
    assign proc_23_TLF_FIFO_blk[13] = 1'b0;
    assign proc_23_input_sync_blk[13] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready);
    assign proc_23_output_sync_blk[13] = 1'b0;
    assign proc_dep_vld_vec_23[13] = dl_detect_out ? proc_dep_vld_vec_23_reg[13] : (proc_23_data_FIFO_blk[13] | proc_23_data_PIPO_blk[13] | proc_23_start_FIFO_blk[13] | proc_23_TLF_FIFO_blk[13] | proc_23_input_sync_blk[13] | proc_23_output_sync_blk[13]);
    assign proc_23_data_FIFO_blk[14] = 1'b0;
    assign proc_23_data_PIPO_blk[14] = 1'b0;
    assign proc_23_start_FIFO_blk[14] = 1'b0;
    assign proc_23_TLF_FIFO_blk[14] = 1'b0;
    assign proc_23_input_sync_blk[14] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready);
    assign proc_23_output_sync_blk[14] = 1'b0;
    assign proc_dep_vld_vec_23[14] = dl_detect_out ? proc_dep_vld_vec_23_reg[14] : (proc_23_data_FIFO_blk[14] | proc_23_data_PIPO_blk[14] | proc_23_start_FIFO_blk[14] | proc_23_TLF_FIFO_blk[14] | proc_23_input_sync_blk[14] | proc_23_output_sync_blk[14]);
    assign proc_23_data_FIFO_blk[15] = 1'b0;
    assign proc_23_data_PIPO_blk[15] = 1'b0;
    assign proc_23_start_FIFO_blk[15] = 1'b0;
    assign proc_23_TLF_FIFO_blk[15] = 1'b0;
    assign proc_23_input_sync_blk[15] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready);
    assign proc_23_output_sync_blk[15] = 1'b0;
    assign proc_dep_vld_vec_23[15] = dl_detect_out ? proc_dep_vld_vec_23_reg[15] : (proc_23_data_FIFO_blk[15] | proc_23_data_PIPO_blk[15] | proc_23_start_FIFO_blk[15] | proc_23_TLF_FIFO_blk[15] | proc_23_input_sync_blk[15] | proc_23_output_sync_blk[15]);
    assign proc_23_data_FIFO_blk[16] = 1'b0;
    assign proc_23_data_PIPO_blk[16] = 1'b0;
    assign proc_23_start_FIFO_blk[16] = 1'b0;
    assign proc_23_TLF_FIFO_blk[16] = 1'b0;
    assign proc_23_input_sync_blk[16] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready);
    assign proc_23_output_sync_blk[16] = 1'b0;
    assign proc_dep_vld_vec_23[16] = dl_detect_out ? proc_dep_vld_vec_23_reg[16] : (proc_23_data_FIFO_blk[16] | proc_23_data_PIPO_blk[16] | proc_23_start_FIFO_blk[16] | proc_23_TLF_FIFO_blk[16] | proc_23_input_sync_blk[16] | proc_23_output_sync_blk[16]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_23_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_23_reg <= proc_dep_vld_vec_23;
        end
    end
    assign in_chan_dep_vld_vec_23[0] = dep_chan_vld_0_23;
    assign in_chan_dep_data_vec_23[43 : 0] = dep_chan_data_0_23;
    assign token_in_vec_23[0] = token_0_23;
    assign in_chan_dep_vld_vec_23[1] = dep_chan_vld_1_23;
    assign in_chan_dep_data_vec_23[87 : 44] = dep_chan_data_1_23;
    assign token_in_vec_23[1] = token_1_23;
    assign in_chan_dep_vld_vec_23[2] = dep_chan_vld_5_23;
    assign in_chan_dep_data_vec_23[131 : 88] = dep_chan_data_5_23;
    assign token_in_vec_23[2] = token_5_23;
    assign in_chan_dep_vld_vec_23[3] = dep_chan_vld_6_23;
    assign in_chan_dep_data_vec_23[175 : 132] = dep_chan_data_6_23;
    assign token_in_vec_23[3] = token_6_23;
    assign in_chan_dep_vld_vec_23[4] = dep_chan_vld_11_23;
    assign in_chan_dep_data_vec_23[219 : 176] = dep_chan_data_11_23;
    assign token_in_vec_23[4] = token_11_23;
    assign in_chan_dep_vld_vec_23[5] = dep_chan_vld_16_23;
    assign in_chan_dep_data_vec_23[263 : 220] = dep_chan_data_16_23;
    assign token_in_vec_23[5] = token_16_23;
    assign in_chan_dep_vld_vec_23[6] = dep_chan_vld_17_23;
    assign in_chan_dep_data_vec_23[307 : 264] = dep_chan_data_17_23;
    assign token_in_vec_23[6] = token_17_23;
    assign in_chan_dep_vld_vec_23[7] = dep_chan_vld_19_23;
    assign in_chan_dep_data_vec_23[351 : 308] = dep_chan_data_19_23;
    assign token_in_vec_23[7] = token_19_23;
    assign in_chan_dep_vld_vec_23[8] = dep_chan_vld_21_23;
    assign in_chan_dep_data_vec_23[395 : 352] = dep_chan_data_21_23;
    assign token_in_vec_23[8] = token_21_23;
    assign in_chan_dep_vld_vec_23[9] = dep_chan_vld_22_23;
    assign in_chan_dep_data_vec_23[439 : 396] = dep_chan_data_22_23;
    assign token_in_vec_23[9] = token_22_23;
    assign in_chan_dep_vld_vec_23[10] = dep_chan_vld_24_23;
    assign in_chan_dep_data_vec_23[483 : 440] = dep_chan_data_24_23;
    assign token_in_vec_23[10] = token_24_23;
    assign in_chan_dep_vld_vec_23[11] = dep_chan_vld_28_23;
    assign in_chan_dep_data_vec_23[527 : 484] = dep_chan_data_28_23;
    assign token_in_vec_23[11] = token_28_23;
    assign in_chan_dep_vld_vec_23[12] = dep_chan_vld_29_23;
    assign in_chan_dep_data_vec_23[571 : 528] = dep_chan_data_29_23;
    assign token_in_vec_23[12] = token_29_23;
    assign in_chan_dep_vld_vec_23[13] = dep_chan_vld_33_23;
    assign in_chan_dep_data_vec_23[615 : 572] = dep_chan_data_33_23;
    assign token_in_vec_23[13] = token_33_23;
    assign in_chan_dep_vld_vec_23[14] = dep_chan_vld_36_23;
    assign in_chan_dep_data_vec_23[659 : 616] = dep_chan_data_36_23;
    assign token_in_vec_23[14] = token_36_23;
    assign in_chan_dep_vld_vec_23[15] = dep_chan_vld_39_23;
    assign in_chan_dep_data_vec_23[703 : 660] = dep_chan_data_39_23;
    assign token_in_vec_23[15] = token_39_23;
    assign in_chan_dep_vld_vec_23[16] = dep_chan_vld_42_23;
    assign in_chan_dep_data_vec_23[747 : 704] = dep_chan_data_42_23;
    assign token_in_vec_23[16] = token_42_23;
    assign dep_chan_vld_23_21 = out_chan_dep_vld_vec_23[0];
    assign dep_chan_data_23_21 = out_chan_dep_data_23;
    assign token_23_21 = token_out_vec_23[0];
    assign dep_chan_vld_23_24 = out_chan_dep_vld_vec_23[1];
    assign dep_chan_data_23_24 = out_chan_dep_data_23;
    assign token_23_24 = token_out_vec_23[1];
    assign dep_chan_vld_23_22 = out_chan_dep_vld_vec_23[2];
    assign dep_chan_data_23_22 = out_chan_dep_data_23;
    assign token_23_22 = token_out_vec_23[2];
    assign dep_chan_vld_23_0 = out_chan_dep_vld_vec_23[3];
    assign dep_chan_data_23_0 = out_chan_dep_data_23;
    assign token_23_0 = token_out_vec_23[3];
    assign dep_chan_vld_23_1 = out_chan_dep_vld_vec_23[4];
    assign dep_chan_data_23_1 = out_chan_dep_data_23;
    assign token_23_1 = token_out_vec_23[4];
    assign dep_chan_vld_23_5 = out_chan_dep_vld_vec_23[5];
    assign dep_chan_data_23_5 = out_chan_dep_data_23;
    assign token_23_5 = token_out_vec_23[5];
    assign dep_chan_vld_23_6 = out_chan_dep_vld_vec_23[6];
    assign dep_chan_data_23_6 = out_chan_dep_data_23;
    assign token_23_6 = token_out_vec_23[6];
    assign dep_chan_vld_23_11 = out_chan_dep_vld_vec_23[7];
    assign dep_chan_data_23_11 = out_chan_dep_data_23;
    assign token_23_11 = token_out_vec_23[7];
    assign dep_chan_vld_23_16 = out_chan_dep_vld_vec_23[8];
    assign dep_chan_data_23_16 = out_chan_dep_data_23;
    assign token_23_16 = token_out_vec_23[8];
    assign dep_chan_vld_23_17 = out_chan_dep_vld_vec_23[9];
    assign dep_chan_data_23_17 = out_chan_dep_data_23;
    assign token_23_17 = token_out_vec_23[9];
    assign dep_chan_vld_23_19 = out_chan_dep_vld_vec_23[10];
    assign dep_chan_data_23_19 = out_chan_dep_data_23;
    assign token_23_19 = token_out_vec_23[10];
    assign dep_chan_vld_23_28 = out_chan_dep_vld_vec_23[11];
    assign dep_chan_data_23_28 = out_chan_dep_data_23;
    assign token_23_28 = token_out_vec_23[11];
    assign dep_chan_vld_23_29 = out_chan_dep_vld_vec_23[12];
    assign dep_chan_data_23_29 = out_chan_dep_data_23;
    assign token_23_29 = token_out_vec_23[12];
    assign dep_chan_vld_23_33 = out_chan_dep_vld_vec_23[13];
    assign dep_chan_data_23_33 = out_chan_dep_data_23;
    assign token_23_33 = token_out_vec_23[13];
    assign dep_chan_vld_23_36 = out_chan_dep_vld_vec_23[14];
    assign dep_chan_data_23_36 = out_chan_dep_data_23;
    assign token_23_36 = token_out_vec_23[14];
    assign dep_chan_vld_23_39 = out_chan_dep_vld_vec_23[15];
    assign dep_chan_data_23_39 = out_chan_dep_data_23;
    assign token_23_39 = token_out_vec_23[15];
    assign dep_chan_vld_23_42 = out_chan_dep_vld_vec_23[16];
    assign dep_chan_data_23_42 = out_chan_dep_data_23;
    assign token_23_42 = token_out_vec_23[16];

    // Process: grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 24, 3, 3) BlackBoxJam_hls_deadlock_detect_unit_24 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_24),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_24),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_24),
        .token_in_vec(token_in_vec_24),
        .dl_detect_in(dl_detect_out),
        .origin(origin[24]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_24),
        .out_chan_dep_data(out_chan_dep_data_24),
        .token_out_vec(token_out_vec_24),
        .dl_detect_out(dl_in_vec[24]));

    assign proc_24_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.numReps_blk_n);
    assign proc_24_data_PIPO_blk[0] = 1'b0;
    assign proc_24_start_FIFO_blk[0] = 1'b0;
    assign proc_24_TLF_FIFO_blk[0] = 1'b0;
    assign proc_24_input_sync_blk[0] = 1'b0;
    assign proc_24_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_24[0] = dl_detect_out ? proc_dep_vld_vec_24_reg[0] : (proc_24_data_FIFO_blk[0] | proc_24_data_PIPO_blk[0] | proc_24_start_FIFO_blk[0] | proc_24_TLF_FIFO_blk[0] | proc_24_input_sync_blk[0] | proc_24_output_sync_blk[0]);
    assign proc_24_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc830_Pipeline_VITIS_LOOP_300_3_fu_52.mvOut_m_buffer_7_blk_n);
    assign proc_24_data_PIPO_blk[1] = 1'b0;
    assign proc_24_start_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0_U.if_write);
    assign proc_24_TLF_FIFO_blk[1] = 1'b0;
    assign proc_24_input_sync_blk[1] = 1'b0;
    assign proc_24_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_24[1] = dl_detect_out ? proc_dep_vld_vec_24_reg[1] : (proc_24_data_FIFO_blk[1] | proc_24_data_PIPO_blk[1] | proc_24_start_FIFO_blk[1] | proc_24_TLF_FIFO_blk[1] | proc_24_input_sync_blk[1] | proc_24_output_sync_blk[1]);
    assign proc_24_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc830_Pipeline_VITIS_LOOP_300_3_fu_52.inter5_blk_n) | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.numReps_c147_blk_n);
    assign proc_24_data_PIPO_blk[2] = 1'b0;
    assign proc_24_start_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_10u_2u_128u_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.real_start & (trans_in_cnt_12 == trans_out_cnt_12) & ~grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_10u_2u_128u_U0_U.if_read);
    assign proc_24_TLF_FIFO_blk[2] = 1'b0;
    assign proc_24_input_sync_blk[2] = 1'b0;
    assign proc_24_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_24[2] = dl_detect_out ? proc_dep_vld_vec_24_reg[2] : (proc_24_data_FIFO_blk[2] | proc_24_data_PIPO_blk[2] | proc_24_start_FIFO_blk[2] | proc_24_TLF_FIFO_blk[2] | proc_24_input_sync_blk[2] | proc_24_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_24_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_24_reg <= proc_dep_vld_vec_24;
        end
    end
    assign in_chan_dep_vld_vec_24[0] = dep_chan_vld_21_24;
    assign in_chan_dep_data_vec_24[43 : 0] = dep_chan_data_21_24;
    assign token_in_vec_24[0] = token_21_24;
    assign in_chan_dep_vld_vec_24[1] = dep_chan_vld_23_24;
    assign in_chan_dep_data_vec_24[87 : 44] = dep_chan_data_23_24;
    assign token_in_vec_24[1] = token_23_24;
    assign in_chan_dep_vld_vec_24[2] = dep_chan_vld_25_24;
    assign in_chan_dep_data_vec_24[131 : 88] = dep_chan_data_25_24;
    assign token_in_vec_24[2] = token_25_24;
    assign dep_chan_vld_24_21 = out_chan_dep_vld_vec_24[0];
    assign dep_chan_data_24_21 = out_chan_dep_data_24;
    assign token_24_21 = token_out_vec_24[0];
    assign dep_chan_vld_24_23 = out_chan_dep_vld_vec_24[1];
    assign dep_chan_data_24_23 = out_chan_dep_data_24;
    assign token_24_23 = token_out_vec_24[1];
    assign dep_chan_vld_24_25 = out_chan_dep_vld_vec_24[2];
    assign dep_chan_data_24_25 = out_chan_dep_data_24;
    assign token_24_25 = token_out_vec_24[2];

    // Process: grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 25, 3, 3) BlackBoxJam_hls_deadlock_detect_unit_25 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_25),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_25),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_25),
        .token_in_vec(token_in_vec_25),
        .dl_detect_in(dl_detect_out),
        .origin(origin[25]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_25),
        .out_chan_dep_data(out_chan_dep_data_25),
        .token_out_vec(token_out_vec_25),
        .dl_detect_out(dl_in_vec[25]));

    assign proc_25_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0.grp_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4_fu_152.inter5_blk_n) | (~grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0.numReps_blk_n);
    assign proc_25_data_PIPO_blk[0] = 1'b0;
    assign proc_25_start_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_10u_2u_128u_U0_U.if_empty_n & grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_10u_2u_128u_U0_U.if_write);
    assign proc_25_TLF_FIFO_blk[0] = 1'b0;
    assign proc_25_input_sync_blk[0] = 1'b0;
    assign proc_25_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_25[0] = dl_detect_out ? proc_dep_vld_vec_25_reg[0] : (proc_25_data_FIFO_blk[0] | proc_25_data_PIPO_blk[0] | proc_25_start_FIFO_blk[0] | proc_25_TLF_FIFO_blk[0] | proc_25_input_sync_blk[0] | proc_25_output_sync_blk[0]);
    assign proc_25_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0.grp_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_85_6_fu_159.inter6_blk_n);
    assign proc_25_data_PIPO_blk[1] = 1'b0;
    assign proc_25_start_FIFO_blk[1] = 1'b0;
    assign proc_25_TLF_FIFO_blk[1] = 1'b0;
    assign proc_25_input_sync_blk[1] = 1'b0;
    assign proc_25_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_25[1] = dl_detect_out ? proc_dep_vld_vec_25_reg[1] : (proc_25_data_FIFO_blk[1] | proc_25_data_PIPO_blk[1] | proc_25_start_FIFO_blk[1] | proc_25_TLF_FIFO_blk[1] | proc_25_input_sync_blk[1] | proc_25_output_sync_blk[1]);
    assign proc_25_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0.numReps_c146_blk_n);
    assign proc_25_data_PIPO_blk[2] = 1'b0;
    assign proc_25_start_FIFO_blk[2] = 1'b0;
    assign proc_25_TLF_FIFO_blk[2] = 1'b0;
    assign proc_25_input_sync_blk[2] = 1'b0;
    assign proc_25_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_25[2] = dl_detect_out ? proc_dep_vld_vec_25_reg[2] : (proc_25_data_FIFO_blk[2] | proc_25_data_PIPO_blk[2] | proc_25_start_FIFO_blk[2] | proc_25_TLF_FIFO_blk[2] | proc_25_input_sync_blk[2] | proc_25_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_25_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_25_reg <= proc_dep_vld_vec_25;
        end
    end
    assign in_chan_dep_vld_vec_25[0] = dep_chan_vld_24_25;
    assign in_chan_dep_data_vec_25[43 : 0] = dep_chan_data_24_25;
    assign token_in_vec_25[0] = token_24_25;
    assign in_chan_dep_vld_vec_25[1] = dep_chan_vld_26_25;
    assign in_chan_dep_data_vec_25[87 : 44] = dep_chan_data_26_25;
    assign token_in_vec_25[1] = token_26_25;
    assign in_chan_dep_vld_vec_25[2] = dep_chan_vld_27_25;
    assign in_chan_dep_data_vec_25[131 : 88] = dep_chan_data_27_25;
    assign token_in_vec_25[2] = token_27_25;
    assign dep_chan_vld_25_24 = out_chan_dep_vld_vec_25[0];
    assign dep_chan_data_25_24 = out_chan_dep_data_25;
    assign token_25_24 = token_out_vec_25[0];
    assign dep_chan_vld_25_26 = out_chan_dep_vld_vec_25[1];
    assign dep_chan_data_25_26 = out_chan_dep_data_25;
    assign token_25_26 = token_out_vec_25[1];
    assign dep_chan_vld_25_27 = out_chan_dep_vld_vec_25[2];
    assign dep_chan_data_25_27 = out_chan_dep_data_25;
    assign token_25_27 = token_out_vec_25[2];

    // Process: grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 26, 2, 3) BlackBoxJam_hls_deadlock_detect_unit_26 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_26),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_26),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_26),
        .token_in_vec(token_in_vec_26),
        .dl_detect_in(dl_detect_out),
        .origin(origin[26]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_26),
        .out_chan_dep_data(out_chan_dep_data_26),
        .token_out_vec(token_out_vec_26),
        .dl_detect_out(dl_in_vec[26]));

    assign proc_26_data_FIFO_blk[0] = 1'b0;
    assign proc_26_data_PIPO_blk[0] = 1'b0;
    assign proc_26_start_FIFO_blk[0] = 1'b0;
    assign proc_26_TLF_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.totalIters_13_loc_channel_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0.ap_idle & ~grp_DoCompute_fu_2926.totalIters_13_loc_channel_U.if_write);
    assign proc_26_input_sync_blk[0] = 1'b0;
    assign proc_26_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_26[0] = dl_detect_out ? proc_dep_vld_vec_26_reg[0] : (proc_26_data_FIFO_blk[0] | proc_26_data_PIPO_blk[0] | proc_26_start_FIFO_blk[0] | proc_26_TLF_FIFO_blk[0] | proc_26_input_sync_blk[0] | proc_26_output_sync_blk[0]);
    assign proc_26_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0.wa_in_9_blk_n);
    assign proc_26_data_PIPO_blk[1] = 1'b0;
    assign proc_26_start_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0.real_start & (trans_in_cnt_13 == trans_out_cnt_13) & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0_U.if_read);
    assign proc_26_TLF_FIFO_blk[1] = 1'b0;
    assign proc_26_input_sync_blk[1] = 1'b0;
    assign proc_26_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_26[1] = dl_detect_out ? proc_dep_vld_vec_26_reg[1] : (proc_26_data_FIFO_blk[1] | proc_26_data_PIPO_blk[1] | proc_26_start_FIFO_blk[1] | proc_26_TLF_FIFO_blk[1] | proc_26_input_sync_blk[1] | proc_26_output_sync_blk[1]);
    assign proc_26_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0.inter6_blk_n);
    assign proc_26_data_PIPO_blk[2] = 1'b0;
    assign proc_26_start_FIFO_blk[2] = 1'b0;
    assign proc_26_TLF_FIFO_blk[2] = 1'b0;
    assign proc_26_input_sync_blk[2] = 1'b0;
    assign proc_26_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_26[2] = dl_detect_out ? proc_dep_vld_vec_26_reg[2] : (proc_26_data_FIFO_blk[2] | proc_26_data_PIPO_blk[2] | proc_26_start_FIFO_blk[2] | proc_26_TLF_FIFO_blk[2] | proc_26_input_sync_blk[2] | proc_26_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_26_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_26_reg <= proc_dep_vld_vec_26;
        end
    end
    assign in_chan_dep_vld_vec_26[0] = dep_chan_vld_25_26;
    assign in_chan_dep_data_vec_26[43 : 0] = dep_chan_data_25_26;
    assign token_in_vec_26[0] = token_25_26;
    assign in_chan_dep_vld_vec_26[1] = dep_chan_vld_27_26;
    assign in_chan_dep_data_vec_26[87 : 44] = dep_chan_data_27_26;
    assign token_in_vec_26[1] = token_27_26;
    assign dep_chan_vld_26_22 = out_chan_dep_vld_vec_26[0];
    assign dep_chan_data_26_22 = out_chan_dep_data_26;
    assign token_26_22 = token_out_vec_26[0];
    assign dep_chan_vld_26_27 = out_chan_dep_vld_vec_26[1];
    assign dep_chan_data_26_27 = out_chan_dep_data_26;
    assign token_26_27 = token_out_vec_26[1];
    assign dep_chan_vld_26_25 = out_chan_dep_vld_vec_26[2];
    assign dep_chan_data_26_25 = out_chan_dep_data_26;
    assign token_26_25 = token_out_vec_26[2];

    // Process: grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 27, 4, 4) BlackBoxJam_hls_deadlock_detect_unit_27 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_27),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_27),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_27),
        .token_in_vec(token_in_vec_27),
        .dl_detect_in(dl_detect_out),
        .origin(origin[27]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_27),
        .out_chan_dep_data(out_chan_dep_data_27),
        .token_out_vec(token_out_vec_27),
        .dl_detect_out(dl_in_vec[27]));

    assign proc_27_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58.wa_in_i2214_blk_n);
    assign proc_27_data_PIPO_blk[0] = 1'b0;
    assign proc_27_start_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0_U.if_empty_n & grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0_U.if_write);
    assign proc_27_TLF_FIFO_blk[0] = 1'b0;
    assign proc_27_input_sync_blk[0] = 1'b0;
    assign proc_27_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_27[0] = dl_detect_out ? proc_dep_vld_vec_27_reg[0] : (proc_27_data_FIFO_blk[0] | proc_27_data_PIPO_blk[0] | proc_27_start_FIFO_blk[0] | proc_27_TLF_FIFO_blk[0] | proc_27_input_sync_blk[0] | proc_27_output_sync_blk[0]);
    assign proc_27_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58.convInp_i24_blk_n);
    assign proc_27_data_PIPO_blk[1] = 1'b0;
    assign proc_27_start_FIFO_blk[1] = 1'b0;
    assign proc_27_TLF_FIFO_blk[1] = 1'b0;
    assign proc_27_input_sync_blk[1] = 1'b0;
    assign proc_27_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_27[1] = dl_detect_out ? proc_dep_vld_vec_27_reg[1] : (proc_27_data_FIFO_blk[1] | proc_27_data_PIPO_blk[1] | proc_27_start_FIFO_blk[1] | proc_27_TLF_FIFO_blk[1] | proc_27_input_sync_blk[1] | proc_27_output_sync_blk[1]);
    assign proc_27_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.numReps_blk_n);
    assign proc_27_data_PIPO_blk[2] = 1'b0;
    assign proc_27_start_FIFO_blk[2] = 1'b0;
    assign proc_27_TLF_FIFO_blk[2] = 1'b0;
    assign proc_27_input_sync_blk[2] = 1'b0;
    assign proc_27_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_27[2] = dl_detect_out ? proc_dep_vld_vec_27_reg[2] : (proc_27_data_FIFO_blk[2] | proc_27_data_PIPO_blk[2] | proc_27_start_FIFO_blk[2] | proc_27_TLF_FIFO_blk[2] | proc_27_input_sync_blk[2] | proc_27_output_sync_blk[2]);
    assign proc_27_data_FIFO_blk[3] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.numReps_c145_blk_n);
    assign proc_27_data_PIPO_blk[3] = 1'b0;
    assign proc_27_start_FIFO_blk[3] = 1'b0;
    assign proc_27_TLF_FIFO_blk[3] = 1'b0;
    assign proc_27_input_sync_blk[3] = 1'b0;
    assign proc_27_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_27[3] = dl_detect_out ? proc_dep_vld_vec_27_reg[3] : (proc_27_data_FIFO_blk[3] | proc_27_data_PIPO_blk[3] | proc_27_start_FIFO_blk[3] | proc_27_TLF_FIFO_blk[3] | proc_27_input_sync_blk[3] | proc_27_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_27_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_27_reg <= proc_dep_vld_vec_27;
        end
    end
    assign in_chan_dep_vld_vec_27[0] = dep_chan_vld_25_27;
    assign in_chan_dep_data_vec_27[43 : 0] = dep_chan_data_25_27;
    assign token_in_vec_27[0] = token_25_27;
    assign in_chan_dep_vld_vec_27[1] = dep_chan_vld_26_27;
    assign in_chan_dep_data_vec_27[87 : 44] = dep_chan_data_26_27;
    assign token_in_vec_27[1] = token_26_27;
    assign in_chan_dep_vld_vec_27[2] = dep_chan_vld_29_27;
    assign in_chan_dep_data_vec_27[131 : 88] = dep_chan_data_29_27;
    assign token_in_vec_27[2] = token_29_27;
    assign in_chan_dep_vld_vec_27[3] = dep_chan_vld_32_27;
    assign in_chan_dep_data_vec_27[175 : 132] = dep_chan_data_32_27;
    assign token_in_vec_27[3] = token_32_27;
    assign dep_chan_vld_27_26 = out_chan_dep_vld_vec_27[0];
    assign dep_chan_data_27_26 = out_chan_dep_data_27;
    assign token_27_26 = token_out_vec_27[0];
    assign dep_chan_vld_27_29 = out_chan_dep_vld_vec_27[1];
    assign dep_chan_data_27_29 = out_chan_dep_data_27;
    assign token_27_29 = token_out_vec_27[1];
    assign dep_chan_vld_27_25 = out_chan_dep_vld_vec_27[2];
    assign dep_chan_data_27_25 = out_chan_dep_data_27;
    assign token_27_25 = token_out_vec_27[2];
    assign dep_chan_vld_27_32 = out_chan_dep_vld_vec_27[3];
    assign dep_chan_data_27_32 = out_chan_dep_data_27;
    assign token_27_32 = token_out_vec_27[3];

    // Process: grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 28, 16, 15) BlackBoxJam_hls_deadlock_detect_unit_28 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_28),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_28),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_28),
        .token_in_vec(token_in_vec_28),
        .dl_detect_in(dl_detect_out),
        .origin(origin[28]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_28),
        .out_chan_dep_data(out_chan_dep_data_28),
        .token_out_vec(token_out_vec_28),
        .dl_detect_out(dl_in_vec[28]));

    assign proc_28_data_FIFO_blk[0] = 1'b0;
    assign proc_28_data_PIPO_blk[0] = 1'b0;
    assign proc_28_start_FIFO_blk[0] = 1'b0;
    assign proc_28_TLF_FIFO_blk[0] = 1'b0;
    assign proc_28_input_sync_blk[0] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready);
    assign proc_28_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_28[0] = dl_detect_out ? proc_dep_vld_vec_28_reg[0] : (proc_28_data_FIFO_blk[0] | proc_28_data_PIPO_blk[0] | proc_28_start_FIFO_blk[0] | proc_28_TLF_FIFO_blk[0] | proc_28_input_sync_blk[0] | proc_28_output_sync_blk[0]);
    assign proc_28_data_FIFO_blk[1] = 1'b0;
    assign proc_28_data_PIPO_blk[1] = 1'b0;
    assign proc_28_start_FIFO_blk[1] = 1'b0;
    assign proc_28_TLF_FIFO_blk[1] = 1'b0;
    assign proc_28_input_sync_blk[1] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready);
    assign proc_28_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_28[1] = dl_detect_out ? proc_dep_vld_vec_28_reg[1] : (proc_28_data_FIFO_blk[1] | proc_28_data_PIPO_blk[1] | proc_28_start_FIFO_blk[1] | proc_28_TLF_FIFO_blk[1] | proc_28_input_sync_blk[1] | proc_28_output_sync_blk[1]);
    assign proc_28_data_FIFO_blk[2] = 1'b0;
    assign proc_28_data_PIPO_blk[2] = 1'b0;
    assign proc_28_start_FIFO_blk[2] = 1'b0;
    assign proc_28_TLF_FIFO_blk[2] = 1'b0;
    assign proc_28_input_sync_blk[2] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready);
    assign proc_28_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_28[2] = dl_detect_out ? proc_dep_vld_vec_28_reg[2] : (proc_28_data_FIFO_blk[2] | proc_28_data_PIPO_blk[2] | proc_28_start_FIFO_blk[2] | proc_28_TLF_FIFO_blk[2] | proc_28_input_sync_blk[2] | proc_28_output_sync_blk[2]);
    assign proc_28_data_FIFO_blk[3] = 1'b0;
    assign proc_28_data_PIPO_blk[3] = 1'b0;
    assign proc_28_start_FIFO_blk[3] = 1'b0;
    assign proc_28_TLF_FIFO_blk[3] = 1'b0;
    assign proc_28_input_sync_blk[3] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready);
    assign proc_28_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_28[3] = dl_detect_out ? proc_dep_vld_vec_28_reg[3] : (proc_28_data_FIFO_blk[3] | proc_28_data_PIPO_blk[3] | proc_28_start_FIFO_blk[3] | proc_28_TLF_FIFO_blk[3] | proc_28_input_sync_blk[3] | proc_28_output_sync_blk[3]);
    assign proc_28_data_FIFO_blk[4] = 1'b0;
    assign proc_28_data_PIPO_blk[4] = 1'b0;
    assign proc_28_start_FIFO_blk[4] = 1'b0;
    assign proc_28_TLF_FIFO_blk[4] = 1'b0;
    assign proc_28_input_sync_blk[4] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready);
    assign proc_28_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_28[4] = dl_detect_out ? proc_dep_vld_vec_28_reg[4] : (proc_28_data_FIFO_blk[4] | proc_28_data_PIPO_blk[4] | proc_28_start_FIFO_blk[4] | proc_28_TLF_FIFO_blk[4] | proc_28_input_sync_blk[4] | proc_28_output_sync_blk[4]);
    assign proc_28_data_FIFO_blk[5] = 1'b0;
    assign proc_28_data_PIPO_blk[5] = 1'b0;
    assign proc_28_start_FIFO_blk[5] = 1'b0;
    assign proc_28_TLF_FIFO_blk[5] = 1'b0;
    assign proc_28_input_sync_blk[5] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_28_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_28[5] = dl_detect_out ? proc_dep_vld_vec_28_reg[5] : (proc_28_data_FIFO_blk[5] | proc_28_data_PIPO_blk[5] | proc_28_start_FIFO_blk[5] | proc_28_TLF_FIFO_blk[5] | proc_28_input_sync_blk[5] | proc_28_output_sync_blk[5]);
    assign proc_28_data_FIFO_blk[6] = 1'b0;
    assign proc_28_data_PIPO_blk[6] = 1'b0;
    assign proc_28_start_FIFO_blk[6] = 1'b0;
    assign proc_28_TLF_FIFO_blk[6] = 1'b0;
    assign proc_28_input_sync_blk[6] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready);
    assign proc_28_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_28[6] = dl_detect_out ? proc_dep_vld_vec_28_reg[6] : (proc_28_data_FIFO_blk[6] | proc_28_data_PIPO_blk[6] | proc_28_start_FIFO_blk[6] | proc_28_TLF_FIFO_blk[6] | proc_28_input_sync_blk[6] | proc_28_output_sync_blk[6]);
    assign proc_28_data_FIFO_blk[7] = 1'b0;
    assign proc_28_data_PIPO_blk[7] = 1'b0;
    assign proc_28_start_FIFO_blk[7] = 1'b0;
    assign proc_28_TLF_FIFO_blk[7] = 1'b0;
    assign proc_28_input_sync_blk[7] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready);
    assign proc_28_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_28[7] = dl_detect_out ? proc_dep_vld_vec_28_reg[7] : (proc_28_data_FIFO_blk[7] | proc_28_data_PIPO_blk[7] | proc_28_start_FIFO_blk[7] | proc_28_TLF_FIFO_blk[7] | proc_28_input_sync_blk[7] | proc_28_output_sync_blk[7]);
    assign proc_28_data_FIFO_blk[8] = 1'b0;
    assign proc_28_data_PIPO_blk[8] = 1'b0;
    assign proc_28_start_FIFO_blk[8] = 1'b0;
    assign proc_28_TLF_FIFO_blk[8] = 1'b0;
    assign proc_28_input_sync_blk[8] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready);
    assign proc_28_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_28[8] = dl_detect_out ? proc_dep_vld_vec_28_reg[8] : (proc_28_data_FIFO_blk[8] | proc_28_data_PIPO_blk[8] | proc_28_start_FIFO_blk[8] | proc_28_TLF_FIFO_blk[8] | proc_28_input_sync_blk[8] | proc_28_output_sync_blk[8]);
    assign proc_28_data_FIFO_blk[9] = 1'b0;
    assign proc_28_data_PIPO_blk[9] = 1'b0;
    assign proc_28_start_FIFO_blk[9] = 1'b0;
    assign proc_28_TLF_FIFO_blk[9] = 1'b0;
    assign proc_28_input_sync_blk[9] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready);
    assign proc_28_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_28[9] = dl_detect_out ? proc_dep_vld_vec_28_reg[9] : (proc_28_data_FIFO_blk[9] | proc_28_data_PIPO_blk[9] | proc_28_start_FIFO_blk[9] | proc_28_TLF_FIFO_blk[9] | proc_28_input_sync_blk[9] | proc_28_output_sync_blk[9]);
    assign proc_28_data_FIFO_blk[10] = 1'b0;
    assign proc_28_data_PIPO_blk[10] = 1'b0;
    assign proc_28_start_FIFO_blk[10] = 1'b0;
    assign proc_28_TLF_FIFO_blk[10] = 1'b0;
    assign proc_28_input_sync_blk[10] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready);
    assign proc_28_output_sync_blk[10] = 1'b0;
    assign proc_dep_vld_vec_28[10] = dl_detect_out ? proc_dep_vld_vec_28_reg[10] : (proc_28_data_FIFO_blk[10] | proc_28_data_PIPO_blk[10] | proc_28_start_FIFO_blk[10] | proc_28_TLF_FIFO_blk[10] | proc_28_input_sync_blk[10] | proc_28_output_sync_blk[10]);
    assign proc_28_data_FIFO_blk[11] = 1'b0;
    assign proc_28_data_PIPO_blk[11] = 1'b0;
    assign proc_28_start_FIFO_blk[11] = 1'b0;
    assign proc_28_TLF_FIFO_blk[11] = 1'b0;
    assign proc_28_input_sync_blk[11] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready);
    assign proc_28_output_sync_blk[11] = 1'b0;
    assign proc_dep_vld_vec_28[11] = dl_detect_out ? proc_dep_vld_vec_28_reg[11] : (proc_28_data_FIFO_blk[11] | proc_28_data_PIPO_blk[11] | proc_28_start_FIFO_blk[11] | proc_28_TLF_FIFO_blk[11] | proc_28_input_sync_blk[11] | proc_28_output_sync_blk[11]);
    assign proc_28_data_FIFO_blk[12] = 1'b0;
    assign proc_28_data_PIPO_blk[12] = 1'b0;
    assign proc_28_start_FIFO_blk[12] = 1'b0;
    assign proc_28_TLF_FIFO_blk[12] = 1'b0;
    assign proc_28_input_sync_blk[12] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready);
    assign proc_28_output_sync_blk[12] = 1'b0;
    assign proc_dep_vld_vec_28[12] = dl_detect_out ? proc_dep_vld_vec_28_reg[12] : (proc_28_data_FIFO_blk[12] | proc_28_data_PIPO_blk[12] | proc_28_start_FIFO_blk[12] | proc_28_TLF_FIFO_blk[12] | proc_28_input_sync_blk[12] | proc_28_output_sync_blk[12]);
    assign proc_28_data_FIFO_blk[13] = 1'b0;
    assign proc_28_data_PIPO_blk[13] = 1'b0;
    assign proc_28_start_FIFO_blk[13] = 1'b0;
    assign proc_28_TLF_FIFO_blk[13] = 1'b0;
    assign proc_28_input_sync_blk[13] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready);
    assign proc_28_output_sync_blk[13] = 1'b0;
    assign proc_dep_vld_vec_28[13] = dl_detect_out ? proc_dep_vld_vec_28_reg[13] : (proc_28_data_FIFO_blk[13] | proc_28_data_PIPO_blk[13] | proc_28_start_FIFO_blk[13] | proc_28_TLF_FIFO_blk[13] | proc_28_input_sync_blk[13] | proc_28_output_sync_blk[13]);
    assign proc_28_data_FIFO_blk[14] = 1'b0;
    assign proc_28_data_PIPO_blk[14] = 1'b0;
    assign proc_28_start_FIFO_blk[14] = 1'b0;
    assign proc_28_TLF_FIFO_blk[14] = 1'b0;
    assign proc_28_input_sync_blk[14] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready);
    assign proc_28_output_sync_blk[14] = 1'b0;
    assign proc_dep_vld_vec_28[14] = dl_detect_out ? proc_dep_vld_vec_28_reg[14] : (proc_28_data_FIFO_blk[14] | proc_28_data_PIPO_blk[14] | proc_28_start_FIFO_blk[14] | proc_28_TLF_FIFO_blk[14] | proc_28_input_sync_blk[14] | proc_28_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_28_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_28_reg <= proc_dep_vld_vec_28;
        end
    end
    assign in_chan_dep_vld_vec_28[0] = dep_chan_vld_0_28;
    assign in_chan_dep_data_vec_28[43 : 0] = dep_chan_data_0_28;
    assign token_in_vec_28[0] = token_0_28;
    assign in_chan_dep_vld_vec_28[1] = dep_chan_vld_1_28;
    assign in_chan_dep_data_vec_28[87 : 44] = dep_chan_data_1_28;
    assign token_in_vec_28[1] = token_1_28;
    assign in_chan_dep_vld_vec_28[2] = dep_chan_vld_5_28;
    assign in_chan_dep_data_vec_28[131 : 88] = dep_chan_data_5_28;
    assign token_in_vec_28[2] = token_5_28;
    assign in_chan_dep_vld_vec_28[3] = dep_chan_vld_6_28;
    assign in_chan_dep_data_vec_28[175 : 132] = dep_chan_data_6_28;
    assign token_in_vec_28[3] = token_6_28;
    assign in_chan_dep_vld_vec_28[4] = dep_chan_vld_11_28;
    assign in_chan_dep_data_vec_28[219 : 176] = dep_chan_data_11_28;
    assign token_in_vec_28[4] = token_11_28;
    assign in_chan_dep_vld_vec_28[5] = dep_chan_vld_16_28;
    assign in_chan_dep_data_vec_28[263 : 220] = dep_chan_data_16_28;
    assign token_in_vec_28[5] = token_16_28;
    assign in_chan_dep_vld_vec_28[6] = dep_chan_vld_17_28;
    assign in_chan_dep_data_vec_28[307 : 264] = dep_chan_data_17_28;
    assign token_in_vec_28[6] = token_17_28;
    assign in_chan_dep_vld_vec_28[7] = dep_chan_vld_19_28;
    assign in_chan_dep_data_vec_28[351 : 308] = dep_chan_data_19_28;
    assign token_in_vec_28[7] = token_19_28;
    assign in_chan_dep_vld_vec_28[8] = dep_chan_vld_22_28;
    assign in_chan_dep_data_vec_28[395 : 352] = dep_chan_data_22_28;
    assign token_in_vec_28[8] = token_22_28;
    assign in_chan_dep_vld_vec_28[9] = dep_chan_vld_23_28;
    assign in_chan_dep_data_vec_28[439 : 396] = dep_chan_data_23_28;
    assign token_in_vec_28[9] = token_23_28;
    assign in_chan_dep_vld_vec_28[10] = dep_chan_vld_29_28;
    assign in_chan_dep_data_vec_28[483 : 440] = dep_chan_data_29_28;
    assign token_in_vec_28[10] = token_29_28;
    assign in_chan_dep_vld_vec_28[11] = dep_chan_vld_31_28;
    assign in_chan_dep_data_vec_28[527 : 484] = dep_chan_data_31_28;
    assign token_in_vec_28[11] = token_31_28;
    assign in_chan_dep_vld_vec_28[12] = dep_chan_vld_33_28;
    assign in_chan_dep_data_vec_28[571 : 528] = dep_chan_data_33_28;
    assign token_in_vec_28[12] = token_33_28;
    assign in_chan_dep_vld_vec_28[13] = dep_chan_vld_36_28;
    assign in_chan_dep_data_vec_28[615 : 572] = dep_chan_data_36_28;
    assign token_in_vec_28[13] = token_36_28;
    assign in_chan_dep_vld_vec_28[14] = dep_chan_vld_39_28;
    assign in_chan_dep_data_vec_28[659 : 616] = dep_chan_data_39_28;
    assign token_in_vec_28[14] = token_39_28;
    assign in_chan_dep_vld_vec_28[15] = dep_chan_vld_42_28;
    assign in_chan_dep_data_vec_28[703 : 660] = dep_chan_data_42_28;
    assign token_in_vec_28[15] = token_42_28;
    assign dep_chan_vld_28_0 = out_chan_dep_vld_vec_28[0];
    assign dep_chan_data_28_0 = out_chan_dep_data_28;
    assign token_28_0 = token_out_vec_28[0];
    assign dep_chan_vld_28_1 = out_chan_dep_vld_vec_28[1];
    assign dep_chan_data_28_1 = out_chan_dep_data_28;
    assign token_28_1 = token_out_vec_28[1];
    assign dep_chan_vld_28_5 = out_chan_dep_vld_vec_28[2];
    assign dep_chan_data_28_5 = out_chan_dep_data_28;
    assign token_28_5 = token_out_vec_28[2];
    assign dep_chan_vld_28_6 = out_chan_dep_vld_vec_28[3];
    assign dep_chan_data_28_6 = out_chan_dep_data_28;
    assign token_28_6 = token_out_vec_28[3];
    assign dep_chan_vld_28_11 = out_chan_dep_vld_vec_28[4];
    assign dep_chan_data_28_11 = out_chan_dep_data_28;
    assign token_28_11 = token_out_vec_28[4];
    assign dep_chan_vld_28_16 = out_chan_dep_vld_vec_28[5];
    assign dep_chan_data_28_16 = out_chan_dep_data_28;
    assign token_28_16 = token_out_vec_28[5];
    assign dep_chan_vld_28_17 = out_chan_dep_vld_vec_28[6];
    assign dep_chan_data_28_17 = out_chan_dep_data_28;
    assign token_28_17 = token_out_vec_28[6];
    assign dep_chan_vld_28_19 = out_chan_dep_vld_vec_28[7];
    assign dep_chan_data_28_19 = out_chan_dep_data_28;
    assign token_28_19 = token_out_vec_28[7];
    assign dep_chan_vld_28_22 = out_chan_dep_vld_vec_28[8];
    assign dep_chan_data_28_22 = out_chan_dep_data_28;
    assign token_28_22 = token_out_vec_28[8];
    assign dep_chan_vld_28_23 = out_chan_dep_vld_vec_28[9];
    assign dep_chan_data_28_23 = out_chan_dep_data_28;
    assign token_28_23 = token_out_vec_28[9];
    assign dep_chan_vld_28_29 = out_chan_dep_vld_vec_28[10];
    assign dep_chan_data_28_29 = out_chan_dep_data_28;
    assign token_28_29 = token_out_vec_28[10];
    assign dep_chan_vld_28_33 = out_chan_dep_vld_vec_28[11];
    assign dep_chan_data_28_33 = out_chan_dep_data_28;
    assign token_28_33 = token_out_vec_28[11];
    assign dep_chan_vld_28_36 = out_chan_dep_vld_vec_28[12];
    assign dep_chan_data_28_36 = out_chan_dep_data_28;
    assign token_28_36 = token_out_vec_28[12];
    assign dep_chan_vld_28_39 = out_chan_dep_vld_vec_28[13];
    assign dep_chan_data_28_39 = out_chan_dep_data_28;
    assign token_28_39 = token_out_vec_28[13];
    assign dep_chan_vld_28_42 = out_chan_dep_vld_vec_28[14];
    assign dep_chan_data_28_42 = out_chan_dep_data_28;
    assign token_28_42 = token_out_vec_28[14];

    // Process: grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 29, 17, 17) BlackBoxJam_hls_deadlock_detect_unit_29 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_29),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_29),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_29),
        .token_in_vec(token_in_vec_29),
        .dl_detect_in(dl_detect_out),
        .origin(origin[29]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_29),
        .out_chan_dep_data(out_chan_dep_data_29),
        .token_out_vec(token_out_vec_29),
        .dl_detect_out(dl_in_vec[29]));

    assign proc_29_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52.convInp_1_blk_n);
    assign proc_29_data_PIPO_blk[0] = 1'b0;
    assign proc_29_start_FIFO_blk[0] = 1'b0;
    assign proc_29_TLF_FIFO_blk[0] = 1'b0;
    assign proc_29_input_sync_blk[0] = 1'b0;
    assign proc_29_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_29[0] = dl_detect_out ? proc_dep_vld_vec_29_reg[0] : (proc_29_data_FIFO_blk[0] | proc_29_data_PIPO_blk[0] | proc_29_start_FIFO_blk[0] | proc_29_TLF_FIFO_blk[0] | proc_29_input_sync_blk[0] | proc_29_output_sync_blk[0]);
    assign proc_29_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52.mvOut_m_buffer_6_blk_n);
    assign proc_29_data_PIPO_blk[1] = 1'b0;
    assign proc_29_start_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0_U.if_full_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_start & ~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.real_start & (trans_in_cnt_14 == trans_out_cnt_14) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0_U.if_read);
    assign proc_29_TLF_FIFO_blk[1] = 1'b0;
    assign proc_29_input_sync_blk[1] = 1'b0;
    assign proc_29_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_29[1] = dl_detect_out ? proc_dep_vld_vec_29_reg[1] : (proc_29_data_FIFO_blk[1] | proc_29_data_PIPO_blk[1] | proc_29_start_FIFO_blk[1] | proc_29_TLF_FIFO_blk[1] | proc_29_input_sync_blk[1] | proc_29_output_sync_blk[1]);
    assign proc_29_data_FIFO_blk[2] = 1'b0;
    assign proc_29_data_PIPO_blk[2] = 1'b0;
    assign proc_29_start_FIFO_blk[2] = 1'b0;
    assign proc_29_TLF_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.add_ln121_1_loc_channel_U.if_empty_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.add_ln121_1_loc_channel_U.if_write);
    assign proc_29_input_sync_blk[2] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_29_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_29[2] = dl_detect_out ? proc_dep_vld_vec_29_reg[2] : (proc_29_data_FIFO_blk[2] | proc_29_data_PIPO_blk[2] | proc_29_start_FIFO_blk[2] | proc_29_TLF_FIFO_blk[2] | proc_29_input_sync_blk[2] | proc_29_output_sync_blk[2]);
    assign proc_29_data_FIFO_blk[3] = 1'b0;
    assign proc_29_data_PIPO_blk[3] = 1'b0;
    assign proc_29_start_FIFO_blk[3] = 1'b0;
    assign proc_29_TLF_FIFO_blk[3] = 1'b0;
    assign proc_29_input_sync_blk[3] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready);
    assign proc_29_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_29[3] = dl_detect_out ? proc_dep_vld_vec_29_reg[3] : (proc_29_data_FIFO_blk[3] | proc_29_data_PIPO_blk[3] | proc_29_start_FIFO_blk[3] | proc_29_TLF_FIFO_blk[3] | proc_29_input_sync_blk[3] | proc_29_output_sync_blk[3]);
    assign proc_29_data_FIFO_blk[4] = 1'b0;
    assign proc_29_data_PIPO_blk[4] = 1'b0;
    assign proc_29_start_FIFO_blk[4] = 1'b0;
    assign proc_29_TLF_FIFO_blk[4] = 1'b0;
    assign proc_29_input_sync_blk[4] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready);
    assign proc_29_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_29[4] = dl_detect_out ? proc_dep_vld_vec_29_reg[4] : (proc_29_data_FIFO_blk[4] | proc_29_data_PIPO_blk[4] | proc_29_start_FIFO_blk[4] | proc_29_TLF_FIFO_blk[4] | proc_29_input_sync_blk[4] | proc_29_output_sync_blk[4]);
    assign proc_29_data_FIFO_blk[5] = 1'b0;
    assign proc_29_data_PIPO_blk[5] = 1'b0;
    assign proc_29_start_FIFO_blk[5] = 1'b0;
    assign proc_29_TLF_FIFO_blk[5] = 1'b0;
    assign proc_29_input_sync_blk[5] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready);
    assign proc_29_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_29[5] = dl_detect_out ? proc_dep_vld_vec_29_reg[5] : (proc_29_data_FIFO_blk[5] | proc_29_data_PIPO_blk[5] | proc_29_start_FIFO_blk[5] | proc_29_TLF_FIFO_blk[5] | proc_29_input_sync_blk[5] | proc_29_output_sync_blk[5]);
    assign proc_29_data_FIFO_blk[6] = 1'b0;
    assign proc_29_data_PIPO_blk[6] = 1'b0;
    assign proc_29_start_FIFO_blk[6] = 1'b0;
    assign proc_29_TLF_FIFO_blk[6] = 1'b0;
    assign proc_29_input_sync_blk[6] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready);
    assign proc_29_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_29[6] = dl_detect_out ? proc_dep_vld_vec_29_reg[6] : (proc_29_data_FIFO_blk[6] | proc_29_data_PIPO_blk[6] | proc_29_start_FIFO_blk[6] | proc_29_TLF_FIFO_blk[6] | proc_29_input_sync_blk[6] | proc_29_output_sync_blk[6]);
    assign proc_29_data_FIFO_blk[7] = 1'b0;
    assign proc_29_data_PIPO_blk[7] = 1'b0;
    assign proc_29_start_FIFO_blk[7] = 1'b0;
    assign proc_29_TLF_FIFO_blk[7] = 1'b0;
    assign proc_29_input_sync_blk[7] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready);
    assign proc_29_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_29[7] = dl_detect_out ? proc_dep_vld_vec_29_reg[7] : (proc_29_data_FIFO_blk[7] | proc_29_data_PIPO_blk[7] | proc_29_start_FIFO_blk[7] | proc_29_TLF_FIFO_blk[7] | proc_29_input_sync_blk[7] | proc_29_output_sync_blk[7]);
    assign proc_29_data_FIFO_blk[8] = 1'b0;
    assign proc_29_data_PIPO_blk[8] = 1'b0;
    assign proc_29_start_FIFO_blk[8] = 1'b0;
    assign proc_29_TLF_FIFO_blk[8] = 1'b0;
    assign proc_29_input_sync_blk[8] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_29_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_29[8] = dl_detect_out ? proc_dep_vld_vec_29_reg[8] : (proc_29_data_FIFO_blk[8] | proc_29_data_PIPO_blk[8] | proc_29_start_FIFO_blk[8] | proc_29_TLF_FIFO_blk[8] | proc_29_input_sync_blk[8] | proc_29_output_sync_blk[8]);
    assign proc_29_data_FIFO_blk[9] = 1'b0;
    assign proc_29_data_PIPO_blk[9] = 1'b0;
    assign proc_29_start_FIFO_blk[9] = 1'b0;
    assign proc_29_TLF_FIFO_blk[9] = 1'b0;
    assign proc_29_input_sync_blk[9] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready);
    assign proc_29_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_29[9] = dl_detect_out ? proc_dep_vld_vec_29_reg[9] : (proc_29_data_FIFO_blk[9] | proc_29_data_PIPO_blk[9] | proc_29_start_FIFO_blk[9] | proc_29_TLF_FIFO_blk[9] | proc_29_input_sync_blk[9] | proc_29_output_sync_blk[9]);
    assign proc_29_data_FIFO_blk[10] = 1'b0;
    assign proc_29_data_PIPO_blk[10] = 1'b0;
    assign proc_29_start_FIFO_blk[10] = 1'b0;
    assign proc_29_TLF_FIFO_blk[10] = 1'b0;
    assign proc_29_input_sync_blk[10] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready);
    assign proc_29_output_sync_blk[10] = 1'b0;
    assign proc_dep_vld_vec_29[10] = dl_detect_out ? proc_dep_vld_vec_29_reg[10] : (proc_29_data_FIFO_blk[10] | proc_29_data_PIPO_blk[10] | proc_29_start_FIFO_blk[10] | proc_29_TLF_FIFO_blk[10] | proc_29_input_sync_blk[10] | proc_29_output_sync_blk[10]);
    assign proc_29_data_FIFO_blk[11] = 1'b0;
    assign proc_29_data_PIPO_blk[11] = 1'b0;
    assign proc_29_start_FIFO_blk[11] = 1'b0;
    assign proc_29_TLF_FIFO_blk[11] = 1'b0;
    assign proc_29_input_sync_blk[11] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready);
    assign proc_29_output_sync_blk[11] = 1'b0;
    assign proc_dep_vld_vec_29[11] = dl_detect_out ? proc_dep_vld_vec_29_reg[11] : (proc_29_data_FIFO_blk[11] | proc_29_data_PIPO_blk[11] | proc_29_start_FIFO_blk[11] | proc_29_TLF_FIFO_blk[11] | proc_29_input_sync_blk[11] | proc_29_output_sync_blk[11]);
    assign proc_29_data_FIFO_blk[12] = 1'b0;
    assign proc_29_data_PIPO_blk[12] = 1'b0;
    assign proc_29_start_FIFO_blk[12] = 1'b0;
    assign proc_29_TLF_FIFO_blk[12] = 1'b0;
    assign proc_29_input_sync_blk[12] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready);
    assign proc_29_output_sync_blk[12] = 1'b0;
    assign proc_dep_vld_vec_29[12] = dl_detect_out ? proc_dep_vld_vec_29_reg[12] : (proc_29_data_FIFO_blk[12] | proc_29_data_PIPO_blk[12] | proc_29_start_FIFO_blk[12] | proc_29_TLF_FIFO_blk[12] | proc_29_input_sync_blk[12] | proc_29_output_sync_blk[12]);
    assign proc_29_data_FIFO_blk[13] = 1'b0;
    assign proc_29_data_PIPO_blk[13] = 1'b0;
    assign proc_29_start_FIFO_blk[13] = 1'b0;
    assign proc_29_TLF_FIFO_blk[13] = 1'b0;
    assign proc_29_input_sync_blk[13] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready);
    assign proc_29_output_sync_blk[13] = 1'b0;
    assign proc_dep_vld_vec_29[13] = dl_detect_out ? proc_dep_vld_vec_29_reg[13] : (proc_29_data_FIFO_blk[13] | proc_29_data_PIPO_blk[13] | proc_29_start_FIFO_blk[13] | proc_29_TLF_FIFO_blk[13] | proc_29_input_sync_blk[13] | proc_29_output_sync_blk[13]);
    assign proc_29_data_FIFO_blk[14] = 1'b0;
    assign proc_29_data_PIPO_blk[14] = 1'b0;
    assign proc_29_start_FIFO_blk[14] = 1'b0;
    assign proc_29_TLF_FIFO_blk[14] = 1'b0;
    assign proc_29_input_sync_blk[14] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready);
    assign proc_29_output_sync_blk[14] = 1'b0;
    assign proc_dep_vld_vec_29[14] = dl_detect_out ? proc_dep_vld_vec_29_reg[14] : (proc_29_data_FIFO_blk[14] | proc_29_data_PIPO_blk[14] | proc_29_start_FIFO_blk[14] | proc_29_TLF_FIFO_blk[14] | proc_29_input_sync_blk[14] | proc_29_output_sync_blk[14]);
    assign proc_29_data_FIFO_blk[15] = 1'b0;
    assign proc_29_data_PIPO_blk[15] = 1'b0;
    assign proc_29_start_FIFO_blk[15] = 1'b0;
    assign proc_29_TLF_FIFO_blk[15] = 1'b0;
    assign proc_29_input_sync_blk[15] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready);
    assign proc_29_output_sync_blk[15] = 1'b0;
    assign proc_dep_vld_vec_29[15] = dl_detect_out ? proc_dep_vld_vec_29_reg[15] : (proc_29_data_FIFO_blk[15] | proc_29_data_PIPO_blk[15] | proc_29_start_FIFO_blk[15] | proc_29_TLF_FIFO_blk[15] | proc_29_input_sync_blk[15] | proc_29_output_sync_blk[15]);
    assign proc_29_data_FIFO_blk[16] = 1'b0;
    assign proc_29_data_PIPO_blk[16] = 1'b0;
    assign proc_29_start_FIFO_blk[16] = 1'b0;
    assign proc_29_TLF_FIFO_blk[16] = 1'b0;
    assign proc_29_input_sync_blk[16] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready);
    assign proc_29_output_sync_blk[16] = 1'b0;
    assign proc_dep_vld_vec_29[16] = dl_detect_out ? proc_dep_vld_vec_29_reg[16] : (proc_29_data_FIFO_blk[16] | proc_29_data_PIPO_blk[16] | proc_29_start_FIFO_blk[16] | proc_29_TLF_FIFO_blk[16] | proc_29_input_sync_blk[16] | proc_29_output_sync_blk[16]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_29_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_29_reg <= proc_dep_vld_vec_29;
        end
    end
    assign in_chan_dep_vld_vec_29[0] = dep_chan_vld_0_29;
    assign in_chan_dep_data_vec_29[43 : 0] = dep_chan_data_0_29;
    assign token_in_vec_29[0] = token_0_29;
    assign in_chan_dep_vld_vec_29[1] = dep_chan_vld_1_29;
    assign in_chan_dep_data_vec_29[87 : 44] = dep_chan_data_1_29;
    assign token_in_vec_29[1] = token_1_29;
    assign in_chan_dep_vld_vec_29[2] = dep_chan_vld_5_29;
    assign in_chan_dep_data_vec_29[131 : 88] = dep_chan_data_5_29;
    assign token_in_vec_29[2] = token_5_29;
    assign in_chan_dep_vld_vec_29[3] = dep_chan_vld_6_29;
    assign in_chan_dep_data_vec_29[175 : 132] = dep_chan_data_6_29;
    assign token_in_vec_29[3] = token_6_29;
    assign in_chan_dep_vld_vec_29[4] = dep_chan_vld_11_29;
    assign in_chan_dep_data_vec_29[219 : 176] = dep_chan_data_11_29;
    assign token_in_vec_29[4] = token_11_29;
    assign in_chan_dep_vld_vec_29[5] = dep_chan_vld_16_29;
    assign in_chan_dep_data_vec_29[263 : 220] = dep_chan_data_16_29;
    assign token_in_vec_29[5] = token_16_29;
    assign in_chan_dep_vld_vec_29[6] = dep_chan_vld_17_29;
    assign in_chan_dep_data_vec_29[307 : 264] = dep_chan_data_17_29;
    assign token_in_vec_29[6] = token_17_29;
    assign in_chan_dep_vld_vec_29[7] = dep_chan_vld_19_29;
    assign in_chan_dep_data_vec_29[351 : 308] = dep_chan_data_19_29;
    assign token_in_vec_29[7] = token_19_29;
    assign in_chan_dep_vld_vec_29[8] = dep_chan_vld_22_29;
    assign in_chan_dep_data_vec_29[395 : 352] = dep_chan_data_22_29;
    assign token_in_vec_29[8] = token_22_29;
    assign in_chan_dep_vld_vec_29[9] = dep_chan_vld_23_29;
    assign in_chan_dep_data_vec_29[439 : 396] = dep_chan_data_23_29;
    assign token_in_vec_29[9] = token_23_29;
    assign in_chan_dep_vld_vec_29[10] = dep_chan_vld_27_29;
    assign in_chan_dep_data_vec_29[483 : 440] = dep_chan_data_27_29;
    assign token_in_vec_29[10] = token_27_29;
    assign in_chan_dep_vld_vec_29[11] = dep_chan_vld_28_29;
    assign in_chan_dep_data_vec_29[527 : 484] = dep_chan_data_28_29;
    assign token_in_vec_29[11] = token_28_29;
    assign in_chan_dep_vld_vec_29[12] = dep_chan_vld_30_29;
    assign in_chan_dep_data_vec_29[571 : 528] = dep_chan_data_30_29;
    assign token_in_vec_29[12] = token_30_29;
    assign in_chan_dep_vld_vec_29[13] = dep_chan_vld_33_29;
    assign in_chan_dep_data_vec_29[615 : 572] = dep_chan_data_33_29;
    assign token_in_vec_29[13] = token_33_29;
    assign in_chan_dep_vld_vec_29[14] = dep_chan_vld_36_29;
    assign in_chan_dep_data_vec_29[659 : 616] = dep_chan_data_36_29;
    assign token_in_vec_29[14] = token_36_29;
    assign in_chan_dep_vld_vec_29[15] = dep_chan_vld_39_29;
    assign in_chan_dep_data_vec_29[703 : 660] = dep_chan_data_39_29;
    assign token_in_vec_29[15] = token_39_29;
    assign in_chan_dep_vld_vec_29[16] = dep_chan_vld_42_29;
    assign in_chan_dep_data_vec_29[747 : 704] = dep_chan_data_42_29;
    assign token_in_vec_29[16] = token_42_29;
    assign dep_chan_vld_29_27 = out_chan_dep_vld_vec_29[0];
    assign dep_chan_data_29_27 = out_chan_dep_data_29;
    assign token_29_27 = token_out_vec_29[0];
    assign dep_chan_vld_29_30 = out_chan_dep_vld_vec_29[1];
    assign dep_chan_data_29_30 = out_chan_dep_data_29;
    assign token_29_30 = token_out_vec_29[1];
    assign dep_chan_vld_29_28 = out_chan_dep_vld_vec_29[2];
    assign dep_chan_data_29_28 = out_chan_dep_data_29;
    assign token_29_28 = token_out_vec_29[2];
    assign dep_chan_vld_29_0 = out_chan_dep_vld_vec_29[3];
    assign dep_chan_data_29_0 = out_chan_dep_data_29;
    assign token_29_0 = token_out_vec_29[3];
    assign dep_chan_vld_29_1 = out_chan_dep_vld_vec_29[4];
    assign dep_chan_data_29_1 = out_chan_dep_data_29;
    assign token_29_1 = token_out_vec_29[4];
    assign dep_chan_vld_29_5 = out_chan_dep_vld_vec_29[5];
    assign dep_chan_data_29_5 = out_chan_dep_data_29;
    assign token_29_5 = token_out_vec_29[5];
    assign dep_chan_vld_29_6 = out_chan_dep_vld_vec_29[6];
    assign dep_chan_data_29_6 = out_chan_dep_data_29;
    assign token_29_6 = token_out_vec_29[6];
    assign dep_chan_vld_29_11 = out_chan_dep_vld_vec_29[7];
    assign dep_chan_data_29_11 = out_chan_dep_data_29;
    assign token_29_11 = token_out_vec_29[7];
    assign dep_chan_vld_29_16 = out_chan_dep_vld_vec_29[8];
    assign dep_chan_data_29_16 = out_chan_dep_data_29;
    assign token_29_16 = token_out_vec_29[8];
    assign dep_chan_vld_29_17 = out_chan_dep_vld_vec_29[9];
    assign dep_chan_data_29_17 = out_chan_dep_data_29;
    assign token_29_17 = token_out_vec_29[9];
    assign dep_chan_vld_29_19 = out_chan_dep_vld_vec_29[10];
    assign dep_chan_data_29_19 = out_chan_dep_data_29;
    assign token_29_19 = token_out_vec_29[10];
    assign dep_chan_vld_29_22 = out_chan_dep_vld_vec_29[11];
    assign dep_chan_data_29_22 = out_chan_dep_data_29;
    assign token_29_22 = token_out_vec_29[11];
    assign dep_chan_vld_29_23 = out_chan_dep_vld_vec_29[12];
    assign dep_chan_data_29_23 = out_chan_dep_data_29;
    assign token_29_23 = token_out_vec_29[12];
    assign dep_chan_vld_29_33 = out_chan_dep_vld_vec_29[13];
    assign dep_chan_data_29_33 = out_chan_dep_data_29;
    assign token_29_33 = token_out_vec_29[13];
    assign dep_chan_vld_29_36 = out_chan_dep_vld_vec_29[14];
    assign dep_chan_data_29_36 = out_chan_dep_data_29;
    assign token_29_36 = token_out_vec_29[14];
    assign dep_chan_vld_29_39 = out_chan_dep_vld_vec_29[15];
    assign dep_chan_data_29_39 = out_chan_dep_data_29;
    assign token_29_39 = token_out_vec_29[15];
    assign dep_chan_vld_29_42 = out_chan_dep_vld_vec_29[16];
    assign dep_chan_data_29_42 = out_chan_dep_data_29;
    assign token_29_42 = token_out_vec_29[16];

    // Process: grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 30, 3, 3) BlackBoxJam_hls_deadlock_detect_unit_30 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_30),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_30),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_30),
        .token_in_vec(token_in_vec_30),
        .dl_detect_in(dl_detect_out),
        .origin(origin[30]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_30),
        .out_chan_dep_data(out_chan_dep_data_30),
        .token_out_vec(token_out_vec_30),
        .dl_detect_out(dl_in_vec[30]));

    assign proc_30_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0.totalIters_11_loc_blk_n);
    assign proc_30_data_PIPO_blk[0] = 1'b0;
    assign proc_30_start_FIFO_blk[0] = 1'b0;
    assign proc_30_TLF_FIFO_blk[0] = 1'b0;
    assign proc_30_input_sync_blk[0] = 1'b0;
    assign proc_30_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_30[0] = dl_detect_out ? proc_dep_vld_vec_30_reg[0] : (proc_30_data_FIFO_blk[0] | proc_30_data_PIPO_blk[0] | proc_30_start_FIFO_blk[0] | proc_30_TLF_FIFO_blk[0] | proc_30_input_sync_blk[0] | proc_30_output_sync_blk[0]);
    assign proc_30_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc11_Pipeline_VITIS_LOOP_300_3_fu_38.mvOut_m_buffer_6_blk_n);
    assign proc_30_data_PIPO_blk[1] = 1'b0;
    assign proc_30_start_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0_U.if_write);
    assign proc_30_TLF_FIFO_blk[1] = 1'b0;
    assign proc_30_input_sync_blk[1] = 1'b0;
    assign proc_30_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_30[1] = dl_detect_out ? proc_dep_vld_vec_30_reg[1] : (proc_30_data_FIFO_blk[1] | proc_30_data_PIPO_blk[1] | proc_30_start_FIFO_blk[1] | proc_30_TLF_FIFO_blk[1] | proc_30_input_sync_blk[1] | proc_30_output_sync_blk[1]);
    assign proc_30_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc11_Pipeline_VITIS_LOOP_300_3_fu_38.inter7_blk_n);
    assign proc_30_data_PIPO_blk[2] = 1'b0;
    assign proc_30_start_FIFO_blk[2] = 1'b0;
    assign proc_30_TLF_FIFO_blk[2] = 1'b0;
    assign proc_30_input_sync_blk[2] = 1'b0;
    assign proc_30_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_30[2] = dl_detect_out ? proc_dep_vld_vec_30_reg[2] : (proc_30_data_FIFO_blk[2] | proc_30_data_PIPO_blk[2] | proc_30_start_FIFO_blk[2] | proc_30_TLF_FIFO_blk[2] | proc_30_input_sync_blk[2] | proc_30_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_30_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_30_reg <= proc_dep_vld_vec_30;
        end
    end
    assign in_chan_dep_vld_vec_30[0] = dep_chan_vld_20_30;
    assign in_chan_dep_data_vec_30[43 : 0] = dep_chan_data_20_30;
    assign token_in_vec_30[0] = token_20_30;
    assign in_chan_dep_vld_vec_30[1] = dep_chan_vld_29_30;
    assign in_chan_dep_data_vec_30[87 : 44] = dep_chan_data_29_30;
    assign token_in_vec_30[1] = token_29_30;
    assign in_chan_dep_vld_vec_30[2] = dep_chan_vld_31_30;
    assign in_chan_dep_data_vec_30[131 : 88] = dep_chan_data_31_30;
    assign token_in_vec_30[2] = token_31_30;
    assign dep_chan_vld_30_20 = out_chan_dep_vld_vec_30[0];
    assign dep_chan_data_30_20 = out_chan_dep_data_30;
    assign token_30_20 = token_out_vec_30[0];
    assign dep_chan_vld_30_29 = out_chan_dep_vld_vec_30[1];
    assign dep_chan_data_30_29 = out_chan_dep_data_30;
    assign token_30_29 = token_out_vec_30[1];
    assign dep_chan_vld_30_31 = out_chan_dep_vld_vec_30[2];
    assign dep_chan_data_30_31 = out_chan_dep_data_30;
    assign token_30_31 = token_out_vec_30[2];

    // Process: grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 31, 3, 5) BlackBoxJam_hls_deadlock_detect_unit_31 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_31),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_31),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_31),
        .token_in_vec(token_in_vec_31),
        .dl_detect_in(dl_detect_out),
        .origin(origin[31]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_31),
        .out_chan_dep_data(out_chan_dep_data_31),
        .token_out_vec(token_out_vec_31),
        .dl_detect_out(dl_in_vec[31]));

    assign proc_31_data_FIFO_blk[0] = 1'b0;
    assign proc_31_data_PIPO_blk[0] = 1'b0;
    assign proc_31_start_FIFO_blk[0] = 1'b0;
    assign proc_31_TLF_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.totalIters_10_loc_c137_channel_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.ap_idle & ~grp_DoCompute_fu_2926.totalIters_10_loc_c137_channel_U.if_write);
    assign proc_31_input_sync_blk[0] = 1'b0;
    assign proc_31_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_31[0] = dl_detect_out ? proc_dep_vld_vec_31_reg[0] : (proc_31_data_FIFO_blk[0] | proc_31_data_PIPO_blk[0] | proc_31_start_FIFO_blk[0] | proc_31_TLF_FIFO_blk[0] | proc_31_input_sync_blk[0] | proc_31_output_sync_blk[0]);
    assign proc_31_data_FIFO_blk[1] = 1'b0;
    assign proc_31_data_PIPO_blk[1] = 1'b0;
    assign proc_31_start_FIFO_blk[1] = 1'b0;
    assign proc_31_TLF_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.shl_ln121_2_loc_channel_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.ap_idle & ~grp_DoCompute_fu_2926.shl_ln121_2_loc_channel_U.if_write);
    assign proc_31_input_sync_blk[1] = 1'b0;
    assign proc_31_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_31[1] = dl_detect_out ? proc_dep_vld_vec_31_reg[1] : (proc_31_data_FIFO_blk[1] | proc_31_data_PIPO_blk[1] | proc_31_start_FIFO_blk[1] | proc_31_TLF_FIFO_blk[1] | proc_31_input_sync_blk[1] | proc_31_output_sync_blk[1]);
    assign proc_31_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc13_Pipeline_VITIS_LOOP_268_1_fu_58.wa_in_8_blk_n);
    assign proc_31_data_PIPO_blk[2] = 1'b0;
    assign proc_31_start_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.real_start & (trans_in_cnt_15 == trans_out_cnt_15) & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0_U.if_read);
    assign proc_31_TLF_FIFO_blk[2] = 1'b0;
    assign proc_31_input_sync_blk[2] = 1'b0;
    assign proc_31_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_31[2] = dl_detect_out ? proc_dep_vld_vec_31_reg[2] : (proc_31_data_FIFO_blk[2] | proc_31_data_PIPO_blk[2] | proc_31_start_FIFO_blk[2] | proc_31_TLF_FIFO_blk[2] | proc_31_input_sync_blk[2] | proc_31_output_sync_blk[2]);
    assign proc_31_data_FIFO_blk[3] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc13_Pipeline_VITIS_LOOP_268_1_fu_58.inter7_blk_n);
    assign proc_31_data_PIPO_blk[3] = 1'b0;
    assign proc_31_start_FIFO_blk[3] = 1'b0;
    assign proc_31_TLF_FIFO_blk[3] = 1'b0;
    assign proc_31_input_sync_blk[3] = 1'b0;
    assign proc_31_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_31[3] = dl_detect_out ? proc_dep_vld_vec_31_reg[3] : (proc_31_data_FIFO_blk[3] | proc_31_data_PIPO_blk[3] | proc_31_start_FIFO_blk[3] | proc_31_TLF_FIFO_blk[3] | proc_31_input_sync_blk[3] | proc_31_output_sync_blk[3]);
    assign proc_31_data_FIFO_blk[4] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.totalIters_10_loc_c136_blk_n);
    assign proc_31_data_PIPO_blk[4] = 1'b0;
    assign proc_31_start_FIFO_blk[4] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.real_start & (trans_in_cnt_15 == trans_out_cnt_15) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0_U.if_read);
    assign proc_31_TLF_FIFO_blk[4] = 1'b0;
    assign proc_31_input_sync_blk[4] = 1'b0;
    assign proc_31_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_31[4] = dl_detect_out ? proc_dep_vld_vec_31_reg[4] : (proc_31_data_FIFO_blk[4] | proc_31_data_PIPO_blk[4] | proc_31_start_FIFO_blk[4] | proc_31_TLF_FIFO_blk[4] | proc_31_input_sync_blk[4] | proc_31_output_sync_blk[4]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_31_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_31_reg <= proc_dep_vld_vec_31;
        end
    end
    assign in_chan_dep_vld_vec_31[0] = dep_chan_vld_30_31;
    assign in_chan_dep_data_vec_31[43 : 0] = dep_chan_data_30_31;
    assign token_in_vec_31[0] = token_30_31;
    assign in_chan_dep_vld_vec_31[1] = dep_chan_vld_32_31;
    assign in_chan_dep_data_vec_31[87 : 44] = dep_chan_data_32_31;
    assign token_in_vec_31[1] = token_32_31;
    assign in_chan_dep_vld_vec_31[2] = dep_chan_vld_35_31;
    assign in_chan_dep_data_vec_31[131 : 88] = dep_chan_data_35_31;
    assign token_in_vec_31[2] = token_35_31;
    assign dep_chan_vld_31_19 = out_chan_dep_vld_vec_31[0];
    assign dep_chan_data_31_19 = out_chan_dep_data_31;
    assign token_31_19 = token_out_vec_31[0];
    assign dep_chan_vld_31_28 = out_chan_dep_vld_vec_31[1];
    assign dep_chan_data_31_28 = out_chan_dep_data_31;
    assign token_31_28 = token_out_vec_31[1];
    assign dep_chan_vld_31_32 = out_chan_dep_vld_vec_31[2];
    assign dep_chan_data_31_32 = out_chan_dep_data_31;
    assign token_31_32 = token_out_vec_31[2];
    assign dep_chan_vld_31_30 = out_chan_dep_vld_vec_31[3];
    assign dep_chan_data_31_30 = out_chan_dep_data_31;
    assign token_31_30 = token_out_vec_31[3];
    assign dep_chan_vld_31_35 = out_chan_dep_vld_vec_31[4];
    assign dep_chan_data_31_35 = out_chan_dep_data_31;
    assign token_31_35 = token_out_vec_31[4];

    // Process: grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 32, 3, 3) BlackBoxJam_hls_deadlock_detect_unit_32 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_32),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_32),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_32),
        .token_in_vec(token_in_vec_32),
        .dl_detect_in(dl_detect_out),
        .origin(origin[32]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_32),
        .out_chan_dep_data(out_chan_dep_data_32),
        .token_out_vec(token_out_vec_32),
        .dl_detect_out(dl_in_vec[32]));

    assign proc_32_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58.wa_in_i2910_blk_n);
    assign proc_32_data_PIPO_blk[0] = 1'b0;
    assign proc_32_start_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0_U.if_empty_n & grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0_U.if_write);
    assign proc_32_TLF_FIFO_blk[0] = 1'b0;
    assign proc_32_input_sync_blk[0] = 1'b0;
    assign proc_32_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_32[0] = dl_detect_out ? proc_dep_vld_vec_32_reg[0] : (proc_32_data_FIFO_blk[0] | proc_32_data_PIPO_blk[0] | proc_32_start_FIFO_blk[0] | proc_32_TLF_FIFO_blk[0] | proc_32_input_sync_blk[0] | proc_32_output_sync_blk[0]);
    assign proc_32_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58.convInp_i31_blk_n) | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.numReps_c144_blk_n);
    assign proc_32_data_PIPO_blk[1] = 1'b0;
    assign proc_32_start_FIFO_blk[1] = 1'b0;
    assign proc_32_TLF_FIFO_blk[1] = 1'b0;
    assign proc_32_input_sync_blk[1] = 1'b0;
    assign proc_32_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_32[1] = dl_detect_out ? proc_dep_vld_vec_32_reg[1] : (proc_32_data_FIFO_blk[1] | proc_32_data_PIPO_blk[1] | proc_32_start_FIFO_blk[1] | proc_32_TLF_FIFO_blk[1] | proc_32_input_sync_blk[1] | proc_32_output_sync_blk[1]);
    assign proc_32_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.numReps_blk_n);
    assign proc_32_data_PIPO_blk[2] = 1'b0;
    assign proc_32_start_FIFO_blk[2] = 1'b0;
    assign proc_32_TLF_FIFO_blk[2] = 1'b0;
    assign proc_32_input_sync_blk[2] = 1'b0;
    assign proc_32_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_32[2] = dl_detect_out ? proc_dep_vld_vec_32_reg[2] : (proc_32_data_FIFO_blk[2] | proc_32_data_PIPO_blk[2] | proc_32_start_FIFO_blk[2] | proc_32_TLF_FIFO_blk[2] | proc_32_input_sync_blk[2] | proc_32_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_32_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_32_reg <= proc_dep_vld_vec_32;
        end
    end
    assign in_chan_dep_vld_vec_32[0] = dep_chan_vld_27_32;
    assign in_chan_dep_data_vec_32[43 : 0] = dep_chan_data_27_32;
    assign token_in_vec_32[0] = token_27_32;
    assign in_chan_dep_vld_vec_32[1] = dep_chan_vld_31_32;
    assign in_chan_dep_data_vec_32[87 : 44] = dep_chan_data_31_32;
    assign token_in_vec_32[1] = token_31_32;
    assign in_chan_dep_vld_vec_32[2] = dep_chan_vld_33_32;
    assign in_chan_dep_data_vec_32[131 : 88] = dep_chan_data_33_32;
    assign token_in_vec_32[2] = token_33_32;
    assign dep_chan_vld_32_31 = out_chan_dep_vld_vec_32[0];
    assign dep_chan_data_32_31 = out_chan_dep_data_32;
    assign token_32_31 = token_out_vec_32[0];
    assign dep_chan_vld_32_33 = out_chan_dep_vld_vec_32[1];
    assign dep_chan_data_32_33 = out_chan_dep_data_32;
    assign token_32_33 = token_out_vec_32[1];
    assign dep_chan_vld_32_27 = out_chan_dep_vld_vec_32[2];
    assign dep_chan_data_32_27 = out_chan_dep_data_32;
    assign token_32_27 = token_out_vec_32[2];

    // Process: grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 33, 17, 17) BlackBoxJam_hls_deadlock_detect_unit_33 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_33),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_33),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_33),
        .token_in_vec(token_in_vec_33),
        .dl_detect_in(dl_detect_out),
        .origin(origin[33]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_33),
        .out_chan_dep_data(out_chan_dep_data_33),
        .token_out_vec(token_out_vec_33),
        .dl_detect_out(dl_in_vec[33]));

    assign proc_33_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58.convInp_blk_n) | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.numReps_blk_n);
    assign proc_33_data_PIPO_blk[0] = 1'b0;
    assign proc_33_start_FIFO_blk[0] = 1'b0;
    assign proc_33_TLF_FIFO_blk[0] = 1'b0;
    assign proc_33_input_sync_blk[0] = 1'b0;
    assign proc_33_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_33[0] = dl_detect_out ? proc_dep_vld_vec_33_reg[0] : (proc_33_data_FIFO_blk[0] | proc_33_data_PIPO_blk[0] | proc_33_start_FIFO_blk[0] | proc_33_TLF_FIFO_blk[0] | proc_33_input_sync_blk[0] | proc_33_output_sync_blk[0]);
    assign proc_33_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58.mvOut_m_buffer_blk_n) | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.numReps_c143_blk_n);
    assign proc_33_data_PIPO_blk[1] = 1'b0;
    assign proc_33_start_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0_U.if_full_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_start & ~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.real_start & (trans_in_cnt_16 == trans_out_cnt_16) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0_U.if_read);
    assign proc_33_TLF_FIFO_blk[1] = 1'b0;
    assign proc_33_input_sync_blk[1] = 1'b0;
    assign proc_33_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_33[1] = dl_detect_out ? proc_dep_vld_vec_33_reg[1] : (proc_33_data_FIFO_blk[1] | proc_33_data_PIPO_blk[1] | proc_33_start_FIFO_blk[1] | proc_33_TLF_FIFO_blk[1] | proc_33_input_sync_blk[1] | proc_33_output_sync_blk[1]);
    assign proc_33_data_FIFO_blk[2] = 1'b0;
    assign proc_33_data_PIPO_blk[2] = 1'b0;
    assign proc_33_start_FIFO_blk[2] = 1'b0;
    assign proc_33_TLF_FIFO_blk[2] = 1'b0;
    assign proc_33_input_sync_blk[2] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready);
    assign proc_33_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_33[2] = dl_detect_out ? proc_dep_vld_vec_33_reg[2] : (proc_33_data_FIFO_blk[2] | proc_33_data_PIPO_blk[2] | proc_33_start_FIFO_blk[2] | proc_33_TLF_FIFO_blk[2] | proc_33_input_sync_blk[2] | proc_33_output_sync_blk[2]);
    assign proc_33_data_FIFO_blk[3] = 1'b0;
    assign proc_33_data_PIPO_blk[3] = 1'b0;
    assign proc_33_start_FIFO_blk[3] = 1'b0;
    assign proc_33_TLF_FIFO_blk[3] = 1'b0;
    assign proc_33_input_sync_blk[3] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready);
    assign proc_33_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_33[3] = dl_detect_out ? proc_dep_vld_vec_33_reg[3] : (proc_33_data_FIFO_blk[3] | proc_33_data_PIPO_blk[3] | proc_33_start_FIFO_blk[3] | proc_33_TLF_FIFO_blk[3] | proc_33_input_sync_blk[3] | proc_33_output_sync_blk[3]);
    assign proc_33_data_FIFO_blk[4] = 1'b0;
    assign proc_33_data_PIPO_blk[4] = 1'b0;
    assign proc_33_start_FIFO_blk[4] = 1'b0;
    assign proc_33_TLF_FIFO_blk[4] = 1'b0;
    assign proc_33_input_sync_blk[4] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready);
    assign proc_33_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_33[4] = dl_detect_out ? proc_dep_vld_vec_33_reg[4] : (proc_33_data_FIFO_blk[4] | proc_33_data_PIPO_blk[4] | proc_33_start_FIFO_blk[4] | proc_33_TLF_FIFO_blk[4] | proc_33_input_sync_blk[4] | proc_33_output_sync_blk[4]);
    assign proc_33_data_FIFO_blk[5] = 1'b0;
    assign proc_33_data_PIPO_blk[5] = 1'b0;
    assign proc_33_start_FIFO_blk[5] = 1'b0;
    assign proc_33_TLF_FIFO_blk[5] = 1'b0;
    assign proc_33_input_sync_blk[5] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready);
    assign proc_33_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_33[5] = dl_detect_out ? proc_dep_vld_vec_33_reg[5] : (proc_33_data_FIFO_blk[5] | proc_33_data_PIPO_blk[5] | proc_33_start_FIFO_blk[5] | proc_33_TLF_FIFO_blk[5] | proc_33_input_sync_blk[5] | proc_33_output_sync_blk[5]);
    assign proc_33_data_FIFO_blk[6] = 1'b0;
    assign proc_33_data_PIPO_blk[6] = 1'b0;
    assign proc_33_start_FIFO_blk[6] = 1'b0;
    assign proc_33_TLF_FIFO_blk[6] = 1'b0;
    assign proc_33_input_sync_blk[6] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready);
    assign proc_33_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_33[6] = dl_detect_out ? proc_dep_vld_vec_33_reg[6] : (proc_33_data_FIFO_blk[6] | proc_33_data_PIPO_blk[6] | proc_33_start_FIFO_blk[6] | proc_33_TLF_FIFO_blk[6] | proc_33_input_sync_blk[6] | proc_33_output_sync_blk[6]);
    assign proc_33_data_FIFO_blk[7] = 1'b0;
    assign proc_33_data_PIPO_blk[7] = 1'b0;
    assign proc_33_start_FIFO_blk[7] = 1'b0;
    assign proc_33_TLF_FIFO_blk[7] = 1'b0;
    assign proc_33_input_sync_blk[7] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_33_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_33[7] = dl_detect_out ? proc_dep_vld_vec_33_reg[7] : (proc_33_data_FIFO_blk[7] | proc_33_data_PIPO_blk[7] | proc_33_start_FIFO_blk[7] | proc_33_TLF_FIFO_blk[7] | proc_33_input_sync_blk[7] | proc_33_output_sync_blk[7]);
    assign proc_33_data_FIFO_blk[8] = 1'b0;
    assign proc_33_data_PIPO_blk[8] = 1'b0;
    assign proc_33_start_FIFO_blk[8] = 1'b0;
    assign proc_33_TLF_FIFO_blk[8] = 1'b0;
    assign proc_33_input_sync_blk[8] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready);
    assign proc_33_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_33[8] = dl_detect_out ? proc_dep_vld_vec_33_reg[8] : (proc_33_data_FIFO_blk[8] | proc_33_data_PIPO_blk[8] | proc_33_start_FIFO_blk[8] | proc_33_TLF_FIFO_blk[8] | proc_33_input_sync_blk[8] | proc_33_output_sync_blk[8]);
    assign proc_33_data_FIFO_blk[9] = 1'b0;
    assign proc_33_data_PIPO_blk[9] = 1'b0;
    assign proc_33_start_FIFO_blk[9] = 1'b0;
    assign proc_33_TLF_FIFO_blk[9] = 1'b0;
    assign proc_33_input_sync_blk[9] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready);
    assign proc_33_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_33[9] = dl_detect_out ? proc_dep_vld_vec_33_reg[9] : (proc_33_data_FIFO_blk[9] | proc_33_data_PIPO_blk[9] | proc_33_start_FIFO_blk[9] | proc_33_TLF_FIFO_blk[9] | proc_33_input_sync_blk[9] | proc_33_output_sync_blk[9]);
    assign proc_33_data_FIFO_blk[10] = 1'b0;
    assign proc_33_data_PIPO_blk[10] = 1'b0;
    assign proc_33_start_FIFO_blk[10] = 1'b0;
    assign proc_33_TLF_FIFO_blk[10] = 1'b0;
    assign proc_33_input_sync_blk[10] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready);
    assign proc_33_output_sync_blk[10] = 1'b0;
    assign proc_dep_vld_vec_33[10] = dl_detect_out ? proc_dep_vld_vec_33_reg[10] : (proc_33_data_FIFO_blk[10] | proc_33_data_PIPO_blk[10] | proc_33_start_FIFO_blk[10] | proc_33_TLF_FIFO_blk[10] | proc_33_input_sync_blk[10] | proc_33_output_sync_blk[10]);
    assign proc_33_data_FIFO_blk[11] = 1'b0;
    assign proc_33_data_PIPO_blk[11] = 1'b0;
    assign proc_33_start_FIFO_blk[11] = 1'b0;
    assign proc_33_TLF_FIFO_blk[11] = 1'b0;
    assign proc_33_input_sync_blk[11] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready);
    assign proc_33_output_sync_blk[11] = 1'b0;
    assign proc_dep_vld_vec_33[11] = dl_detect_out ? proc_dep_vld_vec_33_reg[11] : (proc_33_data_FIFO_blk[11] | proc_33_data_PIPO_blk[11] | proc_33_start_FIFO_blk[11] | proc_33_TLF_FIFO_blk[11] | proc_33_input_sync_blk[11] | proc_33_output_sync_blk[11]);
    assign proc_33_data_FIFO_blk[12] = 1'b0;
    assign proc_33_data_PIPO_blk[12] = 1'b0;
    assign proc_33_start_FIFO_blk[12] = 1'b0;
    assign proc_33_TLF_FIFO_blk[12] = 1'b0;
    assign proc_33_input_sync_blk[12] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_33_output_sync_blk[12] = 1'b0;
    assign proc_dep_vld_vec_33[12] = dl_detect_out ? proc_dep_vld_vec_33_reg[12] : (proc_33_data_FIFO_blk[12] | proc_33_data_PIPO_blk[12] | proc_33_start_FIFO_blk[12] | proc_33_TLF_FIFO_blk[12] | proc_33_input_sync_blk[12] | proc_33_output_sync_blk[12]);
    assign proc_33_data_FIFO_blk[13] = 1'b0;
    assign proc_33_data_PIPO_blk[13] = 1'b0;
    assign proc_33_start_FIFO_blk[13] = 1'b0;
    assign proc_33_TLF_FIFO_blk[13] = 1'b0;
    assign proc_33_input_sync_blk[13] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready);
    assign proc_33_output_sync_blk[13] = 1'b0;
    assign proc_dep_vld_vec_33[13] = dl_detect_out ? proc_dep_vld_vec_33_reg[13] : (proc_33_data_FIFO_blk[13] | proc_33_data_PIPO_blk[13] | proc_33_start_FIFO_blk[13] | proc_33_TLF_FIFO_blk[13] | proc_33_input_sync_blk[13] | proc_33_output_sync_blk[13]);
    assign proc_33_data_FIFO_blk[14] = 1'b0;
    assign proc_33_data_PIPO_blk[14] = 1'b0;
    assign proc_33_start_FIFO_blk[14] = 1'b0;
    assign proc_33_TLF_FIFO_blk[14] = 1'b0;
    assign proc_33_input_sync_blk[14] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready);
    assign proc_33_output_sync_blk[14] = 1'b0;
    assign proc_dep_vld_vec_33[14] = dl_detect_out ? proc_dep_vld_vec_33_reg[14] : (proc_33_data_FIFO_blk[14] | proc_33_data_PIPO_blk[14] | proc_33_start_FIFO_blk[14] | proc_33_TLF_FIFO_blk[14] | proc_33_input_sync_blk[14] | proc_33_output_sync_blk[14]);
    assign proc_33_data_FIFO_blk[15] = 1'b0;
    assign proc_33_data_PIPO_blk[15] = 1'b0;
    assign proc_33_start_FIFO_blk[15] = 1'b0;
    assign proc_33_TLF_FIFO_blk[15] = 1'b0;
    assign proc_33_input_sync_blk[15] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready);
    assign proc_33_output_sync_blk[15] = 1'b0;
    assign proc_dep_vld_vec_33[15] = dl_detect_out ? proc_dep_vld_vec_33_reg[15] : (proc_33_data_FIFO_blk[15] | proc_33_data_PIPO_blk[15] | proc_33_start_FIFO_blk[15] | proc_33_TLF_FIFO_blk[15] | proc_33_input_sync_blk[15] | proc_33_output_sync_blk[15]);
    assign proc_33_data_FIFO_blk[16] = 1'b0;
    assign proc_33_data_PIPO_blk[16] = 1'b0;
    assign proc_33_start_FIFO_blk[16] = 1'b0;
    assign proc_33_TLF_FIFO_blk[16] = 1'b0;
    assign proc_33_input_sync_blk[16] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready);
    assign proc_33_output_sync_blk[16] = 1'b0;
    assign proc_dep_vld_vec_33[16] = dl_detect_out ? proc_dep_vld_vec_33_reg[16] : (proc_33_data_FIFO_blk[16] | proc_33_data_PIPO_blk[16] | proc_33_start_FIFO_blk[16] | proc_33_TLF_FIFO_blk[16] | proc_33_input_sync_blk[16] | proc_33_output_sync_blk[16]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_33_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_33_reg <= proc_dep_vld_vec_33;
        end
    end
    assign in_chan_dep_vld_vec_33[0] = dep_chan_vld_0_33;
    assign in_chan_dep_data_vec_33[43 : 0] = dep_chan_data_0_33;
    assign token_in_vec_33[0] = token_0_33;
    assign in_chan_dep_vld_vec_33[1] = dep_chan_vld_1_33;
    assign in_chan_dep_data_vec_33[87 : 44] = dep_chan_data_1_33;
    assign token_in_vec_33[1] = token_1_33;
    assign in_chan_dep_vld_vec_33[2] = dep_chan_vld_5_33;
    assign in_chan_dep_data_vec_33[131 : 88] = dep_chan_data_5_33;
    assign token_in_vec_33[2] = token_5_33;
    assign in_chan_dep_vld_vec_33[3] = dep_chan_vld_6_33;
    assign in_chan_dep_data_vec_33[175 : 132] = dep_chan_data_6_33;
    assign token_in_vec_33[3] = token_6_33;
    assign in_chan_dep_vld_vec_33[4] = dep_chan_vld_11_33;
    assign in_chan_dep_data_vec_33[219 : 176] = dep_chan_data_11_33;
    assign token_in_vec_33[4] = token_11_33;
    assign in_chan_dep_vld_vec_33[5] = dep_chan_vld_16_33;
    assign in_chan_dep_data_vec_33[263 : 220] = dep_chan_data_16_33;
    assign token_in_vec_33[5] = token_16_33;
    assign in_chan_dep_vld_vec_33[6] = dep_chan_vld_17_33;
    assign in_chan_dep_data_vec_33[307 : 264] = dep_chan_data_17_33;
    assign token_in_vec_33[6] = token_17_33;
    assign in_chan_dep_vld_vec_33[7] = dep_chan_vld_19_33;
    assign in_chan_dep_data_vec_33[351 : 308] = dep_chan_data_19_33;
    assign token_in_vec_33[7] = token_19_33;
    assign in_chan_dep_vld_vec_33[8] = dep_chan_vld_22_33;
    assign in_chan_dep_data_vec_33[395 : 352] = dep_chan_data_22_33;
    assign token_in_vec_33[8] = token_22_33;
    assign in_chan_dep_vld_vec_33[9] = dep_chan_vld_23_33;
    assign in_chan_dep_data_vec_33[439 : 396] = dep_chan_data_23_33;
    assign token_in_vec_33[9] = token_23_33;
    assign in_chan_dep_vld_vec_33[10] = dep_chan_vld_28_33;
    assign in_chan_dep_data_vec_33[483 : 440] = dep_chan_data_28_33;
    assign token_in_vec_33[10] = token_28_33;
    assign in_chan_dep_vld_vec_33[11] = dep_chan_vld_29_33;
    assign in_chan_dep_data_vec_33[527 : 484] = dep_chan_data_29_33;
    assign token_in_vec_33[11] = token_29_33;
    assign in_chan_dep_vld_vec_33[12] = dep_chan_vld_32_33;
    assign in_chan_dep_data_vec_33[571 : 528] = dep_chan_data_32_33;
    assign token_in_vec_33[12] = token_32_33;
    assign in_chan_dep_vld_vec_33[13] = dep_chan_vld_34_33;
    assign in_chan_dep_data_vec_33[615 : 572] = dep_chan_data_34_33;
    assign token_in_vec_33[13] = token_34_33;
    assign in_chan_dep_vld_vec_33[14] = dep_chan_vld_36_33;
    assign in_chan_dep_data_vec_33[659 : 616] = dep_chan_data_36_33;
    assign token_in_vec_33[14] = token_36_33;
    assign in_chan_dep_vld_vec_33[15] = dep_chan_vld_39_33;
    assign in_chan_dep_data_vec_33[703 : 660] = dep_chan_data_39_33;
    assign token_in_vec_33[15] = token_39_33;
    assign in_chan_dep_vld_vec_33[16] = dep_chan_vld_42_33;
    assign in_chan_dep_data_vec_33[747 : 704] = dep_chan_data_42_33;
    assign token_in_vec_33[16] = token_42_33;
    assign dep_chan_vld_33_32 = out_chan_dep_vld_vec_33[0];
    assign dep_chan_data_33_32 = out_chan_dep_data_33;
    assign token_33_32 = token_out_vec_33[0];
    assign dep_chan_vld_33_34 = out_chan_dep_vld_vec_33[1];
    assign dep_chan_data_33_34 = out_chan_dep_data_33;
    assign token_33_34 = token_out_vec_33[1];
    assign dep_chan_vld_33_0 = out_chan_dep_vld_vec_33[2];
    assign dep_chan_data_33_0 = out_chan_dep_data_33;
    assign token_33_0 = token_out_vec_33[2];
    assign dep_chan_vld_33_1 = out_chan_dep_vld_vec_33[3];
    assign dep_chan_data_33_1 = out_chan_dep_data_33;
    assign token_33_1 = token_out_vec_33[3];
    assign dep_chan_vld_33_5 = out_chan_dep_vld_vec_33[4];
    assign dep_chan_data_33_5 = out_chan_dep_data_33;
    assign token_33_5 = token_out_vec_33[4];
    assign dep_chan_vld_33_6 = out_chan_dep_vld_vec_33[5];
    assign dep_chan_data_33_6 = out_chan_dep_data_33;
    assign token_33_6 = token_out_vec_33[5];
    assign dep_chan_vld_33_11 = out_chan_dep_vld_vec_33[6];
    assign dep_chan_data_33_11 = out_chan_dep_data_33;
    assign token_33_11 = token_out_vec_33[6];
    assign dep_chan_vld_33_16 = out_chan_dep_vld_vec_33[7];
    assign dep_chan_data_33_16 = out_chan_dep_data_33;
    assign token_33_16 = token_out_vec_33[7];
    assign dep_chan_vld_33_17 = out_chan_dep_vld_vec_33[8];
    assign dep_chan_data_33_17 = out_chan_dep_data_33;
    assign token_33_17 = token_out_vec_33[8];
    assign dep_chan_vld_33_19 = out_chan_dep_vld_vec_33[9];
    assign dep_chan_data_33_19 = out_chan_dep_data_33;
    assign token_33_19 = token_out_vec_33[9];
    assign dep_chan_vld_33_22 = out_chan_dep_vld_vec_33[10];
    assign dep_chan_data_33_22 = out_chan_dep_data_33;
    assign token_33_22 = token_out_vec_33[10];
    assign dep_chan_vld_33_23 = out_chan_dep_vld_vec_33[11];
    assign dep_chan_data_33_23 = out_chan_dep_data_33;
    assign token_33_23 = token_out_vec_33[11];
    assign dep_chan_vld_33_28 = out_chan_dep_vld_vec_33[12];
    assign dep_chan_data_33_28 = out_chan_dep_data_33;
    assign token_33_28 = token_out_vec_33[12];
    assign dep_chan_vld_33_29 = out_chan_dep_vld_vec_33[13];
    assign dep_chan_data_33_29 = out_chan_dep_data_33;
    assign token_33_29 = token_out_vec_33[13];
    assign dep_chan_vld_33_36 = out_chan_dep_vld_vec_33[14];
    assign dep_chan_data_33_36 = out_chan_dep_data_33;
    assign token_33_36 = token_out_vec_33[14];
    assign dep_chan_vld_33_39 = out_chan_dep_vld_vec_33[15];
    assign dep_chan_data_33_39 = out_chan_dep_data_33;
    assign token_33_39 = token_out_vec_33[15];
    assign dep_chan_vld_33_42 = out_chan_dep_vld_vec_33[16];
    assign dep_chan_data_33_42 = out_chan_dep_data_33;
    assign token_33_42 = token_out_vec_33[16];

    // Process: grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 34, 3, 3) BlackBoxJam_hls_deadlock_detect_unit_34 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_34),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_34),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_34),
        .token_in_vec(token_in_vec_34),
        .dl_detect_in(dl_detect_out),
        .origin(origin[34]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_34),
        .out_chan_dep_data(out_chan_dep_data_34),
        .token_out_vec(token_out_vec_34),
        .dl_detect_out(dl_in_vec[34]));

    assign proc_34_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0.numReps_blk_n) | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_Pipeline_VITIS_LOOP_300_3_fu_52.mvOut_m_buffer_blk_n);
    assign proc_34_data_PIPO_blk[0] = 1'b0;
    assign proc_34_start_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0_U.if_write);
    assign proc_34_TLF_FIFO_blk[0] = 1'b0;
    assign proc_34_input_sync_blk[0] = 1'b0;
    assign proc_34_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_34[0] = dl_detect_out ? proc_dep_vld_vec_34_reg[0] : (proc_34_data_FIFO_blk[0] | proc_34_data_PIPO_blk[0] | proc_34_start_FIFO_blk[0] | proc_34_TLF_FIFO_blk[0] | proc_34_input_sync_blk[0] | proc_34_output_sync_blk[0]);
    assign proc_34_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_Pipeline_VITIS_LOOP_300_3_fu_52.inter8_blk_n);
    assign proc_34_data_PIPO_blk[1] = 1'b0;
    assign proc_34_start_FIFO_blk[1] = 1'b0;
    assign proc_34_TLF_FIFO_blk[1] = 1'b0;
    assign proc_34_input_sync_blk[1] = 1'b0;
    assign proc_34_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_34[1] = dl_detect_out ? proc_dep_vld_vec_34_reg[1] : (proc_34_data_FIFO_blk[1] | proc_34_data_PIPO_blk[1] | proc_34_start_FIFO_blk[1] | proc_34_TLF_FIFO_blk[1] | proc_34_input_sync_blk[1] | proc_34_output_sync_blk[1]);
    assign proc_34_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0.numReps_c142_blk_n);
    assign proc_34_data_PIPO_blk[2] = 1'b0;
    assign proc_34_start_FIFO_blk[2] = 1'b0;
    assign proc_34_TLF_FIFO_blk[2] = 1'b0;
    assign proc_34_input_sync_blk[2] = 1'b0;
    assign proc_34_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_34[2] = dl_detect_out ? proc_dep_vld_vec_34_reg[2] : (proc_34_data_FIFO_blk[2] | proc_34_data_PIPO_blk[2] | proc_34_start_FIFO_blk[2] | proc_34_TLF_FIFO_blk[2] | proc_34_input_sync_blk[2] | proc_34_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_34_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_34_reg <= proc_dep_vld_vec_34;
        end
    end
    assign in_chan_dep_vld_vec_34[0] = dep_chan_vld_33_34;
    assign in_chan_dep_data_vec_34[43 : 0] = dep_chan_data_33_34;
    assign token_in_vec_34[0] = token_33_34;
    assign in_chan_dep_vld_vec_34[1] = dep_chan_vld_35_34;
    assign in_chan_dep_data_vec_34[87 : 44] = dep_chan_data_35_34;
    assign token_in_vec_34[1] = token_35_34;
    assign in_chan_dep_vld_vec_34[2] = dep_chan_vld_36_34;
    assign in_chan_dep_data_vec_34[131 : 88] = dep_chan_data_36_34;
    assign token_in_vec_34[2] = token_36_34;
    assign dep_chan_vld_34_33 = out_chan_dep_vld_vec_34[0];
    assign dep_chan_data_34_33 = out_chan_dep_data_34;
    assign token_34_33 = token_out_vec_34[0];
    assign dep_chan_vld_34_35 = out_chan_dep_vld_vec_34[1];
    assign dep_chan_data_34_35 = out_chan_dep_data_34;
    assign token_34_35 = token_out_vec_34[1];
    assign dep_chan_vld_34_36 = out_chan_dep_vld_vec_34[2];
    assign dep_chan_data_34_36 = out_chan_dep_data_34;
    assign token_34_36 = token_out_vec_34[2];

    // Process: grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 35, 4, 4) BlackBoxJam_hls_deadlock_detect_unit_35 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_35),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_35),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_35),
        .token_in_vec(token_in_vec_35),
        .dl_detect_in(dl_detect_out),
        .origin(origin[35]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_35),
        .out_chan_dep_data(out_chan_dep_data_35),
        .token_out_vec(token_out_vec_35),
        .dl_detect_out(dl_in_vec[35]));

    assign proc_35_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0.totalIters_10_loc_blk_n);
    assign proc_35_data_PIPO_blk[0] = 1'b0;
    assign proc_35_start_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0_U.if_write);
    assign proc_35_TLF_FIFO_blk[0] = 1'b0;
    assign proc_35_input_sync_blk[0] = 1'b0;
    assign proc_35_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_35[0] = dl_detect_out ? proc_dep_vld_vec_35_reg[0] : (proc_35_data_FIFO_blk[0] | proc_35_data_PIPO_blk[0] | proc_35_start_FIFO_blk[0] | proc_35_TLF_FIFO_blk[0] | proc_35_input_sync_blk[0] | proc_35_output_sync_blk[0]);
    assign proc_35_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc16_Pipeline_VITIS_LOOP_268_1_fu_50.wa_in_2_blk_n);
    assign proc_35_data_PIPO_blk[1] = 1'b0;
    assign proc_35_start_FIFO_blk[1] = 1'b0;
    assign proc_35_TLF_FIFO_blk[1] = 1'b0;
    assign proc_35_input_sync_blk[1] = 1'b0;
    assign proc_35_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_35[1] = dl_detect_out ? proc_dep_vld_vec_35_reg[1] : (proc_35_data_FIFO_blk[1] | proc_35_data_PIPO_blk[1] | proc_35_start_FIFO_blk[1] | proc_35_TLF_FIFO_blk[1] | proc_35_input_sync_blk[1] | proc_35_output_sync_blk[1]);
    assign proc_35_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc16_Pipeline_VITIS_LOOP_268_1_fu_50.inter8_blk_n);
    assign proc_35_data_PIPO_blk[2] = 1'b0;
    assign proc_35_start_FIFO_blk[2] = 1'b0;
    assign proc_35_TLF_FIFO_blk[2] = 1'b0;
    assign proc_35_input_sync_blk[2] = 1'b0;
    assign proc_35_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_35[2] = dl_detect_out ? proc_dep_vld_vec_35_reg[2] : (proc_35_data_FIFO_blk[2] | proc_35_data_PIPO_blk[2] | proc_35_start_FIFO_blk[2] | proc_35_TLF_FIFO_blk[2] | proc_35_input_sync_blk[2] | proc_35_output_sync_blk[2]);
    assign proc_35_data_FIFO_blk[3] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0.totalIters_10_loc_c_blk_n);
    assign proc_35_data_PIPO_blk[3] = 1'b0;
    assign proc_35_start_FIFO_blk[3] = 1'b0;
    assign proc_35_TLF_FIFO_blk[3] = 1'b0;
    assign proc_35_input_sync_blk[3] = 1'b0;
    assign proc_35_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_35[3] = dl_detect_out ? proc_dep_vld_vec_35_reg[3] : (proc_35_data_FIFO_blk[3] | proc_35_data_PIPO_blk[3] | proc_35_start_FIFO_blk[3] | proc_35_TLF_FIFO_blk[3] | proc_35_input_sync_blk[3] | proc_35_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_35_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_35_reg <= proc_dep_vld_vec_35;
        end
    end
    assign in_chan_dep_vld_vec_35[0] = dep_chan_vld_31_35;
    assign in_chan_dep_data_vec_35[43 : 0] = dep_chan_data_31_35;
    assign token_in_vec_35[0] = token_31_35;
    assign in_chan_dep_vld_vec_35[1] = dep_chan_vld_34_35;
    assign in_chan_dep_data_vec_35[87 : 44] = dep_chan_data_34_35;
    assign token_in_vec_35[1] = token_34_35;
    assign in_chan_dep_vld_vec_35[2] = dep_chan_vld_36_35;
    assign in_chan_dep_data_vec_35[131 : 88] = dep_chan_data_36_35;
    assign token_in_vec_35[2] = token_36_35;
    assign in_chan_dep_vld_vec_35[3] = dep_chan_vld_38_35;
    assign in_chan_dep_data_vec_35[175 : 132] = dep_chan_data_38_35;
    assign token_in_vec_35[3] = token_38_35;
    assign dep_chan_vld_35_31 = out_chan_dep_vld_vec_35[0];
    assign dep_chan_data_35_31 = out_chan_dep_data_35;
    assign token_35_31 = token_out_vec_35[0];
    assign dep_chan_vld_35_36 = out_chan_dep_vld_vec_35[1];
    assign dep_chan_data_35_36 = out_chan_dep_data_35;
    assign token_35_36 = token_out_vec_35[1];
    assign dep_chan_vld_35_34 = out_chan_dep_vld_vec_35[2];
    assign dep_chan_data_35_34 = out_chan_dep_data_35;
    assign token_35_34 = token_out_vec_35[2];
    assign dep_chan_vld_35_38 = out_chan_dep_vld_vec_35[3];
    assign dep_chan_data_35_38 = out_chan_dep_data_35;
    assign token_35_38 = token_out_vec_35[3];

    // Process: grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 36, 18, 18) BlackBoxJam_hls_deadlock_detect_unit_36 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_36),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_36),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_36),
        .token_in_vec(token_in_vec_36),
        .dl_detect_in(dl_detect_out),
        .origin(origin[36]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_36),
        .out_chan_dep_data(out_chan_dep_data_36),
        .token_out_vec(token_out_vec_36),
        .dl_detect_out(dl_in_vec[36]));

    assign proc_36_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56.wa_in_2_blk_n);
    assign proc_36_data_PIPO_blk[0] = 1'b0;
    assign proc_36_start_FIFO_blk[0] = 1'b0;
    assign proc_36_TLF_FIFO_blk[0] = 1'b0;
    assign proc_36_input_sync_blk[0] = 1'b0;
    assign proc_36_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_36[0] = dl_detect_out ? proc_dep_vld_vec_36_reg[0] : (proc_36_data_FIFO_blk[0] | proc_36_data_PIPO_blk[0] | proc_36_start_FIFO_blk[0] | proc_36_TLF_FIFO_blk[0] | proc_36_input_sync_blk[0] | proc_36_output_sync_blk[0]);
    assign proc_36_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56.wa_out_m_buffer_2_blk_n);
    assign proc_36_data_PIPO_blk[1] = 1'b0;
    assign proc_36_start_FIFO_blk[1] = 1'b0;
    assign proc_36_TLF_FIFO_blk[1] = 1'b0;
    assign proc_36_input_sync_blk[1] = 1'b0;
    assign proc_36_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_36[1] = dl_detect_out ? proc_dep_vld_vec_36_reg[1] : (proc_36_data_FIFO_blk[1] | proc_36_data_PIPO_blk[1] | proc_36_start_FIFO_blk[1] | proc_36_TLF_FIFO_blk[1] | proc_36_input_sync_blk[1] | proc_36_output_sync_blk[1]);
    assign proc_36_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.numReps_blk_n);
    assign proc_36_data_PIPO_blk[2] = 1'b0;
    assign proc_36_start_FIFO_blk[2] = 1'b0;
    assign proc_36_TLF_FIFO_blk[2] = 1'b0;
    assign proc_36_input_sync_blk[2] = 1'b0;
    assign proc_36_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_36[2] = dl_detect_out ? proc_dep_vld_vec_36_reg[2] : (proc_36_data_FIFO_blk[2] | proc_36_data_PIPO_blk[2] | proc_36_start_FIFO_blk[2] | proc_36_TLF_FIFO_blk[2] | proc_36_input_sync_blk[2] | proc_36_output_sync_blk[2]);
    assign proc_36_data_FIFO_blk[3] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.numReps_c141_blk_n);
    assign proc_36_data_PIPO_blk[3] = 1'b0;
    assign proc_36_start_FIFO_blk[3] = 1'b0;
    assign proc_36_TLF_FIFO_blk[3] = 1'b0;
    assign proc_36_input_sync_blk[3] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready);
    assign proc_36_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_36[3] = dl_detect_out ? proc_dep_vld_vec_36_reg[3] : (proc_36_data_FIFO_blk[3] | proc_36_data_PIPO_blk[3] | proc_36_start_FIFO_blk[3] | proc_36_TLF_FIFO_blk[3] | proc_36_input_sync_blk[3] | proc_36_output_sync_blk[3]);
    assign proc_36_data_FIFO_blk[4] = 1'b0;
    assign proc_36_data_PIPO_blk[4] = 1'b0;
    assign proc_36_start_FIFO_blk[4] = 1'b0;
    assign proc_36_TLF_FIFO_blk[4] = 1'b0;
    assign proc_36_input_sync_blk[4] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready);
    assign proc_36_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_36[4] = dl_detect_out ? proc_dep_vld_vec_36_reg[4] : (proc_36_data_FIFO_blk[4] | proc_36_data_PIPO_blk[4] | proc_36_start_FIFO_blk[4] | proc_36_TLF_FIFO_blk[4] | proc_36_input_sync_blk[4] | proc_36_output_sync_blk[4]);
    assign proc_36_data_FIFO_blk[5] = 1'b0;
    assign proc_36_data_PIPO_blk[5] = 1'b0;
    assign proc_36_start_FIFO_blk[5] = 1'b0;
    assign proc_36_TLF_FIFO_blk[5] = 1'b0;
    assign proc_36_input_sync_blk[5] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready);
    assign proc_36_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_36[5] = dl_detect_out ? proc_dep_vld_vec_36_reg[5] : (proc_36_data_FIFO_blk[5] | proc_36_data_PIPO_blk[5] | proc_36_start_FIFO_blk[5] | proc_36_TLF_FIFO_blk[5] | proc_36_input_sync_blk[5] | proc_36_output_sync_blk[5]);
    assign proc_36_data_FIFO_blk[6] = 1'b0;
    assign proc_36_data_PIPO_blk[6] = 1'b0;
    assign proc_36_start_FIFO_blk[6] = 1'b0;
    assign proc_36_TLF_FIFO_blk[6] = 1'b0;
    assign proc_36_input_sync_blk[6] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready);
    assign proc_36_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_36[6] = dl_detect_out ? proc_dep_vld_vec_36_reg[6] : (proc_36_data_FIFO_blk[6] | proc_36_data_PIPO_blk[6] | proc_36_start_FIFO_blk[6] | proc_36_TLF_FIFO_blk[6] | proc_36_input_sync_blk[6] | proc_36_output_sync_blk[6]);
    assign proc_36_data_FIFO_blk[7] = 1'b0;
    assign proc_36_data_PIPO_blk[7] = 1'b0;
    assign proc_36_start_FIFO_blk[7] = 1'b0;
    assign proc_36_TLF_FIFO_blk[7] = 1'b0;
    assign proc_36_input_sync_blk[7] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready);
    assign proc_36_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_36[7] = dl_detect_out ? proc_dep_vld_vec_36_reg[7] : (proc_36_data_FIFO_blk[7] | proc_36_data_PIPO_blk[7] | proc_36_start_FIFO_blk[7] | proc_36_TLF_FIFO_blk[7] | proc_36_input_sync_blk[7] | proc_36_output_sync_blk[7]);
    assign proc_36_data_FIFO_blk[8] = 1'b0;
    assign proc_36_data_PIPO_blk[8] = 1'b0;
    assign proc_36_start_FIFO_blk[8] = 1'b0;
    assign proc_36_TLF_FIFO_blk[8] = 1'b0;
    assign proc_36_input_sync_blk[8] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready);
    assign proc_36_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_36[8] = dl_detect_out ? proc_dep_vld_vec_36_reg[8] : (proc_36_data_FIFO_blk[8] | proc_36_data_PIPO_blk[8] | proc_36_start_FIFO_blk[8] | proc_36_TLF_FIFO_blk[8] | proc_36_input_sync_blk[8] | proc_36_output_sync_blk[8]);
    assign proc_36_data_FIFO_blk[9] = 1'b0;
    assign proc_36_data_PIPO_blk[9] = 1'b0;
    assign proc_36_start_FIFO_blk[9] = 1'b0;
    assign proc_36_TLF_FIFO_blk[9] = 1'b0;
    assign proc_36_input_sync_blk[9] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_36_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_36[9] = dl_detect_out ? proc_dep_vld_vec_36_reg[9] : (proc_36_data_FIFO_blk[9] | proc_36_data_PIPO_blk[9] | proc_36_start_FIFO_blk[9] | proc_36_TLF_FIFO_blk[9] | proc_36_input_sync_blk[9] | proc_36_output_sync_blk[9]);
    assign proc_36_data_FIFO_blk[10] = 1'b0;
    assign proc_36_data_PIPO_blk[10] = 1'b0;
    assign proc_36_start_FIFO_blk[10] = 1'b0;
    assign proc_36_TLF_FIFO_blk[10] = 1'b0;
    assign proc_36_input_sync_blk[10] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready);
    assign proc_36_output_sync_blk[10] = 1'b0;
    assign proc_dep_vld_vec_36[10] = dl_detect_out ? proc_dep_vld_vec_36_reg[10] : (proc_36_data_FIFO_blk[10] | proc_36_data_PIPO_blk[10] | proc_36_start_FIFO_blk[10] | proc_36_TLF_FIFO_blk[10] | proc_36_input_sync_blk[10] | proc_36_output_sync_blk[10]);
    assign proc_36_data_FIFO_blk[11] = 1'b0;
    assign proc_36_data_PIPO_blk[11] = 1'b0;
    assign proc_36_start_FIFO_blk[11] = 1'b0;
    assign proc_36_TLF_FIFO_blk[11] = 1'b0;
    assign proc_36_input_sync_blk[11] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready);
    assign proc_36_output_sync_blk[11] = 1'b0;
    assign proc_dep_vld_vec_36[11] = dl_detect_out ? proc_dep_vld_vec_36_reg[11] : (proc_36_data_FIFO_blk[11] | proc_36_data_PIPO_blk[11] | proc_36_start_FIFO_blk[11] | proc_36_TLF_FIFO_blk[11] | proc_36_input_sync_blk[11] | proc_36_output_sync_blk[11]);
    assign proc_36_data_FIFO_blk[12] = 1'b0;
    assign proc_36_data_PIPO_blk[12] = 1'b0;
    assign proc_36_start_FIFO_blk[12] = 1'b0;
    assign proc_36_TLF_FIFO_blk[12] = 1'b0;
    assign proc_36_input_sync_blk[12] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready);
    assign proc_36_output_sync_blk[12] = 1'b0;
    assign proc_dep_vld_vec_36[12] = dl_detect_out ? proc_dep_vld_vec_36_reg[12] : (proc_36_data_FIFO_blk[12] | proc_36_data_PIPO_blk[12] | proc_36_start_FIFO_blk[12] | proc_36_TLF_FIFO_blk[12] | proc_36_input_sync_blk[12] | proc_36_output_sync_blk[12]);
    assign proc_36_data_FIFO_blk[13] = 1'b0;
    assign proc_36_data_PIPO_blk[13] = 1'b0;
    assign proc_36_start_FIFO_blk[13] = 1'b0;
    assign proc_36_TLF_FIFO_blk[13] = 1'b0;
    assign proc_36_input_sync_blk[13] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready);
    assign proc_36_output_sync_blk[13] = 1'b0;
    assign proc_dep_vld_vec_36[13] = dl_detect_out ? proc_dep_vld_vec_36_reg[13] : (proc_36_data_FIFO_blk[13] | proc_36_data_PIPO_blk[13] | proc_36_start_FIFO_blk[13] | proc_36_TLF_FIFO_blk[13] | proc_36_input_sync_blk[13] | proc_36_output_sync_blk[13]);
    assign proc_36_data_FIFO_blk[14] = 1'b0;
    assign proc_36_data_PIPO_blk[14] = 1'b0;
    assign proc_36_start_FIFO_blk[14] = 1'b0;
    assign proc_36_TLF_FIFO_blk[14] = 1'b0;
    assign proc_36_input_sync_blk[14] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_36_output_sync_blk[14] = 1'b0;
    assign proc_dep_vld_vec_36[14] = dl_detect_out ? proc_dep_vld_vec_36_reg[14] : (proc_36_data_FIFO_blk[14] | proc_36_data_PIPO_blk[14] | proc_36_start_FIFO_blk[14] | proc_36_TLF_FIFO_blk[14] | proc_36_input_sync_blk[14] | proc_36_output_sync_blk[14]);
    assign proc_36_data_FIFO_blk[15] = 1'b0;
    assign proc_36_data_PIPO_blk[15] = 1'b0;
    assign proc_36_start_FIFO_blk[15] = 1'b0;
    assign proc_36_TLF_FIFO_blk[15] = 1'b0;
    assign proc_36_input_sync_blk[15] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready);
    assign proc_36_output_sync_blk[15] = 1'b0;
    assign proc_dep_vld_vec_36[15] = dl_detect_out ? proc_dep_vld_vec_36_reg[15] : (proc_36_data_FIFO_blk[15] | proc_36_data_PIPO_blk[15] | proc_36_start_FIFO_blk[15] | proc_36_TLF_FIFO_blk[15] | proc_36_input_sync_blk[15] | proc_36_output_sync_blk[15]);
    assign proc_36_data_FIFO_blk[16] = 1'b0;
    assign proc_36_data_PIPO_blk[16] = 1'b0;
    assign proc_36_start_FIFO_blk[16] = 1'b0;
    assign proc_36_TLF_FIFO_blk[16] = 1'b0;
    assign proc_36_input_sync_blk[16] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready);
    assign proc_36_output_sync_blk[16] = 1'b0;
    assign proc_dep_vld_vec_36[16] = dl_detect_out ? proc_dep_vld_vec_36_reg[16] : (proc_36_data_FIFO_blk[16] | proc_36_data_PIPO_blk[16] | proc_36_start_FIFO_blk[16] | proc_36_TLF_FIFO_blk[16] | proc_36_input_sync_blk[16] | proc_36_output_sync_blk[16]);
    assign proc_36_data_FIFO_blk[17] = 1'b0;
    assign proc_36_data_PIPO_blk[17] = 1'b0;
    assign proc_36_start_FIFO_blk[17] = 1'b0;
    assign proc_36_TLF_FIFO_blk[17] = 1'b0;
    assign proc_36_input_sync_blk[17] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready);
    assign proc_36_output_sync_blk[17] = 1'b0;
    assign proc_dep_vld_vec_36[17] = dl_detect_out ? proc_dep_vld_vec_36_reg[17] : (proc_36_data_FIFO_blk[17] | proc_36_data_PIPO_blk[17] | proc_36_start_FIFO_blk[17] | proc_36_TLF_FIFO_blk[17] | proc_36_input_sync_blk[17] | proc_36_output_sync_blk[17]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_36_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_36_reg <= proc_dep_vld_vec_36;
        end
    end
    assign in_chan_dep_vld_vec_36[0] = dep_chan_vld_0_36;
    assign in_chan_dep_data_vec_36[43 : 0] = dep_chan_data_0_36;
    assign token_in_vec_36[0] = token_0_36;
    assign in_chan_dep_vld_vec_36[1] = dep_chan_vld_1_36;
    assign in_chan_dep_data_vec_36[87 : 44] = dep_chan_data_1_36;
    assign token_in_vec_36[1] = token_1_36;
    assign in_chan_dep_vld_vec_36[2] = dep_chan_vld_5_36;
    assign in_chan_dep_data_vec_36[131 : 88] = dep_chan_data_5_36;
    assign token_in_vec_36[2] = token_5_36;
    assign in_chan_dep_vld_vec_36[3] = dep_chan_vld_6_36;
    assign in_chan_dep_data_vec_36[175 : 132] = dep_chan_data_6_36;
    assign token_in_vec_36[3] = token_6_36;
    assign in_chan_dep_vld_vec_36[4] = dep_chan_vld_11_36;
    assign in_chan_dep_data_vec_36[219 : 176] = dep_chan_data_11_36;
    assign token_in_vec_36[4] = token_11_36;
    assign in_chan_dep_vld_vec_36[5] = dep_chan_vld_16_36;
    assign in_chan_dep_data_vec_36[263 : 220] = dep_chan_data_16_36;
    assign token_in_vec_36[5] = token_16_36;
    assign in_chan_dep_vld_vec_36[6] = dep_chan_vld_17_36;
    assign in_chan_dep_data_vec_36[307 : 264] = dep_chan_data_17_36;
    assign token_in_vec_36[6] = token_17_36;
    assign in_chan_dep_vld_vec_36[7] = dep_chan_vld_19_36;
    assign in_chan_dep_data_vec_36[351 : 308] = dep_chan_data_19_36;
    assign token_in_vec_36[7] = token_19_36;
    assign in_chan_dep_vld_vec_36[8] = dep_chan_vld_22_36;
    assign in_chan_dep_data_vec_36[395 : 352] = dep_chan_data_22_36;
    assign token_in_vec_36[8] = token_22_36;
    assign in_chan_dep_vld_vec_36[9] = dep_chan_vld_23_36;
    assign in_chan_dep_data_vec_36[439 : 396] = dep_chan_data_23_36;
    assign token_in_vec_36[9] = token_23_36;
    assign in_chan_dep_vld_vec_36[10] = dep_chan_vld_28_36;
    assign in_chan_dep_data_vec_36[483 : 440] = dep_chan_data_28_36;
    assign token_in_vec_36[10] = token_28_36;
    assign in_chan_dep_vld_vec_36[11] = dep_chan_vld_29_36;
    assign in_chan_dep_data_vec_36[527 : 484] = dep_chan_data_29_36;
    assign token_in_vec_36[11] = token_29_36;
    assign in_chan_dep_vld_vec_36[12] = dep_chan_vld_33_36;
    assign in_chan_dep_data_vec_36[571 : 528] = dep_chan_data_33_36;
    assign token_in_vec_36[12] = token_33_36;
    assign in_chan_dep_vld_vec_36[13] = dep_chan_vld_34_36;
    assign in_chan_dep_data_vec_36[615 : 572] = dep_chan_data_34_36;
    assign token_in_vec_36[13] = token_34_36;
    assign in_chan_dep_vld_vec_36[14] = dep_chan_vld_35_36;
    assign in_chan_dep_data_vec_36[659 : 616] = dep_chan_data_35_36;
    assign token_in_vec_36[14] = token_35_36;
    assign in_chan_dep_vld_vec_36[15] = dep_chan_vld_37_36;
    assign in_chan_dep_data_vec_36[703 : 660] = dep_chan_data_37_36;
    assign token_in_vec_36[15] = token_37_36;
    assign in_chan_dep_vld_vec_36[16] = dep_chan_vld_39_36;
    assign in_chan_dep_data_vec_36[747 : 704] = dep_chan_data_39_36;
    assign token_in_vec_36[16] = token_39_36;
    assign in_chan_dep_vld_vec_36[17] = dep_chan_vld_42_36;
    assign in_chan_dep_data_vec_36[791 : 748] = dep_chan_data_42_36;
    assign token_in_vec_36[17] = token_42_36;
    assign dep_chan_vld_36_35 = out_chan_dep_vld_vec_36[0];
    assign dep_chan_data_36_35 = out_chan_dep_data_36;
    assign token_36_35 = token_out_vec_36[0];
    assign dep_chan_vld_36_37 = out_chan_dep_vld_vec_36[1];
    assign dep_chan_data_36_37 = out_chan_dep_data_36;
    assign token_36_37 = token_out_vec_36[1];
    assign dep_chan_vld_36_34 = out_chan_dep_vld_vec_36[2];
    assign dep_chan_data_36_34 = out_chan_dep_data_36;
    assign token_36_34 = token_out_vec_36[2];
    assign dep_chan_vld_36_39 = out_chan_dep_vld_vec_36[3];
    assign dep_chan_data_36_39 = out_chan_dep_data_36;
    assign token_36_39 = token_out_vec_36[3];
    assign dep_chan_vld_36_0 = out_chan_dep_vld_vec_36[4];
    assign dep_chan_data_36_0 = out_chan_dep_data_36;
    assign token_36_0 = token_out_vec_36[4];
    assign dep_chan_vld_36_1 = out_chan_dep_vld_vec_36[5];
    assign dep_chan_data_36_1 = out_chan_dep_data_36;
    assign token_36_1 = token_out_vec_36[5];
    assign dep_chan_vld_36_5 = out_chan_dep_vld_vec_36[6];
    assign dep_chan_data_36_5 = out_chan_dep_data_36;
    assign token_36_5 = token_out_vec_36[6];
    assign dep_chan_vld_36_6 = out_chan_dep_vld_vec_36[7];
    assign dep_chan_data_36_6 = out_chan_dep_data_36;
    assign token_36_6 = token_out_vec_36[7];
    assign dep_chan_vld_36_11 = out_chan_dep_vld_vec_36[8];
    assign dep_chan_data_36_11 = out_chan_dep_data_36;
    assign token_36_11 = token_out_vec_36[8];
    assign dep_chan_vld_36_16 = out_chan_dep_vld_vec_36[9];
    assign dep_chan_data_36_16 = out_chan_dep_data_36;
    assign token_36_16 = token_out_vec_36[9];
    assign dep_chan_vld_36_17 = out_chan_dep_vld_vec_36[10];
    assign dep_chan_data_36_17 = out_chan_dep_data_36;
    assign token_36_17 = token_out_vec_36[10];
    assign dep_chan_vld_36_19 = out_chan_dep_vld_vec_36[11];
    assign dep_chan_data_36_19 = out_chan_dep_data_36;
    assign token_36_19 = token_out_vec_36[11];
    assign dep_chan_vld_36_22 = out_chan_dep_vld_vec_36[12];
    assign dep_chan_data_36_22 = out_chan_dep_data_36;
    assign token_36_22 = token_out_vec_36[12];
    assign dep_chan_vld_36_23 = out_chan_dep_vld_vec_36[13];
    assign dep_chan_data_36_23 = out_chan_dep_data_36;
    assign token_36_23 = token_out_vec_36[13];
    assign dep_chan_vld_36_28 = out_chan_dep_vld_vec_36[14];
    assign dep_chan_data_36_28 = out_chan_dep_data_36;
    assign token_36_28 = token_out_vec_36[14];
    assign dep_chan_vld_36_29 = out_chan_dep_vld_vec_36[15];
    assign dep_chan_data_36_29 = out_chan_dep_data_36;
    assign token_36_29 = token_out_vec_36[15];
    assign dep_chan_vld_36_33 = out_chan_dep_vld_vec_36[16];
    assign dep_chan_data_36_33 = out_chan_dep_data_36;
    assign token_36_33 = token_out_vec_36[16];
    assign dep_chan_vld_36_42 = out_chan_dep_vld_vec_36[17];
    assign dep_chan_data_36_42 = out_chan_dep_data_36;
    assign token_36_42 = token_out_vec_36[17];

    // Process: grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 37, 3, 4) BlackBoxJam_hls_deadlock_detect_unit_37 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_37),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_37),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_37),
        .token_in_vec(token_in_vec_37),
        .dl_detect_in(dl_detect_out),
        .origin(origin[37]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_37),
        .out_chan_dep_data(out_chan_dep_data_37),
        .token_out_vec(token_out_vec_37),
        .dl_detect_out(dl_in_vec[37]));

    assign proc_37_data_FIFO_blk[0] = 1'b0;
    assign proc_37_data_PIPO_blk[0] = 1'b0;
    assign proc_37_start_FIFO_blk[0] = 1'b0;
    assign proc_37_TLF_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.totalIters_16_loc_c139_channel_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.ap_idle & ~grp_DoCompute_fu_2926.totalIters_16_loc_c139_channel_U.if_write);
    assign proc_37_input_sync_blk[0] = 1'b0;
    assign proc_37_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_37[0] = dl_detect_out ? proc_dep_vld_vec_37_reg[0] : (proc_37_data_FIFO_blk[0] | proc_37_data_PIPO_blk[0] | proc_37_start_FIFO_blk[0] | proc_37_TLF_FIFO_blk[0] | proc_37_input_sync_blk[0] | proc_37_output_sync_blk[0]);
    assign proc_37_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3_fu_50.wa_out_m_buffer_2_blk_n);
    assign proc_37_data_PIPO_blk[1] = 1'b0;
    assign proc_37_start_FIFO_blk[1] = 1'b0;
    assign proc_37_TLF_FIFO_blk[1] = 1'b0;
    assign proc_37_input_sync_blk[1] = 1'b0;
    assign proc_37_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_37[1] = dl_detect_out ? proc_dep_vld_vec_37_reg[1] : (proc_37_data_FIFO_blk[1] | proc_37_data_PIPO_blk[1] | proc_37_start_FIFO_blk[1] | proc_37_TLF_FIFO_blk[1] | proc_37_input_sync_blk[1] | proc_37_output_sync_blk[1]);
    assign proc_37_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3_fu_50.inter9_blk_n);
    assign proc_37_data_PIPO_blk[2] = 1'b0;
    assign proc_37_start_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.real_start & (trans_in_cnt_17 == trans_out_cnt_17) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0_U.if_read);
    assign proc_37_TLF_FIFO_blk[2] = 1'b0;
    assign proc_37_input_sync_blk[2] = 1'b0;
    assign proc_37_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_37[2] = dl_detect_out ? proc_dep_vld_vec_37_reg[2] : (proc_37_data_FIFO_blk[2] | proc_37_data_PIPO_blk[2] | proc_37_start_FIFO_blk[2] | proc_37_TLF_FIFO_blk[2] | proc_37_input_sync_blk[2] | proc_37_output_sync_blk[2]);
    assign proc_37_data_FIFO_blk[3] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.totalIters_16_loc_c138_blk_n);
    assign proc_37_data_PIPO_blk[3] = 1'b0;
    assign proc_37_start_FIFO_blk[3] = 1'b0;
    assign proc_37_TLF_FIFO_blk[3] = 1'b0;
    assign proc_37_input_sync_blk[3] = 1'b0;
    assign proc_37_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_37[3] = dl_detect_out ? proc_dep_vld_vec_37_reg[3] : (proc_37_data_FIFO_blk[3] | proc_37_data_PIPO_blk[3] | proc_37_start_FIFO_blk[3] | proc_37_TLF_FIFO_blk[3] | proc_37_input_sync_blk[3] | proc_37_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_37_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_37_reg <= proc_dep_vld_vec_37;
        end
    end
    assign in_chan_dep_vld_vec_37[0] = dep_chan_vld_36_37;
    assign in_chan_dep_data_vec_37[43 : 0] = dep_chan_data_36_37;
    assign token_in_vec_37[0] = token_36_37;
    assign in_chan_dep_vld_vec_37[1] = dep_chan_vld_38_37;
    assign in_chan_dep_data_vec_37[87 : 44] = dep_chan_data_38_37;
    assign token_in_vec_37[1] = token_38_37;
    assign in_chan_dep_vld_vec_37[2] = dep_chan_vld_40_37;
    assign in_chan_dep_data_vec_37[131 : 88] = dep_chan_data_40_37;
    assign token_in_vec_37[2] = token_40_37;
    assign dep_chan_vld_37_19 = out_chan_dep_vld_vec_37[0];
    assign dep_chan_data_37_19 = out_chan_dep_data_37;
    assign token_37_19 = token_out_vec_37[0];
    assign dep_chan_vld_37_36 = out_chan_dep_vld_vec_37[1];
    assign dep_chan_data_37_36 = out_chan_dep_data_37;
    assign token_37_36 = token_out_vec_37[1];
    assign dep_chan_vld_37_38 = out_chan_dep_vld_vec_37[2];
    assign dep_chan_data_37_38 = out_chan_dep_data_37;
    assign token_37_38 = token_out_vec_37[2];
    assign dep_chan_vld_37_40 = out_chan_dep_vld_vec_37[3];
    assign dep_chan_data_37_40 = out_chan_dep_data_37;
    assign token_37_40 = token_out_vec_37[3];

    // Process: grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 38, 3, 3) BlackBoxJam_hls_deadlock_detect_unit_38 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_38),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_38),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_38),
        .token_in_vec(token_in_vec_38),
        .dl_detect_in(dl_detect_out),
        .origin(origin[38]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_38),
        .out_chan_dep_data(out_chan_dep_data_38),
        .token_out_vec(token_out_vec_38),
        .dl_detect_out(dl_in_vec[38]));

    assign proc_38_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0.totalIters_10_loc_blk_n);
    assign proc_38_data_PIPO_blk[0] = 1'b0;
    assign proc_38_start_FIFO_blk[0] = 1'b0;
    assign proc_38_TLF_FIFO_blk[0] = 1'b0;
    assign proc_38_input_sync_blk[0] = 1'b0;
    assign proc_38_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_38[0] = dl_detect_out ? proc_dep_vld_vec_38_reg[0] : (proc_38_data_FIFO_blk[0] | proc_38_data_PIPO_blk[0] | proc_38_start_FIFO_blk[0] | proc_38_TLF_FIFO_blk[0] | proc_38_input_sync_blk[0] | proc_38_output_sync_blk[0]);
    assign proc_38_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc20_Pipeline_VITIS_LOOP_268_1_fu_38.wa_in_1_blk_n);
    assign proc_38_data_PIPO_blk[1] = 1'b0;
    assign proc_38_start_FIFO_blk[1] = 1'b0;
    assign proc_38_TLF_FIFO_blk[1] = 1'b0;
    assign proc_38_input_sync_blk[1] = 1'b0;
    assign proc_38_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_38[1] = dl_detect_out ? proc_dep_vld_vec_38_reg[1] : (proc_38_data_FIFO_blk[1] | proc_38_data_PIPO_blk[1] | proc_38_start_FIFO_blk[1] | proc_38_TLF_FIFO_blk[1] | proc_38_input_sync_blk[1] | proc_38_output_sync_blk[1]);
    assign proc_38_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc20_Pipeline_VITIS_LOOP_268_1_fu_38.inter9_blk_n);
    assign proc_38_data_PIPO_blk[2] = 1'b0;
    assign proc_38_start_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0_U.if_write);
    assign proc_38_TLF_FIFO_blk[2] = 1'b0;
    assign proc_38_input_sync_blk[2] = 1'b0;
    assign proc_38_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_38[2] = dl_detect_out ? proc_dep_vld_vec_38_reg[2] : (proc_38_data_FIFO_blk[2] | proc_38_data_PIPO_blk[2] | proc_38_start_FIFO_blk[2] | proc_38_TLF_FIFO_blk[2] | proc_38_input_sync_blk[2] | proc_38_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_38_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_38_reg <= proc_dep_vld_vec_38;
        end
    end
    assign in_chan_dep_vld_vec_38[0] = dep_chan_vld_35_38;
    assign in_chan_dep_data_vec_38[43 : 0] = dep_chan_data_35_38;
    assign token_in_vec_38[0] = token_35_38;
    assign in_chan_dep_vld_vec_38[1] = dep_chan_vld_37_38;
    assign in_chan_dep_data_vec_38[87 : 44] = dep_chan_data_37_38;
    assign token_in_vec_38[1] = token_37_38;
    assign in_chan_dep_vld_vec_38[2] = dep_chan_vld_39_38;
    assign in_chan_dep_data_vec_38[131 : 88] = dep_chan_data_39_38;
    assign token_in_vec_38[2] = token_39_38;
    assign dep_chan_vld_38_35 = out_chan_dep_vld_vec_38[0];
    assign dep_chan_data_38_35 = out_chan_dep_data_38;
    assign token_38_35 = token_out_vec_38[0];
    assign dep_chan_vld_38_39 = out_chan_dep_vld_vec_38[1];
    assign dep_chan_data_38_39 = out_chan_dep_data_38;
    assign token_38_39 = token_out_vec_38[1];
    assign dep_chan_vld_38_37 = out_chan_dep_vld_vec_38[2];
    assign dep_chan_data_38_37 = out_chan_dep_data_38;
    assign token_38_37 = token_out_vec_38[2];

    // Process: grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 39, 17, 17) BlackBoxJam_hls_deadlock_detect_unit_39 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_39),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_39),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_39),
        .token_in_vec(token_in_vec_39),
        .dl_detect_in(dl_detect_out),
        .origin(origin[39]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_39),
        .out_chan_dep_data(out_chan_dep_data_39),
        .token_out_vec(token_out_vec_39),
        .dl_detect_out(dl_in_vec[39]));

    assign proc_39_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56.wa_in_1_blk_n);
    assign proc_39_data_PIPO_blk[0] = 1'b0;
    assign proc_39_start_FIFO_blk[0] = 1'b0;
    assign proc_39_TLF_FIFO_blk[0] = 1'b0;
    assign proc_39_input_sync_blk[0] = 1'b0;
    assign proc_39_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_39[0] = dl_detect_out ? proc_dep_vld_vec_39_reg[0] : (proc_39_data_FIFO_blk[0] | proc_39_data_PIPO_blk[0] | proc_39_start_FIFO_blk[0] | proc_39_TLF_FIFO_blk[0] | proc_39_input_sync_blk[0] | proc_39_output_sync_blk[0]);
    assign proc_39_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56.wa_out_m_buffer_blk_n);
    assign proc_39_data_PIPO_blk[1] = 1'b0;
    assign proc_39_start_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0_U.if_full_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_start & ~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.real_start & (trans_in_cnt_18 == trans_out_cnt_18) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0_U.if_read);
    assign proc_39_TLF_FIFO_blk[1] = 1'b0;
    assign proc_39_input_sync_blk[1] = 1'b0;
    assign proc_39_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_39[1] = dl_detect_out ? proc_dep_vld_vec_39_reg[1] : (proc_39_data_FIFO_blk[1] | proc_39_data_PIPO_blk[1] | proc_39_start_FIFO_blk[1] | proc_39_TLF_FIFO_blk[1] | proc_39_input_sync_blk[1] | proc_39_output_sync_blk[1]);
    assign proc_39_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.numReps_blk_n);
    assign proc_39_data_PIPO_blk[2] = 1'b0;
    assign proc_39_start_FIFO_blk[2] = 1'b0;
    assign proc_39_TLF_FIFO_blk[2] = 1'b0;
    assign proc_39_input_sync_blk[2] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready);
    assign proc_39_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_39[2] = dl_detect_out ? proc_dep_vld_vec_39_reg[2] : (proc_39_data_FIFO_blk[2] | proc_39_data_PIPO_blk[2] | proc_39_start_FIFO_blk[2] | proc_39_TLF_FIFO_blk[2] | proc_39_input_sync_blk[2] | proc_39_output_sync_blk[2]);
    assign proc_39_data_FIFO_blk[3] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.numReps_c140_blk_n);
    assign proc_39_data_PIPO_blk[3] = 1'b0;
    assign proc_39_start_FIFO_blk[3] = 1'b0;
    assign proc_39_TLF_FIFO_blk[3] = 1'b0;
    assign proc_39_input_sync_blk[3] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready);
    assign proc_39_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_39[3] = dl_detect_out ? proc_dep_vld_vec_39_reg[3] : (proc_39_data_FIFO_blk[3] | proc_39_data_PIPO_blk[3] | proc_39_start_FIFO_blk[3] | proc_39_TLF_FIFO_blk[3] | proc_39_input_sync_blk[3] | proc_39_output_sync_blk[3]);
    assign proc_39_data_FIFO_blk[4] = 1'b0;
    assign proc_39_data_PIPO_blk[4] = 1'b0;
    assign proc_39_start_FIFO_blk[4] = 1'b0;
    assign proc_39_TLF_FIFO_blk[4] = 1'b0;
    assign proc_39_input_sync_blk[4] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready);
    assign proc_39_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_39[4] = dl_detect_out ? proc_dep_vld_vec_39_reg[4] : (proc_39_data_FIFO_blk[4] | proc_39_data_PIPO_blk[4] | proc_39_start_FIFO_blk[4] | proc_39_TLF_FIFO_blk[4] | proc_39_input_sync_blk[4] | proc_39_output_sync_blk[4]);
    assign proc_39_data_FIFO_blk[5] = 1'b0;
    assign proc_39_data_PIPO_blk[5] = 1'b0;
    assign proc_39_start_FIFO_blk[5] = 1'b0;
    assign proc_39_TLF_FIFO_blk[5] = 1'b0;
    assign proc_39_input_sync_blk[5] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready);
    assign proc_39_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_39[5] = dl_detect_out ? proc_dep_vld_vec_39_reg[5] : (proc_39_data_FIFO_blk[5] | proc_39_data_PIPO_blk[5] | proc_39_start_FIFO_blk[5] | proc_39_TLF_FIFO_blk[5] | proc_39_input_sync_blk[5] | proc_39_output_sync_blk[5]);
    assign proc_39_data_FIFO_blk[6] = 1'b0;
    assign proc_39_data_PIPO_blk[6] = 1'b0;
    assign proc_39_start_FIFO_blk[6] = 1'b0;
    assign proc_39_TLF_FIFO_blk[6] = 1'b0;
    assign proc_39_input_sync_blk[6] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready);
    assign proc_39_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_39[6] = dl_detect_out ? proc_dep_vld_vec_39_reg[6] : (proc_39_data_FIFO_blk[6] | proc_39_data_PIPO_blk[6] | proc_39_start_FIFO_blk[6] | proc_39_TLF_FIFO_blk[6] | proc_39_input_sync_blk[6] | proc_39_output_sync_blk[6]);
    assign proc_39_data_FIFO_blk[7] = 1'b0;
    assign proc_39_data_PIPO_blk[7] = 1'b0;
    assign proc_39_start_FIFO_blk[7] = 1'b0;
    assign proc_39_TLF_FIFO_blk[7] = 1'b0;
    assign proc_39_input_sync_blk[7] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready);
    assign proc_39_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_39[7] = dl_detect_out ? proc_dep_vld_vec_39_reg[7] : (proc_39_data_FIFO_blk[7] | proc_39_data_PIPO_blk[7] | proc_39_start_FIFO_blk[7] | proc_39_TLF_FIFO_blk[7] | proc_39_input_sync_blk[7] | proc_39_output_sync_blk[7]);
    assign proc_39_data_FIFO_blk[8] = 1'b0;
    assign proc_39_data_PIPO_blk[8] = 1'b0;
    assign proc_39_start_FIFO_blk[8] = 1'b0;
    assign proc_39_TLF_FIFO_blk[8] = 1'b0;
    assign proc_39_input_sync_blk[8] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready);
    assign proc_39_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_39[8] = dl_detect_out ? proc_dep_vld_vec_39_reg[8] : (proc_39_data_FIFO_blk[8] | proc_39_data_PIPO_blk[8] | proc_39_start_FIFO_blk[8] | proc_39_TLF_FIFO_blk[8] | proc_39_input_sync_blk[8] | proc_39_output_sync_blk[8]);
    assign proc_39_data_FIFO_blk[9] = 1'b0;
    assign proc_39_data_PIPO_blk[9] = 1'b0;
    assign proc_39_start_FIFO_blk[9] = 1'b0;
    assign proc_39_TLF_FIFO_blk[9] = 1'b0;
    assign proc_39_input_sync_blk[9] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_39_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_39[9] = dl_detect_out ? proc_dep_vld_vec_39_reg[9] : (proc_39_data_FIFO_blk[9] | proc_39_data_PIPO_blk[9] | proc_39_start_FIFO_blk[9] | proc_39_TLF_FIFO_blk[9] | proc_39_input_sync_blk[9] | proc_39_output_sync_blk[9]);
    assign proc_39_data_FIFO_blk[10] = 1'b0;
    assign proc_39_data_PIPO_blk[10] = 1'b0;
    assign proc_39_start_FIFO_blk[10] = 1'b0;
    assign proc_39_TLF_FIFO_blk[10] = 1'b0;
    assign proc_39_input_sync_blk[10] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready);
    assign proc_39_output_sync_blk[10] = 1'b0;
    assign proc_dep_vld_vec_39[10] = dl_detect_out ? proc_dep_vld_vec_39_reg[10] : (proc_39_data_FIFO_blk[10] | proc_39_data_PIPO_blk[10] | proc_39_start_FIFO_blk[10] | proc_39_TLF_FIFO_blk[10] | proc_39_input_sync_blk[10] | proc_39_output_sync_blk[10]);
    assign proc_39_data_FIFO_blk[11] = 1'b0;
    assign proc_39_data_PIPO_blk[11] = 1'b0;
    assign proc_39_start_FIFO_blk[11] = 1'b0;
    assign proc_39_TLF_FIFO_blk[11] = 1'b0;
    assign proc_39_input_sync_blk[11] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready);
    assign proc_39_output_sync_blk[11] = 1'b0;
    assign proc_dep_vld_vec_39[11] = dl_detect_out ? proc_dep_vld_vec_39_reg[11] : (proc_39_data_FIFO_blk[11] | proc_39_data_PIPO_blk[11] | proc_39_start_FIFO_blk[11] | proc_39_TLF_FIFO_blk[11] | proc_39_input_sync_blk[11] | proc_39_output_sync_blk[11]);
    assign proc_39_data_FIFO_blk[12] = 1'b0;
    assign proc_39_data_PIPO_blk[12] = 1'b0;
    assign proc_39_start_FIFO_blk[12] = 1'b0;
    assign proc_39_TLF_FIFO_blk[12] = 1'b0;
    assign proc_39_input_sync_blk[12] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready);
    assign proc_39_output_sync_blk[12] = 1'b0;
    assign proc_dep_vld_vec_39[12] = dl_detect_out ? proc_dep_vld_vec_39_reg[12] : (proc_39_data_FIFO_blk[12] | proc_39_data_PIPO_blk[12] | proc_39_start_FIFO_blk[12] | proc_39_TLF_FIFO_blk[12] | proc_39_input_sync_blk[12] | proc_39_output_sync_blk[12]);
    assign proc_39_data_FIFO_blk[13] = 1'b0;
    assign proc_39_data_PIPO_blk[13] = 1'b0;
    assign proc_39_start_FIFO_blk[13] = 1'b0;
    assign proc_39_TLF_FIFO_blk[13] = 1'b0;
    assign proc_39_input_sync_blk[13] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready);
    assign proc_39_output_sync_blk[13] = 1'b0;
    assign proc_dep_vld_vec_39[13] = dl_detect_out ? proc_dep_vld_vec_39_reg[13] : (proc_39_data_FIFO_blk[13] | proc_39_data_PIPO_blk[13] | proc_39_start_FIFO_blk[13] | proc_39_TLF_FIFO_blk[13] | proc_39_input_sync_blk[13] | proc_39_output_sync_blk[13]);
    assign proc_39_data_FIFO_blk[14] = 1'b0;
    assign proc_39_data_PIPO_blk[14] = 1'b0;
    assign proc_39_start_FIFO_blk[14] = 1'b0;
    assign proc_39_TLF_FIFO_blk[14] = 1'b0;
    assign proc_39_input_sync_blk[14] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_39_output_sync_blk[14] = 1'b0;
    assign proc_dep_vld_vec_39[14] = dl_detect_out ? proc_dep_vld_vec_39_reg[14] : (proc_39_data_FIFO_blk[14] | proc_39_data_PIPO_blk[14] | proc_39_start_FIFO_blk[14] | proc_39_TLF_FIFO_blk[14] | proc_39_input_sync_blk[14] | proc_39_output_sync_blk[14]);
    assign proc_39_data_FIFO_blk[15] = 1'b0;
    assign proc_39_data_PIPO_blk[15] = 1'b0;
    assign proc_39_start_FIFO_blk[15] = 1'b0;
    assign proc_39_TLF_FIFO_blk[15] = 1'b0;
    assign proc_39_input_sync_blk[15] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready);
    assign proc_39_output_sync_blk[15] = 1'b0;
    assign proc_dep_vld_vec_39[15] = dl_detect_out ? proc_dep_vld_vec_39_reg[15] : (proc_39_data_FIFO_blk[15] | proc_39_data_PIPO_blk[15] | proc_39_start_FIFO_blk[15] | proc_39_TLF_FIFO_blk[15] | proc_39_input_sync_blk[15] | proc_39_output_sync_blk[15]);
    assign proc_39_data_FIFO_blk[16] = 1'b0;
    assign proc_39_data_PIPO_blk[16] = 1'b0;
    assign proc_39_start_FIFO_blk[16] = 1'b0;
    assign proc_39_TLF_FIFO_blk[16] = 1'b0;
    assign proc_39_input_sync_blk[16] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready);
    assign proc_39_output_sync_blk[16] = 1'b0;
    assign proc_dep_vld_vec_39[16] = dl_detect_out ? proc_dep_vld_vec_39_reg[16] : (proc_39_data_FIFO_blk[16] | proc_39_data_PIPO_blk[16] | proc_39_start_FIFO_blk[16] | proc_39_TLF_FIFO_blk[16] | proc_39_input_sync_blk[16] | proc_39_output_sync_blk[16]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_39_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_39_reg <= proc_dep_vld_vec_39;
        end
    end
    assign in_chan_dep_vld_vec_39[0] = dep_chan_vld_0_39;
    assign in_chan_dep_data_vec_39[43 : 0] = dep_chan_data_0_39;
    assign token_in_vec_39[0] = token_0_39;
    assign in_chan_dep_vld_vec_39[1] = dep_chan_vld_1_39;
    assign in_chan_dep_data_vec_39[87 : 44] = dep_chan_data_1_39;
    assign token_in_vec_39[1] = token_1_39;
    assign in_chan_dep_vld_vec_39[2] = dep_chan_vld_5_39;
    assign in_chan_dep_data_vec_39[131 : 88] = dep_chan_data_5_39;
    assign token_in_vec_39[2] = token_5_39;
    assign in_chan_dep_vld_vec_39[3] = dep_chan_vld_6_39;
    assign in_chan_dep_data_vec_39[175 : 132] = dep_chan_data_6_39;
    assign token_in_vec_39[3] = token_6_39;
    assign in_chan_dep_vld_vec_39[4] = dep_chan_vld_11_39;
    assign in_chan_dep_data_vec_39[219 : 176] = dep_chan_data_11_39;
    assign token_in_vec_39[4] = token_11_39;
    assign in_chan_dep_vld_vec_39[5] = dep_chan_vld_16_39;
    assign in_chan_dep_data_vec_39[263 : 220] = dep_chan_data_16_39;
    assign token_in_vec_39[5] = token_16_39;
    assign in_chan_dep_vld_vec_39[6] = dep_chan_vld_17_39;
    assign in_chan_dep_data_vec_39[307 : 264] = dep_chan_data_17_39;
    assign token_in_vec_39[6] = token_17_39;
    assign in_chan_dep_vld_vec_39[7] = dep_chan_vld_19_39;
    assign in_chan_dep_data_vec_39[351 : 308] = dep_chan_data_19_39;
    assign token_in_vec_39[7] = token_19_39;
    assign in_chan_dep_vld_vec_39[8] = dep_chan_vld_22_39;
    assign in_chan_dep_data_vec_39[395 : 352] = dep_chan_data_22_39;
    assign token_in_vec_39[8] = token_22_39;
    assign in_chan_dep_vld_vec_39[9] = dep_chan_vld_23_39;
    assign in_chan_dep_data_vec_39[439 : 396] = dep_chan_data_23_39;
    assign token_in_vec_39[9] = token_23_39;
    assign in_chan_dep_vld_vec_39[10] = dep_chan_vld_28_39;
    assign in_chan_dep_data_vec_39[483 : 440] = dep_chan_data_28_39;
    assign token_in_vec_39[10] = token_28_39;
    assign in_chan_dep_vld_vec_39[11] = dep_chan_vld_29_39;
    assign in_chan_dep_data_vec_39[527 : 484] = dep_chan_data_29_39;
    assign token_in_vec_39[11] = token_29_39;
    assign in_chan_dep_vld_vec_39[12] = dep_chan_vld_33_39;
    assign in_chan_dep_data_vec_39[571 : 528] = dep_chan_data_33_39;
    assign token_in_vec_39[12] = token_33_39;
    assign in_chan_dep_vld_vec_39[13] = dep_chan_vld_36_39;
    assign in_chan_dep_data_vec_39[615 : 572] = dep_chan_data_36_39;
    assign token_in_vec_39[13] = token_36_39;
    assign in_chan_dep_vld_vec_39[14] = dep_chan_vld_38_39;
    assign in_chan_dep_data_vec_39[659 : 616] = dep_chan_data_38_39;
    assign token_in_vec_39[14] = token_38_39;
    assign in_chan_dep_vld_vec_39[15] = dep_chan_vld_40_39;
    assign in_chan_dep_data_vec_39[703 : 660] = dep_chan_data_40_39;
    assign token_in_vec_39[15] = token_40_39;
    assign in_chan_dep_vld_vec_39[16] = dep_chan_vld_42_39;
    assign in_chan_dep_data_vec_39[747 : 704] = dep_chan_data_42_39;
    assign token_in_vec_39[16] = token_42_39;
    assign dep_chan_vld_39_38 = out_chan_dep_vld_vec_39[0];
    assign dep_chan_data_39_38 = out_chan_dep_data_39;
    assign token_39_38 = token_out_vec_39[0];
    assign dep_chan_vld_39_40 = out_chan_dep_vld_vec_39[1];
    assign dep_chan_data_39_40 = out_chan_dep_data_39;
    assign token_39_40 = token_out_vec_39[1];
    assign dep_chan_vld_39_36 = out_chan_dep_vld_vec_39[2];
    assign dep_chan_data_39_36 = out_chan_dep_data_39;
    assign token_39_36 = token_out_vec_39[2];
    assign dep_chan_vld_39_42 = out_chan_dep_vld_vec_39[3];
    assign dep_chan_data_39_42 = out_chan_dep_data_39;
    assign token_39_42 = token_out_vec_39[3];
    assign dep_chan_vld_39_0 = out_chan_dep_vld_vec_39[4];
    assign dep_chan_data_39_0 = out_chan_dep_data_39;
    assign token_39_0 = token_out_vec_39[4];
    assign dep_chan_vld_39_1 = out_chan_dep_vld_vec_39[5];
    assign dep_chan_data_39_1 = out_chan_dep_data_39;
    assign token_39_1 = token_out_vec_39[5];
    assign dep_chan_vld_39_5 = out_chan_dep_vld_vec_39[6];
    assign dep_chan_data_39_5 = out_chan_dep_data_39;
    assign token_39_5 = token_out_vec_39[6];
    assign dep_chan_vld_39_6 = out_chan_dep_vld_vec_39[7];
    assign dep_chan_data_39_6 = out_chan_dep_data_39;
    assign token_39_6 = token_out_vec_39[7];
    assign dep_chan_vld_39_11 = out_chan_dep_vld_vec_39[8];
    assign dep_chan_data_39_11 = out_chan_dep_data_39;
    assign token_39_11 = token_out_vec_39[8];
    assign dep_chan_vld_39_16 = out_chan_dep_vld_vec_39[9];
    assign dep_chan_data_39_16 = out_chan_dep_data_39;
    assign token_39_16 = token_out_vec_39[9];
    assign dep_chan_vld_39_17 = out_chan_dep_vld_vec_39[10];
    assign dep_chan_data_39_17 = out_chan_dep_data_39;
    assign token_39_17 = token_out_vec_39[10];
    assign dep_chan_vld_39_19 = out_chan_dep_vld_vec_39[11];
    assign dep_chan_data_39_19 = out_chan_dep_data_39;
    assign token_39_19 = token_out_vec_39[11];
    assign dep_chan_vld_39_22 = out_chan_dep_vld_vec_39[12];
    assign dep_chan_data_39_22 = out_chan_dep_data_39;
    assign token_39_22 = token_out_vec_39[12];
    assign dep_chan_vld_39_23 = out_chan_dep_vld_vec_39[13];
    assign dep_chan_data_39_23 = out_chan_dep_data_39;
    assign token_39_23 = token_out_vec_39[13];
    assign dep_chan_vld_39_28 = out_chan_dep_vld_vec_39[14];
    assign dep_chan_data_39_28 = out_chan_dep_data_39;
    assign token_39_28 = token_out_vec_39[14];
    assign dep_chan_vld_39_29 = out_chan_dep_vld_vec_39[15];
    assign dep_chan_data_39_29 = out_chan_dep_data_39;
    assign token_39_29 = token_out_vec_39[15];
    assign dep_chan_vld_39_33 = out_chan_dep_vld_vec_39[16];
    assign dep_chan_data_39_33 = out_chan_dep_data_39;
    assign token_39_33 = token_out_vec_39[16];

    // Process: grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 40, 3, 3) BlackBoxJam_hls_deadlock_detect_unit_40 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_40),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_40),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_40),
        .token_in_vec(token_in_vec_40),
        .dl_detect_in(dl_detect_out),
        .origin(origin[40]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_40),
        .out_chan_dep_data(out_chan_dep_data_40),
        .token_out_vec(token_out_vec_40),
        .dl_detect_out(dl_in_vec[40]));

    assign proc_40_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.totalIters_16_loc_blk_n);
    assign proc_40_data_PIPO_blk[0] = 1'b0;
    assign proc_40_start_FIFO_blk[0] = 1'b0;
    assign proc_40_TLF_FIFO_blk[0] = 1'b0;
    assign proc_40_input_sync_blk[0] = 1'b0;
    assign proc_40_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_40[0] = dl_detect_out ? proc_dep_vld_vec_40_reg[0] : (proc_40_data_FIFO_blk[0] | proc_40_data_PIPO_blk[0] | proc_40_start_FIFO_blk[0] | proc_40_TLF_FIFO_blk[0] | proc_40_input_sync_blk[0] | proc_40_output_sync_blk[0]);
    assign proc_40_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc22_Pipeline_VITIS_LOOP_300_3_fu_50.wa_out_m_buffer_blk_n);
    assign proc_40_data_PIPO_blk[1] = 1'b0;
    assign proc_40_start_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0_U.if_write);
    assign proc_40_TLF_FIFO_blk[1] = 1'b0;
    assign proc_40_input_sync_blk[1] = 1'b0;
    assign proc_40_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_40[1] = dl_detect_out ? proc_dep_vld_vec_40_reg[1] : (proc_40_data_FIFO_blk[1] | proc_40_data_PIPO_blk[1] | proc_40_start_FIFO_blk[1] | proc_40_TLF_FIFO_blk[1] | proc_40_input_sync_blk[1] | proc_40_output_sync_blk[1]);
    assign proc_40_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc22_Pipeline_VITIS_LOOP_300_3_fu_50.inter10_blk_n) | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.totalIters_16_loc_c_blk_n);
    assign proc_40_data_PIPO_blk[2] = 1'b0;
    assign proc_40_start_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.real_start & (trans_in_cnt_19 == trans_out_cnt_19) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0_U.if_read);
    assign proc_40_TLF_FIFO_blk[2] = 1'b0;
    assign proc_40_input_sync_blk[2] = 1'b0;
    assign proc_40_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_40[2] = dl_detect_out ? proc_dep_vld_vec_40_reg[2] : (proc_40_data_FIFO_blk[2] | proc_40_data_PIPO_blk[2] | proc_40_start_FIFO_blk[2] | proc_40_TLF_FIFO_blk[2] | proc_40_input_sync_blk[2] | proc_40_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_40_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_40_reg <= proc_dep_vld_vec_40;
        end
    end
    assign in_chan_dep_vld_vec_40[0] = dep_chan_vld_37_40;
    assign in_chan_dep_data_vec_40[43 : 0] = dep_chan_data_37_40;
    assign token_in_vec_40[0] = token_37_40;
    assign in_chan_dep_vld_vec_40[1] = dep_chan_vld_39_40;
    assign in_chan_dep_data_vec_40[87 : 44] = dep_chan_data_39_40;
    assign token_in_vec_40[1] = token_39_40;
    assign in_chan_dep_vld_vec_40[2] = dep_chan_vld_41_40;
    assign in_chan_dep_data_vec_40[131 : 88] = dep_chan_data_41_40;
    assign token_in_vec_40[2] = token_41_40;
    assign dep_chan_vld_40_37 = out_chan_dep_vld_vec_40[0];
    assign dep_chan_data_40_37 = out_chan_dep_data_40;
    assign token_40_37 = token_out_vec_40[0];
    assign dep_chan_vld_40_39 = out_chan_dep_vld_vec_40[1];
    assign dep_chan_data_40_39 = out_chan_dep_data_40;
    assign token_40_39 = token_out_vec_40[1];
    assign dep_chan_vld_40_41 = out_chan_dep_vld_vec_40[2];
    assign dep_chan_data_40_41 = out_chan_dep_data_40;
    assign token_40_41 = token_out_vec_40[2];

    // Process: grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 41, 2, 2) BlackBoxJam_hls_deadlock_detect_unit_41 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_41),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_41),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_41),
        .token_in_vec(token_in_vec_41),
        .dl_detect_in(dl_detect_out),
        .origin(origin[41]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_41),
        .out_chan_dep_data(out_chan_dep_data_41),
        .token_out_vec(token_out_vec_41),
        .dl_detect_out(dl_in_vec[41]));

    assign proc_41_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0.totalIters_16_loc_blk_n) | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1_fu_38.inter10_blk_n);
    assign proc_41_data_PIPO_blk[0] = 1'b0;
    assign proc_41_start_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0_U.if_write);
    assign proc_41_TLF_FIFO_blk[0] = 1'b0;
    assign proc_41_input_sync_blk[0] = 1'b0;
    assign proc_41_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_41[0] = dl_detect_out ? proc_dep_vld_vec_41_reg[0] : (proc_41_data_FIFO_blk[0] | proc_41_data_PIPO_blk[0] | proc_41_start_FIFO_blk[0] | proc_41_TLF_FIFO_blk[0] | proc_41_input_sync_blk[0] | proc_41_output_sync_blk[0]);
    assign proc_41_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1_fu_38.wa_in_blk_n);
    assign proc_41_data_PIPO_blk[1] = 1'b0;
    assign proc_41_start_FIFO_blk[1] = 1'b0;
    assign proc_41_TLF_FIFO_blk[1] = 1'b0;
    assign proc_41_input_sync_blk[1] = 1'b0;
    assign proc_41_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_41[1] = dl_detect_out ? proc_dep_vld_vec_41_reg[1] : (proc_41_data_FIFO_blk[1] | proc_41_data_PIPO_blk[1] | proc_41_start_FIFO_blk[1] | proc_41_TLF_FIFO_blk[1] | proc_41_input_sync_blk[1] | proc_41_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_41_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_41_reg <= proc_dep_vld_vec_41;
        end
    end
    assign in_chan_dep_vld_vec_41[0] = dep_chan_vld_40_41;
    assign in_chan_dep_data_vec_41[43 : 0] = dep_chan_data_40_41;
    assign token_in_vec_41[0] = token_40_41;
    assign in_chan_dep_vld_vec_41[1] = dep_chan_vld_42_41;
    assign in_chan_dep_data_vec_41[87 : 44] = dep_chan_data_42_41;
    assign token_in_vec_41[1] = token_42_41;
    assign dep_chan_vld_41_40 = out_chan_dep_vld_vec_41[0];
    assign dep_chan_data_41_40 = out_chan_dep_data_41;
    assign token_41_40 = token_out_vec_41[0];
    assign dep_chan_vld_41_42 = out_chan_dep_vld_vec_41[1];
    assign dep_chan_data_41_42 = out_chan_dep_data_41;
    assign token_41_42 = token_out_vec_41[1];

    // Process: grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 42, 17, 17) BlackBoxJam_hls_deadlock_detect_unit_42 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_42),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_42),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_42),
        .token_in_vec(token_in_vec_42),
        .dl_detect_in(dl_detect_out),
        .origin(origin[42]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_42),
        .out_chan_dep_data(out_chan_dep_data_42),
        .token_out_vec(token_out_vec_42),
        .dl_detect_out(dl_in_vec[42]));

    assign proc_42_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60.wa_in_blk_n);
    assign proc_42_data_PIPO_blk[0] = 1'b0;
    assign proc_42_start_FIFO_blk[0] = 1'b0;
    assign proc_42_TLF_FIFO_blk[0] = 1'b0;
    assign proc_42_input_sync_blk[0] = 1'b0;
    assign proc_42_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_42[0] = dl_detect_out ? proc_dep_vld_vec_42_reg[0] : (proc_42_data_FIFO_blk[0] | proc_42_data_PIPO_blk[0] | proc_42_start_FIFO_blk[0] | proc_42_TLF_FIFO_blk[0] | proc_42_input_sync_blk[0] | proc_42_output_sync_blk[0]);
    assign proc_42_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60.memOutStrm_blk_n) | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.numReps_c_blk_n);
    assign proc_42_data_PIPO_blk[1] = 1'b0;
    assign proc_42_start_FIFO_blk[1] = 1'b0;
    assign proc_42_TLF_FIFO_blk[1] = 1'b0;
    assign proc_42_input_sync_blk[1] = 1'b0;
    assign proc_42_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_42[1] = dl_detect_out ? proc_dep_vld_vec_42_reg[1] : (proc_42_data_FIFO_blk[1] | proc_42_data_PIPO_blk[1] | proc_42_start_FIFO_blk[1] | proc_42_TLF_FIFO_blk[1] | proc_42_input_sync_blk[1] | proc_42_output_sync_blk[1]);
    assign proc_42_data_FIFO_blk[2] = 1'b0 | (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.numReps_blk_n);
    assign proc_42_data_PIPO_blk[2] = 1'b0;
    assign proc_42_start_FIFO_blk[2] = 1'b0;
    assign proc_42_TLF_FIFO_blk[2] = 1'b0;
    assign proc_42_input_sync_blk[2] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready);
    assign proc_42_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_42[2] = dl_detect_out ? proc_dep_vld_vec_42_reg[2] : (proc_42_data_FIFO_blk[2] | proc_42_data_PIPO_blk[2] | proc_42_start_FIFO_blk[2] | proc_42_TLF_FIFO_blk[2] | proc_42_input_sync_blk[2] | proc_42_output_sync_blk[2]);
    assign proc_42_data_FIFO_blk[3] = 1'b0;
    assign proc_42_data_PIPO_blk[3] = 1'b0;
    assign proc_42_start_FIFO_blk[3] = 1'b0;
    assign proc_42_TLF_FIFO_blk[3] = 1'b0;
    assign proc_42_input_sync_blk[3] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready);
    assign proc_42_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_42[3] = dl_detect_out ? proc_dep_vld_vec_42_reg[3] : (proc_42_data_FIFO_blk[3] | proc_42_data_PIPO_blk[3] | proc_42_start_FIFO_blk[3] | proc_42_TLF_FIFO_blk[3] | proc_42_input_sync_blk[3] | proc_42_output_sync_blk[3]);
    assign proc_42_data_FIFO_blk[4] = 1'b0;
    assign proc_42_data_PIPO_blk[4] = 1'b0;
    assign proc_42_start_FIFO_blk[4] = 1'b0;
    assign proc_42_TLF_FIFO_blk[4] = 1'b0;
    assign proc_42_input_sync_blk[4] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready);
    assign proc_42_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_42[4] = dl_detect_out ? proc_dep_vld_vec_42_reg[4] : (proc_42_data_FIFO_blk[4] | proc_42_data_PIPO_blk[4] | proc_42_start_FIFO_blk[4] | proc_42_TLF_FIFO_blk[4] | proc_42_input_sync_blk[4] | proc_42_output_sync_blk[4]);
    assign proc_42_data_FIFO_blk[5] = 1'b0;
    assign proc_42_data_PIPO_blk[5] = 1'b0;
    assign proc_42_start_FIFO_blk[5] = 1'b0;
    assign proc_42_TLF_FIFO_blk[5] = 1'b0;
    assign proc_42_input_sync_blk[5] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready);
    assign proc_42_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_42[5] = dl_detect_out ? proc_dep_vld_vec_42_reg[5] : (proc_42_data_FIFO_blk[5] | proc_42_data_PIPO_blk[5] | proc_42_start_FIFO_blk[5] | proc_42_TLF_FIFO_blk[5] | proc_42_input_sync_blk[5] | proc_42_output_sync_blk[5]);
    assign proc_42_data_FIFO_blk[6] = 1'b0;
    assign proc_42_data_PIPO_blk[6] = 1'b0;
    assign proc_42_start_FIFO_blk[6] = 1'b0;
    assign proc_42_TLF_FIFO_blk[6] = 1'b0;
    assign proc_42_input_sync_blk[6] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready);
    assign proc_42_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_42[6] = dl_detect_out ? proc_dep_vld_vec_42_reg[6] : (proc_42_data_FIFO_blk[6] | proc_42_data_PIPO_blk[6] | proc_42_start_FIFO_blk[6] | proc_42_TLF_FIFO_blk[6] | proc_42_input_sync_blk[6] | proc_42_output_sync_blk[6]);
    assign proc_42_data_FIFO_blk[7] = 1'b0;
    assign proc_42_data_PIPO_blk[7] = 1'b0;
    assign proc_42_start_FIFO_blk[7] = 1'b0;
    assign proc_42_TLF_FIFO_blk[7] = 1'b0;
    assign proc_42_input_sync_blk[7] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready);
    assign proc_42_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_42[7] = dl_detect_out ? proc_dep_vld_vec_42_reg[7] : (proc_42_data_FIFO_blk[7] | proc_42_data_PIPO_blk[7] | proc_42_start_FIFO_blk[7] | proc_42_TLF_FIFO_blk[7] | proc_42_input_sync_blk[7] | proc_42_output_sync_blk[7]);
    assign proc_42_data_FIFO_blk[8] = 1'b0;
    assign proc_42_data_PIPO_blk[8] = 1'b0;
    assign proc_42_start_FIFO_blk[8] = 1'b0;
    assign proc_42_TLF_FIFO_blk[8] = 1'b0;
    assign proc_42_input_sync_blk[8] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_42_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_42[8] = dl_detect_out ? proc_dep_vld_vec_42_reg[8] : (proc_42_data_FIFO_blk[8] | proc_42_data_PIPO_blk[8] | proc_42_start_FIFO_blk[8] | proc_42_TLF_FIFO_blk[8] | proc_42_input_sync_blk[8] | proc_42_output_sync_blk[8]);
    assign proc_42_data_FIFO_blk[9] = 1'b0;
    assign proc_42_data_PIPO_blk[9] = 1'b0;
    assign proc_42_start_FIFO_blk[9] = 1'b0;
    assign proc_42_TLF_FIFO_blk[9] = 1'b0;
    assign proc_42_input_sync_blk[9] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready);
    assign proc_42_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_42[9] = dl_detect_out ? proc_dep_vld_vec_42_reg[9] : (proc_42_data_FIFO_blk[9] | proc_42_data_PIPO_blk[9] | proc_42_start_FIFO_blk[9] | proc_42_TLF_FIFO_blk[9] | proc_42_input_sync_blk[9] | proc_42_output_sync_blk[9]);
    assign proc_42_data_FIFO_blk[10] = 1'b0;
    assign proc_42_data_PIPO_blk[10] = 1'b0;
    assign proc_42_start_FIFO_blk[10] = 1'b0;
    assign proc_42_TLF_FIFO_blk[10] = 1'b0;
    assign proc_42_input_sync_blk[10] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready);
    assign proc_42_output_sync_blk[10] = 1'b0;
    assign proc_dep_vld_vec_42[10] = dl_detect_out ? proc_dep_vld_vec_42_reg[10] : (proc_42_data_FIFO_blk[10] | proc_42_data_PIPO_blk[10] | proc_42_start_FIFO_blk[10] | proc_42_TLF_FIFO_blk[10] | proc_42_input_sync_blk[10] | proc_42_output_sync_blk[10]);
    assign proc_42_data_FIFO_blk[11] = 1'b0;
    assign proc_42_data_PIPO_blk[11] = 1'b0;
    assign proc_42_start_FIFO_blk[11] = 1'b0;
    assign proc_42_TLF_FIFO_blk[11] = 1'b0;
    assign proc_42_input_sync_blk[11] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready);
    assign proc_42_output_sync_blk[11] = 1'b0;
    assign proc_dep_vld_vec_42[11] = dl_detect_out ? proc_dep_vld_vec_42_reg[11] : (proc_42_data_FIFO_blk[11] | proc_42_data_PIPO_blk[11] | proc_42_start_FIFO_blk[11] | proc_42_TLF_FIFO_blk[11] | proc_42_input_sync_blk[11] | proc_42_output_sync_blk[11]);
    assign proc_42_data_FIFO_blk[12] = 1'b0;
    assign proc_42_data_PIPO_blk[12] = 1'b0;
    assign proc_42_start_FIFO_blk[12] = 1'b0;
    assign proc_42_TLF_FIFO_blk[12] = 1'b0;
    assign proc_42_input_sync_blk[12] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready);
    assign proc_42_output_sync_blk[12] = 1'b0;
    assign proc_dep_vld_vec_42[12] = dl_detect_out ? proc_dep_vld_vec_42_reg[12] : (proc_42_data_FIFO_blk[12] | proc_42_data_PIPO_blk[12] | proc_42_start_FIFO_blk[12] | proc_42_TLF_FIFO_blk[12] | proc_42_input_sync_blk[12] | proc_42_output_sync_blk[12]);
    assign proc_42_data_FIFO_blk[13] = 1'b0;
    assign proc_42_data_PIPO_blk[13] = 1'b0;
    assign proc_42_start_FIFO_blk[13] = 1'b0;
    assign proc_42_TLF_FIFO_blk[13] = 1'b0;
    assign proc_42_input_sync_blk[13] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready);
    assign proc_42_output_sync_blk[13] = 1'b0;
    assign proc_dep_vld_vec_42[13] = dl_detect_out ? proc_dep_vld_vec_42_reg[13] : (proc_42_data_FIFO_blk[13] | proc_42_data_PIPO_blk[13] | proc_42_start_FIFO_blk[13] | proc_42_TLF_FIFO_blk[13] | proc_42_input_sync_blk[13] | proc_42_output_sync_blk[13]);
    assign proc_42_data_FIFO_blk[14] = 1'b0;
    assign proc_42_data_PIPO_blk[14] = 1'b0;
    assign proc_42_start_FIFO_blk[14] = 1'b0;
    assign proc_42_TLF_FIFO_blk[14] = 1'b0;
    assign proc_42_input_sync_blk[14] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready);
    assign proc_42_output_sync_blk[14] = 1'b0;
    assign proc_dep_vld_vec_42[14] = dl_detect_out ? proc_dep_vld_vec_42_reg[14] : (proc_42_data_FIFO_blk[14] | proc_42_data_PIPO_blk[14] | proc_42_start_FIFO_blk[14] | proc_42_TLF_FIFO_blk[14] | proc_42_input_sync_blk[14] | proc_42_output_sync_blk[14]);
    assign proc_42_data_FIFO_blk[15] = 1'b0;
    assign proc_42_data_PIPO_blk[15] = 1'b0;
    assign proc_42_start_FIFO_blk[15] = 1'b0;
    assign proc_42_TLF_FIFO_blk[15] = 1'b0;
    assign proc_42_input_sync_blk[15] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready);
    assign proc_42_output_sync_blk[15] = 1'b0;
    assign proc_dep_vld_vec_42[15] = dl_detect_out ? proc_dep_vld_vec_42_reg[15] : (proc_42_data_FIFO_blk[15] | proc_42_data_PIPO_blk[15] | proc_42_start_FIFO_blk[15] | proc_42_TLF_FIFO_blk[15] | proc_42_input_sync_blk[15] | proc_42_output_sync_blk[15]);
    assign proc_42_data_FIFO_blk[16] = 1'b0;
    assign proc_42_data_PIPO_blk[16] = 1'b0;
    assign proc_42_start_FIFO_blk[16] = 1'b0;
    assign proc_42_TLF_FIFO_blk[16] = 1'b0;
    assign proc_42_input_sync_blk[16] = 1'b0 | (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready);
    assign proc_42_output_sync_blk[16] = 1'b0;
    assign proc_dep_vld_vec_42[16] = dl_detect_out ? proc_dep_vld_vec_42_reg[16] : (proc_42_data_FIFO_blk[16] | proc_42_data_PIPO_blk[16] | proc_42_start_FIFO_blk[16] | proc_42_TLF_FIFO_blk[16] | proc_42_input_sync_blk[16] | proc_42_output_sync_blk[16]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_42_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_42_reg <= proc_dep_vld_vec_42;
        end
    end
    assign in_chan_dep_vld_vec_42[0] = dep_chan_vld_0_42;
    assign in_chan_dep_data_vec_42[43 : 0] = dep_chan_data_0_42;
    assign token_in_vec_42[0] = token_0_42;
    assign in_chan_dep_vld_vec_42[1] = dep_chan_vld_1_42;
    assign in_chan_dep_data_vec_42[87 : 44] = dep_chan_data_1_42;
    assign token_in_vec_42[1] = token_1_42;
    assign in_chan_dep_vld_vec_42[2] = dep_chan_vld_5_42;
    assign in_chan_dep_data_vec_42[131 : 88] = dep_chan_data_5_42;
    assign token_in_vec_42[2] = token_5_42;
    assign in_chan_dep_vld_vec_42[3] = dep_chan_vld_6_42;
    assign in_chan_dep_data_vec_42[175 : 132] = dep_chan_data_6_42;
    assign token_in_vec_42[3] = token_6_42;
    assign in_chan_dep_vld_vec_42[4] = dep_chan_vld_11_42;
    assign in_chan_dep_data_vec_42[219 : 176] = dep_chan_data_11_42;
    assign token_in_vec_42[4] = token_11_42;
    assign in_chan_dep_vld_vec_42[5] = dep_chan_vld_16_42;
    assign in_chan_dep_data_vec_42[263 : 220] = dep_chan_data_16_42;
    assign token_in_vec_42[5] = token_16_42;
    assign in_chan_dep_vld_vec_42[6] = dep_chan_vld_17_42;
    assign in_chan_dep_data_vec_42[307 : 264] = dep_chan_data_17_42;
    assign token_in_vec_42[6] = token_17_42;
    assign in_chan_dep_vld_vec_42[7] = dep_chan_vld_19_42;
    assign in_chan_dep_data_vec_42[351 : 308] = dep_chan_data_19_42;
    assign token_in_vec_42[7] = token_19_42;
    assign in_chan_dep_vld_vec_42[8] = dep_chan_vld_22_42;
    assign in_chan_dep_data_vec_42[395 : 352] = dep_chan_data_22_42;
    assign token_in_vec_42[8] = token_22_42;
    assign in_chan_dep_vld_vec_42[9] = dep_chan_vld_23_42;
    assign in_chan_dep_data_vec_42[439 : 396] = dep_chan_data_23_42;
    assign token_in_vec_42[9] = token_23_42;
    assign in_chan_dep_vld_vec_42[10] = dep_chan_vld_28_42;
    assign in_chan_dep_data_vec_42[483 : 440] = dep_chan_data_28_42;
    assign token_in_vec_42[10] = token_28_42;
    assign in_chan_dep_vld_vec_42[11] = dep_chan_vld_29_42;
    assign in_chan_dep_data_vec_42[527 : 484] = dep_chan_data_29_42;
    assign token_in_vec_42[11] = token_29_42;
    assign in_chan_dep_vld_vec_42[12] = dep_chan_vld_33_42;
    assign in_chan_dep_data_vec_42[571 : 528] = dep_chan_data_33_42;
    assign token_in_vec_42[12] = token_33_42;
    assign in_chan_dep_vld_vec_42[13] = dep_chan_vld_36_42;
    assign in_chan_dep_data_vec_42[615 : 572] = dep_chan_data_36_42;
    assign token_in_vec_42[13] = token_36_42;
    assign in_chan_dep_vld_vec_42[14] = dep_chan_vld_39_42;
    assign in_chan_dep_data_vec_42[659 : 616] = dep_chan_data_39_42;
    assign token_in_vec_42[14] = token_39_42;
    assign in_chan_dep_vld_vec_42[15] = dep_chan_vld_41_42;
    assign in_chan_dep_data_vec_42[703 : 660] = dep_chan_data_41_42;
    assign token_in_vec_42[15] = token_41_42;
    assign in_chan_dep_vld_vec_42[16] = dep_chan_vld_43_42;
    assign in_chan_dep_data_vec_42[747 : 704] = dep_chan_data_43_42;
    assign token_in_vec_42[16] = token_43_42;
    assign dep_chan_vld_42_41 = out_chan_dep_vld_vec_42[0];
    assign dep_chan_data_42_41 = out_chan_dep_data_42;
    assign token_42_41 = token_out_vec_42[0];
    assign dep_chan_vld_42_43 = out_chan_dep_vld_vec_42[1];
    assign dep_chan_data_42_43 = out_chan_dep_data_42;
    assign token_42_43 = token_out_vec_42[1];
    assign dep_chan_vld_42_39 = out_chan_dep_vld_vec_42[2];
    assign dep_chan_data_42_39 = out_chan_dep_data_42;
    assign token_42_39 = token_out_vec_42[2];
    assign dep_chan_vld_42_0 = out_chan_dep_vld_vec_42[3];
    assign dep_chan_data_42_0 = out_chan_dep_data_42;
    assign token_42_0 = token_out_vec_42[3];
    assign dep_chan_vld_42_1 = out_chan_dep_vld_vec_42[4];
    assign dep_chan_data_42_1 = out_chan_dep_data_42;
    assign token_42_1 = token_out_vec_42[4];
    assign dep_chan_vld_42_5 = out_chan_dep_vld_vec_42[5];
    assign dep_chan_data_42_5 = out_chan_dep_data_42;
    assign token_42_5 = token_out_vec_42[5];
    assign dep_chan_vld_42_6 = out_chan_dep_vld_vec_42[6];
    assign dep_chan_data_42_6 = out_chan_dep_data_42;
    assign token_42_6 = token_out_vec_42[6];
    assign dep_chan_vld_42_11 = out_chan_dep_vld_vec_42[7];
    assign dep_chan_data_42_11 = out_chan_dep_data_42;
    assign token_42_11 = token_out_vec_42[7];
    assign dep_chan_vld_42_16 = out_chan_dep_vld_vec_42[8];
    assign dep_chan_data_42_16 = out_chan_dep_data_42;
    assign token_42_16 = token_out_vec_42[8];
    assign dep_chan_vld_42_17 = out_chan_dep_vld_vec_42[9];
    assign dep_chan_data_42_17 = out_chan_dep_data_42;
    assign token_42_17 = token_out_vec_42[9];
    assign dep_chan_vld_42_19 = out_chan_dep_vld_vec_42[10];
    assign dep_chan_data_42_19 = out_chan_dep_data_42;
    assign token_42_19 = token_out_vec_42[10];
    assign dep_chan_vld_42_22 = out_chan_dep_vld_vec_42[11];
    assign dep_chan_data_42_22 = out_chan_dep_data_42;
    assign token_42_22 = token_out_vec_42[11];
    assign dep_chan_vld_42_23 = out_chan_dep_vld_vec_42[12];
    assign dep_chan_data_42_23 = out_chan_dep_data_42;
    assign token_42_23 = token_out_vec_42[12];
    assign dep_chan_vld_42_28 = out_chan_dep_vld_vec_42[13];
    assign dep_chan_data_42_28 = out_chan_dep_data_42;
    assign token_42_28 = token_out_vec_42[13];
    assign dep_chan_vld_42_29 = out_chan_dep_vld_vec_42[14];
    assign dep_chan_data_42_29 = out_chan_dep_data_42;
    assign token_42_29 = token_out_vec_42[14];
    assign dep_chan_vld_42_33 = out_chan_dep_vld_vec_42[15];
    assign dep_chan_data_42_33 = out_chan_dep_data_42;
    assign token_42_33 = token_out_vec_42[15];
    assign dep_chan_vld_42_36 = out_chan_dep_vld_vec_42[16];
    assign dep_chan_data_42_36 = out_chan_dep_data_42;
    assign token_42_36 = token_out_vec_42[16];

    // Process: grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0
    BlackBoxJam_hls_deadlock_detect_unit #(44, 43, 2, 2) BlackBoxJam_hls_deadlock_detect_unit_43 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_43),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_43),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_43),
        .token_in_vec(token_in_vec_43),
        .dl_detect_in(dl_detect_out),
        .origin(origin[43]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_43),
        .out_chan_dep_data(out_chan_dep_data_43),
        .token_out_vec(token_out_vec_43),
        .dl_detect_out(dl_in_vec[43]));

    assign proc_43_data_FIFO_blk[0] = 1'b0 | (~grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0.grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_15_fu_93.memOutStrm34_blk_n) | (~grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0.numReps_blk_n);
    assign proc_43_data_PIPO_blk[0] = 1'b0;
    assign proc_43_start_FIFO_blk[0] = 1'b0;
    assign proc_43_TLF_FIFO_blk[0] = 1'b0;
    assign proc_43_input_sync_blk[0] = 1'b0;
    assign proc_43_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_43[0] = dl_detect_out ? proc_dep_vld_vec_43_reg[0] : (proc_43_data_FIFO_blk[0] | proc_43_data_PIPO_blk[0] | proc_43_start_FIFO_blk[0] | proc_43_TLF_FIFO_blk[0] | proc_43_input_sync_blk[0] | proc_43_output_sync_blk[0]);
    assign proc_43_data_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0.out_r_blk_n);
    assign proc_43_data_PIPO_blk[1] = 1'b0;
    assign proc_43_start_FIFO_blk[1] = 1'b0 | (~grp_DoCompute_fu_2926.start_for_Stream2Mem_Batch_64u_128u_U0_U.if_empty_n & grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_Stream2Mem_Batch_64u_128u_U0_U.if_write);
    assign proc_43_TLF_FIFO_blk[1] = 1'b0;
    assign proc_43_input_sync_blk[1] = 1'b0;
    assign proc_43_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_43[1] = dl_detect_out ? proc_dep_vld_vec_43_reg[1] : (proc_43_data_FIFO_blk[1] | proc_43_data_PIPO_blk[1] | proc_43_start_FIFO_blk[1] | proc_43_TLF_FIFO_blk[1] | proc_43_input_sync_blk[1] | proc_43_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_43_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_43_reg <= proc_dep_vld_vec_43;
        end
    end
    assign in_chan_dep_vld_vec_43[0] = dep_chan_vld_0_43;
    assign in_chan_dep_data_vec_43[43 : 0] = dep_chan_data_0_43;
    assign token_in_vec_43[0] = token_0_43;
    assign in_chan_dep_vld_vec_43[1] = dep_chan_vld_42_43;
    assign in_chan_dep_data_vec_43[87 : 44] = dep_chan_data_42_43;
    assign token_in_vec_43[1] = token_42_43;
    assign dep_chan_vld_43_42 = out_chan_dep_vld_vec_43[0];
    assign dep_chan_data_43_42 = out_chan_dep_data_43;
    assign token_43_42 = token_out_vec_43[0];
    assign dep_chan_vld_43_0 = out_chan_dep_vld_vec_43[1];
    assign dep_chan_data_43_0 = out_chan_dep_data_43;
    assign token_43_0 = token_out_vec_43[1];


`include "BlackBoxJam_hls_deadlock_report_unit.vh"
