// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Version: 2020.2.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module colordetect_accel_erode_0_0_2160_3840_0_3_3_1_1_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        imgHelper1_4101_dout,
        imgHelper1_4101_empty_n,
        imgHelper1_4101_read,
        imgHelper2_4102_din,
        imgHelper2_4102_full_n,
        imgHelper2_4102_write,
        p_src_rows_dout,
        p_src_rows_empty_n,
        p_src_rows_read,
        p_src_cols_dout,
        p_src_cols_empty_n,
        p_src_cols_read
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] imgHelper1_4101_dout;
input   imgHelper1_4101_empty_n;
output   imgHelper1_4101_read;
output  [7:0] imgHelper2_4102_din;
input   imgHelper2_4102_full_n;
output   imgHelper2_4102_write;
input  [31:0] p_src_rows_dout;
input   p_src_rows_empty_n;
output   p_src_rows_read;
input  [31:0] p_src_cols_dout;
input   p_src_cols_empty_n;
output   p_src_cols_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg imgHelper1_4101_read;
reg imgHelper2_4102_write;
reg p_src_rows_read;
reg p_src_cols_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    p_src_rows_blk_n;
reg    p_src_cols_blk_n;
wire   [15:0] trunc_ln344_fu_52_p1;
reg   [15:0] trunc_ln344_reg_62;
wire   [15:0] trunc_ln345_fu_57_p1;
reg   [15:0] trunc_ln345_reg_67;
wire    grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_start;
wire    grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_done;
wire    grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_idle;
wire    grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_ready;
wire    grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_imgHelper1_4101_read;
wire   [7:0] grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_imgHelper2_4102_din;
wire    grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_imgHelper2_4102_write;
reg    grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_start_reg;
reg    ap_block_state1_ignore_call10;
wire    ap_CS_fsm_state2;
reg    ap_block_state1;
reg   [1:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_start_reg = 1'b0;
end

colordetect_accel_xferode_2160_3840_1_0_1_0_3841_3_3_s grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_start),
    .ap_done(grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_done),
    .ap_idle(grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_idle),
    .ap_ready(grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_ready),
    .imgHelper1_4101_dout(imgHelper1_4101_dout),
    .imgHelper1_4101_empty_n(imgHelper1_4101_empty_n),
    .imgHelper1_4101_read(grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_imgHelper1_4101_read),
    .imgHelper2_4102_din(grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_imgHelper2_4102_din),
    .imgHelper2_4102_full_n(imgHelper2_4102_full_n),
    .imgHelper2_4102_write(grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_imgHelper2_4102_write),
    .img_height(trunc_ln344_reg_62),
    .img_width(trunc_ln345_reg_67)
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
        end else if (((grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_start_reg <= 1'b0;
    end else begin
        if ((~((ap_start == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_start_reg <= 1'b1;
        end else if ((grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_ready == 1'b1)) begin
            grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        trunc_ln344_reg_62 <= trunc_ln344_fu_52_p1;
        trunc_ln345_reg_67 <= trunc_ln345_fu_57_p1;
    end
end

always @ (*) begin
    if (((grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        imgHelper1_4101_read = grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_imgHelper1_4101_read;
    end else begin
        imgHelper1_4101_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        imgHelper2_4102_write = grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_imgHelper2_4102_write;
    end else begin
        imgHelper2_4102_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_cols_blk_n = p_src_cols_empty_n;
    end else begin
        p_src_cols_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_cols_read = 1'b1;
    end else begin
        p_src_cols_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_rows_blk_n = p_src_rows_empty_n;
    end else begin
        p_src_rows_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_rows_read = 1'b1;
    end else begin
        p_src_rows_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    ap_block_state1 = ((ap_start == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_ignore_call10 = ((ap_start == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_start = grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_ap_start_reg;

assign imgHelper2_4102_din = grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42_imgHelper2_4102_din;

assign trunc_ln344_fu_52_p1 = p_src_rows_dout[15:0];

assign trunc_ln345_fu_57_p1 = p_src_cols_dout[15:0];

endmodule //colordetect_accel_erode_0_0_2160_3840_0_3_3_1_1_s
