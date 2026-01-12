   
    parameter PROC_NUM = 44;
    parameter ST_IDLE = 3'b000;
    parameter ST_FILTER_FAKE = 3'b001;
    parameter ST_DL_DETECTED = 3'b010;
    parameter ST_DL_REPORT = 3'b100;
   

    reg [2:0] CS_fsm;
    reg [2:0] NS_fsm;
    reg [PROC_NUM - 1:0] dl_detect_reg;
    reg [PROC_NUM - 1:0] dl_done_reg;
    reg [PROC_NUM - 1:0] origin_reg;
    reg [PROC_NUM - 1:0] dl_in_vec_reg;
    reg [31:0] dl_keep_cnt;
    integer i;
    integer fp;

    // FSM State machine
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            CS_fsm <= ST_IDLE;
        end
        else begin
            CS_fsm <= NS_fsm;
        end
    end
    always @ (CS_fsm or dl_in_vec or dl_detect_reg or dl_done_reg or dl_in_vec or origin_reg or dl_keep_cnt) begin
        case (CS_fsm)
            ST_IDLE : begin
                if (|dl_in_vec) begin
                    NS_fsm = ST_FILTER_FAKE;
                end
                else begin
                    NS_fsm = ST_IDLE;
                end
            end
            ST_FILTER_FAKE: begin
                if (dl_keep_cnt >= 32'd1000) begin
                    NS_fsm = ST_DL_DETECTED;
                end
                else if (dl_detect_reg != (dl_detect_reg & dl_in_vec)) begin
                    NS_fsm = ST_IDLE;
                end
                else begin
                    NS_fsm = ST_FILTER_FAKE;
                end
            end
            ST_DL_DETECTED: begin
                // has unreported deadlock cycle
                if (dl_detect_reg != dl_done_reg) begin
                    NS_fsm = ST_DL_REPORT;
                end
                else begin
                    NS_fsm = ST_DL_DETECTED;
                end
            end
            ST_DL_REPORT: begin
                if (|(dl_in_vec & origin_reg)) begin
                    NS_fsm = ST_DL_DETECTED;
                end
                else begin
                    NS_fsm = ST_DL_REPORT;
                end
            end
            default: NS_fsm = ST_IDLE;
        endcase
    end

    // dl_detect_reg record the procs that first detect deadlock
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_detect_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_IDLE) begin
                dl_detect_reg <= dl_in_vec;
            end
        end
    end

    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_keep_cnt <= 32'h0;
        end
        else begin
            if (CS_fsm == ST_FILTER_FAKE && (dl_detect_reg == (dl_detect_reg & dl_in_vec))) begin
                dl_keep_cnt <= dl_keep_cnt + 32'h1;
            end
            else if (CS_fsm == ST_FILTER_FAKE && (dl_detect_reg != (dl_detect_reg & dl_in_vec))) begin
                dl_keep_cnt <= 32'h0;
            end
        end
    end

    // dl_detect_out keeps in high after deadlock detected
    assign dl_detect_out = (|dl_detect_reg) && (CS_fsm == ST_DL_DETECTED || CS_fsm == ST_DL_REPORT);

    // dl_done_reg record the cycles has been reported
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_done_reg <= 'b0;
        end
        else begin
            if ((CS_fsm == ST_DL_REPORT) && (|(dl_in_vec & dl_detect_reg) == 'b1)) begin
                dl_done_reg <= dl_done_reg | dl_in_vec;
            end
        end
    end

    // clear token once a cycle is done
    assign token_clear = (CS_fsm == ST_DL_REPORT) ? ((|(dl_in_vec & origin_reg)) ? 'b1 : 'b0) : 'b0;

    // origin_reg record the current cycle start id
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            origin_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED) begin
                origin_reg <= origin;
            end
        end
    end
   
    // origin will be valid for only one cycle
    wire [PROC_NUM*PROC_NUM - 1:0] origin_tmp;
    assign origin_tmp[PROC_NUM - 1:0] = (dl_detect_reg[0] & ~dl_done_reg[0]) ? 'b1 : 'b0;
    genvar j;
    generate
    for(j = 1;j < PROC_NUM;j = j + 1) begin: F1
        assign origin_tmp[j*PROC_NUM +: PROC_NUM] = (dl_detect_reg[j] & ~dl_done_reg[j]) ? ('b1 << j) : origin_tmp[(j - 1)*PROC_NUM +: PROC_NUM];
    end
    endgenerate
    always @ (CS_fsm or origin_tmp) begin
        if (CS_fsm == ST_DL_DETECTED) begin
            origin = origin_tmp[(PROC_NUM - 1)*PROC_NUM +: PROC_NUM];
        end
        else begin
            origin = 'b0;
        end
    end

    
    // dl_in_vec_reg record the current cycle dl_in_vec
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_in_vec_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED) begin
                dl_in_vec_reg <= origin;
            end
            else if (CS_fsm == ST_DL_REPORT) begin
                dl_in_vec_reg <= dl_in_vec;
            end
        end
    end
    
    // find_df_deadlock to report the deadlock
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            find_df_deadlock <= 1'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED && dl_detect_reg == dl_done_reg) begin
                find_df_deadlock <= 1'b1;
            end
            else if (CS_fsm == ST_IDLE) begin
                find_df_deadlock <= 1'b0;
            end
        end
    end
    
    // get the first valid proc index in dl vector
    function integer proc_index(input [PROC_NUM - 1:0] dl_vec);
        begin
            proc_index = 0;
            for (i = 0; i < PROC_NUM; i = i + 1) begin
                if (dl_vec[i]) begin
                    proc_index = i;
                end
            end
        end
    endfunction

    // get the proc path based on dl vector
    function [1064:0] proc_path(input [PROC_NUM - 1:0] dl_vec);
        integer index;
        begin
            index = proc_index(dl_vec);
            case (index)
                0 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0";
                end
                1 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0";
                end
                2 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0";
                end
                3 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0";
                end
                4 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0";
                end
                5 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0";
                end
                6 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0";
                end
                7 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0";
                end
                8 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0";
                end
                9 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0";
                end
                10 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj900EEC2ERN3hls6streamI_U0";
                end
                11 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0";
                end
                12 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0";
                end
                13 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0";
                end
                14 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0";
                end
                15 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0";
                end
                16 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0";
                end
                17 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0";
                end
                18 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0";
                end
                19 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0";
                end
                20 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0";
                end
                21 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0";
                end
                22 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0";
                end
                23 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0";
                end
                24 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0";
                end
                25 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0";
                end
                26 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0";
                end
                27 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0";
                end
                28 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0";
                end
                29 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0";
                end
                30 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0";
                end
                31 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0";
                end
                32 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0";
                end
                33 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0";
                end
                34 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0";
                end
                35 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0";
                end
                36 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0";
                end
                37 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0";
                end
                38 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0";
                end
                39 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0";
                end
                40 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0";
                end
                41 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0";
                end
                42 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0";
                end
                43 : begin
                    proc_path = "BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0";
                end
                default : begin
                    proc_path = "unknown";
                end
            endcase
        end
    endfunction

    // print the headlines of deadlock detection
    task print_dl_head;
        begin
            $display("\n//////////////////////////////////////////////////////////////////////////////");
            $display("// ERROR!!! DEADLOCK DETECTED at %0t ns! SIMULATION WILL BE STOPPED! //", $time);
            $display("//////////////////////////////////////////////////////////////////////////////");
            fp = $fopen("deadlock_db.dat", "w");
        end
    endtask

    // print the start of a cycle
    task print_cycle_start(input reg [1064:0] proc_path, input integer cycle_id);
        begin
            $display("/////////////////////////");
            $display("// Dependence cycle %0d:", cycle_id);
            $display("// (1): Process: %0s", proc_path);
            $fdisplay(fp, "Dependence_Cycle_ID %0d", cycle_id);
            $fdisplay(fp, "Dependence_Process_ID 1");
            $fdisplay(fp, "Dependence_Process_path %0s", proc_path);
        end
    endtask

    // print the end of deadlock detection
    task print_dl_end(input integer num, input integer record_time);
        begin
            $display("////////////////////////////////////////////////////////////////////////");
            $display("// Totally %0d cycles detected!", num);
            $display("////////////////////////////////////////////////////////////////////////");
            $display("// ERROR!!! DEADLOCK DETECTED at %0t ns! SIMULATION WILL BE STOPPED! //", record_time);
            $display("//////////////////////////////////////////////////////////////////////////////");
            $fdisplay(fp, "Dependence_Cycle_Number %0d", num);
            $fclose(fp);
        end
    endtask

    // print one proc component in the cycle
    task print_cycle_proc_comp(input reg [1064:0] proc_path, input integer cycle_comp_id);
        begin
            $display("// (%0d): Process: %0s", cycle_comp_id, proc_path);
            $fdisplay(fp, "Dependence_Process_ID %0d", cycle_comp_id);
            $fdisplay(fp, "Dependence_Process_path %0s", proc_path);
        end
    endtask

    // print one channel component in the cycle
    task print_cycle_chan_comp(input [PROC_NUM - 1:0] dl_vec1, input [PROC_NUM - 1:0] dl_vec2);
        reg [936:0] chan_path;
        integer index1;
        integer index2;
        begin
            index1 = proc_index(dl_vec1);
            index2 = proc_index(dl_vec2);
            case (index1)
                0 : begin
                    case(index2)
                    43: begin
                        if (~grp_DoCompute_fu_2926.entry_proc_U0.out_c_blk_n) begin
                            if (~grp_DoCompute_fu_2926.out_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.out_c_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.out_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.out_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.out_c_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.out_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_Stream2Mem_Batch_64u_128u_U0_U.if_full_n & grp_DoCompute_fu_2926.entry_proc_U0.ap_start & ~grp_DoCompute_fu_2926.entry_proc_U0.real_start & (trans_in_cnt_20 == trans_out_cnt_20) & ~grp_DoCompute_fu_2926.start_for_Stream2Mem_Batch_64u_128u_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_Stream2Mem_Batch_64u_128u_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0',");
                        end
                    end
                    1: begin
                        if (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                        end
                    end
                    5: begin
                        if (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                        end
                    end
                    6: begin
                        if (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                        end
                    end
                    11: begin
                        if (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                        end
                    end
                    16: begin
                        if (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    17: begin
                        if (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                        end
                    end
                    19: begin
                        if (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                        end
                    end
                    22: begin
                        if (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                        end
                    end
                    23: begin
                        if (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                        end
                    end
                    28: begin
                        if (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    29: begin
                        if (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                        end
                    end
                    33: begin
                        if (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                        end
                    end
                    36: begin
                        if (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                        end
                    end
                    39: begin
                        if (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                        end
                    end
                    42: begin
                        if (grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready & grp_DoCompute_fu_2926.entry_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                        end
                    end
                    endcase
                end
                1 : begin
                    case(index2)
                    2: begin
                        if (~grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_1_fu_117.inter0_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter0_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter0_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.numReps_c160_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c160_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c160_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c160_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c160_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c160_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c160_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_64u_192u_384u_U0_U.if_full_n & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_start & ~grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_64u_192u_384u_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_64u_192u_384u_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0',");
                        end
                    end
                    0: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0'");
                        end
                    end
                    5: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                        end
                    end
                    6: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                        end
                    end
                    11: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                        end
                    end
                    16: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    17: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                        end
                    end
                    19: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                        end
                    end
                    22: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                        end
                    end
                    23: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                        end
                    end
                    28: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    29: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                        end
                    end
                    33: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                        end
                    end
                    36: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                        end
                    end
                    39: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                        end
                    end
                    42: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready & grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                        end
                    end
                    endcase
                end
                2 : begin
                    case(index2)
                    1: begin
                        if (~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.grp_StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3_fu_54.inter0_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter0_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter0_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c160_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c160_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c160_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c160_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c160_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c160_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_64u_192u_384u_U0_U.if_empty_n & grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_64u_192u_384u_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_64u_192u_384u_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0',");
                        end
                    end
                    3: begin
                        if (~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.grp_StreamingDataWidthConverter_Batch_64u_192u_384u_Pipeline_VITIS_LOOP_300_3_fu_54.inter0_1_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter0_1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_1_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter0_1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_1_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.numReps_c159_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c159_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c159_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c159_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c159_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c159_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c159_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_192u_24u_128u_U0_U.if_full_n & grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.ap_start & ~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_192u_24u_128u_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_192u_24u_128u_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0',");
                        end
                    end
                    endcase
                end
                3 : begin
                    case(index2)
                    2: begin
                        if (~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.grp_StreamingDataWidthConverter_Batch_192u_24u_128u_Pipeline_VITIS_LOOP_268_1_fu_52.inter0_1_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter0_1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_1_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter0_1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_1_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c159_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c159_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c159_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c159_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c159_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c159_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_192u_24u_128u_U0_U.if_empty_n & grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_192u_24u_128u_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_StreamingDataWidthConverter_Batch_192u_24u_128u_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_64u_192u_384u_U0',");
                        end
                    end
                    4: begin
                        if (~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.grp_StreamingDataWidthConverter_Batch_192u_24u_128u_Pipeline_VITIS_LOOP_268_1_fu_52.inter0_2_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter0_2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_2_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter0_2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_2_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.numReps_c158_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c158_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c158_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c158_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c158_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c158_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c158_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0_U.if_full_n & grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.ap_start & ~grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0',");
                        end
                    end
                    endcase
                end
                4 : begin
                    case(index2)
                    3: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58.inter0_233_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter0_2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_2_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter0_2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_2_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter0_2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c158_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c158_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c158_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c158_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c158_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c158_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0_U.if_empty_n & grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingDataWidthConverter_Batch_192u_24u_128u_U0',");
                        end
                    end
                    6: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_2_fu_58.convInp_i_blk_n) begin
                            if (~grp_DoCompute_fu_2926.convInp_5_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_5_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_5_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.convInp_5_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_5_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_5_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    7: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0.numReps_c157_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c157_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c157_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c157_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c157_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c157_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c157_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                5 : begin
                    case(index2)
                    0: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0'");
                        end
                    end
                    1: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                        end
                    end
                    6: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                        end
                    end
                    11: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                        end
                    end
                    16: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    17: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                        end
                    end
                    19: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                        end
                    end
                    22: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                        end
                    end
                    23: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                        end
                    end
                    28: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    29: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                        end
                    end
                    33: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                        end
                    end
                    36: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                        end
                    end
                    39: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                        end
                    end
                    42: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                        end
                    end
                    endcase
                end
                6 : begin
                    case(index2)
                    4: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100.convInp_5_blk_n) begin
                            if (~grp_DoCompute_fu_2926.convInp_5_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_5_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_5_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.convInp_5_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_5_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_5_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    7: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.grp_Matrix_Vector_Activate_Batch_4_Pipeline_VITIS_LOOP_122_1_fu_100.mvOut_m_buffer_10_blk_n) begin
                            if (~grp_DoCompute_fu_2926.mvOut_m_buffer_5_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_5_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_5_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.mvOut_m_buffer_5_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_5_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_5_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0_U.if_full_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_start & ~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0',");
                        end
                    end
                    5: begin
                        if (~grp_DoCompute_fu_2926.mul_ln121_cast_loc_channel_U.if_empty_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.mul_ln121_cast_loc_channel_U.if_write) begin
                            if (~grp_DoCompute_fu_2926.mul_ln121_cast_loc_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mul_ln121_cast_loc_channel_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mul_ln121_cast_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.mul_ln121_cast_loc_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mul_ln121_cast_loc_channel_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mul_ln121_cast_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                        end
                    end
                    0: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0'");
                        end
                    end
                    1: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                        end
                    end
                    11: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                        end
                    end
                    16: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    17: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                        end
                    end
                    19: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                        end
                    end
                    22: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                        end
                    end
                    23: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                        end
                    end
                    28: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    29: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                        end
                    end
                    33: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                        end
                    end
                    36: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                        end
                    end
                    39: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                        end
                    end
                    42: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                        end
                    end
                    endcase
                end
                7 : begin
                    case(index2)
                    4: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c157_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c157_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c157_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c157_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c157_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_3u_8u_32u_30u_3u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c157_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    6: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc26_Pipeline_VITIS_LOOP_300_3_fu_52.mvOut_m_buffer_10_blk_n) begin
                            if (~grp_DoCompute_fu_2926.mvOut_m_buffer_5_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_5_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_5_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.mvOut_m_buffer_5_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_5_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_5_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0',");
                        end
                    end
                    8: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc26_Pipeline_VITIS_LOOP_300_3_fu_52.inter1_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter1_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter1_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.numReps_c156_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c156_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c156_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c156_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c156_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c156_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c156_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0.real_start & (trans_in_cnt_4 == trans_out_cnt_4) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0',");
                        end
                    end
                    endcase
                end
                8 : begin
                    case(index2)
                    7: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c156_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c156_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c156_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c156_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c156_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c156_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc27_Pipeline_VITIS_LOOP_268_1_fu_52.inter1_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter1_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter1_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc26_U0',");
                        end
                    end
                    9: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc27_Pipeline_VITIS_LOOP_268_1_fu_52.wa_in_12_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_in_7_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_7_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_7_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_in_7_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_7_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_7_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.numReps_c155_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c155_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c155_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c155_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c155_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c155_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c155_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0.real_start & (trans_in_cnt_5 == trans_out_cnt_5) & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0',");
                        end
                    end
                    endcase
                end
                9 : begin
                    case(index2)
                    8: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.wa_in_i126_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_in_7_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_7_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_7_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_in_7_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_7_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_7_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c155_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c155_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c155_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c155_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c155_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c155_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0_U.if_empty_n & grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc27_U0',");
                        end
                    end
                    11: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_fu_52.convInp_i3_blk_n) begin
                            if (~grp_DoCompute_fu_2926.convInp_4_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_4_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_4_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.convInp_4_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_4_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_4_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    12: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0.numReps_c154_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c154_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c154_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c154_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c154_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c154_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c154_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                10 : begin
                    case(index2)
                    5: begin
                        if (~grp_DoCompute_fu_2926.p_loc_channel_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj900EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.p_loc_channel_U.if_write) begin
                            if (~grp_DoCompute_fu_2926.p_loc_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.p_loc_channel_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.p_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.p_loc_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.p_loc_channel_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.p_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                11 : begin
                    case(index2)
                    9: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164.convInp_4_blk_n) begin
                            if (~grp_DoCompute_fu_2926.convInp_4_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_4_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_4_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.convInp_4_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_4_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_4_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    12: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.grp_Matrix_Vector_Activate_Batch_Pipeline_VITIS_LOOP_122_1_fu_164.mvOut_m_buffer_9_blk_n) begin
                            if (~grp_DoCompute_fu_2926.mvOut_m_buffer_4_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_4_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_4_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.mvOut_m_buffer_4_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_4_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_4_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0_U.if_full_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_start & ~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.real_start & (trans_in_cnt_6 == trans_out_cnt_6) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0',");
                        end
                    end
                    10: begin
                        if (~grp_DoCompute_fu_2926.mul_ln121_1_cast_loc_channel_U.if_empty_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.mul_ln121_1_cast_loc_channel_U.if_write) begin
                            if (~grp_DoCompute_fu_2926.mul_ln121_1_cast_loc_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mul_ln121_1_cast_loc_channel_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj900EEC2ERN3hls6streamI_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mul_ln121_1_cast_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.mul_ln121_1_cast_loc_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mul_ln121_1_cast_loc_channel_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj900EEC2ERN3hls6streamI_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mul_ln121_1_cast_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    0: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0'");
                        end
                    end
                    1: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                        end
                    end
                    5: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                        end
                    end
                    6: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                        end
                    end
                    16: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    17: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                        end
                    end
                    19: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                        end
                    end
                    22: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                        end
                    end
                    23: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                        end
                    end
                    28: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    29: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                        end
                    end
                    33: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                        end
                    end
                    36: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                        end
                    end
                    39: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                        end
                    end
                    42: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                        end
                    end
                    endcase
                end
                12 : begin
                    case(index2)
                    9: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c154_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c154_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c154_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c154_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c154_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_30u_28u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c154_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    11: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3_fu_52.mvOut_m_buffer_9_blk_n) begin
                            if (~grp_DoCompute_fu_2926.mvOut_m_buffer_4_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_4_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_4_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.mvOut_m_buffer_4_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_4_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_4_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0',");
                        end
                    end
                    13: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc228_Pipeline_VITIS_LOOP_300_3_fu_52.inter2_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter2_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter2_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.numReps_c153_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c153_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c153_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c153_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c153_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c153_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c153_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_28u_2u_64u_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0.real_start & (trans_in_cnt_7 == trans_out_cnt_7) & ~grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_28u_2u_64u_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_28u_2u_64u_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0',");
                        end
                    end
                    endcase
                end
                13 : begin
                    case(index2)
                    12: begin
                        if (~grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.grp_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4_fu_240.inter2_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter2_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter2_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c153_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c153_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c153_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c153_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c153_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c153_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_28u_2u_64u_U0_U.if_empty_n & grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_28u_2u_64u_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_28u_2u_64u_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc228_U0',");
                        end
                    end
                    14: begin
                        if (~grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.grp_StreamingMaxPool_Batch_28u_2u_64u_Pipeline_VITIS_LOOP_85_6_fu_247.inter3_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter3_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter3_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter3_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter3_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter3_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter3_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.numReps_c152_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c152_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c152_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c152_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c152_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c152_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c152_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0_U.if_full_n & grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.ap_start & ~grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0.real_start & (trans_in_cnt_8 == trans_out_cnt_8) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0',");
                        end
                    end
                    endcase
                end
                14 : begin
                    case(index2)
                    13: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c152_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c152_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c152_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c152_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c152_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c152_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc329_Pipeline_VITIS_LOOP_268_1_fu_52.inter3_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter3_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter3_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter3_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter3_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter3_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter3_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_28u_2u_64u_U0',");
                        end
                    end
                    15: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc329_Pipeline_VITIS_LOOP_268_1_fu_52.wa_in_11_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_in_6_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_6_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_6_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_in_6_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_6_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_6_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.numReps_c151_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c151_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c151_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c151_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c151_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c151_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c151_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0.real_start & (trans_in_cnt_9 == trans_out_cnt_9) & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0',");
                        end
                    end
                    endcase
                end
                15 : begin
                    case(index2)
                    14: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52.wa_in_i822_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_in_6_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_6_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_6_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_in_6_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_6_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_6_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c151_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c151_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c151_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c151_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c151_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c151_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0_U.if_empty_n & grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc329_U0',");
                        end
                    end
                    17: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_1_fu_52.convInp_i10_blk_n) begin
                            if (~grp_DoCompute_fu_2926.convInp_3_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_3_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_3_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.convInp_3_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_3_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_3_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    18: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0.numReps_c150_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c150_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c150_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c150_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c150_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c150_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c150_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                16 : begin
                    case(index2)
                    0: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0'");
                        end
                    end
                    1: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                        end
                    end
                    5: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                        end
                    end
                    6: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                        end
                    end
                    11: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                        end
                    end
                    17: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                        end
                    end
                    19: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                        end
                    end
                    22: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                        end
                    end
                    23: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                        end
                    end
                    28: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    29: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                        end
                    end
                    33: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                        end
                    end
                    36: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                        end
                    end
                    39: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                        end
                    end
                    42: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                        end
                    end
                    endcase
                end
                17 : begin
                    case(index2)
                    15: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100.convInp_3_blk_n) begin
                            if (~grp_DoCompute_fu_2926.convInp_3_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_3_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_3_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.convInp_3_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_3_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_3_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    18: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.grp_Matrix_Vector_Activate_Batch_1_Pipeline_VITIS_LOOP_122_1_fu_100.mvOut_m_buffer_8_blk_n) begin
                            if (~grp_DoCompute_fu_2926.mvOut_m_buffer_3_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_3_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_3_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.mvOut_m_buffer_3_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_3_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_3_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    16: begin
                        if (~grp_DoCompute_fu_2926.add_ln121_loc_channel_U.if_empty_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.add_ln121_loc_channel_U.if_write) begin
                            if (~grp_DoCompute_fu_2926.add_ln121_loc_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.add_ln121_loc_channel_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.add_ln121_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.add_ln121_loc_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.add_ln121_loc_channel_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.add_ln121_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    0: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0'");
                        end
                    end
                    1: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                        end
                    end
                    5: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                        end
                    end
                    6: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                        end
                    end
                    11: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                        end
                    end
                    19: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                        end
                    end
                    22: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                        end
                    end
                    23: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                        end
                    end
                    28: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    29: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                        end
                    end
                    33: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                        end
                    end
                    36: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                        end
                    end
                    39: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                        end
                    end
                    42: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                        end
                    end
                    endcase
                end
                18 : begin
                    case(index2)
                    15: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c150_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c150_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c150_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c150_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c150_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_64u_1u_14u_12u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c150_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    16: begin
                        if (~grp_DoCompute_fu_2926.shl_ln121_loc_channel_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.ap_idle & ~grp_DoCompute_fu_2926.shl_ln121_loc_channel_U.if_write) begin
                            if (~grp_DoCompute_fu_2926.shl_ln121_loc_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.shl_ln121_loc_channel_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.shl_ln121_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.shl_ln121_loc_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.shl_ln121_loc_channel_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.shl_ln121_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    17: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc4_Pipeline_VITIS_LOOP_300_3_fu_62.mvOut_m_buffer_8_blk_n) begin
                            if (~grp_DoCompute_fu_2926.mvOut_m_buffer_3_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_3_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_3_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.mvOut_m_buffer_3_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_3_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_3_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    20: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc4_Pipeline_VITIS_LOOP_300_3_fu_62.inter4_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter4_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter4_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter4_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter4_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter4_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter4_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    21: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.numReps_c149_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c149_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c149_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c149_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c149_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c149_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c149_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0.real_start & (trans_in_cnt_10 == trans_out_cnt_10) & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0',");
                        end
                    end
                    endcase
                end
                19 : begin
                    case(index2)
                    0: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0'");
                        end
                    end
                    1: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                        end
                    end
                    5: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                        end
                    end
                    6: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                        end
                    end
                    11: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                        end
                    end
                    16: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    17: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                        end
                    end
                    22: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                        end
                    end
                    23: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                        end
                    end
                    28: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    29: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                        end
                    end
                    33: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                        end
                    end
                    36: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                        end
                    end
                    39: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                        end
                    end
                    42: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                        end
                    end
                    endcase
                end
                20 : begin
                    case(index2)
                    19: begin
                        if (~grp_DoCompute_fu_2926.totalIters_11_loc_c135_channel_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0.ap_idle & ~grp_DoCompute_fu_2926.totalIters_11_loc_c135_channel_U.if_write) begin
                            if (~grp_DoCompute_fu_2926.totalIters_11_loc_c135_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_11_loc_c135_channel_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_11_loc_c135_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.totalIters_11_loc_c135_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_11_loc_c135_channel_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_11_loc_c135_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    21: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc6_Pipeline_VITIS_LOOP_268_1_fu_50.wa_in_10_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_in_5_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_5_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_5_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_in_5_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_5_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_5_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    18: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc6_Pipeline_VITIS_LOOP_268_1_fu_50.inter4_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter4_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter4_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter4_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter4_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter4_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter4_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    30: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0.totalIters_11_loc_c_blk_n) begin
                            if (~grp_DoCompute_fu_2926.totalIters_11_loc_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_11_loc_c_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_11_loc_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.totalIters_11_loc_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_11_loc_c_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_11_loc_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                21 : begin
                    case(index2)
                    20: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52.wa_in_i1518_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_in_5_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_5_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_5_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_in_5_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_5_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_5_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    23: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_5_fu_52.convInp_i17_blk_n) begin
                            if (~grp_DoCompute_fu_2926.convInp_2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_2_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.convInp_2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_2_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    18: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c149_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c149_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c149_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c149_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c149_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c149_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0_U.if_empty_n & grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc4_U0',");
                        end
                    end
                    24: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0.numReps_c148_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c148_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c148_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c148_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c148_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c148_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c148_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                22 : begin
                    case(index2)
                    0: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0'");
                        end
                    end
                    1: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                        end
                    end
                    5: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                        end
                    end
                    6: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                        end
                    end
                    11: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                        end
                    end
                    16: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    17: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                        end
                    end
                    19: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                        end
                    end
                    23: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                        end
                    end
                    28: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    29: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                        end
                    end
                    33: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                        end
                    end
                    36: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                        end
                    end
                    39: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                        end
                    end
                    42: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                        end
                    end
                    endcase
                end
                23 : begin
                    case(index2)
                    21: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100.convInp_2_blk_n) begin
                            if (~grp_DoCompute_fu_2926.convInp_2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_2_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.convInp_2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_2_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    24: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.grp_Matrix_Vector_Activate_Batch_8_Pipeline_VITIS_LOOP_122_1_fu_100.mvOut_m_buffer_7_blk_n) begin
                            if (~grp_DoCompute_fu_2926.mvOut_m_buffer_2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_2_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.mvOut_m_buffer_2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_2_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0_U.if_full_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_start & ~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.real_start & (trans_in_cnt_11 == trans_out_cnt_11) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0',");
                        end
                    end
                    22: begin
                        if (~grp_DoCompute_fu_2926.totalIters_13_cast_loc_channel_U.if_empty_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.totalIters_13_cast_loc_channel_U.if_write) begin
                            if (~grp_DoCompute_fu_2926.totalIters_13_cast_loc_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_13_cast_loc_channel_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_13_cast_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.totalIters_13_cast_loc_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_13_cast_loc_channel_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_13_cast_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                        end
                    end
                    0: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0'");
                        end
                    end
                    1: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                        end
                    end
                    5: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                        end
                    end
                    6: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                        end
                    end
                    11: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                        end
                    end
                    16: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    17: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                        end
                    end
                    19: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                        end
                    end
                    28: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    29: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                        end
                    end
                    33: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                        end
                    end
                    36: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                        end
                    end
                    39: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                        end
                    end
                    42: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                        end
                    end
                    endcase
                end
                24 : begin
                    case(index2)
                    21: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c148_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c148_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c148_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c148_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c148_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_12u_10u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c148_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    23: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc830_Pipeline_VITIS_LOOP_300_3_fu_52.mvOut_m_buffer_7_blk_n) begin
                            if (~grp_DoCompute_fu_2926.mvOut_m_buffer_2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_2_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.mvOut_m_buffer_2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_2_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0',");
                        end
                    end
                    25: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc830_Pipeline_VITIS_LOOP_300_3_fu_52.inter5_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter5_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter5_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter5_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter5_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter5_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter5_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.numReps_c147_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c147_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c147_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c147_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c147_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c147_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c147_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_10u_2u_128u_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0.real_start & (trans_in_cnt_12 == trans_out_cnt_12) & ~grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_10u_2u_128u_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_10u_2u_128u_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0',");
                        end
                    end
                    endcase
                end
                25 : begin
                    case(index2)
                    24: begin
                        if (~grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0.grp_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_74_3_VITIS_LOOP_75_4_fu_152.inter5_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter5_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter5_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter5_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter5_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter5_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter5_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c147_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c147_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c147_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c147_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c147_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c147_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_10u_2u_128u_U0_U.if_empty_n & grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_10u_2u_128u_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_StreamingMaxPool_Batch_10u_2u_128u_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc830_U0',");
                        end
                    end
                    26: begin
                        if (~grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0.grp_StreamingMaxPool_Batch_10u_2u_128u_Pipeline_VITIS_LOOP_85_6_fu_159.inter6_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter6_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter6_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter6_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter6_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter6_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter6_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    27: begin
                        if (~grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0.numReps_c146_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c146_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c146_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c146_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c146_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c146_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c146_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                26 : begin
                    case(index2)
                    22: begin
                        if (~grp_DoCompute_fu_2926.totalIters_13_loc_channel_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0.ap_idle & ~grp_DoCompute_fu_2926.totalIters_13_loc_channel_U.if_write) begin
                            if (~grp_DoCompute_fu_2926.totalIters_13_loc_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_13_loc_channel_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_13_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.totalIters_13_loc_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_13_loc_channel_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_13_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    27: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0.wa_in_9_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_in_4_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_4_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_4_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_in_4_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_4_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_4_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0.real_start & (trans_in_cnt_13 == trans_out_cnt_13) & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0',");
                        end
                    end
                    25: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0.inter6_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter6_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter6_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter6_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter6_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter6_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter6_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                27 : begin
                    case(index2)
                    26: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58.wa_in_i2214_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_in_4_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_4_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_4_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_in_4_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_4_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_4_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0_U.if_empty_n & grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc9_U0',");
                        end
                    end
                    29: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_4_fu_58.convInp_i24_blk_n) begin
                            if (~grp_DoCompute_fu_2926.convInp_1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_1_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.convInp_1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_1_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    25: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c146_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c146_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c146_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c146_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c146_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.StreamingMaxPool_Batch_10u_2u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c146_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    32: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0.numReps_c145_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c145_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c145_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c145_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c145_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c145_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c145_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                28 : begin
                    case(index2)
                    0: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0'");
                        end
                    end
                    1: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                        end
                    end
                    5: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                        end
                    end
                    6: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                        end
                    end
                    11: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                        end
                    end
                    16: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    17: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                        end
                    end
                    19: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                        end
                    end
                    22: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                        end
                    end
                    23: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                        end
                    end
                    29: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                        end
                    end
                    33: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                        end
                    end
                    36: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                        end
                    end
                    39: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                        end
                    end
                    42: begin
                        if (grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready & grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                        end
                    end
                    endcase
                end
                29 : begin
                    case(index2)
                    27: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52.convInp_1_blk_n) begin
                            if (~grp_DoCompute_fu_2926.convInp_1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_1_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.convInp_1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_1_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    30: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.grp_Matrix_Vector_Activate_Batch_7_Pipeline_VITIS_LOOP_122_1_fu_52.mvOut_m_buffer_6_blk_n) begin
                            if (~grp_DoCompute_fu_2926.mvOut_m_buffer_1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_1_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.mvOut_m_buffer_1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_1_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0_U.if_full_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_start & ~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.real_start & (trans_in_cnt_14 == trans_out_cnt_14) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0',");
                        end
                    end
                    28: begin
                        if (~grp_DoCompute_fu_2926.add_ln121_1_loc_channel_U.if_empty_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.add_ln121_1_loc_channel_U.if_write) begin
                            if (~grp_DoCompute_fu_2926.add_ln121_1_loc_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.add_ln121_1_loc_channel_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.add_ln121_1_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.add_ln121_1_loc_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.add_ln121_1_loc_channel_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.add_ln121_1_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    0: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0'");
                        end
                    end
                    1: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                        end
                    end
                    5: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                        end
                    end
                    6: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                        end
                    end
                    11: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                        end
                    end
                    16: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    17: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                        end
                    end
                    19: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                        end
                    end
                    22: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                        end
                    end
                    23: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                        end
                    end
                    33: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                        end
                    end
                    36: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                        end
                    end
                    39: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                        end
                    end
                    42: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                        end
                    end
                    endcase
                end
                30 : begin
                    case(index2)
                    20: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0.totalIters_11_loc_blk_n) begin
                            if (~grp_DoCompute_fu_2926.totalIters_11_loc_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_11_loc_c_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_11_loc_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.totalIters_11_loc_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_11_loc_c_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc6_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_11_loc_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    29: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc11_Pipeline_VITIS_LOOP_300_3_fu_38.mvOut_m_buffer_6_blk_n) begin
                            if (~grp_DoCompute_fu_2926.mvOut_m_buffer_1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_1_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.mvOut_m_buffer_1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_1_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0',");
                        end
                    end
                    31: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc11_Pipeline_VITIS_LOOP_300_3_fu_38.inter7_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter7_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter7_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter7_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter7_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter7_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter7_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                31 : begin
                    case(index2)
                    19: begin
                        if (~grp_DoCompute_fu_2926.totalIters_10_loc_c137_channel_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.ap_idle & ~grp_DoCompute_fu_2926.totalIters_10_loc_c137_channel_U.if_write) begin
                            if (~grp_DoCompute_fu_2926.totalIters_10_loc_c137_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c137_channel_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c137_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.totalIters_10_loc_c137_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c137_channel_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c137_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    28: begin
                        if (~grp_DoCompute_fu_2926.shl_ln121_2_loc_channel_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.ap_idle & ~grp_DoCompute_fu_2926.shl_ln121_2_loc_channel_U.if_write) begin
                            if (~grp_DoCompute_fu_2926.shl_ln121_2_loc_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.shl_ln121_2_loc_channel_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.shl_ln121_2_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.shl_ln121_2_loc_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.shl_ln121_2_loc_channel_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.shl_ln121_2_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    32: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc13_Pipeline_VITIS_LOOP_268_1_fu_58.wa_in_8_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_in_3_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_3_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_3_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_in_3_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_3_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_3_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.real_start & (trans_in_cnt_15 == trans_out_cnt_15) & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0',");
                        end
                    end
                    30: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc13_Pipeline_VITIS_LOOP_268_1_fu_58.inter7_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter7_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter7_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter7_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter7_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter7_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter7_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    35: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.totalIters_10_loc_c136_blk_n) begin
                            if (~grp_DoCompute_fu_2926.totalIters_10_loc_c136_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c136_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c136_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.totalIters_10_loc_c136_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c136_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c136_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0.real_start & (trans_in_cnt_15 == trans_out_cnt_15) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0',");
                        end
                    end
                    endcase
                end
                32 : begin
                    case(index2)
                    31: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58.wa_in_i2910_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_in_3_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_3_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_3_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_in_3_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_3_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_3_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0_U.if_empty_n & grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0',");
                        end
                    end
                    33: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.grp_ConvolutionInputGenerator_Pipeline_VITIS_LOOP_104_1_VITIS_LOOP_105_2_3_fu_58.convInp_i31_blk_n) begin
                            if (~grp_DoCompute_fu_2926.convInp_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.convInp_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.numReps_c144_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c144_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c144_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c144_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c144_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c144_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c144_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    27: begin
                        if (~grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c145_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c145_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c145_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c145_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c145_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_128u_1u_5u_3u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c145_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                33 : begin
                    case(index2)
                    32: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58.convInp_blk_n) begin
                            if (~grp_DoCompute_fu_2926.convInp_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.convInp_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.convInp_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c144_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c144_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c144_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c144_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c144_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.ConvolutionInputGenerator_3u_256u_1u_3u_1u_32u_1u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c144_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    34: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.grp_Matrix_Vector_Activate_Batch_6_Pipeline_VITIS_LOOP_122_1_fu_58.mvOut_m_buffer_blk_n) begin
                            if (~grp_DoCompute_fu_2926.mvOut_m_buffer_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.mvOut_m_buffer_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.numReps_c143_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c143_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c143_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c143_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c143_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c143_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c143_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0_U.if_full_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_start & ~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.real_start & (trans_in_cnt_16 == trans_out_cnt_16) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0',");
                        end
                    end
                    0: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0'");
                        end
                    end
                    1: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                        end
                    end
                    5: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                        end
                    end
                    6: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                        end
                    end
                    11: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                        end
                    end
                    16: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    17: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                        end
                    end
                    19: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                        end
                    end
                    22: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                        end
                    end
                    23: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                        end
                    end
                    28: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    29: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                        end
                    end
                    36: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                        end
                    end
                    39: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                        end
                    end
                    42: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                        end
                    end
                    endcase
                end
                34 : begin
                    case(index2)
                    33: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c143_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c143_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c143_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c143_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c143_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c143_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_Pipeline_VITIS_LOOP_300_3_fu_52.mvOut_m_buffer_blk_n) begin
                            if (~grp_DoCompute_fu_2926.mvOut_m_buffer_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.mvOut_m_buffer_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.mvOut_m_buffer_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0',");
                        end
                    end
                    35: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc1531_Pipeline_VITIS_LOOP_300_3_fu_52.inter8_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter8_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter8_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter8_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter8_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter8_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter8_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    36: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0.numReps_c142_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c142_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c142_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c142_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c142_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c142_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c142_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                35 : begin
                    case(index2)
                    31: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0.totalIters_10_loc_blk_n) begin
                            if (~grp_DoCompute_fu_2926.totalIters_10_loc_c136_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c136_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c136_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.totalIters_10_loc_c136_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c136_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c136_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc13_U0',");
                        end
                    end
                    36: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc16_Pipeline_VITIS_LOOP_268_1_fu_50.wa_in_2_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_in_2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_2_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_in_2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_2_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    34: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc16_Pipeline_VITIS_LOOP_268_1_fu_50.inter8_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter8_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter8_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter8_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter8_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter8_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter8_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    38: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0.totalIters_10_loc_c_blk_n) begin
                            if (~grp_DoCompute_fu_2926.totalIters_10_loc_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.totalIters_10_loc_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                36 : begin
                    case(index2)
                    35: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56.wa_in_2_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_in_2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_2_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_in_2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_2_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    37: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.grp_Matrix_Vector_Activate_Batch_5_Pipeline_VITIS_LOOP_122_1_fu_56.wa_out_m_buffer_2_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_out_m_buffer_1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_out_m_buffer_1_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_out_m_buffer_1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_out_m_buffer_1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_out_m_buffer_1_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_out_m_buffer_1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    34: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c142_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c142_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c142_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c142_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c142_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc1531_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c142_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    39: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.numReps_c141_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c141_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c141_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c141_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c141_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c141_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c141_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                        end
                    end
                    0: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0'");
                        end
                    end
                    1: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                        end
                    end
                    5: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                        end
                    end
                    6: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                        end
                    end
                    11: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                        end
                    end
                    16: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    17: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                        end
                    end
                    19: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                        end
                    end
                    22: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                        end
                    end
                    23: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                        end
                    end
                    28: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    29: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                        end
                    end
                    33: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                        end
                    end
                    42: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                        end
                    end
                    endcase
                end
                37 : begin
                    case(index2)
                    19: begin
                        if (~grp_DoCompute_fu_2926.totalIters_16_loc_c139_channel_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.ap_idle & ~grp_DoCompute_fu_2926.totalIters_16_loc_c139_channel_U.if_write) begin
                            if (~grp_DoCompute_fu_2926.totalIters_16_loc_c139_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c139_channel_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c139_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.totalIters_16_loc_c139_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c139_channel_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c139_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    36: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3_fu_50.wa_out_m_buffer_2_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_out_m_buffer_1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_out_m_buffer_1_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_out_m_buffer_1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_out_m_buffer_1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_out_m_buffer_1_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_out_m_buffer_1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    38: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc18_Pipeline_VITIS_LOOP_300_3_fu_50.inter9_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter9_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter9_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter9_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter9_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter9_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter9_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.real_start & (trans_in_cnt_17 == trans_out_cnt_17) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0',");
                        end
                    end
                    40: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0.totalIters_16_loc_c138_blk_n) begin
                            if (~grp_DoCompute_fu_2926.totalIters_16_loc_c138_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c138_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c138_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.totalIters_16_loc_c138_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c138_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c138_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                38 : begin
                    case(index2)
                    35: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0.totalIters_10_loc_blk_n) begin
                            if (~grp_DoCompute_fu_2926.totalIters_10_loc_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.totalIters_10_loc_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc16_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_10_loc_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    39: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc20_Pipeline_VITIS_LOOP_268_1_fu_38.wa_in_1_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_in_1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_1_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_in_1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_1_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    37: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc20_Pipeline_VITIS_LOOP_268_1_fu_38.inter9_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter9_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter9_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter9_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter9_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter9_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter9_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0',");
                        end
                    end
                    endcase
                end
                39 : begin
                    case(index2)
                    38: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56.wa_in_1_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_in_1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_1_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_in_1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_1_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc20_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    40: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.grp_Matrix_Vector_Activate_Batch_3_Pipeline_VITIS_LOOP_122_1_fu_56.wa_out_m_buffer_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_out_m_buffer_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_out_m_buffer_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_out_m_buffer_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_out_m_buffer_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_out_m_buffer_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_out_m_buffer_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0_U.if_full_n & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_start & ~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.real_start & (trans_in_cnt_18 == trans_out_cnt_18) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0',");
                        end
                    end
                    36: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c141_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c141_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c141_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c141_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c141_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c141_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                        end
                    end
                    42: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.numReps_c140_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c140_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c140_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c140_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c140_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c140_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c140_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                        end
                    end
                    0: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0'");
                        end
                    end
                    1: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                        end
                    end
                    5: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                        end
                    end
                    6: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                        end
                    end
                    11: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                        end
                    end
                    16: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    17: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                        end
                    end
                    19: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                        end
                    end
                    22: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                        end
                    end
                    23: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                        end
                    end
                    28: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    29: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                        end
                    end
                    33: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                        end
                    end
                    endcase
                end
                40 : begin
                    case(index2)
                    37: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.totalIters_16_loc_blk_n) begin
                            if (~grp_DoCompute_fu_2926.totalIters_16_loc_c138_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c138_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c138_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.totalIters_16_loc_c138_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c138_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc18_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c138_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    39: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc22_Pipeline_VITIS_LOOP_300_3_fu_50.wa_out_m_buffer_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_out_m_buffer_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_out_m_buffer_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_out_m_buffer_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_out_m_buffer_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_out_m_buffer_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_out_m_buffer_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0',");
                        end
                    end
                    41: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.grp_DoCompute_Loop_VITIS_LOOP_300_3_proc22_Pipeline_VITIS_LOOP_300_3_fu_50.inter10_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter10_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter10_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter10_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter10_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter10_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter10_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.totalIters_16_loc_c_blk_n) begin
                            if (~grp_DoCompute_fu_2926.totalIters_16_loc_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.totalIters_16_loc_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0_U.if_full_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.ap_start & ~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0.real_start & (trans_in_cnt_19 == trans_out_cnt_19) & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0',");
                        end
                    end
                    endcase
                end
                41 : begin
                    case(index2)
                    40: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0.totalIters_16_loc_blk_n) begin
                            if (~grp_DoCompute_fu_2926.totalIters_16_loc_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.totalIters_16_loc_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.totalIters_16_loc_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1_fu_38.inter10_blk_n) begin
                            if (~grp_DoCompute_fu_2926.inter10_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter10_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter10_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.inter10_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter10_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.inter10_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0_U.if_empty_n & grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_300_3_proc22_U0',");
                        end
                    end
                    42: begin
                        if (~grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0.grp_DoCompute_Loop_VITIS_LOOP_268_1_proc24_Pipeline_VITIS_LOOP_268_1_fu_38.wa_in_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_in_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_in_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                42 : begin
                    case(index2)
                    41: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60.wa_in_blk_n) begin
                            if (~grp_DoCompute_fu_2926.wa_in_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.wa_in_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Loop_VITIS_LOOP_268_1_proc24_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.wa_in_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    43: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.grp_Matrix_Vector_Activate_Batch_2_Pipeline_VITIS_LOOP_122_1_fu_60.memOutStrm_blk_n) begin
                            if (~grp_DoCompute_fu_2926.memOutStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.memOutStrm_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.memOutStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.memOutStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.memOutStrm_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.memOutStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.numReps_c_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    39: begin
                        if (~grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c140_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c140_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c140_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c140_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c140_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c140_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_3_U0'");
                        end
                    end
                    0: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0'");
                        end
                    end
                    1: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Mem2Stream_Batch_64u_3072u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Mem2Stream_Batch_64u_3072u_U0'");
                        end
                    end
                    5: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_entry5993_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_entry5993_proc_U0'");
                        end
                    end
                    6: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_4_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_4_U0'");
                        end
                    end
                    11: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_U0'");
                        end
                    end
                    16: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj64ELj32ELj196EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    17: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_1_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_1_U0'");
                        end
                    end
                    19: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN25WidthAdjustedOutputStreamILj16ELj128ELj1152EED2Ev_exit_loop_U0'");
                        end
                    end
                    22: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj144EEC2ERN3hls6stream_U0'");
                        end
                    end
                    23: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_8_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_8_U0'");
                        end
                    end
                    28: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.DoCompute_Block_ZN24WidthAdjustedInputStreamILj128ELj32ELj25EEC2ERN3hls6streamI_U0'");
                        end
                    end
                    29: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_7_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_7_U0'");
                        end
                    end
                    33: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_6_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_6_U0'");
                        end
                    end
                    36: begin
                        if (grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_2_U0_ap_ready & grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0.ap_idle & ~grp_DoCompute_fu_2926.ap_sync_Matrix_Vector_Activate_Batch_5_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_5_U0'");
                        end
                    end
                    endcase
                end
                43 : begin
                    case(index2)
                    42: begin
                        if (~grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0.grp_Stream2Mem_Batch_64u_128u_Pipeline_VITIS_LOOP_153_15_fu_93.memOutStrm34_blk_n) begin
                            if (~grp_DoCompute_fu_2926.memOutStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.memOutStrm_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.memOutStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.memOutStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.memOutStrm_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.memOutStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0.numReps_blk_n) begin
                            if (~grp_DoCompute_fu_2926.numReps_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.numReps_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.Matrix_Vector_Activate_Batch_2_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.numReps_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    0: begin
                        if (~grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0.out_r_blk_n) begin
                            if (~grp_DoCompute_fu_2926.out_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.out_c_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.out_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~grp_DoCompute_fu_2926.out_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.out_c_U' read by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.out_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~grp_DoCompute_fu_2926.start_for_Stream2Mem_Batch_64u_128u_U0_U.if_empty_n & grp_DoCompute_fu_2926.Stream2Mem_Batch_64u_128u_U0.ap_idle & ~grp_DoCompute_fu_2926.start_for_Stream2Mem_Batch_64u_128u_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.start_for_Stream2Mem_Batch_64u_128u_U0_U' written by process 'BlackBoxJam_BlackBoxJam.grp_DoCompute_fu_2926.entry_proc_U0',");
                        end
                    end
                    endcase
                end
            endcase
        end
    endtask

    // report
    initial begin : report_deadlock
        integer cycle_id;
        integer cycle_comp_id;
        integer record_time;
        wait (dl_reset == 1);
        cycle_id = 1;
        record_time = 0;
        while (1) begin
            @ (negedge dl_clock);
            case (CS_fsm)
                ST_DL_DETECTED: begin
                    cycle_comp_id = 2;
                    if (dl_detect_reg != dl_done_reg) begin
                        if (dl_done_reg == 'b0) begin
                            print_dl_head;
                            record_time = $time;
                        end
                        print_cycle_start(proc_path(origin), cycle_id);
                        cycle_id = cycle_id + 1;
                    end
                    else begin
                        print_dl_end((cycle_id - 1),record_time);
                        @(negedge dl_clock);
                        @(negedge dl_clock);
                        $finish;
                    end
                end
                ST_DL_REPORT: begin
                    if ((|(dl_in_vec)) & ~(|(dl_in_vec & origin_reg))) begin
                        print_cycle_chan_comp(dl_in_vec_reg, dl_in_vec);
                        print_cycle_proc_comp(proc_path(dl_in_vec), cycle_comp_id);
                        cycle_comp_id = cycle_comp_id + 1;
                    end
                    else begin
                        print_cycle_chan_comp(dl_in_vec_reg, dl_in_vec);
                    end
                end
            endcase
        end
    end
 
