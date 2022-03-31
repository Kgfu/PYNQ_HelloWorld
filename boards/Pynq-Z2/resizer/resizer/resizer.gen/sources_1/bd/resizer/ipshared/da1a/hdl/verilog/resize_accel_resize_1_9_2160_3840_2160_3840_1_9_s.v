// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Version: 2020.2.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module resize_accel_resize_1_9_2160_3840_2160_3840_1_9_s (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        src_mat_420_dout,
        src_mat_420_empty_n,
        src_mat_420_read,
        dst_mat_421_din,
        dst_mat_421_full_n,
        dst_mat_421_write,
        p_src_rows_dout,
        p_src_rows_empty_n,
        p_src_rows_read,
        p_src_cols_dout,
        p_src_cols_empty_n,
        p_src_cols_read,
        p_dst_rows_dout,
        p_dst_rows_empty_n,
        p_dst_rows_read,
        p_dst_cols_dout,
        p_dst_cols_empty_n,
        p_dst_cols_read,
        p_dst_rows_out_din,
        p_dst_rows_out_full_n,
        p_dst_rows_out_write,
        p_dst_cols_out_din,
        p_dst_cols_out_full_n,
        p_dst_cols_out_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [23:0] src_mat_420_dout;
input   src_mat_420_empty_n;
output   src_mat_420_read;
output  [23:0] dst_mat_421_din;
input   dst_mat_421_full_n;
output   dst_mat_421_write;
input  [31:0] p_src_rows_dout;
input   p_src_rows_empty_n;
output   p_src_rows_read;
input  [31:0] p_src_cols_dout;
input   p_src_cols_empty_n;
output   p_src_cols_read;
input  [31:0] p_dst_rows_dout;
input   p_dst_rows_empty_n;
output   p_dst_rows_read;
input  [31:0] p_dst_cols_dout;
input   p_dst_cols_empty_n;
output   p_dst_cols_read;
output  [31:0] p_dst_rows_out_din;
input   p_dst_rows_out_full_n;
output   p_dst_rows_out_write;
output  [31:0] p_dst_cols_out_din;
input   p_dst_cols_out_full_n;
output   p_dst_cols_out_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg src_mat_420_read;
reg dst_mat_421_write;
reg p_src_rows_read;
reg p_src_cols_read;
reg p_dst_rows_read;
reg p_dst_cols_read;
reg p_dst_rows_out_write;
reg p_dst_cols_out_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    p_src_rows_blk_n;
reg    p_src_cols_blk_n;
reg    p_dst_rows_blk_n;
reg    p_dst_cols_blk_n;
reg    p_dst_rows_out_blk_n;
reg    p_dst_cols_out_blk_n;
reg   [31:0] p_dst_rows_read_reg_96;
reg   [31:0] p_dst_cols_read_reg_101;
reg   [31:0] p_src_rows_read_reg_106;
reg   [31:0] p_src_cols_read_reg_111;
wire    grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_start;
wire    grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_done;
wire    grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_idle;
wire    grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_ready;
wire    grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_src_mat_420_read;
wire   [23:0] grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_dst_mat_421_din;
wire    grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_dst_mat_421_write;
reg    grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_start_reg;
reg    ap_block_state1_ignore_call16;
wire    ap_CS_fsm_state2;
reg    ap_block_state1;
reg   [1:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_start_reg = 1'b0;
end

resize_accel_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_start),
    .ap_done(grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_done),
    .ap_idle(grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_idle),
    .ap_ready(grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_ready),
    .src_mat_420_dout(src_mat_420_dout),
    .src_mat_420_empty_n(src_mat_420_empty_n),
    .src_mat_420_read(grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_src_mat_420_read),
    .dst_mat_421_din(grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_dst_mat_421_din),
    .dst_mat_421_full_n(dst_mat_421_full_n),
    .dst_mat_421_write(grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_dst_mat_421_write),
    .p_read(p_src_rows_read_reg_106),
    .p_read1(p_src_cols_read_reg_111),
    .p_read2(p_dst_rows_read_reg_96),
    .p_read3(p_dst_cols_read_reg_101)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_start_reg <= 1'b0;
    end else begin
        if ((~((real_start == 1'b0) | (p_dst_cols_out_full_n == 1'b0) | (p_dst_rows_out_full_n == 1'b0) | (p_dst_cols_empty_n == 1'b0) | (p_dst_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_start_reg <= 1'b1;
        end else if ((grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_ready == 1'b1)) begin
            grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((real_start == 1'b1) & (internal_ap_ready == 1'b0))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        p_dst_cols_read_reg_101 <= p_dst_cols_dout;
        p_dst_rows_read_reg_96 <= p_dst_rows_dout;
        p_src_cols_read_reg_111 <= p_src_cols_dout;
        p_src_rows_read_reg_106 <= p_src_rows_dout;
    end
end

always @ (*) begin
    if (((grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dst_mat_421_write = grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_dst_mat_421_write;
    end else begin
        dst_mat_421_write = 1'b0;
    end
end

always @ (*) begin
    if (((grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dst_cols_blk_n = p_dst_cols_empty_n;
    end else begin
        p_dst_cols_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dst_cols_out_blk_n = p_dst_cols_out_full_n;
    end else begin
        p_dst_cols_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (p_dst_cols_out_full_n == 1'b0) | (p_dst_rows_out_full_n == 1'b0) | (p_dst_cols_empty_n == 1'b0) | (p_dst_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dst_cols_out_write = 1'b1;
    end else begin
        p_dst_cols_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (p_dst_cols_out_full_n == 1'b0) | (p_dst_rows_out_full_n == 1'b0) | (p_dst_cols_empty_n == 1'b0) | (p_dst_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dst_cols_read = 1'b1;
    end else begin
        p_dst_cols_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dst_rows_blk_n = p_dst_rows_empty_n;
    end else begin
        p_dst_rows_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dst_rows_out_blk_n = p_dst_rows_out_full_n;
    end else begin
        p_dst_rows_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (p_dst_cols_out_full_n == 1'b0) | (p_dst_rows_out_full_n == 1'b0) | (p_dst_cols_empty_n == 1'b0) | (p_dst_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dst_rows_out_write = 1'b1;
    end else begin
        p_dst_rows_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (p_dst_cols_out_full_n == 1'b0) | (p_dst_rows_out_full_n == 1'b0) | (p_dst_cols_empty_n == 1'b0) | (p_dst_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dst_rows_read = 1'b1;
    end else begin
        p_dst_rows_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_cols_blk_n = p_src_cols_empty_n;
    end else begin
        p_src_cols_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (p_dst_cols_out_full_n == 1'b0) | (p_dst_rows_out_full_n == 1'b0) | (p_dst_cols_empty_n == 1'b0) | (p_dst_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_cols_read = 1'b1;
    end else begin
        p_src_cols_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_rows_blk_n = p_src_rows_empty_n;
    end else begin
        p_src_rows_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (p_dst_cols_out_full_n == 1'b0) | (p_dst_rows_out_full_n == 1'b0) | (p_dst_cols_empty_n == 1'b0) | (p_dst_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_rows_read = 1'b1;
    end else begin
        p_src_rows_read = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        src_mat_420_read = grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_src_mat_420_read;
    end else begin
        src_mat_420_read = 1'b0;
    end
end

always @ (*) begin
    if (((real_start == 1'b1) & (start_once_reg == 1'b0))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (p_dst_cols_out_full_n == 1'b0) | (p_dst_rows_out_full_n == 1'b0) | (p_dst_cols_empty_n == 1'b0) | (p_dst_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (p_dst_cols_out_full_n == 1'b0) | (p_dst_rows_out_full_n == 1'b0) | (p_dst_cols_empty_n == 1'b0) | (p_dst_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_ignore_call16 = ((real_start == 1'b0) | (p_dst_cols_out_full_n == 1'b0) | (p_dst_rows_out_full_n == 1'b0) | (p_dst_cols_empty_n == 1'b0) | (p_dst_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ready = internal_ap_ready;

assign dst_mat_421_din = grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_dst_mat_421_din;

assign grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_start = grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_80_ap_start_reg;

assign p_dst_cols_out_din = p_dst_cols_dout;

assign p_dst_rows_out_din = p_dst_rows_dout;

assign start_out = real_start;

endmodule //resize_accel_resize_1_9_2160_3840_2160_3840_1_9_s
