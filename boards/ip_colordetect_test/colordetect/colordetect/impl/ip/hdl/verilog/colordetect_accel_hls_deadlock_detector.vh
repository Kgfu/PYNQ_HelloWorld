
    wire reset;
    wire clock;
    assign reset = ap_rst_n;
    assign clock = ap_clk;
    wire [2:0] proc_0_data_FIFO_blk;
    wire [2:0] proc_0_data_PIPO_blk;
    wire [2:0] proc_0_start_FIFO_blk;
    wire [2:0] proc_0_TLF_FIFO_blk;
    wire [2:0] proc_0_input_sync_blk;
    wire [2:0] proc_0_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_0;
    reg [2:0] proc_dep_vld_vec_0_reg;
    wire [2:0] in_chan_dep_vld_vec_0;
    wire [44:0] in_chan_dep_data_vec_0;
    wire [2:0] token_in_vec_0;
    wire [2:0] out_chan_dep_vld_vec_0;
    wire [14:0] out_chan_dep_data_0;
    wire [2:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [14:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_2_0;
    wire [14:0] dep_chan_data_2_0;
    wire token_2_0;
    wire dep_chan_vld_9_0;
    wire [14:0] dep_chan_data_9_0;
    wire token_9_0;
    wire [7:0] proc_1_data_FIFO_blk;
    wire [7:0] proc_1_data_PIPO_blk;
    wire [7:0] proc_1_start_FIFO_blk;
    wire [7:0] proc_1_TLF_FIFO_blk;
    wire [7:0] proc_1_input_sync_blk;
    wire [7:0] proc_1_output_sync_blk;
    wire [7:0] proc_dep_vld_vec_1;
    reg [7:0] proc_dep_vld_vec_1_reg;
    wire [7:0] in_chan_dep_vld_vec_1;
    wire [119:0] in_chan_dep_data_vec_1;
    wire [7:0] token_in_vec_1;
    wire [7:0] out_chan_dep_vld_vec_1;
    wire [14:0] out_chan_dep_data_1;
    wire [7:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [14:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_3_1;
    wire [14:0] dep_chan_data_3_1;
    wire token_3_1;
    wire dep_chan_vld_5_1;
    wire [14:0] dep_chan_data_5_1;
    wire token_5_1;
    wire dep_chan_vld_10_1;
    wire [14:0] dep_chan_data_10_1;
    wire token_10_1;
    wire dep_chan_vld_11_1;
    wire [14:0] dep_chan_data_11_1;
    wire token_11_1;
    wire dep_chan_vld_12_1;
    wire [14:0] dep_chan_data_12_1;
    wire token_12_1;
    wire dep_chan_vld_13_1;
    wire [14:0] dep_chan_data_13_1;
    wire token_13_1;
    wire dep_chan_vld_14_1;
    wire [14:0] dep_chan_data_14_1;
    wire token_14_1;
    wire [2:0] proc_2_data_FIFO_blk;
    wire [2:0] proc_2_data_PIPO_blk;
    wire [2:0] proc_2_start_FIFO_blk;
    wire [2:0] proc_2_TLF_FIFO_blk;
    wire [2:0] proc_2_input_sync_blk;
    wire [2:0] proc_2_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_2;
    reg [2:0] proc_dep_vld_vec_2_reg;
    wire [2:0] in_chan_dep_vld_vec_2;
    wire [44:0] in_chan_dep_data_vec_2;
    wire [2:0] token_in_vec_2;
    wire [2:0] out_chan_dep_vld_vec_2;
    wire [14:0] out_chan_dep_data_2;
    wire [2:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_0_2;
    wire [14:0] dep_chan_data_0_2;
    wire token_0_2;
    wire dep_chan_vld_6_2;
    wire [14:0] dep_chan_data_6_2;
    wire token_6_2;
    wire dep_chan_vld_9_2;
    wire [14:0] dep_chan_data_9_2;
    wire token_9_2;
    wire [1:0] proc_3_data_FIFO_blk;
    wire [1:0] proc_3_data_PIPO_blk;
    wire [1:0] proc_3_start_FIFO_blk;
    wire [1:0] proc_3_TLF_FIFO_blk;
    wire [1:0] proc_3_input_sync_blk;
    wire [1:0] proc_3_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_3;
    reg [1:0] proc_dep_vld_vec_3_reg;
    wire [1:0] in_chan_dep_vld_vec_3;
    wire [29:0] in_chan_dep_data_vec_3;
    wire [1:0] token_in_vec_3;
    wire [1:0] out_chan_dep_vld_vec_3;
    wire [14:0] out_chan_dep_data_3;
    wire [1:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_1_3;
    wire [14:0] dep_chan_data_1_3;
    wire token_1_3;
    wire dep_chan_vld_4_3;
    wire [14:0] dep_chan_data_4_3;
    wire token_4_3;
    wire [1:0] proc_4_data_FIFO_blk;
    wire [1:0] proc_4_data_PIPO_blk;
    wire [1:0] proc_4_start_FIFO_blk;
    wire [1:0] proc_4_TLF_FIFO_blk;
    wire [1:0] proc_4_input_sync_blk;
    wire [1:0] proc_4_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_4;
    reg [1:0] proc_dep_vld_vec_4_reg;
    wire [1:0] in_chan_dep_vld_vec_4;
    wire [29:0] in_chan_dep_data_vec_4;
    wire [1:0] token_in_vec_4;
    wire [1:0] out_chan_dep_vld_vec_4;
    wire [14:0] out_chan_dep_data_4;
    wire [1:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_3_4;
    wire [14:0] dep_chan_data_3_4;
    wire token_3_4;
    wire dep_chan_vld_8_4;
    wire [14:0] dep_chan_data_8_4;
    wire token_8_4;
    wire [2:0] proc_5_data_FIFO_blk;
    wire [2:0] proc_5_data_PIPO_blk;
    wire [2:0] proc_5_start_FIFO_blk;
    wire [2:0] proc_5_TLF_FIFO_blk;
    wire [2:0] proc_5_input_sync_blk;
    wire [2:0] proc_5_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_5;
    reg [2:0] proc_dep_vld_vec_5_reg;
    wire [2:0] in_chan_dep_vld_vec_5;
    wire [44:0] in_chan_dep_data_vec_5;
    wire [2:0] token_in_vec_5;
    wire [2:0] out_chan_dep_vld_vec_5;
    wire [14:0] out_chan_dep_data_5;
    wire [2:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_1_5;
    wire [14:0] dep_chan_data_1_5;
    wire token_1_5;
    wire dep_chan_vld_6_5;
    wire [14:0] dep_chan_data_6_5;
    wire token_6_5;
    wire dep_chan_vld_7_5;
    wire [14:0] dep_chan_data_7_5;
    wire token_7_5;
    wire [1:0] proc_6_data_FIFO_blk;
    wire [1:0] proc_6_data_PIPO_blk;
    wire [1:0] proc_6_start_FIFO_blk;
    wire [1:0] proc_6_TLF_FIFO_blk;
    wire [1:0] proc_6_input_sync_blk;
    wire [1:0] proc_6_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_6;
    reg [1:0] proc_dep_vld_vec_6_reg;
    wire [2:0] in_chan_dep_vld_vec_6;
    wire [44:0] in_chan_dep_data_vec_6;
    wire [2:0] token_in_vec_6;
    wire [1:0] out_chan_dep_vld_vec_6;
    wire [14:0] out_chan_dep_data_6;
    wire [1:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_2_6;
    wire [14:0] dep_chan_data_2_6;
    wire token_2_6;
    wire dep_chan_vld_5_6;
    wire [14:0] dep_chan_data_5_6;
    wire token_5_6;
    wire dep_chan_vld_8_6;
    wire [14:0] dep_chan_data_8_6;
    wire token_8_6;
    wire [0:0] proc_7_data_FIFO_blk;
    wire [0:0] proc_7_data_PIPO_blk;
    wire [0:0] proc_7_start_FIFO_blk;
    wire [0:0] proc_7_TLF_FIFO_blk;
    wire [0:0] proc_7_input_sync_blk;
    wire [0:0] proc_7_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_7;
    reg [0:0] proc_dep_vld_vec_7_reg;
    wire [1:0] in_chan_dep_vld_vec_7;
    wire [29:0] in_chan_dep_data_vec_7;
    wire [1:0] token_in_vec_7;
    wire [0:0] out_chan_dep_vld_vec_7;
    wire [14:0] out_chan_dep_data_7;
    wire [0:0] token_out_vec_7;
    wire dl_detect_out_7;
    wire dep_chan_vld_5_7;
    wire [14:0] dep_chan_data_5_7;
    wire token_5_7;
    wire dep_chan_vld_8_7;
    wire [14:0] dep_chan_data_8_7;
    wire token_8_7;
    wire [3:0] proc_8_data_FIFO_blk;
    wire [3:0] proc_8_data_PIPO_blk;
    wire [3:0] proc_8_start_FIFO_blk;
    wire [3:0] proc_8_TLF_FIFO_blk;
    wire [3:0] proc_8_input_sync_blk;
    wire [3:0] proc_8_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_8;
    reg [3:0] proc_dep_vld_vec_8_reg;
    wire [1:0] in_chan_dep_vld_vec_8;
    wire [29:0] in_chan_dep_data_vec_8;
    wire [1:0] token_in_vec_8;
    wire [3:0] out_chan_dep_vld_vec_8;
    wire [14:0] out_chan_dep_data_8;
    wire [3:0] token_out_vec_8;
    wire dl_detect_out_8;
    wire dep_chan_vld_4_8;
    wire [14:0] dep_chan_data_4_8;
    wire token_4_8;
    wire dep_chan_vld_10_8;
    wire [14:0] dep_chan_data_10_8;
    wire token_10_8;
    wire [2:0] proc_9_data_FIFO_blk;
    wire [2:0] proc_9_data_PIPO_blk;
    wire [2:0] proc_9_start_FIFO_blk;
    wire [2:0] proc_9_TLF_FIFO_blk;
    wire [2:0] proc_9_input_sync_blk;
    wire [2:0] proc_9_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_9;
    reg [2:0] proc_dep_vld_vec_9_reg;
    wire [2:0] in_chan_dep_vld_vec_9;
    wire [44:0] in_chan_dep_data_vec_9;
    wire [2:0] token_in_vec_9;
    wire [2:0] out_chan_dep_vld_vec_9;
    wire [14:0] out_chan_dep_data_9;
    wire [2:0] token_out_vec_9;
    wire dl_detect_out_9;
    wire dep_chan_vld_0_9;
    wire [14:0] dep_chan_data_0_9;
    wire token_0_9;
    wire dep_chan_vld_2_9;
    wire [14:0] dep_chan_data_2_9;
    wire token_2_9;
    wire dep_chan_vld_14_9;
    wire [14:0] dep_chan_data_14_9;
    wire token_14_9;
    wire [2:0] proc_10_data_FIFO_blk;
    wire [2:0] proc_10_data_PIPO_blk;
    wire [2:0] proc_10_start_FIFO_blk;
    wire [2:0] proc_10_TLF_FIFO_blk;
    wire [2:0] proc_10_input_sync_blk;
    wire [2:0] proc_10_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_10;
    reg [2:0] proc_dep_vld_vec_10_reg;
    wire [2:0] in_chan_dep_vld_vec_10;
    wire [44:0] in_chan_dep_data_vec_10;
    wire [2:0] token_in_vec_10;
    wire [2:0] out_chan_dep_vld_vec_10;
    wire [14:0] out_chan_dep_data_10;
    wire [2:0] token_out_vec_10;
    wire dl_detect_out_10;
    wire dep_chan_vld_1_10;
    wire [14:0] dep_chan_data_1_10;
    wire token_1_10;
    wire dep_chan_vld_8_10;
    wire [14:0] dep_chan_data_8_10;
    wire token_8_10;
    wire dep_chan_vld_11_10;
    wire [14:0] dep_chan_data_11_10;
    wire token_11_10;
    wire [2:0] proc_11_data_FIFO_blk;
    wire [2:0] proc_11_data_PIPO_blk;
    wire [2:0] proc_11_start_FIFO_blk;
    wire [2:0] proc_11_TLF_FIFO_blk;
    wire [2:0] proc_11_input_sync_blk;
    wire [2:0] proc_11_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_11;
    reg [2:0] proc_dep_vld_vec_11_reg;
    wire [2:0] in_chan_dep_vld_vec_11;
    wire [44:0] in_chan_dep_data_vec_11;
    wire [2:0] token_in_vec_11;
    wire [2:0] out_chan_dep_vld_vec_11;
    wire [14:0] out_chan_dep_data_11;
    wire [2:0] token_out_vec_11;
    wire dl_detect_out_11;
    wire dep_chan_vld_1_11;
    wire [14:0] dep_chan_data_1_11;
    wire token_1_11;
    wire dep_chan_vld_10_11;
    wire [14:0] dep_chan_data_10_11;
    wire token_10_11;
    wire dep_chan_vld_12_11;
    wire [14:0] dep_chan_data_12_11;
    wire token_12_11;
    wire [2:0] proc_12_data_FIFO_blk;
    wire [2:0] proc_12_data_PIPO_blk;
    wire [2:0] proc_12_start_FIFO_blk;
    wire [2:0] proc_12_TLF_FIFO_blk;
    wire [2:0] proc_12_input_sync_blk;
    wire [2:0] proc_12_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_12;
    reg [2:0] proc_dep_vld_vec_12_reg;
    wire [2:0] in_chan_dep_vld_vec_12;
    wire [44:0] in_chan_dep_data_vec_12;
    wire [2:0] token_in_vec_12;
    wire [2:0] out_chan_dep_vld_vec_12;
    wire [14:0] out_chan_dep_data_12;
    wire [2:0] token_out_vec_12;
    wire dl_detect_out_12;
    wire dep_chan_vld_1_12;
    wire [14:0] dep_chan_data_1_12;
    wire token_1_12;
    wire dep_chan_vld_11_12;
    wire [14:0] dep_chan_data_11_12;
    wire token_11_12;
    wire dep_chan_vld_13_12;
    wire [14:0] dep_chan_data_13_12;
    wire token_13_12;
    wire [2:0] proc_13_data_FIFO_blk;
    wire [2:0] proc_13_data_PIPO_blk;
    wire [2:0] proc_13_start_FIFO_blk;
    wire [2:0] proc_13_TLF_FIFO_blk;
    wire [2:0] proc_13_input_sync_blk;
    wire [2:0] proc_13_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_13;
    reg [2:0] proc_dep_vld_vec_13_reg;
    wire [2:0] in_chan_dep_vld_vec_13;
    wire [44:0] in_chan_dep_data_vec_13;
    wire [2:0] token_in_vec_13;
    wire [2:0] out_chan_dep_vld_vec_13;
    wire [14:0] out_chan_dep_data_13;
    wire [2:0] token_out_vec_13;
    wire dl_detect_out_13;
    wire dep_chan_vld_1_13;
    wire [14:0] dep_chan_data_1_13;
    wire token_1_13;
    wire dep_chan_vld_12_13;
    wire [14:0] dep_chan_data_12_13;
    wire token_12_13;
    wire dep_chan_vld_14_13;
    wire [14:0] dep_chan_data_14_13;
    wire token_14_13;
    wire [2:0] proc_14_data_FIFO_blk;
    wire [2:0] proc_14_data_PIPO_blk;
    wire [2:0] proc_14_start_FIFO_blk;
    wire [2:0] proc_14_TLF_FIFO_blk;
    wire [2:0] proc_14_input_sync_blk;
    wire [2:0] proc_14_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_14;
    reg [2:0] proc_dep_vld_vec_14_reg;
    wire [2:0] in_chan_dep_vld_vec_14;
    wire [44:0] in_chan_dep_data_vec_14;
    wire [2:0] token_in_vec_14;
    wire [2:0] out_chan_dep_vld_vec_14;
    wire [14:0] out_chan_dep_data_14;
    wire [2:0] token_out_vec_14;
    wire dl_detect_out_14;
    wire dep_chan_vld_1_14;
    wire [14:0] dep_chan_data_1_14;
    wire token_1_14;
    wire dep_chan_vld_9_14;
    wire [14:0] dep_chan_data_9_14;
    wire token_9_14;
    wire dep_chan_vld_13_14;
    wire [14:0] dep_chan_data_13_14;
    wire token_13_14;
    wire [14:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    reg [14:0] origin;

    reg ap_done_reg_0;// for module Loop_VITIS_LOOP_184_2_proc_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_0 <= 'b0;
        end
        else begin
            ap_done_reg_0 <= Loop_VITIS_LOOP_184_2_proc_U0.ap_done & ~Loop_VITIS_LOOP_184_2_proc_U0.ap_continue;
        end
    end

    reg ap_done_reg_1;// for module colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_1 <= 'b0;
        end
        else begin
            ap_done_reg_1 <= colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0.ap_done & ~colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0.ap_continue;
        end
    end

    reg ap_done_reg_2;// for module colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_2 <= 'b0;
        end
        else begin
            ap_done_reg_2 <= colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_done & ~colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_continue;
        end
    end

    reg ap_done_reg_3;// for module Block_split5_proc_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_3 <= 'b0;
        end
        else begin
            ap_done_reg_3 <= Block_split5_proc_U0.ap_done & ~Block_split5_proc_U0.ap_continue;
        end
    end

    reg ap_done_reg_4;// for module xfMat2axis_24_0_2160_3840_1_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_4 <= 'b0;
        end
        else begin
            ap_done_reg_4 <= xfMat2axis_24_0_2160_3840_1_U0.ap_done & ~xfMat2axis_24_0_2160_3840_1_U0.ap_continue;
        end
    end

reg [15:0] trans_in_cnt_0;// for process colordetect_accel_entry31_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_0 <= 16'h0;
    end
    else if (colordetect_accel_entry31_U0.start_write == 1'b1) begin
        trans_in_cnt_0 <= trans_in_cnt_0 + 16'h1;
    end
    else begin
        trans_in_cnt_0 <= trans_in_cnt_0;
    end
end

reg [15:0] trans_out_cnt_0;// for process colordetect_accel_entry31_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_0 <= 16'h0;
    end
    else if (colordetect_accel_entry31_U0.ap_done == 1'b1 && colordetect_accel_entry31_U0.ap_continue == 1'b1) begin
        trans_out_cnt_0 <= trans_out_cnt_0 + 16'h1;
    end
    else begin
        trans_out_cnt_0 <= trans_out_cnt_0;
    end
end

reg [15:0] trans_in_cnt_1;// for process Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_1 <= 16'h0;
    end
    else if (Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.start_write == 1'b1) begin
        trans_in_cnt_1 <= trans_in_cnt_1 + 16'h1;
    end
    else begin
        trans_in_cnt_1 <= trans_in_cnt_1;
    end
end

reg [15:0] trans_out_cnt_1;// for process Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_1 <= 16'h0;
    end
    else if (Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.ap_done == 1'b1 && Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.ap_continue == 1'b1) begin
        trans_out_cnt_1 <= trans_out_cnt_1 + 16'h1;
    end
    else begin
        trans_out_cnt_1 <= trans_out_cnt_1;
    end
end

reg [15:0] trans_in_cnt_2;// for process axis2xfMat_24_9_2160_3840_1_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_2 <= 16'h0;
    end
    else if (axis2xfMat_24_9_2160_3840_1_U0.start_write == 1'b1) begin
        trans_in_cnt_2 <= trans_in_cnt_2 + 16'h1;
    end
    else begin
        trans_in_cnt_2 <= trans_in_cnt_2;
    end
end

reg [15:0] trans_out_cnt_2;// for process axis2xfMat_24_9_2160_3840_1_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_2 <= 16'h0;
    end
    else if (axis2xfMat_24_9_2160_3840_1_U0.ap_done == 1'b1 && axis2xfMat_24_9_2160_3840_1_U0.ap_continue == 1'b1) begin
        trans_out_cnt_2 <= trans_out_cnt_2 + 16'h1;
    end
    else begin
        trans_out_cnt_2 <= trans_out_cnt_2;
    end
end

reg [15:0] trans_in_cnt_3;// for process colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry28_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_3 <= 16'h0;
    end
    else if (colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry28_U0.start_write == 1'b1) begin
        trans_in_cnt_3 <= trans_in_cnt_3 + 16'h1;
    end
    else begin
        trans_in_cnt_3 <= trans_in_cnt_3;
    end
end

reg [15:0] trans_out_cnt_3;// for process colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry28_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_3 <= 16'h0;
    end
    else if (colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry28_U0.ap_done == 1'b1 && colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry28_U0.ap_continue == 1'b1) begin
        trans_out_cnt_3 <= trans_out_cnt_3 + 16'h1;
    end
    else begin
        trans_out_cnt_3 <= trans_out_cnt_3;
    end
end

    // Process: colordetect_accel_entry31_U0
    colordetect_accel_hls_deadlock_detect_unit #(15, 0, 3, 3) colordetect_accel_hls_deadlock_detect_unit_0 (
        .reset(reset),
        .clock(clock),
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

    assign proc_0_data_FIFO_blk[0] = 1'b0 | (~colordetect_accel_entry31_U0.low_thresh_out_blk_n) | (~colordetect_accel_entry31_U0.high_thresh_out_blk_n);
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0;
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0 | (ap_sync_colordetect_accel_entry31_U0_ap_ready & colordetect_accel_entry31_U0.ap_idle & ~ap_sync_Loop_VITIS_LOOP_184_2_proc_U0_ap_ready);
    assign proc_0_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    assign proc_0_data_FIFO_blk[1] = 1'b0 | (~colordetect_accel_entry31_U0.rows_out_blk_n) | (~colordetect_accel_entry31_U0.cols_out_blk_n);
    assign proc_0_data_PIPO_blk[1] = 1'b0;
    assign proc_0_start_FIFO_blk[1] = 1'b0 | (~start_for_Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0_U.if_full_n & colordetect_accel_entry31_U0.ap_start & ~colordetect_accel_entry31_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~start_for_Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[1] = 1'b0;
    assign proc_0_input_sync_blk[1] = 1'b0;
    assign proc_0_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (proc_0_data_FIFO_blk[1] | proc_0_data_PIPO_blk[1] | proc_0_start_FIFO_blk[1] | proc_0_TLF_FIFO_blk[1] | proc_0_input_sync_blk[1] | proc_0_output_sync_blk[1]);
    assign proc_0_data_FIFO_blk[2] = 1'b0 | (~colordetect_accel_entry31_U0.t1_out_blk_n);
    assign proc_0_data_PIPO_blk[2] = 1'b0;
    assign proc_0_start_FIFO_blk[2] = 1'b0;
    assign proc_0_TLF_FIFO_blk[2] = 1'b0;
    assign proc_0_input_sync_blk[2] = 1'b0;
    assign proc_0_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_0[2] = dl_detect_out ? proc_dep_vld_vec_0_reg[2] : (proc_0_data_FIFO_blk[2] | proc_0_data_PIPO_blk[2] | proc_0_start_FIFO_blk[2] | proc_0_TLF_FIFO_blk[2] | proc_0_input_sync_blk[2] | proc_0_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[14 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_2_0;
    assign in_chan_dep_data_vec_0[29 : 15] = dep_chan_data_2_0;
    assign token_in_vec_0[1] = token_2_0;
    assign in_chan_dep_vld_vec_0[2] = dep_chan_vld_9_0;
    assign in_chan_dep_data_vec_0[44 : 30] = dep_chan_data_9_0;
    assign token_in_vec_0[2] = token_9_0;
    assign dep_chan_vld_0_2 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_2 = out_chan_dep_data_0;
    assign token_0_2 = token_out_vec_0[0];
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[1];
    assign dep_chan_vld_0_9 = out_chan_dep_vld_vec_0[2];
    assign dep_chan_data_0_9 = out_chan_dep_data_0;
    assign token_0_9 = token_out_vec_0[2];

    // Process: Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0
    colordetect_accel_hls_deadlock_detect_unit #(15, 1, 8, 8) colordetect_accel_hls_deadlock_detect_unit_1 (
        .reset(reset),
        .clock(clock),
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

    assign proc_1_data_FIFO_blk[0] = 1'b0 | (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.rows_blk_n) | (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.cols_blk_n);
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0 | (~start_for_Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0_U.if_empty_n & Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.ap_idle & ~start_for_Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0_U.if_write);
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0;
    assign proc_1_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0 | (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.imgInput_rows_out_blk_n) | (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.imgInput_cols_out_blk_n);
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0 | (~start_for_axis2xfMat_24_9_2160_3840_1_U0_U.if_full_n & Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.ap_start & ~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~start_for_axis2xfMat_24_9_2160_3840_1_U0_U.if_read);
    assign proc_1_TLF_FIFO_blk[1] = 1'b0;
    assign proc_1_input_sync_blk[1] = 1'b0;
    assign proc_1_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    assign proc_1_data_FIFO_blk[2] = 1'b0 | (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.rgb2hsv_rows_out_blk_n) | (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.rgb2hsv_cols_out_blk_n);
    assign proc_1_data_PIPO_blk[2] = 1'b0;
    assign proc_1_start_FIFO_blk[2] = 1'b0;
    assign proc_1_TLF_FIFO_blk[2] = 1'b0;
    assign proc_1_input_sync_blk[2] = 1'b0;
    assign proc_1_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_1[2] = dl_detect_out ? proc_dep_vld_vec_1_reg[2] : (proc_1_data_FIFO_blk[2] | proc_1_data_PIPO_blk[2] | proc_1_start_FIFO_blk[2] | proc_1_TLF_FIFO_blk[2] | proc_1_input_sync_blk[2] | proc_1_output_sync_blk[2]);
    assign proc_1_data_FIFO_blk[3] = 1'b0 | (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.imgHelper1_rows_out_blk_n) | (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.imgHelper1_cols_out_blk_n);
    assign proc_1_data_PIPO_blk[3] = 1'b0;
    assign proc_1_start_FIFO_blk[3] = 1'b0 | (~start_for_erode_0_0_2160_3840_0_3_3_1_1_25_U0_U.if_full_n & Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.ap_start & ~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~start_for_erode_0_0_2160_3840_0_3_3_1_1_25_U0_U.if_read);
    assign proc_1_TLF_FIFO_blk[3] = 1'b0;
    assign proc_1_input_sync_blk[3] = 1'b0;
    assign proc_1_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_1[3] = dl_detect_out ? proc_dep_vld_vec_1_reg[3] : (proc_1_data_FIFO_blk[3] | proc_1_data_PIPO_blk[3] | proc_1_start_FIFO_blk[3] | proc_1_TLF_FIFO_blk[3] | proc_1_input_sync_blk[3] | proc_1_output_sync_blk[3]);
    assign proc_1_data_FIFO_blk[4] = 1'b0 | (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.imgHelper2_rows_out_blk_n) | (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.imgHelper2_cols_out_blk_n);
    assign proc_1_data_PIPO_blk[4] = 1'b0;
    assign proc_1_start_FIFO_blk[4] = 1'b0 | (~start_for_dilate_0_0_2160_3840_0_3_3_1_1_26_U0_U.if_full_n & Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.ap_start & ~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~start_for_dilate_0_0_2160_3840_0_3_3_1_1_26_U0_U.if_read);
    assign proc_1_TLF_FIFO_blk[4] = 1'b0;
    assign proc_1_input_sync_blk[4] = 1'b0;
    assign proc_1_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_1[4] = dl_detect_out ? proc_dep_vld_vec_1_reg[4] : (proc_1_data_FIFO_blk[4] | proc_1_data_PIPO_blk[4] | proc_1_start_FIFO_blk[4] | proc_1_TLF_FIFO_blk[4] | proc_1_input_sync_blk[4] | proc_1_output_sync_blk[4]);
    assign proc_1_data_FIFO_blk[5] = 1'b0 | (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.imgHelper3_rows_out_blk_n) | (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.imgHelper3_cols_out_blk_n);
    assign proc_1_data_PIPO_blk[5] = 1'b0;
    assign proc_1_start_FIFO_blk[5] = 1'b0 | (~start_for_dilate_0_0_2160_3840_0_3_3_1_1_U0_U.if_full_n & Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.ap_start & ~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~start_for_dilate_0_0_2160_3840_0_3_3_1_1_U0_U.if_read);
    assign proc_1_TLF_FIFO_blk[5] = 1'b0;
    assign proc_1_input_sync_blk[5] = 1'b0;
    assign proc_1_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_1[5] = dl_detect_out ? proc_dep_vld_vec_1_reg[5] : (proc_1_data_FIFO_blk[5] | proc_1_data_PIPO_blk[5] | proc_1_start_FIFO_blk[5] | proc_1_TLF_FIFO_blk[5] | proc_1_input_sync_blk[5] | proc_1_output_sync_blk[5]);
    assign proc_1_data_FIFO_blk[6] = 1'b0 | (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.imgHelper4_rows_out_blk_n) | (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.imgHelper4_cols_out_blk_n);
    assign proc_1_data_PIPO_blk[6] = 1'b0;
    assign proc_1_start_FIFO_blk[6] = 1'b0 | (~start_for_erode_0_0_2160_3840_0_3_3_1_1_U0_U.if_full_n & Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.ap_start & ~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~start_for_erode_0_0_2160_3840_0_3_3_1_1_U0_U.if_read);
    assign proc_1_TLF_FIFO_blk[6] = 1'b0;
    assign proc_1_input_sync_blk[6] = 1'b0;
    assign proc_1_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_1[6] = dl_detect_out ? proc_dep_vld_vec_1_reg[6] : (proc_1_data_FIFO_blk[6] | proc_1_data_PIPO_blk[6] | proc_1_start_FIFO_blk[6] | proc_1_TLF_FIFO_blk[6] | proc_1_input_sync_blk[6] | proc_1_output_sync_blk[6]);
    assign proc_1_data_FIFO_blk[7] = 1'b0 | (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.imgOutput_rows_out_blk_n) | (~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.imgOutput_cols_out_blk_n);
    assign proc_1_data_PIPO_blk[7] = 1'b0;
    assign proc_1_start_FIFO_blk[7] = 1'b0 | (~start_for_xfMat2axis_24_0_2160_3840_1_U0_U.if_full_n & Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.ap_start & ~Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit2_proc_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~start_for_xfMat2axis_24_0_2160_3840_1_U0_U.if_read);
    assign proc_1_TLF_FIFO_blk[7] = 1'b0;
    assign proc_1_input_sync_blk[7] = 1'b0;
    assign proc_1_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_1[7] = dl_detect_out ? proc_dep_vld_vec_1_reg[7] : (proc_1_data_FIFO_blk[7] | proc_1_data_PIPO_blk[7] | proc_1_start_FIFO_blk[7] | proc_1_TLF_FIFO_blk[7] | proc_1_input_sync_blk[7] | proc_1_output_sync_blk[7]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[14 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_3_1;
    assign in_chan_dep_data_vec_1[29 : 15] = dep_chan_data_3_1;
    assign token_in_vec_1[1] = token_3_1;
    assign in_chan_dep_vld_vec_1[2] = dep_chan_vld_5_1;
    assign in_chan_dep_data_vec_1[44 : 30] = dep_chan_data_5_1;
    assign token_in_vec_1[2] = token_5_1;
    assign in_chan_dep_vld_vec_1[3] = dep_chan_vld_10_1;
    assign in_chan_dep_data_vec_1[59 : 45] = dep_chan_data_10_1;
    assign token_in_vec_1[3] = token_10_1;
    assign in_chan_dep_vld_vec_1[4] = dep_chan_vld_11_1;
    assign in_chan_dep_data_vec_1[74 : 60] = dep_chan_data_11_1;
    assign token_in_vec_1[4] = token_11_1;
    assign in_chan_dep_vld_vec_1[5] = dep_chan_vld_12_1;
    assign in_chan_dep_data_vec_1[89 : 75] = dep_chan_data_12_1;
    assign token_in_vec_1[5] = token_12_1;
    assign in_chan_dep_vld_vec_1[6] = dep_chan_vld_13_1;
    assign in_chan_dep_data_vec_1[104 : 90] = dep_chan_data_13_1;
    assign token_in_vec_1[6] = token_13_1;
    assign in_chan_dep_vld_vec_1[7] = dep_chan_vld_14_1;
    assign in_chan_dep_data_vec_1[119 : 105] = dep_chan_data_14_1;
    assign token_in_vec_1[7] = token_14_1;
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[0];
    assign dep_chan_vld_1_3 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_3 = out_chan_dep_data_1;
    assign token_1_3 = token_out_vec_1[1];
    assign dep_chan_vld_1_5 = out_chan_dep_vld_vec_1[2];
    assign dep_chan_data_1_5 = out_chan_dep_data_1;
    assign token_1_5 = token_out_vec_1[2];
    assign dep_chan_vld_1_10 = out_chan_dep_vld_vec_1[3];
    assign dep_chan_data_1_10 = out_chan_dep_data_1;
    assign token_1_10 = token_out_vec_1[3];
    assign dep_chan_vld_1_11 = out_chan_dep_vld_vec_1[4];
    assign dep_chan_data_1_11 = out_chan_dep_data_1;
    assign token_1_11 = token_out_vec_1[4];
    assign dep_chan_vld_1_12 = out_chan_dep_vld_vec_1[5];
    assign dep_chan_data_1_12 = out_chan_dep_data_1;
    assign token_1_12 = token_out_vec_1[5];
    assign dep_chan_vld_1_13 = out_chan_dep_vld_vec_1[6];
    assign dep_chan_data_1_13 = out_chan_dep_data_1;
    assign token_1_13 = token_out_vec_1[6];
    assign dep_chan_vld_1_14 = out_chan_dep_vld_vec_1[7];
    assign dep_chan_data_1_14 = out_chan_dep_data_1;
    assign token_1_14 = token_out_vec_1[7];

    // Process: Loop_VITIS_LOOP_184_2_proc_U0
    colordetect_accel_hls_deadlock_detect_unit #(15, 2, 3, 3) colordetect_accel_hls_deadlock_detect_unit_2 (
        .reset(reset),
        .clock(clock),
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

    assign proc_2_data_FIFO_blk[0] = 1'b0 | (~Loop_VITIS_LOOP_184_2_proc_U0.low_thresh_blk_n) | (~Loop_VITIS_LOOP_184_2_proc_U0.high_thresh_blk_n);
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0;
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0 | (ap_sync_Loop_VITIS_LOOP_184_2_proc_U0_ap_ready & Loop_VITIS_LOOP_184_2_proc_U0.ap_idle & ~ap_sync_colordetect_accel_entry31_U0_ap_ready);
    assign proc_2_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    assign proc_2_data_FIFO_blk[1] = 1'b0;
    assign proc_2_data_PIPO_blk[1] = 1'b0 | (~low_U.i_full_n & Loop_VITIS_LOOP_184_2_proc_U0.ap_done & ap_done_reg_0 & ~low_U.t_read) | (~high_U.i_full_n & Loop_VITIS_LOOP_184_2_proc_U0.ap_done & ap_done_reg_0 & ~high_U.t_read);
    assign proc_2_start_FIFO_blk[1] = 1'b0;
    assign proc_2_TLF_FIFO_blk[1] = 1'b0;
    assign proc_2_input_sync_blk[1] = 1'b0;
    assign proc_2_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (proc_2_data_FIFO_blk[1] | proc_2_data_PIPO_blk[1] | proc_2_start_FIFO_blk[1] | proc_2_TLF_FIFO_blk[1] | proc_2_input_sync_blk[1] | proc_2_output_sync_blk[1]);
    assign proc_2_data_FIFO_blk[2] = 1'b0;
    assign proc_2_data_PIPO_blk[2] = 1'b0 | (~low_t_U.i_full_n & Loop_VITIS_LOOP_184_2_proc_U0.ap_done & ap_done_reg_0 & ~low_t_U.t_read) | (~high_t_U.i_full_n & Loop_VITIS_LOOP_184_2_proc_U0.ap_done & ap_done_reg_0 & ~high_t_U.t_read);
    assign proc_2_start_FIFO_blk[2] = 1'b0;
    assign proc_2_TLF_FIFO_blk[2] = 1'b0;
    assign proc_2_input_sync_blk[2] = 1'b0;
    assign proc_2_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_2[2] = dl_detect_out ? proc_dep_vld_vec_2_reg[2] : (proc_2_data_FIFO_blk[2] | proc_2_data_PIPO_blk[2] | proc_2_start_FIFO_blk[2] | proc_2_TLF_FIFO_blk[2] | proc_2_input_sync_blk[2] | proc_2_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_0_2;
    assign in_chan_dep_data_vec_2[14 : 0] = dep_chan_data_0_2;
    assign token_in_vec_2[0] = token_0_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_6_2;
    assign in_chan_dep_data_vec_2[29 : 15] = dep_chan_data_6_2;
    assign token_in_vec_2[1] = token_6_2;
    assign in_chan_dep_vld_vec_2[2] = dep_chan_vld_9_2;
    assign in_chan_dep_data_vec_2[44 : 30] = dep_chan_data_9_2;
    assign token_in_vec_2[2] = token_9_2;
    assign dep_chan_vld_2_0 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_0 = out_chan_dep_data_2;
    assign token_2_0 = token_out_vec_2[0];
    assign dep_chan_vld_2_6 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_6 = out_chan_dep_data_2;
    assign token_2_6 = token_out_vec_2[1];
    assign dep_chan_vld_2_9 = out_chan_dep_vld_vec_2[2];
    assign dep_chan_data_2_9 = out_chan_dep_data_2;
    assign token_2_9 = token_out_vec_2[2];

    // Process: axis2xfMat_24_9_2160_3840_1_U0
    colordetect_accel_hls_deadlock_detect_unit #(15, 3, 2, 2) colordetect_accel_hls_deadlock_detect_unit_3 (
        .reset(reset),
        .clock(clock),
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

    assign proc_3_data_FIFO_blk[0] = 1'b0 | (~axis2xfMat_24_9_2160_3840_1_U0.imgInput_499_blk_n) | (~axis2xfMat_24_9_2160_3840_1_U0.img_rows_out_blk_n) | (~axis2xfMat_24_9_2160_3840_1_U0.img_cols_out_blk_n);
    assign proc_3_data_PIPO_blk[0] = 1'b0;
    assign proc_3_start_FIFO_blk[0] = 1'b0 | (~start_for_bgr2hsv_9_2160_3840_1_U0_U.if_full_n & axis2xfMat_24_9_2160_3840_1_U0.ap_start & ~axis2xfMat_24_9_2160_3840_1_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~start_for_bgr2hsv_9_2160_3840_1_U0_U.if_read);
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0;
    assign proc_3_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    assign proc_3_data_FIFO_blk[1] = 1'b0 | (~axis2xfMat_24_9_2160_3840_1_U0.img_rows_blk_n) | (~axis2xfMat_24_9_2160_3840_1_U0.img_cols_blk_n);
    assign proc_3_data_PIPO_blk[1] = 1'b0;
    assign proc_3_start_FIFO_blk[1] = 1'b0 | (~start_for_axis2xfMat_24_9_2160_3840_1_U0_U.if_empty_n & axis2xfMat_24_9_2160_3840_1_U0.ap_idle & ~start_for_axis2xfMat_24_9_2160_3840_1_U0_U.if_write);
    assign proc_3_TLF_FIFO_blk[1] = 1'b0;
    assign proc_3_input_sync_blk[1] = 1'b0;
    assign proc_3_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (proc_3_data_FIFO_blk[1] | proc_3_data_PIPO_blk[1] | proc_3_start_FIFO_blk[1] | proc_3_TLF_FIFO_blk[1] | proc_3_input_sync_blk[1] | proc_3_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_1_3;
    assign in_chan_dep_data_vec_3[14 : 0] = dep_chan_data_1_3;
    assign token_in_vec_3[0] = token_1_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_4_3;
    assign in_chan_dep_data_vec_3[29 : 15] = dep_chan_data_4_3;
    assign token_in_vec_3[1] = token_4_3;
    assign dep_chan_vld_3_4 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_4 = out_chan_dep_data_3;
    assign token_3_4 = token_out_vec_3[0];
    assign dep_chan_vld_3_1 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_1 = out_chan_dep_data_3;
    assign token_3_1 = token_out_vec_3[1];

    // Process: bgr2hsv_9_2160_3840_1_U0
    colordetect_accel_hls_deadlock_detect_unit #(15, 4, 2, 2) colordetect_accel_hls_deadlock_detect_unit_4 (
        .reset(reset),
        .clock(clock),
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

    assign proc_4_data_FIFO_blk[0] = 1'b0 | (~bgr2hsv_9_2160_3840_1_U0.imgInput_499_blk_n) | (~bgr2hsv_9_2160_3840_1_U0.p_src_mat_rows_blk_n) | (~bgr2hsv_9_2160_3840_1_U0.p_src_mat_cols_blk_n);
    assign proc_4_data_PIPO_blk[0] = 1'b0;
    assign proc_4_start_FIFO_blk[0] = 1'b0 | (~start_for_bgr2hsv_9_2160_3840_1_U0_U.if_empty_n & bgr2hsv_9_2160_3840_1_U0.ap_idle & ~start_for_bgr2hsv_9_2160_3840_1_U0_U.if_write);
    assign proc_4_TLF_FIFO_blk[0] = 1'b0;
    assign proc_4_input_sync_blk[0] = 1'b0;
    assign proc_4_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    assign proc_4_data_FIFO_blk[1] = 1'b0 | (~bgr2hsv_9_2160_3840_1_U0.rgb2hsv_4100_blk_n);
    assign proc_4_data_PIPO_blk[1] = 1'b0;
    assign proc_4_start_FIFO_blk[1] = 1'b0;
    assign proc_4_TLF_FIFO_blk[1] = 1'b0;
    assign proc_4_input_sync_blk[1] = 1'b0;
    assign proc_4_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_4[1] = dl_detect_out ? proc_dep_vld_vec_4_reg[1] : (proc_4_data_FIFO_blk[1] | proc_4_data_PIPO_blk[1] | proc_4_start_FIFO_blk[1] | proc_4_TLF_FIFO_blk[1] | proc_4_input_sync_blk[1] | proc_4_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_3_4;
    assign in_chan_dep_data_vec_4[14 : 0] = dep_chan_data_3_4;
    assign token_in_vec_4[0] = token_3_4;
    assign in_chan_dep_vld_vec_4[1] = dep_chan_vld_8_4;
    assign in_chan_dep_data_vec_4[29 : 15] = dep_chan_data_8_4;
    assign token_in_vec_4[1] = token_8_4;
    assign dep_chan_vld_4_3 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_3 = out_chan_dep_data_4;
    assign token_4_3 = token_out_vec_4[0];
    assign dep_chan_vld_4_8 = out_chan_dep_vld_vec_4[1];
    assign dep_chan_data_4_8 = out_chan_dep_data_4;
    assign token_4_8 = token_out_vec_4[1];

    // Process: colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry28_U0
    colordetect_accel_hls_deadlock_detect_unit #(15, 5, 3, 3) colordetect_accel_hls_deadlock_detect_unit_5 (
        .reset(reset),
        .clock(clock),
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

    assign proc_5_data_FIFO_blk[0] = 1'b0 | (~colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry28_U0.p_src_mat_rows_blk_n) | (~colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry28_U0.p_src_mat_cols_blk_n);
    assign proc_5_data_PIPO_blk[0] = 1'b0;
    assign proc_5_start_FIFO_blk[0] = 1'b0;
    assign proc_5_TLF_FIFO_blk[0] = 1'b0;
    assign proc_5_input_sync_blk[0] = 1'b0;
    assign proc_5_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (proc_5_data_FIFO_blk[0] | proc_5_data_PIPO_blk[0] | proc_5_start_FIFO_blk[0] | proc_5_TLF_FIFO_blk[0] | proc_5_input_sync_blk[0] | proc_5_output_sync_blk[0]);
    assign proc_5_data_FIFO_blk[1] = 1'b0 | (~colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry28_U0.p_src_mat_rows_out_blk_n) | (~colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry28_U0.p_src_mat_cols_out_blk_n);
    assign proc_5_data_PIPO_blk[1] = 1'b0;
    assign proc_5_start_FIFO_blk[1] = 1'b0 | (~colorthresholding_9_0_3_2160_3840_1_U0.start_for_colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2dEe_U.if_full_n & colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry28_U0.ap_start & ~colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry28_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~colorthresholding_9_0_3_2160_3840_1_U0.start_for_colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2dEe_U.if_read);
    assign proc_5_TLF_FIFO_blk[1] = 1'b0;
    assign proc_5_input_sync_blk[1] = 1'b0;
    assign proc_5_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_5[1] = dl_detect_out ? proc_dep_vld_vec_5_reg[1] : (proc_5_data_FIFO_blk[1] | proc_5_data_PIPO_blk[1] | proc_5_start_FIFO_blk[1] | proc_5_TLF_FIFO_blk[1] | proc_5_input_sync_blk[1] | proc_5_output_sync_blk[1]);
    assign proc_5_data_FIFO_blk[2] = 1'b0;
    assign proc_5_data_PIPO_blk[2] = 1'b0;
    assign proc_5_start_FIFO_blk[2] = 1'b0;
    assign proc_5_TLF_FIFO_blk[2] = 1'b0;
    assign proc_5_input_sync_blk[2] = 1'b0 | (colorthresholding_9_0_3_2160_3840_1_U0.ap_sync_colorthresholding_9_0_3_2160_3840_1_entry28_U0_ap_ready & colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry28_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.ap_sync_colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0_ap_ready);
    assign proc_5_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_5[2] = dl_detect_out ? proc_dep_vld_vec_5_reg[2] : (proc_5_data_FIFO_blk[2] | proc_5_data_PIPO_blk[2] | proc_5_start_FIFO_blk[2] | proc_5_TLF_FIFO_blk[2] | proc_5_input_sync_blk[2] | proc_5_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_1_5;
    assign in_chan_dep_data_vec_5[14 : 0] = dep_chan_data_1_5;
    assign token_in_vec_5[0] = token_1_5;
    assign in_chan_dep_vld_vec_5[1] = dep_chan_vld_6_5;
    assign in_chan_dep_data_vec_5[29 : 15] = dep_chan_data_6_5;
    assign token_in_vec_5[1] = token_6_5;
    assign in_chan_dep_vld_vec_5[2] = dep_chan_vld_7_5;
    assign in_chan_dep_data_vec_5[44 : 30] = dep_chan_data_7_5;
    assign token_in_vec_5[2] = token_7_5;
    assign dep_chan_vld_5_1 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_1 = out_chan_dep_data_5;
    assign token_5_1 = token_out_vec_5[0];
    assign dep_chan_vld_5_7 = out_chan_dep_vld_vec_5[1];
    assign dep_chan_data_5_7 = out_chan_dep_data_5;
    assign token_5_7 = token_out_vec_5[1];
    assign dep_chan_vld_5_6 = out_chan_dep_vld_vec_5[2];
    assign dep_chan_data_5_6 = out_chan_dep_data_5;
    assign token_5_6 = token_out_vec_5[2];

    // Process: colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0
    colordetect_accel_hls_deadlock_detect_unit #(15, 6, 3, 2) colordetect_accel_hls_deadlock_detect_unit_6 (
        .reset(reset),
        .clock(clock),
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

    assign proc_6_data_FIFO_blk[0] = 1'b0;
    assign proc_6_data_PIPO_blk[0] = 1'b0 | (~low_U.t_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0.ap_idle & ~low_U.i_write) | (~high_U.t_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0.ap_idle & ~high_U.i_write);
    assign proc_6_start_FIFO_blk[0] = 1'b0;
    assign proc_6_TLF_FIFO_blk[0] = 1'b0;
    assign proc_6_input_sync_blk[0] = 1'b0;
    assign proc_6_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (proc_6_data_FIFO_blk[0] | proc_6_data_PIPO_blk[0] | proc_6_start_FIFO_blk[0] | proc_6_TLF_FIFO_blk[0] | proc_6_input_sync_blk[0] | proc_6_output_sync_blk[0]);
    assign proc_6_data_FIFO_blk[1] = 1'b0;
    assign proc_6_data_PIPO_blk[1] = 1'b0;
    assign proc_6_start_FIFO_blk[1] = 1'b0;
    assign proc_6_TLF_FIFO_blk[1] = 1'b0;
    assign proc_6_input_sync_blk[1] = 1'b0 | (colorthresholding_9_0_3_2160_3840_1_U0.ap_sync_colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0_ap_ready & colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.ap_sync_colorthresholding_9_0_3_2160_3840_1_entry28_U0_ap_ready);
    assign proc_6_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_6[1] = dl_detect_out ? proc_dep_vld_vec_6_reg[1] : (proc_6_data_FIFO_blk[1] | proc_6_data_PIPO_blk[1] | proc_6_start_FIFO_blk[1] | proc_6_TLF_FIFO_blk[1] | proc_6_input_sync_blk[1] | proc_6_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_2_6;
    assign in_chan_dep_data_vec_6[14 : 0] = dep_chan_data_2_6;
    assign token_in_vec_6[0] = token_2_6;
    assign in_chan_dep_vld_vec_6[1] = dep_chan_vld_5_6;
    assign in_chan_dep_data_vec_6[29 : 15] = dep_chan_data_5_6;
    assign token_in_vec_6[1] = token_5_6;
    assign in_chan_dep_vld_vec_6[2] = dep_chan_vld_8_6;
    assign in_chan_dep_data_vec_6[44 : 30] = dep_chan_data_8_6;
    assign token_in_vec_6[2] = token_8_6;
    assign dep_chan_vld_6_2 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_2 = out_chan_dep_data_6;
    assign token_6_2 = token_out_vec_6[0];
    assign dep_chan_vld_6_5 = out_chan_dep_vld_vec_6[1];
    assign dep_chan_data_6_5 = out_chan_dep_data_6;
    assign token_6_5 = token_out_vec_6[1];

    // Process: colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0
    colordetect_accel_hls_deadlock_detect_unit #(15, 7, 2, 1) colordetect_accel_hls_deadlock_detect_unit_7 (
        .reset(reset),
        .clock(clock),
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

    assign proc_7_data_FIFO_blk[0] = 1'b0 | (~colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0.p_src_mat_rows_blk_n) | (~colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0.p_src_mat_cols_blk_n);
    assign proc_7_data_PIPO_blk[0] = 1'b0;
    assign proc_7_start_FIFO_blk[0] = 1'b0 | (~colorthresholding_9_0_3_2160_3840_1_U0.start_for_colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2dEe_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.start_for_colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2dEe_U.if_write);
    assign proc_7_TLF_FIFO_blk[0] = 1'b0;
    assign proc_7_input_sync_blk[0] = 1'b0;
    assign proc_7_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_7[0] = dl_detect_out ? proc_dep_vld_vec_7_reg[0] : (proc_7_data_FIFO_blk[0] | proc_7_data_PIPO_blk[0] | proc_7_start_FIFO_blk[0] | proc_7_TLF_FIFO_blk[0] | proc_7_input_sync_blk[0] | proc_7_output_sync_blk[0]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_7_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_7_reg <= proc_dep_vld_vec_7;
        end
    end
    assign in_chan_dep_vld_vec_7[0] = dep_chan_vld_5_7;
    assign in_chan_dep_data_vec_7[14 : 0] = dep_chan_data_5_7;
    assign token_in_vec_7[0] = token_5_7;
    assign in_chan_dep_vld_vec_7[1] = dep_chan_vld_8_7;
    assign in_chan_dep_data_vec_7[29 : 15] = dep_chan_data_8_7;
    assign token_in_vec_7[1] = token_8_7;
    assign dep_chan_vld_7_5 = out_chan_dep_vld_vec_7[0];
    assign dep_chan_data_7_5 = out_chan_dep_data_7;
    assign token_7_5 = token_out_vec_7[0];

    // Process: colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0
    colordetect_accel_hls_deadlock_detect_unit #(15, 8, 2, 4) colordetect_accel_hls_deadlock_detect_unit_8 (
        .reset(reset),
        .clock(clock),
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

    assign proc_8_data_FIFO_blk[0] = 1'b0 | (~colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.rgb2hsv_4100_blk_n);
    assign proc_8_data_PIPO_blk[0] = 1'b0;
    assign proc_8_start_FIFO_blk[0] = 1'b0;
    assign proc_8_TLF_FIFO_blk[0] = 1'b0;
    assign proc_8_input_sync_blk[0] = 1'b0;
    assign proc_8_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_8[0] = dl_detect_out ? proc_dep_vld_vec_8_reg[0] : (proc_8_data_FIFO_blk[0] | proc_8_data_PIPO_blk[0] | proc_8_start_FIFO_blk[0] | proc_8_TLF_FIFO_blk[0] | proc_8_input_sync_blk[0] | proc_8_output_sync_blk[0]);
    assign proc_8_data_FIFO_blk[1] = 1'b0 | (~colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.imgHelper1_4101_blk_n);
    assign proc_8_data_PIPO_blk[1] = 1'b0;
    assign proc_8_start_FIFO_blk[1] = 1'b0;
    assign proc_8_TLF_FIFO_blk[1] = 1'b0;
    assign proc_8_input_sync_blk[1] = 1'b0;
    assign proc_8_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_8[1] = dl_detect_out ? proc_dep_vld_vec_8_reg[1] : (proc_8_data_FIFO_blk[1] | proc_8_data_PIPO_blk[1] | proc_8_start_FIFO_blk[1] | proc_8_TLF_FIFO_blk[1] | proc_8_input_sync_blk[1] | proc_8_output_sync_blk[1]);
    assign proc_8_data_FIFO_blk[2] = 1'b0;
    assign proc_8_data_PIPO_blk[2] = 1'b0;
    assign proc_8_start_FIFO_blk[2] = 1'b0;
    assign proc_8_TLF_FIFO_blk[2] = 1'b0 | (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_0_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_0_U.if_write) | (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_1_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_1_U.if_write) | (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_2_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_2_U.if_write) | (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_0_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_0_U.if_write) | (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_1_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_1_U.if_write) | (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_2_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_2_U.if_write) | (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_0_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_0_U.if_write) | (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_1_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_1_U.if_write) | (~colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_2_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_2_U.if_write) | (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_0_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_0_U.if_write) | (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_1_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_1_U.if_write) | (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_2_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_2_U.if_write) | (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_0_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_0_U.if_write) | (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_1_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_1_U.if_write) | (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_2_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_2_U.if_write) | (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_0_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_0_U.if_write) | (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_1_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_1_U.if_write) | (~colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_2_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_2_U.if_write);
    assign proc_8_input_sync_blk[2] = 1'b0;
    assign proc_8_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_8[2] = dl_detect_out ? proc_dep_vld_vec_8_reg[2] : (proc_8_data_FIFO_blk[2] | proc_8_data_PIPO_blk[2] | proc_8_start_FIFO_blk[2] | proc_8_TLF_FIFO_blk[2] | proc_8_input_sync_blk[2] | proc_8_output_sync_blk[2]);
    assign proc_8_data_FIFO_blk[3] = 1'b0;
    assign proc_8_data_PIPO_blk[3] = 1'b0;
    assign proc_8_start_FIFO_blk[3] = 1'b0;
    assign proc_8_TLF_FIFO_blk[3] = 1'b0 | (~colorthresholding_9_0_3_2160_3840_1_U0.img_height_loc_i_channel_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.img_height_loc_i_channel_U.if_write) | (~colorthresholding_9_0_3_2160_3840_1_U0.img_width_loc_i_channel_U.if_empty_n & colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.ap_idle & ~colorthresholding_9_0_3_2160_3840_1_U0.img_width_loc_i_channel_U.if_write);
    assign proc_8_input_sync_blk[3] = 1'b0;
    assign proc_8_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_8[3] = dl_detect_out ? proc_dep_vld_vec_8_reg[3] : (proc_8_data_FIFO_blk[3] | proc_8_data_PIPO_blk[3] | proc_8_start_FIFO_blk[3] | proc_8_TLF_FIFO_blk[3] | proc_8_input_sync_blk[3] | proc_8_output_sync_blk[3]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_8_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_8_reg <= proc_dep_vld_vec_8;
        end
    end
    assign in_chan_dep_vld_vec_8[0] = dep_chan_vld_4_8;
    assign in_chan_dep_data_vec_8[14 : 0] = dep_chan_data_4_8;
    assign token_in_vec_8[0] = token_4_8;
    assign in_chan_dep_vld_vec_8[1] = dep_chan_vld_10_8;
    assign in_chan_dep_data_vec_8[29 : 15] = dep_chan_data_10_8;
    assign token_in_vec_8[1] = token_10_8;
    assign dep_chan_vld_8_4 = out_chan_dep_vld_vec_8[0];
    assign dep_chan_data_8_4 = out_chan_dep_data_8;
    assign token_8_4 = token_out_vec_8[0];
    assign dep_chan_vld_8_10 = out_chan_dep_vld_vec_8[1];
    assign dep_chan_data_8_10 = out_chan_dep_data_8;
    assign token_8_10 = token_out_vec_8[1];
    assign dep_chan_vld_8_6 = out_chan_dep_vld_vec_8[2];
    assign dep_chan_data_8_6 = out_chan_dep_data_8;
    assign token_8_6 = token_out_vec_8[2];
    assign dep_chan_vld_8_7 = out_chan_dep_vld_vec_8[3];
    assign dep_chan_data_8_7 = out_chan_dep_data_8;
    assign token_8_7 = token_out_vec_8[3];

    // Process: Block_split5_proc_U0
    colordetect_accel_hls_deadlock_detect_unit #(15, 9, 3, 3) colordetect_accel_hls_deadlock_detect_unit_9 (
        .reset(reset),
        .clock(clock),
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

    assign proc_9_data_FIFO_blk[0] = 1'b0 | (~Block_split5_proc_U0.t1_blk_n);
    assign proc_9_data_PIPO_blk[0] = 1'b0;
    assign proc_9_start_FIFO_blk[0] = 1'b0;
    assign proc_9_TLF_FIFO_blk[0] = 1'b0;
    assign proc_9_input_sync_blk[0] = 1'b0;
    assign proc_9_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_9[0] = dl_detect_out ? proc_dep_vld_vec_9_reg[0] : (proc_9_data_FIFO_blk[0] | proc_9_data_PIPO_blk[0] | proc_9_start_FIFO_blk[0] | proc_9_TLF_FIFO_blk[0] | proc_9_input_sync_blk[0] | proc_9_output_sync_blk[0]);
    assign proc_9_data_FIFO_blk[1] = 1'b0;
    assign proc_9_data_PIPO_blk[1] = 1'b0 | (~low_t_U.t_empty_n & Block_split5_proc_U0.ap_idle & ~low_t_U.i_write) | (~high_t_U.t_empty_n & Block_split5_proc_U0.ap_idle & ~high_t_U.i_write);
    assign proc_9_start_FIFO_blk[1] = 1'b0;
    assign proc_9_TLF_FIFO_blk[1] = 1'b0;
    assign proc_9_input_sync_blk[1] = 1'b0;
    assign proc_9_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_9[1] = dl_detect_out ? proc_dep_vld_vec_9_reg[1] : (proc_9_data_FIFO_blk[1] | proc_9_data_PIPO_blk[1] | proc_9_start_FIFO_blk[1] | proc_9_TLF_FIFO_blk[1] | proc_9_input_sync_blk[1] | proc_9_output_sync_blk[1]);
    assign proc_9_data_FIFO_blk[2] = 1'b0;
    assign proc_9_data_PIPO_blk[2] = 1'b0;
    assign proc_9_start_FIFO_blk[2] = 1'b0;
    assign proc_9_TLF_FIFO_blk[2] = 1'b0;
    assign proc_9_input_sync_blk[2] = 1'b0;
    assign proc_9_output_sync_blk[2] = 1'b0 | (ap_done_reg_3 & Block_split5_proc_U0.ap_done & ~xfMat2axis_24_0_2160_3840_1_U0.ap_done);
    assign proc_dep_vld_vec_9[2] = dl_detect_out ? proc_dep_vld_vec_9_reg[2] : (proc_9_data_FIFO_blk[2] | proc_9_data_PIPO_blk[2] | proc_9_start_FIFO_blk[2] | proc_9_TLF_FIFO_blk[2] | proc_9_input_sync_blk[2] | proc_9_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_9_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_9_reg <= proc_dep_vld_vec_9;
        end
    end
    assign in_chan_dep_vld_vec_9[0] = dep_chan_vld_0_9;
    assign in_chan_dep_data_vec_9[14 : 0] = dep_chan_data_0_9;
    assign token_in_vec_9[0] = token_0_9;
    assign in_chan_dep_vld_vec_9[1] = dep_chan_vld_2_9;
    assign in_chan_dep_data_vec_9[29 : 15] = dep_chan_data_2_9;
    assign token_in_vec_9[1] = token_2_9;
    assign in_chan_dep_vld_vec_9[2] = dep_chan_vld_14_9;
    assign in_chan_dep_data_vec_9[44 : 30] = dep_chan_data_14_9;
    assign token_in_vec_9[2] = token_14_9;
    assign dep_chan_vld_9_0 = out_chan_dep_vld_vec_9[0];
    assign dep_chan_data_9_0 = out_chan_dep_data_9;
    assign token_9_0 = token_out_vec_9[0];
    assign dep_chan_vld_9_2 = out_chan_dep_vld_vec_9[1];
    assign dep_chan_data_9_2 = out_chan_dep_data_9;
    assign token_9_2 = token_out_vec_9[1];
    assign dep_chan_vld_9_14 = out_chan_dep_vld_vec_9[2];
    assign dep_chan_data_9_14 = out_chan_dep_data_9;
    assign token_9_14 = token_out_vec_9[2];

    // Process: erode_0_0_2160_3840_0_3_3_1_1_25_U0
    colordetect_accel_hls_deadlock_detect_unit #(15, 10, 3, 3) colordetect_accel_hls_deadlock_detect_unit_10 (
        .reset(reset),
        .clock(clock),
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

    assign proc_10_data_FIFO_blk[0] = 1'b0 | (~erode_0_0_2160_3840_0_3_3_1_1_25_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.imgHelper1_4101_blk_n);
    assign proc_10_data_PIPO_blk[0] = 1'b0;
    assign proc_10_start_FIFO_blk[0] = 1'b0;
    assign proc_10_TLF_FIFO_blk[0] = 1'b0;
    assign proc_10_input_sync_blk[0] = 1'b0;
    assign proc_10_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_10[0] = dl_detect_out ? proc_dep_vld_vec_10_reg[0] : (proc_10_data_FIFO_blk[0] | proc_10_data_PIPO_blk[0] | proc_10_start_FIFO_blk[0] | proc_10_TLF_FIFO_blk[0] | proc_10_input_sync_blk[0] | proc_10_output_sync_blk[0]);
    assign proc_10_data_FIFO_blk[1] = 1'b0 | (~erode_0_0_2160_3840_0_3_3_1_1_25_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.imgHelper2_4102_blk_n);
    assign proc_10_data_PIPO_blk[1] = 1'b0;
    assign proc_10_start_FIFO_blk[1] = 1'b0;
    assign proc_10_TLF_FIFO_blk[1] = 1'b0;
    assign proc_10_input_sync_blk[1] = 1'b0;
    assign proc_10_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_10[1] = dl_detect_out ? proc_dep_vld_vec_10_reg[1] : (proc_10_data_FIFO_blk[1] | proc_10_data_PIPO_blk[1] | proc_10_start_FIFO_blk[1] | proc_10_TLF_FIFO_blk[1] | proc_10_input_sync_blk[1] | proc_10_output_sync_blk[1]);
    assign proc_10_data_FIFO_blk[2] = 1'b0 | (~erode_0_0_2160_3840_0_3_3_1_1_25_U0.p_src_rows_blk_n) | (~erode_0_0_2160_3840_0_3_3_1_1_25_U0.p_src_cols_blk_n);
    assign proc_10_data_PIPO_blk[2] = 1'b0;
    assign proc_10_start_FIFO_blk[2] = 1'b0 | (~start_for_erode_0_0_2160_3840_0_3_3_1_1_25_U0_U.if_empty_n & erode_0_0_2160_3840_0_3_3_1_1_25_U0.ap_idle & ~start_for_erode_0_0_2160_3840_0_3_3_1_1_25_U0_U.if_write);
    assign proc_10_TLF_FIFO_blk[2] = 1'b0;
    assign proc_10_input_sync_blk[2] = 1'b0;
    assign proc_10_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_10[2] = dl_detect_out ? proc_dep_vld_vec_10_reg[2] : (proc_10_data_FIFO_blk[2] | proc_10_data_PIPO_blk[2] | proc_10_start_FIFO_blk[2] | proc_10_TLF_FIFO_blk[2] | proc_10_input_sync_blk[2] | proc_10_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_10_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_10_reg <= proc_dep_vld_vec_10;
        end
    end
    assign in_chan_dep_vld_vec_10[0] = dep_chan_vld_1_10;
    assign in_chan_dep_data_vec_10[14 : 0] = dep_chan_data_1_10;
    assign token_in_vec_10[0] = token_1_10;
    assign in_chan_dep_vld_vec_10[1] = dep_chan_vld_8_10;
    assign in_chan_dep_data_vec_10[29 : 15] = dep_chan_data_8_10;
    assign token_in_vec_10[1] = token_8_10;
    assign in_chan_dep_vld_vec_10[2] = dep_chan_vld_11_10;
    assign in_chan_dep_data_vec_10[44 : 30] = dep_chan_data_11_10;
    assign token_in_vec_10[2] = token_11_10;
    assign dep_chan_vld_10_8 = out_chan_dep_vld_vec_10[0];
    assign dep_chan_data_10_8 = out_chan_dep_data_10;
    assign token_10_8 = token_out_vec_10[0];
    assign dep_chan_vld_10_11 = out_chan_dep_vld_vec_10[1];
    assign dep_chan_data_10_11 = out_chan_dep_data_10;
    assign token_10_11 = token_out_vec_10[1];
    assign dep_chan_vld_10_1 = out_chan_dep_vld_vec_10[2];
    assign dep_chan_data_10_1 = out_chan_dep_data_10;
    assign token_10_1 = token_out_vec_10[2];

    // Process: dilate_0_0_2160_3840_0_3_3_1_1_26_U0
    colordetect_accel_hls_deadlock_detect_unit #(15, 11, 3, 3) colordetect_accel_hls_deadlock_detect_unit_11 (
        .reset(reset),
        .clock(clock),
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

    assign proc_11_data_FIFO_blk[0] = 1'b0 | (~dilate_0_0_2160_3840_0_3_3_1_1_26_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.imgHelper2_4102_blk_n);
    assign proc_11_data_PIPO_blk[0] = 1'b0;
    assign proc_11_start_FIFO_blk[0] = 1'b0;
    assign proc_11_TLF_FIFO_blk[0] = 1'b0;
    assign proc_11_input_sync_blk[0] = 1'b0;
    assign proc_11_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_11[0] = dl_detect_out ? proc_dep_vld_vec_11_reg[0] : (proc_11_data_FIFO_blk[0] | proc_11_data_PIPO_blk[0] | proc_11_start_FIFO_blk[0] | proc_11_TLF_FIFO_blk[0] | proc_11_input_sync_blk[0] | proc_11_output_sync_blk[0]);
    assign proc_11_data_FIFO_blk[1] = 1'b0 | (~dilate_0_0_2160_3840_0_3_3_1_1_26_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.imgHelper3_4103_blk_n);
    assign proc_11_data_PIPO_blk[1] = 1'b0;
    assign proc_11_start_FIFO_blk[1] = 1'b0;
    assign proc_11_TLF_FIFO_blk[1] = 1'b0;
    assign proc_11_input_sync_blk[1] = 1'b0;
    assign proc_11_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_11[1] = dl_detect_out ? proc_dep_vld_vec_11_reg[1] : (proc_11_data_FIFO_blk[1] | proc_11_data_PIPO_blk[1] | proc_11_start_FIFO_blk[1] | proc_11_TLF_FIFO_blk[1] | proc_11_input_sync_blk[1] | proc_11_output_sync_blk[1]);
    assign proc_11_data_FIFO_blk[2] = 1'b0 | (~dilate_0_0_2160_3840_0_3_3_1_1_26_U0.p_src_rows_blk_n) | (~dilate_0_0_2160_3840_0_3_3_1_1_26_U0.p_src_cols_blk_n);
    assign proc_11_data_PIPO_blk[2] = 1'b0;
    assign proc_11_start_FIFO_blk[2] = 1'b0 | (~start_for_dilate_0_0_2160_3840_0_3_3_1_1_26_U0_U.if_empty_n & dilate_0_0_2160_3840_0_3_3_1_1_26_U0.ap_idle & ~start_for_dilate_0_0_2160_3840_0_3_3_1_1_26_U0_U.if_write);
    assign proc_11_TLF_FIFO_blk[2] = 1'b0;
    assign proc_11_input_sync_blk[2] = 1'b0;
    assign proc_11_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_11[2] = dl_detect_out ? proc_dep_vld_vec_11_reg[2] : (proc_11_data_FIFO_blk[2] | proc_11_data_PIPO_blk[2] | proc_11_start_FIFO_blk[2] | proc_11_TLF_FIFO_blk[2] | proc_11_input_sync_blk[2] | proc_11_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_11_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_11_reg <= proc_dep_vld_vec_11;
        end
    end
    assign in_chan_dep_vld_vec_11[0] = dep_chan_vld_1_11;
    assign in_chan_dep_data_vec_11[14 : 0] = dep_chan_data_1_11;
    assign token_in_vec_11[0] = token_1_11;
    assign in_chan_dep_vld_vec_11[1] = dep_chan_vld_10_11;
    assign in_chan_dep_data_vec_11[29 : 15] = dep_chan_data_10_11;
    assign token_in_vec_11[1] = token_10_11;
    assign in_chan_dep_vld_vec_11[2] = dep_chan_vld_12_11;
    assign in_chan_dep_data_vec_11[44 : 30] = dep_chan_data_12_11;
    assign token_in_vec_11[2] = token_12_11;
    assign dep_chan_vld_11_10 = out_chan_dep_vld_vec_11[0];
    assign dep_chan_data_11_10 = out_chan_dep_data_11;
    assign token_11_10 = token_out_vec_11[0];
    assign dep_chan_vld_11_12 = out_chan_dep_vld_vec_11[1];
    assign dep_chan_data_11_12 = out_chan_dep_data_11;
    assign token_11_12 = token_out_vec_11[1];
    assign dep_chan_vld_11_1 = out_chan_dep_vld_vec_11[2];
    assign dep_chan_data_11_1 = out_chan_dep_data_11;
    assign token_11_1 = token_out_vec_11[2];

    // Process: dilate_0_0_2160_3840_0_3_3_1_1_U0
    colordetect_accel_hls_deadlock_detect_unit #(15, 12, 3, 3) colordetect_accel_hls_deadlock_detect_unit_12 (
        .reset(reset),
        .clock(clock),
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

    assign proc_12_data_FIFO_blk[0] = 1'b0 | (~dilate_0_0_2160_3840_0_3_3_1_1_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.imgHelper2_4102_blk_n);
    assign proc_12_data_PIPO_blk[0] = 1'b0;
    assign proc_12_start_FIFO_blk[0] = 1'b0;
    assign proc_12_TLF_FIFO_blk[0] = 1'b0;
    assign proc_12_input_sync_blk[0] = 1'b0;
    assign proc_12_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_12[0] = dl_detect_out ? proc_dep_vld_vec_12_reg[0] : (proc_12_data_FIFO_blk[0] | proc_12_data_PIPO_blk[0] | proc_12_start_FIFO_blk[0] | proc_12_TLF_FIFO_blk[0] | proc_12_input_sync_blk[0] | proc_12_output_sync_blk[0]);
    assign proc_12_data_FIFO_blk[1] = 1'b0 | (~dilate_0_0_2160_3840_0_3_3_1_1_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.imgHelper3_4103_blk_n);
    assign proc_12_data_PIPO_blk[1] = 1'b0;
    assign proc_12_start_FIFO_blk[1] = 1'b0;
    assign proc_12_TLF_FIFO_blk[1] = 1'b0;
    assign proc_12_input_sync_blk[1] = 1'b0;
    assign proc_12_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_12[1] = dl_detect_out ? proc_dep_vld_vec_12_reg[1] : (proc_12_data_FIFO_blk[1] | proc_12_data_PIPO_blk[1] | proc_12_start_FIFO_blk[1] | proc_12_TLF_FIFO_blk[1] | proc_12_input_sync_blk[1] | proc_12_output_sync_blk[1]);
    assign proc_12_data_FIFO_blk[2] = 1'b0 | (~dilate_0_0_2160_3840_0_3_3_1_1_U0.p_src_rows_blk_n) | (~dilate_0_0_2160_3840_0_3_3_1_1_U0.p_src_cols_blk_n);
    assign proc_12_data_PIPO_blk[2] = 1'b0;
    assign proc_12_start_FIFO_blk[2] = 1'b0 | (~start_for_dilate_0_0_2160_3840_0_3_3_1_1_U0_U.if_empty_n & dilate_0_0_2160_3840_0_3_3_1_1_U0.ap_idle & ~start_for_dilate_0_0_2160_3840_0_3_3_1_1_U0_U.if_write);
    assign proc_12_TLF_FIFO_blk[2] = 1'b0;
    assign proc_12_input_sync_blk[2] = 1'b0;
    assign proc_12_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_12[2] = dl_detect_out ? proc_dep_vld_vec_12_reg[2] : (proc_12_data_FIFO_blk[2] | proc_12_data_PIPO_blk[2] | proc_12_start_FIFO_blk[2] | proc_12_TLF_FIFO_blk[2] | proc_12_input_sync_blk[2] | proc_12_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_12_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_12_reg <= proc_dep_vld_vec_12;
        end
    end
    assign in_chan_dep_vld_vec_12[0] = dep_chan_vld_1_12;
    assign in_chan_dep_data_vec_12[14 : 0] = dep_chan_data_1_12;
    assign token_in_vec_12[0] = token_1_12;
    assign in_chan_dep_vld_vec_12[1] = dep_chan_vld_11_12;
    assign in_chan_dep_data_vec_12[29 : 15] = dep_chan_data_11_12;
    assign token_in_vec_12[1] = token_11_12;
    assign in_chan_dep_vld_vec_12[2] = dep_chan_vld_13_12;
    assign in_chan_dep_data_vec_12[44 : 30] = dep_chan_data_13_12;
    assign token_in_vec_12[2] = token_13_12;
    assign dep_chan_vld_12_11 = out_chan_dep_vld_vec_12[0];
    assign dep_chan_data_12_11 = out_chan_dep_data_12;
    assign token_12_11 = token_out_vec_12[0];
    assign dep_chan_vld_12_13 = out_chan_dep_vld_vec_12[1];
    assign dep_chan_data_12_13 = out_chan_dep_data_12;
    assign token_12_13 = token_out_vec_12[1];
    assign dep_chan_vld_12_1 = out_chan_dep_vld_vec_12[2];
    assign dep_chan_data_12_1 = out_chan_dep_data_12;
    assign token_12_1 = token_out_vec_12[2];

    // Process: erode_0_0_2160_3840_0_3_3_1_1_U0
    colordetect_accel_hls_deadlock_detect_unit #(15, 13, 3, 3) colordetect_accel_hls_deadlock_detect_unit_13 (
        .reset(reset),
        .clock(clock),
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

    assign proc_13_data_FIFO_blk[0] = 1'b0 | (~erode_0_0_2160_3840_0_3_3_1_1_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.imgHelper1_4101_blk_n);
    assign proc_13_data_PIPO_blk[0] = 1'b0;
    assign proc_13_start_FIFO_blk[0] = 1'b0;
    assign proc_13_TLF_FIFO_blk[0] = 1'b0;
    assign proc_13_input_sync_blk[0] = 1'b0;
    assign proc_13_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_13[0] = dl_detect_out ? proc_dep_vld_vec_13_reg[0] : (proc_13_data_FIFO_blk[0] | proc_13_data_PIPO_blk[0] | proc_13_start_FIFO_blk[0] | proc_13_TLF_FIFO_blk[0] | proc_13_input_sync_blk[0] | proc_13_output_sync_blk[0]);
    assign proc_13_data_FIFO_blk[1] = 1'b0 | (~erode_0_0_2160_3840_0_3_3_1_1_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.imgHelper2_4102_blk_n);
    assign proc_13_data_PIPO_blk[1] = 1'b0;
    assign proc_13_start_FIFO_blk[1] = 1'b0;
    assign proc_13_TLF_FIFO_blk[1] = 1'b0;
    assign proc_13_input_sync_blk[1] = 1'b0;
    assign proc_13_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_13[1] = dl_detect_out ? proc_dep_vld_vec_13_reg[1] : (proc_13_data_FIFO_blk[1] | proc_13_data_PIPO_blk[1] | proc_13_start_FIFO_blk[1] | proc_13_TLF_FIFO_blk[1] | proc_13_input_sync_blk[1] | proc_13_output_sync_blk[1]);
    assign proc_13_data_FIFO_blk[2] = 1'b0 | (~erode_0_0_2160_3840_0_3_3_1_1_U0.p_src_rows_blk_n) | (~erode_0_0_2160_3840_0_3_3_1_1_U0.p_src_cols_blk_n);
    assign proc_13_data_PIPO_blk[2] = 1'b0;
    assign proc_13_start_FIFO_blk[2] = 1'b0 | (~start_for_erode_0_0_2160_3840_0_3_3_1_1_U0_U.if_empty_n & erode_0_0_2160_3840_0_3_3_1_1_U0.ap_idle & ~start_for_erode_0_0_2160_3840_0_3_3_1_1_U0_U.if_write);
    assign proc_13_TLF_FIFO_blk[2] = 1'b0;
    assign proc_13_input_sync_blk[2] = 1'b0;
    assign proc_13_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_13[2] = dl_detect_out ? proc_dep_vld_vec_13_reg[2] : (proc_13_data_FIFO_blk[2] | proc_13_data_PIPO_blk[2] | proc_13_start_FIFO_blk[2] | proc_13_TLF_FIFO_blk[2] | proc_13_input_sync_blk[2] | proc_13_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_13_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_13_reg <= proc_dep_vld_vec_13;
        end
    end
    assign in_chan_dep_vld_vec_13[0] = dep_chan_vld_1_13;
    assign in_chan_dep_data_vec_13[14 : 0] = dep_chan_data_1_13;
    assign token_in_vec_13[0] = token_1_13;
    assign in_chan_dep_vld_vec_13[1] = dep_chan_vld_12_13;
    assign in_chan_dep_data_vec_13[29 : 15] = dep_chan_data_12_13;
    assign token_in_vec_13[1] = token_12_13;
    assign in_chan_dep_vld_vec_13[2] = dep_chan_vld_14_13;
    assign in_chan_dep_data_vec_13[44 : 30] = dep_chan_data_14_13;
    assign token_in_vec_13[2] = token_14_13;
    assign dep_chan_vld_13_12 = out_chan_dep_vld_vec_13[0];
    assign dep_chan_data_13_12 = out_chan_dep_data_13;
    assign token_13_12 = token_out_vec_13[0];
    assign dep_chan_vld_13_14 = out_chan_dep_vld_vec_13[1];
    assign dep_chan_data_13_14 = out_chan_dep_data_13;
    assign token_13_14 = token_out_vec_13[1];
    assign dep_chan_vld_13_1 = out_chan_dep_vld_vec_13[2];
    assign dep_chan_data_13_1 = out_chan_dep_data_13;
    assign token_13_1 = token_out_vec_13[2];

    // Process: xfMat2axis_24_0_2160_3840_1_U0
    colordetect_accel_hls_deadlock_detect_unit #(15, 14, 3, 3) colordetect_accel_hls_deadlock_detect_unit_14 (
        .reset(reset),
        .clock(clock),
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

    assign proc_14_data_FIFO_blk[0] = 1'b0 | (~xfMat2axis_24_0_2160_3840_1_U0.imgOutput_4105_blk_n);
    assign proc_14_data_PIPO_blk[0] = 1'b0;
    assign proc_14_start_FIFO_blk[0] = 1'b0;
    assign proc_14_TLF_FIFO_blk[0] = 1'b0;
    assign proc_14_input_sync_blk[0] = 1'b0;
    assign proc_14_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_14[0] = dl_detect_out ? proc_dep_vld_vec_14_reg[0] : (proc_14_data_FIFO_blk[0] | proc_14_data_PIPO_blk[0] | proc_14_start_FIFO_blk[0] | proc_14_TLF_FIFO_blk[0] | proc_14_input_sync_blk[0] | proc_14_output_sync_blk[0]);
    assign proc_14_data_FIFO_blk[1] = 1'b0 | (~xfMat2axis_24_0_2160_3840_1_U0.img_rows_blk_n) | (~xfMat2axis_24_0_2160_3840_1_U0.img_cols_blk_n);
    assign proc_14_data_PIPO_blk[1] = 1'b0;
    assign proc_14_start_FIFO_blk[1] = 1'b0 | (~start_for_xfMat2axis_24_0_2160_3840_1_U0_U.if_empty_n & xfMat2axis_24_0_2160_3840_1_U0.ap_idle & ~start_for_xfMat2axis_24_0_2160_3840_1_U0_U.if_write);
    assign proc_14_TLF_FIFO_blk[1] = 1'b0;
    assign proc_14_input_sync_blk[1] = 1'b0;
    assign proc_14_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_14[1] = dl_detect_out ? proc_dep_vld_vec_14_reg[1] : (proc_14_data_FIFO_blk[1] | proc_14_data_PIPO_blk[1] | proc_14_start_FIFO_blk[1] | proc_14_TLF_FIFO_blk[1] | proc_14_input_sync_blk[1] | proc_14_output_sync_blk[1]);
    assign proc_14_data_FIFO_blk[2] = 1'b0;
    assign proc_14_data_PIPO_blk[2] = 1'b0;
    assign proc_14_start_FIFO_blk[2] = 1'b0;
    assign proc_14_TLF_FIFO_blk[2] = 1'b0;
    assign proc_14_input_sync_blk[2] = 1'b0;
    assign proc_14_output_sync_blk[2] = 1'b0 | (ap_done_reg_4 & xfMat2axis_24_0_2160_3840_1_U0.ap_done & ~Block_split5_proc_U0.ap_done);
    assign proc_dep_vld_vec_14[2] = dl_detect_out ? proc_dep_vld_vec_14_reg[2] : (proc_14_data_FIFO_blk[2] | proc_14_data_PIPO_blk[2] | proc_14_start_FIFO_blk[2] | proc_14_TLF_FIFO_blk[2] | proc_14_input_sync_blk[2] | proc_14_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_14_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_14_reg <= proc_dep_vld_vec_14;
        end
    end
    assign in_chan_dep_vld_vec_14[0] = dep_chan_vld_1_14;
    assign in_chan_dep_data_vec_14[14 : 0] = dep_chan_data_1_14;
    assign token_in_vec_14[0] = token_1_14;
    assign in_chan_dep_vld_vec_14[1] = dep_chan_vld_9_14;
    assign in_chan_dep_data_vec_14[29 : 15] = dep_chan_data_9_14;
    assign token_in_vec_14[1] = token_9_14;
    assign in_chan_dep_vld_vec_14[2] = dep_chan_vld_13_14;
    assign in_chan_dep_data_vec_14[44 : 30] = dep_chan_data_13_14;
    assign token_in_vec_14[2] = token_13_14;
    assign dep_chan_vld_14_13 = out_chan_dep_vld_vec_14[0];
    assign dep_chan_data_14_13 = out_chan_dep_data_14;
    assign token_14_13 = token_out_vec_14[0];
    assign dep_chan_vld_14_1 = out_chan_dep_vld_vec_14[1];
    assign dep_chan_data_14_1 = out_chan_dep_data_14;
    assign token_14_1 = token_out_vec_14[1];
    assign dep_chan_vld_14_9 = out_chan_dep_vld_vec_14[2];
    assign dep_chan_data_14_9 = out_chan_dep_data_14;
    assign token_14_9 = token_out_vec_14[2];


`include "colordetect_accel_hls_deadlock_report_unit.vh"
