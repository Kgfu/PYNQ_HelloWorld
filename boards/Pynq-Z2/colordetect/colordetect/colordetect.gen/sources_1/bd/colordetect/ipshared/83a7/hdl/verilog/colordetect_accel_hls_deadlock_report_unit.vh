   
    parameter PROC_NUM = 13;
    parameter ST_IDLE = 2'b0;
    parameter ST_DL_DETECTED = 2'b1;
    parameter ST_DL_REPORT = 2'b10;
   

    reg find_df_deadlock = 0;
    reg [1:0] CS_fsm;
    reg [1:0] NS_fsm;
    reg [PROC_NUM - 1:0] dl_detect_reg;
    reg [PROC_NUM - 1:0] dl_done_reg;
    reg [PROC_NUM - 1:0] origin_reg;
    reg [PROC_NUM - 1:0] dl_in_vec_reg;
    integer i;
    integer fp;

    // FSM State machine
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            CS_fsm <= ST_IDLE;
        end
        else begin
            CS_fsm <= NS_fsm;
        end
    end
    always @ (CS_fsm or dl_in_vec or dl_detect_reg or dl_done_reg or dl_in_vec or origin_reg) begin
        NS_fsm = CS_fsm;
        case (CS_fsm)
            ST_IDLE : begin
                if (|dl_in_vec) begin
                    NS_fsm = ST_DL_DETECTED;
                end
            end
            ST_DL_DETECTED: begin
                // has unreported deadlock cycle
                if (dl_detect_reg != dl_done_reg) begin
                    NS_fsm = ST_DL_REPORT;
                end
            end
            ST_DL_REPORT: begin
                if (|(dl_in_vec & origin_reg)) begin
                    NS_fsm = ST_DL_DETECTED;
                end
            end
        endcase
    end

    // dl_detect_reg record the procs that first detect deadlock
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            dl_detect_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_IDLE) begin
                dl_detect_reg <= dl_in_vec;
            end
        end
    end

    // dl_detect_out keeps in high after deadlock detected
    assign dl_detect_out = |dl_detect_reg;

    // dl_done_reg record the cycles has been reported
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
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
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            origin_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED) begin
                origin_reg <= origin;
            end
        end
    end
   
    // origin will be valid for only one cycle
    always @ (CS_fsm or dl_detect_reg or dl_done_reg) begin
        if (CS_fsm == ST_DL_DETECTED) begin
            for (i = 0; i < PROC_NUM; i = i + 1) begin
                if (dl_detect_reg[i] & ~dl_done_reg[i] & ~(|origin)) begin
                    origin = 'b1 << i;
                end
            end
        end
        else begin
            origin = 'b0;
        end
    end
    
    // dl_in_vec_reg record the current cycle dl_in_vec
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
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
    function [1360:0] proc_path(input [PROC_NUM - 1:0] dl_vec);
        integer index;
        begin
            index = proc_index(dl_vec);
            case (index)
                0 : begin
                    proc_path = "colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0";
                end
                1 : begin
                    proc_path = "colordetect_accel_colordetect_accel.axis2xfMat_24_9_2160_3840_1_U0";
                end
                2 : begin
                    proc_path = "colordetect_accel_colordetect_accel.bgr2hsv_9_2160_3840_1_U0";
                end
                3 : begin
                    proc_path = "colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0";
                end
                4 : begin
                    proc_path = "colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0";
                end
                5 : begin
                    proc_path = "colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0";
                end
                6 : begin
                    proc_path = "colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0";
                end
                7 : begin
                    proc_path = "colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0";
                end
                8 : begin
                    proc_path = "colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_11_U0";
                end
                9 : begin
                    proc_path = "colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_12_U0";
                end
                10 : begin
                    proc_path = "colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_U0";
                end
                11 : begin
                    proc_path = "colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_U0";
                end
                12 : begin
                    proc_path = "colordetect_accel_colordetect_accel.xfMat2axis_24_0_2160_3840_1_U0";
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
    task print_cycle_start(input reg [1360:0] proc_path, input integer cycle_id);
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
    task print_cycle_proc_comp(input reg [1360:0] proc_path, input integer cycle_comp_id);
        begin
            $display("// (%0d): Process: %0s", cycle_comp_id, proc_path);
            $fdisplay(fp, "Dependence_Process_ID %0d", cycle_comp_id);
            $fdisplay(fp, "Dependence_Process_path %0s", proc_path);
        end
    endtask

    // print one channel component in the cycle
    task print_cycle_chan_comp(input [PROC_NUM - 1:0] dl_vec1, input [PROC_NUM - 1:0] dl_vec2);
        reg [1296:0] chan_path;
        integer index1;
        integer index2;
        begin
            index1 = proc_index(dl_vec1);
            index2 = proc_index(dl_vec2);
            case (index1)
                0 : begin
                    case(index2)
                    1: begin
                        if (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.imgInput_rows_out_blk_n) begin
                            if (~imgInput_rows_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgInput_rows_c_U' written by process 'colordetect_accel_colordetect_accel.axis2xfMat_24_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgInput_rows_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgInput_rows_c_U' read by process 'colordetect_accel_colordetect_accel.axis2xfMat_24_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.imgInput_cols_out_blk_n) begin
                            if (~imgInput_cols_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgInput_cols_c_U' written by process 'colordetect_accel_colordetect_accel.axis2xfMat_24_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgInput_cols_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgInput_cols_c_U' read by process 'colordetect_accel_colordetect_accel.axis2xfMat_24_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_axis2xfMat_24_9_2160_3840_1_U0_U.if_full_n & Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.ap_start & ~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~start_for_axis2xfMat_24_9_2160_3840_1_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'colordetect_accel_colordetect_accel.start_for_axis2xfMat_24_9_2160_3840_1_U0_U' read by process 'colordetect_accel_colordetect_accel.axis2xfMat_24_9_2160_3840_1_U0',");
                        end
                    end
                    4: begin
                        if (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.rgb2hsv_rows_out_blk_n) begin
                            if (~rgb2hsv_rows_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.rgb2hsv_rows_c_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.rgb2hsv_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~rgb2hsv_rows_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.rgb2hsv_rows_c_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.rgb2hsv_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.rgb2hsv_cols_out_blk_n) begin
                            if (~rgb2hsv_cols_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.rgb2hsv_cols_c_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.rgb2hsv_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~rgb2hsv_cols_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.rgb2hsv_cols_c_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.rgb2hsv_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    8: begin
                        if (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.imgHelper1_rows_out_blk_n) begin
                            if (~imgHelper1_rows_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper1_rows_c_U' written by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper1_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper1_rows_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper1_rows_c_U' read by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper1_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.imgHelper1_cols_out_blk_n) begin
                            if (~imgHelper1_cols_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper1_cols_c_U' written by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper1_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper1_cols_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper1_cols_c_U' read by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper1_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_erode_0_0_2160_3840_0_3_3_1_1_11_U0_U.if_full_n & Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.ap_start & ~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~start_for_erode_0_0_2160_3840_0_3_3_1_1_11_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'colordetect_accel_colordetect_accel.start_for_erode_0_0_2160_3840_0_3_3_1_1_11_U0_U' read by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_11_U0',");
                        end
                    end
                    9: begin
                        if (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.imgHelper2_rows_out_blk_n) begin
                            if (~imgHelper2_rows_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper2_rows_c_U' written by process 'colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_12_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper2_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper2_rows_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper2_rows_c_U' read by process 'colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_12_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper2_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.imgHelper2_cols_out_blk_n) begin
                            if (~imgHelper2_cols_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper2_cols_c_U' written by process 'colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_12_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper2_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper2_cols_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper2_cols_c_U' read by process 'colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_12_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper2_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_dilate_0_0_2160_3840_0_3_3_1_1_12_U0_U.if_full_n & Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.ap_start & ~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~start_for_dilate_0_0_2160_3840_0_3_3_1_1_12_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'colordetect_accel_colordetect_accel.start_for_dilate_0_0_2160_3840_0_3_3_1_1_12_U0_U' read by process 'colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_12_U0',");
                        end
                    end
                    10: begin
                        if (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.imgHelper3_rows_out_blk_n) begin
                            if (~imgHelper3_rows_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper3_rows_c_U' written by process 'colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper3_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper3_rows_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper3_rows_c_U' read by process 'colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper3_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.imgHelper3_cols_out_blk_n) begin
                            if (~imgHelper3_cols_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper3_cols_c_U' written by process 'colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper3_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper3_cols_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper3_cols_c_U' read by process 'colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper3_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_dilate_0_0_2160_3840_0_3_3_1_1_U0_U.if_full_n & Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.ap_start & ~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~start_for_dilate_0_0_2160_3840_0_3_3_1_1_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'colordetect_accel_colordetect_accel.start_for_dilate_0_0_2160_3840_0_3_3_1_1_U0_U' read by process 'colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_U0',");
                        end
                    end
                    11: begin
                        if (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.imgHelper4_rows_out_blk_n) begin
                            if (~imgHelper4_rows_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper4_rows_c_U' written by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper4_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper4_rows_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper4_rows_c_U' read by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper4_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.imgHelper4_cols_out_blk_n) begin
                            if (~imgHelper4_cols_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper4_cols_c_U' written by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper4_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper4_cols_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper4_cols_c_U' read by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper4_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_erode_0_0_2160_3840_0_3_3_1_1_U0_U.if_full_n & Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.ap_start & ~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~start_for_erode_0_0_2160_3840_0_3_3_1_1_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'colordetect_accel_colordetect_accel.start_for_erode_0_0_2160_3840_0_3_3_1_1_U0_U' read by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_U0',");
                        end
                    end
                    12: begin
                        if (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.imgOutput_rows_out_blk_n) begin
                            if (~imgOutput_rows_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgOutput_rows_c_U' written by process 'colordetect_accel_colordetect_accel.xfMat2axis_24_0_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgOutput_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgOutput_rows_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgOutput_rows_c_U' read by process 'colordetect_accel_colordetect_accel.xfMat2axis_24_0_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgOutput_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.imgOutput_cols_out_blk_n) begin
                            if (~imgOutput_cols_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgOutput_cols_c_U' written by process 'colordetect_accel_colordetect_accel.xfMat2axis_24_0_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgOutput_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgOutput_cols_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgOutput_cols_c_U' read by process 'colordetect_accel_colordetect_accel.xfMat2axis_24_0_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgOutput_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_xfMat2axis_24_0_2160_3840_1_U0_U.if_full_n & Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.ap_start & ~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~start_for_xfMat2axis_24_0_2160_3840_1_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'colordetect_accel_colordetect_accel.start_for_xfMat2axis_24_0_2160_3840_1_U0_U' read by process 'colordetect_accel_colordetect_accel.xfMat2axis_24_0_2160_3840_1_U0',");
                        end
                    end
                    3: begin
                        if (ap_sync_Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_ready & Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0.ap_idle & ~ap_sync_colorthresholding_9_0_3_2160_3840_1_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0'");
                        end
                    end
                    endcase
                end
                1 : begin
                    case(index2)
                    2: begin
                        if (~axis2xfMat_24_9_2160_3840_1_U0.imgInput_499_blk_n) begin
                            if (~imgInput_data_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgInput_data_U' written by process 'colordetect_accel_colordetect_accel.bgr2hsv_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_data_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgInput_data_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgInput_data_U' read by process 'colordetect_accel_colordetect_accel.bgr2hsv_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_data_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~axis2xfMat_24_9_2160_3840_1_U0.img_rows_out_blk_n) begin
                            if (~imgInput_rows_c19_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgInput_rows_c19_U' written by process 'colordetect_accel_colordetect_accel.bgr2hsv_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_rows_c19_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgInput_rows_c19_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgInput_rows_c19_U' read by process 'colordetect_accel_colordetect_accel.bgr2hsv_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_rows_c19_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~axis2xfMat_24_9_2160_3840_1_U0.img_cols_out_blk_n) begin
                            if (~imgInput_cols_c20_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgInput_cols_c20_U' written by process 'colordetect_accel_colordetect_accel.bgr2hsv_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_cols_c20_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgInput_cols_c20_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgInput_cols_c20_U' read by process 'colordetect_accel_colordetect_accel.bgr2hsv_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_cols_c20_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_bgr2hsv_9_2160_3840_1_U0_U.if_full_n & axis2xfMat_24_9_2160_3840_1_U0.ap_start & ~axis2xfMat_24_9_2160_3840_1_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~start_for_bgr2hsv_9_2160_3840_1_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'colordetect_accel_colordetect_accel.start_for_bgr2hsv_9_2160_3840_1_U0_U' read by process 'colordetect_accel_colordetect_accel.bgr2hsv_9_2160_3840_1_U0',");
                        end
                    end
                    0: begin
                        if (~axis2xfMat_24_9_2160_3840_1_U0.img_rows_blk_n) begin
                            if (~imgInput_rows_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgInput_rows_c_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgInput_rows_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgInput_rows_c_U' read by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~axis2xfMat_24_9_2160_3840_1_U0.img_cols_blk_n) begin
                            if (~imgInput_cols_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgInput_cols_c_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgInput_cols_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgInput_cols_c_U' read by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_axis2xfMat_24_9_2160_3840_1_U0_U.if_empty_n & axis2xfMat_24_9_2160_3840_1_U0.ap_idle & ~start_for_axis2xfMat_24_9_2160_3840_1_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'colordetect_accel_colordetect_accel.start_for_axis2xfMat_24_9_2160_3840_1_U0_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0',");
                        end
                    end
                    endcase
                end
                2 : begin
                    case(index2)
                    1: begin
                        if (~bgr2hsv_9_2160_3840_1_U0.imgInput_499_blk_n) begin
                            if (~imgInput_data_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgInput_data_U' written by process 'colordetect_accel_colordetect_accel.axis2xfMat_24_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_data_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgInput_data_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgInput_data_U' read by process 'colordetect_accel_colordetect_accel.axis2xfMat_24_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_data_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~bgr2hsv_9_2160_3840_1_U0.p_src_mat_rows_blk_n) begin
                            if (~imgInput_rows_c19_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgInput_rows_c19_U' written by process 'colordetect_accel_colordetect_accel.axis2xfMat_24_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_rows_c19_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgInput_rows_c19_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgInput_rows_c19_U' read by process 'colordetect_accel_colordetect_accel.axis2xfMat_24_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_rows_c19_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~bgr2hsv_9_2160_3840_1_U0.p_src_mat_cols_blk_n) begin
                            if (~imgInput_cols_c20_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgInput_cols_c20_U' written by process 'colordetect_accel_colordetect_accel.axis2xfMat_24_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_cols_c20_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgInput_cols_c20_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgInput_cols_c20_U' read by process 'colordetect_accel_colordetect_accel.axis2xfMat_24_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgInput_cols_c20_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_bgr2hsv_9_2160_3840_1_U0_U.if_empty_n & bgr2hsv_9_2160_3840_1_U0.ap_idle & ~start_for_bgr2hsv_9_2160_3840_1_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'colordetect_accel_colordetect_accel.start_for_bgr2hsv_9_2160_3840_1_U0_U' written by process 'colordetect_accel_colordetect_accel.axis2xfMat_24_9_2160_3840_1_U0',");
                        end
                    end
                    7: begin
                        if (~bgr2hsv_9_2160_3840_1_U0.rgb2hsv_4100_blk_n) begin
                            if (~rgb2hsv_data_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.rgb2hsv_data_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.rgb2hsv_data_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~rgb2hsv_data_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.rgb2hsv_data_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.rgb2hsv_data_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                3 : begin
                    case(index2)
                    2: begin
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.rgb2hsv_4100_blk_n) begin
                            if (~rgb2hsv_data_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.rgb2hsv_data_U' written by process 'colordetect_accel_colordetect_accel.bgr2hsv_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.rgb2hsv_data_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~rgb2hsv_data_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.rgb2hsv_data_U' read by process 'colordetect_accel_colordetect_accel.bgr2hsv_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.rgb2hsv_data_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    8: begin
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.imgHelper1_4101_blk_n) begin
                            if (~imgHelper1_data_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper1_data_U' written by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper1_data_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper1_data_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper1_data_U' read by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper1_data_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    0: begin
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0.p_src_mat_rows_blk_n) begin
                            if (~rgb2hsv_rows_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.rgb2hsv_rows_c_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.rgb2hsv_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~rgb2hsv_rows_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.rgb2hsv_rows_c_U' read by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.rgb2hsv_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0.p_src_mat_cols_blk_n) begin
                            if (~rgb2hsv_cols_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.rgb2hsv_cols_c_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.rgb2hsv_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~rgb2hsv_cols_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.rgb2hsv_cols_c_U' read by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.rgb2hsv_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (ap_sync_colorthresholding_9_0_3_2160_3840_1_U0_ap_ready & colorthresholding_9_0_3_2160_3840_1_U0.ap_idle & ~ap_sync_Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                        end
                    end
                    endcase
                end
                4 : begin
                    case(index2)
                    0: begin
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0.p_src_mat_rows_blk_n) begin
                            if (~rgb2hsv_rows_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.rgb2hsv_rows_c_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.rgb2hsv_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~rgb2hsv_rows_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.rgb2hsv_rows_c_U' read by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.rgb2hsv_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0.p_src_mat_cols_blk_n) begin
                            if (~rgb2hsv_cols_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.rgb2hsv_cols_c_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.rgb2hsv_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~rgb2hsv_cols_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.rgb2hsv_cols_c_U' read by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.rgb2hsv_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    6: begin
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0.p_src_mat_rows_out_blk_n) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_rows_c_i_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_rows_c_i_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_rows_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_rows_c_i_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_rows_c_i_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_rows_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0.p_src_mat_cols_out_blk_n) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_cols_c_i_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_cols_c_i_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_cols_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_cols_c_i_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_cols_c_i_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_cols_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.start_for_colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2dEe_U.if_full_n & colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0.ap_start & ~colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~colorthresholding_9_0_3_2160_3840_1_U0.start_for_colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2dEe_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.start_for_colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2dEe_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0',");
                        end
                    end
                    5: begin
                        if (colorthresholding_9_0_3_2160_3840_1_U0.ap_sync_colorthresholding_9_0_3_2160_3840_1_entry29_U0_ap_ready & colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.ap_sync_colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                        end
                    end
                    endcase
                end
                5 : begin
                    case(index2)
                    4: begin
                        if (colorthresholding_9_0_3_2160_3840_1_U0.ap_sync_colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0_ap_ready & colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.ap_sync_colorthresholding_9_0_3_2160_3840_1_entry29_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0'");
                        end
                    end
                    endcase
                end
                6 : begin
                    case(index2)
                    4: begin
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0.p_src_mat_rows_blk_n) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_rows_c_i_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_rows_c_i_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_rows_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_rows_c_i_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_rows_c_i_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_rows_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0.p_src_mat_cols_blk_n) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_cols_c_i_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_cols_c_i_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_cols_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_cols_c_i_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_cols_c_i_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_cols_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.start_for_colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2dEe_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.start_for_colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2dEe_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.start_for_colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2dEe_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0',");
                        end
                    end
                    endcase
                end
                7 : begin
                    case(index2)
                    2: begin
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.rgb2hsv_4100_blk_n) begin
                            if (~rgb2hsv_data_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.rgb2hsv_data_U' written by process 'colordetect_accel_colordetect_accel.bgr2hsv_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.rgb2hsv_data_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~rgb2hsv_data_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.rgb2hsv_data_U' read by process 'colordetect_accel_colordetect_accel.bgr2hsv_9_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.rgb2hsv_data_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    8: begin
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.imgHelper1_4101_blk_n) begin
                            if (~imgHelper1_data_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper1_data_U' written by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper1_data_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper1_data_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper1_data_U' read by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper1_data_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    5: begin
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_0_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_0_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_0_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_0_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_0_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_0_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_0_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_0_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_1_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_1_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_1_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_1_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_2_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_2_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_2_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_2_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_0_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_0_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_0_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_0_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_0_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_0_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_0_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_0_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_1_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_1_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_1_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_1_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_2_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_2_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_2_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_2_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_0_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_0_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_0_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_0_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_0_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_0_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_0_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_0_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_1_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_1_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_1_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_1_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_2_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_2_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_2_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_2_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_0_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_0_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_0_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_0_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_0_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_0_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_0_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_0_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_1_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_1_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_1_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_1_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_2_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_2_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_2_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_2_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_0_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_0_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_0_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_0_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_0_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_0_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_0_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_0_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_1_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_1_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_1_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_1_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_2_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_2_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_2_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_2_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_0_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_0_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_0_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_0_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_0_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_0_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_0_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_0_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_1_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_1_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_1_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_1_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_2_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_2_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_2_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_2_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    6: begin
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.img_height_loc_i_channel_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.img_height_loc_i_channel_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.img_height_loc_i_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.img_height_loc_i_channel_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.img_height_loc_i_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.img_height_loc_i_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.img_height_loc_i_channel_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.img_height_loc_i_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~colorthresholding_9_0_3_2160_3840_1_U0.img_width_loc_i_channel_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.img_width_loc_i_channel_U.if_write) begin
                            if (~colorthresholding_9_0_3_2160_3840_1_U0.img_width_loc_i_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.img_width_loc_i_channel_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.img_width_loc_i_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~colorthresholding_9_0_3_2160_3840_1_U0.img_width_loc_i_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.img_width_loc_i_channel_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.img_width_loc_i_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                8 : begin
                    case(index2)
                    7: begin
                        if (~erode_0_0_2160_3840_0_3_3_1_1_11_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.imgHelper1_4101_blk_n) begin
                            if (~imgHelper1_data_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper1_data_U' written by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper1_data_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper1_data_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper1_data_U' read by process 'colordetect_accel_colordetect_accel.colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper1_data_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    9: begin
                        if (~erode_0_0_2160_3840_0_3_3_1_1_11_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.imgHelper2_4102_blk_n) begin
                            if (~imgHelper2_data_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper2_data_U' written by process 'colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_12_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper2_data_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper2_data_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper2_data_U' read by process 'colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_12_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper2_data_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    0: begin
                        if (~erode_0_0_2160_3840_0_3_3_1_1_11_U0.p_src_rows_blk_n) begin
                            if (~imgHelper1_rows_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper1_rows_c_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper1_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper1_rows_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper1_rows_c_U' read by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper1_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~erode_0_0_2160_3840_0_3_3_1_1_11_U0.p_src_cols_blk_n) begin
                            if (~imgHelper1_cols_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper1_cols_c_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper1_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper1_cols_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper1_cols_c_U' read by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper1_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_erode_0_0_2160_3840_0_3_3_1_1_11_U0_U.if_empty_n & erode_0_0_2160_3840_0_3_3_1_1_11_U0.ap_idle & ~start_for_erode_0_0_2160_3840_0_3_3_1_1_11_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'colordetect_accel_colordetect_accel.start_for_erode_0_0_2160_3840_0_3_3_1_1_11_U0_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0',");
                        end
                    end
                    endcase
                end
                9 : begin
                    case(index2)
                    8: begin
                        if (~dilate_0_0_2160_3840_0_3_3_1_1_12_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.imgHelper2_4102_blk_n) begin
                            if (~imgHelper2_data_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper2_data_U' written by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper2_data_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper2_data_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper2_data_U' read by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper2_data_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    10: begin
                        if (~dilate_0_0_2160_3840_0_3_3_1_1_12_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.imgHelper3_4103_blk_n) begin
                            if (~imgHelper3_data_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper3_data_U' written by process 'colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper3_data_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper3_data_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper3_data_U' read by process 'colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper3_data_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    0: begin
                        if (~dilate_0_0_2160_3840_0_3_3_1_1_12_U0.p_src_rows_blk_n) begin
                            if (~imgHelper2_rows_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper2_rows_c_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper2_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper2_rows_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper2_rows_c_U' read by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper2_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~dilate_0_0_2160_3840_0_3_3_1_1_12_U0.p_src_cols_blk_n) begin
                            if (~imgHelper2_cols_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper2_cols_c_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper2_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper2_cols_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper2_cols_c_U' read by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper2_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_dilate_0_0_2160_3840_0_3_3_1_1_12_U0_U.if_empty_n & dilate_0_0_2160_3840_0_3_3_1_1_12_U0.ap_idle & ~start_for_dilate_0_0_2160_3840_0_3_3_1_1_12_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'colordetect_accel_colordetect_accel.start_for_dilate_0_0_2160_3840_0_3_3_1_1_12_U0_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0',");
                        end
                    end
                    endcase
                end
                10 : begin
                    case(index2)
                    9: begin
                        if (~dilate_0_0_2160_3840_0_3_3_1_1_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.imgHelper2_4102_blk_n) begin
                            if (~imgHelper3_data_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper3_data_U' written by process 'colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_12_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper3_data_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper3_data_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper3_data_U' read by process 'colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_12_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper3_data_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    11: begin
                        if (~dilate_0_0_2160_3840_0_3_3_1_1_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.imgHelper3_4103_blk_n) begin
                            if (~imgHelper4_data_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper4_data_U' written by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper4_data_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper4_data_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper4_data_U' read by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper4_data_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    0: begin
                        if (~dilate_0_0_2160_3840_0_3_3_1_1_U0.p_src_rows_blk_n) begin
                            if (~imgHelper3_rows_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper3_rows_c_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper3_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper3_rows_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper3_rows_c_U' read by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper3_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~dilate_0_0_2160_3840_0_3_3_1_1_U0.p_src_cols_blk_n) begin
                            if (~imgHelper3_cols_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper3_cols_c_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper3_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper3_cols_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper3_cols_c_U' read by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper3_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_dilate_0_0_2160_3840_0_3_3_1_1_U0_U.if_empty_n & dilate_0_0_2160_3840_0_3_3_1_1_U0.ap_idle & ~start_for_dilate_0_0_2160_3840_0_3_3_1_1_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'colordetect_accel_colordetect_accel.start_for_dilate_0_0_2160_3840_0_3_3_1_1_U0_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0',");
                        end
                    end
                    endcase
                end
                11 : begin
                    case(index2)
                    10: begin
                        if (~erode_0_0_2160_3840_0_3_3_1_1_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.imgHelper1_4101_blk_n) begin
                            if (~imgHelper4_data_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper4_data_U' written by process 'colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper4_data_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper4_data_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper4_data_U' read by process 'colordetect_accel_colordetect_accel.dilate_0_0_2160_3840_0_3_3_1_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper4_data_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    12: begin
                        if (~erode_0_0_2160_3840_0_3_3_1_1_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.imgHelper2_4102_blk_n) begin
                            if (~imgOutput_data_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgOutput_data_U' written by process 'colordetect_accel_colordetect_accel.xfMat2axis_24_0_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgOutput_data_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgOutput_data_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgOutput_data_U' read by process 'colordetect_accel_colordetect_accel.xfMat2axis_24_0_2160_3840_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgOutput_data_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    0: begin
                        if (~erode_0_0_2160_3840_0_3_3_1_1_U0.p_src_rows_blk_n) begin
                            if (~imgHelper4_rows_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper4_rows_c_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper4_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper4_rows_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper4_rows_c_U' read by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper4_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~erode_0_0_2160_3840_0_3_3_1_1_U0.p_src_cols_blk_n) begin
                            if (~imgHelper4_cols_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgHelper4_cols_c_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper4_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgHelper4_cols_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgHelper4_cols_c_U' read by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgHelper4_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_erode_0_0_2160_3840_0_3_3_1_1_U0_U.if_empty_n & erode_0_0_2160_3840_0_3_3_1_1_U0.ap_idle & ~start_for_erode_0_0_2160_3840_0_3_3_1_1_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'colordetect_accel_colordetect_accel.start_for_erode_0_0_2160_3840_0_3_3_1_1_U0_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0',");
                        end
                    end
                    endcase
                end
                12 : begin
                    case(index2)
                    11: begin
                        if (~xfMat2axis_24_0_2160_3840_1_U0.imgOutput_4105_blk_n) begin
                            if (~imgOutput_data_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgOutput_data_U' written by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgOutput_data_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgOutput_data_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgOutput_data_U' read by process 'colordetect_accel_colordetect_accel.erode_0_0_2160_3840_0_3_3_1_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgOutput_data_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    0: begin
                        if (~xfMat2axis_24_0_2160_3840_1_U0.img_rows_blk_n) begin
                            if (~imgOutput_rows_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgOutput_rows_c_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgOutput_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgOutput_rows_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgOutput_rows_c_U' read by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgOutput_rows_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~xfMat2axis_24_0_2160_3840_1_U0.img_cols_blk_n) begin
                            if (~imgOutput_cols_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'colordetect_accel_colordetect_accel.imgOutput_cols_c_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgOutput_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~imgOutput_cols_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'colordetect_accel_colordetect_accel.imgOutput_cols_c_U' read by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path colordetect_accel_colordetect_accel.imgOutput_cols_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_xfMat2axis_24_0_2160_3840_1_U0_U.if_empty_n & xfMat2axis_24_0_2160_3840_1_U0.ap_idle & ~start_for_xfMat2axis_24_0_2160_3840_1_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'colordetect_accel_colordetect_accel.start_for_xfMat2axis_24_0_2160_3840_1_U0_U' written by process 'colordetect_accel_colordetect_accel.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0',");
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
        wait (reset == 1);
        cycle_id = 1;
        record_time = 0;
        while (1) begin
            @ (negedge clock);
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
                        find_df_deadlock = 1;
                        @(negedge clock);
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
 
