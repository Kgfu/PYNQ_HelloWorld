// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Version: 2020.2.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module colordetect_accel_Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc (
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
        rows,
        cols,
        imgInput_rows_out_din,
        imgInput_rows_out_full_n,
        imgInput_rows_out_write,
        imgInput_cols_out_din,
        imgInput_cols_out_full_n,
        imgInput_cols_out_write,
        rgb2hsv_rows_out_din,
        rgb2hsv_rows_out_full_n,
        rgb2hsv_rows_out_write,
        rgb2hsv_cols_out_din,
        rgb2hsv_cols_out_full_n,
        rgb2hsv_cols_out_write,
        imgHelper1_rows_out_din,
        imgHelper1_rows_out_full_n,
        imgHelper1_rows_out_write,
        imgHelper1_cols_out_din,
        imgHelper1_cols_out_full_n,
        imgHelper1_cols_out_write,
        imgHelper2_rows_out_din,
        imgHelper2_rows_out_full_n,
        imgHelper2_rows_out_write,
        imgHelper2_cols_out_din,
        imgHelper2_cols_out_full_n,
        imgHelper2_cols_out_write,
        imgHelper3_rows_out_din,
        imgHelper3_rows_out_full_n,
        imgHelper3_rows_out_write,
        imgHelper3_cols_out_din,
        imgHelper3_cols_out_full_n,
        imgHelper3_cols_out_write,
        imgHelper4_rows_out_din,
        imgHelper4_rows_out_full_n,
        imgHelper4_rows_out_write,
        imgHelper4_cols_out_din,
        imgHelper4_cols_out_full_n,
        imgHelper4_cols_out_write,
        imgOutput_rows_out_din,
        imgOutput_rows_out_full_n,
        imgOutput_rows_out_write,
        imgOutput_cols_out_din,
        imgOutput_cols_out_full_n,
        imgOutput_cols_out_write
);

parameter    ap_ST_fsm_state1 = 1'd1;

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
input  [31:0] rows;
input  [31:0] cols;
output  [31:0] imgInput_rows_out_din;
input   imgInput_rows_out_full_n;
output   imgInput_rows_out_write;
output  [31:0] imgInput_cols_out_din;
input   imgInput_cols_out_full_n;
output   imgInput_cols_out_write;
output  [31:0] rgb2hsv_rows_out_din;
input   rgb2hsv_rows_out_full_n;
output   rgb2hsv_rows_out_write;
output  [31:0] rgb2hsv_cols_out_din;
input   rgb2hsv_cols_out_full_n;
output   rgb2hsv_cols_out_write;
output  [31:0] imgHelper1_rows_out_din;
input   imgHelper1_rows_out_full_n;
output   imgHelper1_rows_out_write;
output  [31:0] imgHelper1_cols_out_din;
input   imgHelper1_cols_out_full_n;
output   imgHelper1_cols_out_write;
output  [31:0] imgHelper2_rows_out_din;
input   imgHelper2_rows_out_full_n;
output   imgHelper2_rows_out_write;
output  [31:0] imgHelper2_cols_out_din;
input   imgHelper2_cols_out_full_n;
output   imgHelper2_cols_out_write;
output  [31:0] imgHelper3_rows_out_din;
input   imgHelper3_rows_out_full_n;
output   imgHelper3_rows_out_write;
output  [31:0] imgHelper3_cols_out_din;
input   imgHelper3_cols_out_full_n;
output   imgHelper3_cols_out_write;
output  [31:0] imgHelper4_rows_out_din;
input   imgHelper4_rows_out_full_n;
output   imgHelper4_rows_out_write;
output  [31:0] imgHelper4_cols_out_din;
input   imgHelper4_cols_out_full_n;
output   imgHelper4_cols_out_write;
output  [31:0] imgOutput_rows_out_din;
input   imgOutput_rows_out_full_n;
output   imgOutput_rows_out_write;
output  [31:0] imgOutput_cols_out_din;
input   imgOutput_cols_out_full_n;
output   imgOutput_cols_out_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg imgInput_rows_out_write;
reg imgInput_cols_out_write;
reg rgb2hsv_rows_out_write;
reg rgb2hsv_cols_out_write;
reg imgHelper1_rows_out_write;
reg imgHelper1_cols_out_write;
reg imgHelper2_rows_out_write;
reg imgHelper2_cols_out_write;
reg imgHelper3_rows_out_write;
reg imgHelper3_cols_out_write;
reg imgHelper4_rows_out_write;
reg imgHelper4_cols_out_write;
reg imgOutput_rows_out_write;
reg imgOutput_cols_out_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    imgInput_rows_out_blk_n;
reg    imgInput_cols_out_blk_n;
reg    rgb2hsv_rows_out_blk_n;
reg    rgb2hsv_cols_out_blk_n;
reg    imgHelper1_rows_out_blk_n;
reg    imgHelper1_cols_out_blk_n;
reg    imgHelper2_rows_out_blk_n;
reg    imgHelper2_cols_out_blk_n;
reg    imgHelper3_rows_out_blk_n;
reg    imgHelper3_cols_out_blk_n;
reg    imgHelper4_rows_out_blk_n;
reg    imgHelper4_cols_out_blk_n;
reg    imgOutput_rows_out_blk_n;
reg    imgOutput_cols_out_blk_n;
reg    ap_block_state1;
reg   [0:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
end

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
        end else if ((~((imgOutput_cols_out_full_n == 1'b0) | (imgOutput_rows_out_full_n == 1'b0) | (imgHelper4_cols_out_full_n == 1'b0) | (imgHelper4_rows_out_full_n == 1'b0) | (real_start == 1'b0) | (imgHelper3_cols_out_full_n == 1'b0) | (imgHelper3_rows_out_full_n == 1'b0) | (imgHelper2_cols_out_full_n == 1'b0) | (imgHelper2_rows_out_full_n == 1'b0) | (imgHelper1_cols_out_full_n == 1'b0) | (imgHelper1_rows_out_full_n == 1'b0) | (rgb2hsv_cols_out_full_n == 1'b0) | (rgb2hsv_rows_out_full_n == 1'b0) | (imgInput_cols_out_full_n == 1'b0) | (imgInput_rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
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

always @ (*) begin
    if ((~((imgOutput_cols_out_full_n == 1'b0) | (imgOutput_rows_out_full_n == 1'b0) | (imgHelper4_cols_out_full_n == 1'b0) | (imgHelper4_rows_out_full_n == 1'b0) | (real_start == 1'b0) | (imgHelper3_cols_out_full_n == 1'b0) | (imgHelper3_rows_out_full_n == 1'b0) | (imgHelper2_cols_out_full_n == 1'b0) | (imgHelper2_rows_out_full_n == 1'b0) | (imgHelper1_cols_out_full_n == 1'b0) | (imgHelper1_rows_out_full_n == 1'b0) | (rgb2hsv_cols_out_full_n == 1'b0) | (rgb2hsv_rows_out_full_n == 1'b0) | (imgInput_cols_out_full_n == 1'b0) | (imgInput_rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgHelper1_cols_out_blk_n = imgHelper1_cols_out_full_n;
    end else begin
        imgHelper1_cols_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((imgOutput_cols_out_full_n == 1'b0) | (imgOutput_rows_out_full_n == 1'b0) | (imgHelper4_cols_out_full_n == 1'b0) | (imgHelper4_rows_out_full_n == 1'b0) | (real_start == 1'b0) | (imgHelper3_cols_out_full_n == 1'b0) | (imgHelper3_rows_out_full_n == 1'b0) | (imgHelper2_cols_out_full_n == 1'b0) | (imgHelper2_rows_out_full_n == 1'b0) | (imgHelper1_cols_out_full_n == 1'b0) | (imgHelper1_rows_out_full_n == 1'b0) | (rgb2hsv_cols_out_full_n == 1'b0) | (rgb2hsv_rows_out_full_n == 1'b0) | (imgInput_cols_out_full_n == 1'b0) | (imgInput_rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgHelper1_cols_out_write = 1'b1;
    end else begin
        imgHelper1_cols_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgHelper1_rows_out_blk_n = imgHelper1_rows_out_full_n;
    end else begin
        imgHelper1_rows_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((imgOutput_cols_out_full_n == 1'b0) | (imgOutput_rows_out_full_n == 1'b0) | (imgHelper4_cols_out_full_n == 1'b0) | (imgHelper4_rows_out_full_n == 1'b0) | (real_start == 1'b0) | (imgHelper3_cols_out_full_n == 1'b0) | (imgHelper3_rows_out_full_n == 1'b0) | (imgHelper2_cols_out_full_n == 1'b0) | (imgHelper2_rows_out_full_n == 1'b0) | (imgHelper1_cols_out_full_n == 1'b0) | (imgHelper1_rows_out_full_n == 1'b0) | (rgb2hsv_cols_out_full_n == 1'b0) | (rgb2hsv_rows_out_full_n == 1'b0) | (imgInput_cols_out_full_n == 1'b0) | (imgInput_rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgHelper1_rows_out_write = 1'b1;
    end else begin
        imgHelper1_rows_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgHelper2_cols_out_blk_n = imgHelper2_cols_out_full_n;
    end else begin
        imgHelper2_cols_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((imgOutput_cols_out_full_n == 1'b0) | (imgOutput_rows_out_full_n == 1'b0) | (imgHelper4_cols_out_full_n == 1'b0) | (imgHelper4_rows_out_full_n == 1'b0) | (real_start == 1'b0) | (imgHelper3_cols_out_full_n == 1'b0) | (imgHelper3_rows_out_full_n == 1'b0) | (imgHelper2_cols_out_full_n == 1'b0) | (imgHelper2_rows_out_full_n == 1'b0) | (imgHelper1_cols_out_full_n == 1'b0) | (imgHelper1_rows_out_full_n == 1'b0) | (rgb2hsv_cols_out_full_n == 1'b0) | (rgb2hsv_rows_out_full_n == 1'b0) | (imgInput_cols_out_full_n == 1'b0) | (imgInput_rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgHelper2_cols_out_write = 1'b1;
    end else begin
        imgHelper2_cols_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgHelper2_rows_out_blk_n = imgHelper2_rows_out_full_n;
    end else begin
        imgHelper2_rows_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((imgOutput_cols_out_full_n == 1'b0) | (imgOutput_rows_out_full_n == 1'b0) | (imgHelper4_cols_out_full_n == 1'b0) | (imgHelper4_rows_out_full_n == 1'b0) | (real_start == 1'b0) | (imgHelper3_cols_out_full_n == 1'b0) | (imgHelper3_rows_out_full_n == 1'b0) | (imgHelper2_cols_out_full_n == 1'b0) | (imgHelper2_rows_out_full_n == 1'b0) | (imgHelper1_cols_out_full_n == 1'b0) | (imgHelper1_rows_out_full_n == 1'b0) | (rgb2hsv_cols_out_full_n == 1'b0) | (rgb2hsv_rows_out_full_n == 1'b0) | (imgInput_cols_out_full_n == 1'b0) | (imgInput_rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgHelper2_rows_out_write = 1'b1;
    end else begin
        imgHelper2_rows_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgHelper3_cols_out_blk_n = imgHelper3_cols_out_full_n;
    end else begin
        imgHelper3_cols_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((imgOutput_cols_out_full_n == 1'b0) | (imgOutput_rows_out_full_n == 1'b0) | (imgHelper4_cols_out_full_n == 1'b0) | (imgHelper4_rows_out_full_n == 1'b0) | (real_start == 1'b0) | (imgHelper3_cols_out_full_n == 1'b0) | (imgHelper3_rows_out_full_n == 1'b0) | (imgHelper2_cols_out_full_n == 1'b0) | (imgHelper2_rows_out_full_n == 1'b0) | (imgHelper1_cols_out_full_n == 1'b0) | (imgHelper1_rows_out_full_n == 1'b0) | (rgb2hsv_cols_out_full_n == 1'b0) | (rgb2hsv_rows_out_full_n == 1'b0) | (imgInput_cols_out_full_n == 1'b0) | (imgInput_rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgHelper3_cols_out_write = 1'b1;
    end else begin
        imgHelper3_cols_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgHelper3_rows_out_blk_n = imgHelper3_rows_out_full_n;
    end else begin
        imgHelper3_rows_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((imgOutput_cols_out_full_n == 1'b0) | (imgOutput_rows_out_full_n == 1'b0) | (imgHelper4_cols_out_full_n == 1'b0) | (imgHelper4_rows_out_full_n == 1'b0) | (real_start == 1'b0) | (imgHelper3_cols_out_full_n == 1'b0) | (imgHelper3_rows_out_full_n == 1'b0) | (imgHelper2_cols_out_full_n == 1'b0) | (imgHelper2_rows_out_full_n == 1'b0) | (imgHelper1_cols_out_full_n == 1'b0) | (imgHelper1_rows_out_full_n == 1'b0) | (rgb2hsv_cols_out_full_n == 1'b0) | (rgb2hsv_rows_out_full_n == 1'b0) | (imgInput_cols_out_full_n == 1'b0) | (imgInput_rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgHelper3_rows_out_write = 1'b1;
    end else begin
        imgHelper3_rows_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgHelper4_cols_out_blk_n = imgHelper4_cols_out_full_n;
    end else begin
        imgHelper4_cols_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((imgOutput_cols_out_full_n == 1'b0) | (imgOutput_rows_out_full_n == 1'b0) | (imgHelper4_cols_out_full_n == 1'b0) | (imgHelper4_rows_out_full_n == 1'b0) | (real_start == 1'b0) | (imgHelper3_cols_out_full_n == 1'b0) | (imgHelper3_rows_out_full_n == 1'b0) | (imgHelper2_cols_out_full_n == 1'b0) | (imgHelper2_rows_out_full_n == 1'b0) | (imgHelper1_cols_out_full_n == 1'b0) | (imgHelper1_rows_out_full_n == 1'b0) | (rgb2hsv_cols_out_full_n == 1'b0) | (rgb2hsv_rows_out_full_n == 1'b0) | (imgInput_cols_out_full_n == 1'b0) | (imgInput_rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgHelper4_cols_out_write = 1'b1;
    end else begin
        imgHelper4_cols_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgHelper4_rows_out_blk_n = imgHelper4_rows_out_full_n;
    end else begin
        imgHelper4_rows_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((imgOutput_cols_out_full_n == 1'b0) | (imgOutput_rows_out_full_n == 1'b0) | (imgHelper4_cols_out_full_n == 1'b0) | (imgHelper4_rows_out_full_n == 1'b0) | (real_start == 1'b0) | (imgHelper3_cols_out_full_n == 1'b0) | (imgHelper3_rows_out_full_n == 1'b0) | (imgHelper2_cols_out_full_n == 1'b0) | (imgHelper2_rows_out_full_n == 1'b0) | (imgHelper1_cols_out_full_n == 1'b0) | (imgHelper1_rows_out_full_n == 1'b0) | (rgb2hsv_cols_out_full_n == 1'b0) | (rgb2hsv_rows_out_full_n == 1'b0) | (imgInput_cols_out_full_n == 1'b0) | (imgInput_rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgHelper4_rows_out_write = 1'b1;
    end else begin
        imgHelper4_rows_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgInput_cols_out_blk_n = imgInput_cols_out_full_n;
    end else begin
        imgInput_cols_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((imgOutput_cols_out_full_n == 1'b0) | (imgOutput_rows_out_full_n == 1'b0) | (imgHelper4_cols_out_full_n == 1'b0) | (imgHelper4_rows_out_full_n == 1'b0) | (real_start == 1'b0) | (imgHelper3_cols_out_full_n == 1'b0) | (imgHelper3_rows_out_full_n == 1'b0) | (imgHelper2_cols_out_full_n == 1'b0) | (imgHelper2_rows_out_full_n == 1'b0) | (imgHelper1_cols_out_full_n == 1'b0) | (imgHelper1_rows_out_full_n == 1'b0) | (rgb2hsv_cols_out_full_n == 1'b0) | (rgb2hsv_rows_out_full_n == 1'b0) | (imgInput_cols_out_full_n == 1'b0) | (imgInput_rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgInput_cols_out_write = 1'b1;
    end else begin
        imgInput_cols_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgInput_rows_out_blk_n = imgInput_rows_out_full_n;
    end else begin
        imgInput_rows_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((imgOutput_cols_out_full_n == 1'b0) | (imgOutput_rows_out_full_n == 1'b0) | (imgHelper4_cols_out_full_n == 1'b0) | (imgHelper4_rows_out_full_n == 1'b0) | (real_start == 1'b0) | (imgHelper3_cols_out_full_n == 1'b0) | (imgHelper3_rows_out_full_n == 1'b0) | (imgHelper2_cols_out_full_n == 1'b0) | (imgHelper2_rows_out_full_n == 1'b0) | (imgHelper1_cols_out_full_n == 1'b0) | (imgHelper1_rows_out_full_n == 1'b0) | (rgb2hsv_cols_out_full_n == 1'b0) | (rgb2hsv_rows_out_full_n == 1'b0) | (imgInput_cols_out_full_n == 1'b0) | (imgInput_rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgInput_rows_out_write = 1'b1;
    end else begin
        imgInput_rows_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgOutput_cols_out_blk_n = imgOutput_cols_out_full_n;
    end else begin
        imgOutput_cols_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((imgOutput_cols_out_full_n == 1'b0) | (imgOutput_rows_out_full_n == 1'b0) | (imgHelper4_cols_out_full_n == 1'b0) | (imgHelper4_rows_out_full_n == 1'b0) | (real_start == 1'b0) | (imgHelper3_cols_out_full_n == 1'b0) | (imgHelper3_rows_out_full_n == 1'b0) | (imgHelper2_cols_out_full_n == 1'b0) | (imgHelper2_rows_out_full_n == 1'b0) | (imgHelper1_cols_out_full_n == 1'b0) | (imgHelper1_rows_out_full_n == 1'b0) | (rgb2hsv_cols_out_full_n == 1'b0) | (rgb2hsv_rows_out_full_n == 1'b0) | (imgInput_cols_out_full_n == 1'b0) | (imgInput_rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgOutput_cols_out_write = 1'b1;
    end else begin
        imgOutput_cols_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgOutput_rows_out_blk_n = imgOutput_rows_out_full_n;
    end else begin
        imgOutput_rows_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((imgOutput_cols_out_full_n == 1'b0) | (imgOutput_rows_out_full_n == 1'b0) | (imgHelper4_cols_out_full_n == 1'b0) | (imgHelper4_rows_out_full_n == 1'b0) | (real_start == 1'b0) | (imgHelper3_cols_out_full_n == 1'b0) | (imgHelper3_rows_out_full_n == 1'b0) | (imgHelper2_cols_out_full_n == 1'b0) | (imgHelper2_rows_out_full_n == 1'b0) | (imgHelper1_cols_out_full_n == 1'b0) | (imgHelper1_rows_out_full_n == 1'b0) | (rgb2hsv_cols_out_full_n == 1'b0) | (rgb2hsv_rows_out_full_n == 1'b0) | (imgInput_cols_out_full_n == 1'b0) | (imgInput_rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        imgOutput_rows_out_write = 1'b1;
    end else begin
        imgOutput_rows_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((imgOutput_cols_out_full_n == 1'b0) | (imgOutput_rows_out_full_n == 1'b0) | (imgHelper4_cols_out_full_n == 1'b0) | (imgHelper4_rows_out_full_n == 1'b0) | (real_start == 1'b0) | (imgHelper3_cols_out_full_n == 1'b0) | (imgHelper3_rows_out_full_n == 1'b0) | (imgHelper2_cols_out_full_n == 1'b0) | (imgHelper2_rows_out_full_n == 1'b0) | (imgHelper1_cols_out_full_n == 1'b0) | (imgHelper1_rows_out_full_n == 1'b0) | (rgb2hsv_cols_out_full_n == 1'b0) | (rgb2hsv_rows_out_full_n == 1'b0) | (imgInput_cols_out_full_n == 1'b0) | (imgInput_rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
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
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        rgb2hsv_cols_out_blk_n = rgb2hsv_cols_out_full_n;
    end else begin
        rgb2hsv_cols_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((imgOutput_cols_out_full_n == 1'b0) | (imgOutput_rows_out_full_n == 1'b0) | (imgHelper4_cols_out_full_n == 1'b0) | (imgHelper4_rows_out_full_n == 1'b0) | (real_start == 1'b0) | (imgHelper3_cols_out_full_n == 1'b0) | (imgHelper3_rows_out_full_n == 1'b0) | (imgHelper2_cols_out_full_n == 1'b0) | (imgHelper2_rows_out_full_n == 1'b0) | (imgHelper1_cols_out_full_n == 1'b0) | (imgHelper1_rows_out_full_n == 1'b0) | (rgb2hsv_cols_out_full_n == 1'b0) | (rgb2hsv_rows_out_full_n == 1'b0) | (imgInput_cols_out_full_n == 1'b0) | (imgInput_rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        rgb2hsv_cols_out_write = 1'b1;
    end else begin
        rgb2hsv_cols_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        rgb2hsv_rows_out_blk_n = rgb2hsv_rows_out_full_n;
    end else begin
        rgb2hsv_rows_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((imgOutput_cols_out_full_n == 1'b0) | (imgOutput_rows_out_full_n == 1'b0) | (imgHelper4_cols_out_full_n == 1'b0) | (imgHelper4_rows_out_full_n == 1'b0) | (real_start == 1'b0) | (imgHelper3_cols_out_full_n == 1'b0) | (imgHelper3_rows_out_full_n == 1'b0) | (imgHelper2_cols_out_full_n == 1'b0) | (imgHelper2_rows_out_full_n == 1'b0) | (imgHelper1_cols_out_full_n == 1'b0) | (imgHelper1_rows_out_full_n == 1'b0) | (rgb2hsv_cols_out_full_n == 1'b0) | (rgb2hsv_rows_out_full_n == 1'b0) | (imgInput_cols_out_full_n == 1'b0) | (imgInput_rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        rgb2hsv_rows_out_write = 1'b1;
    end else begin
        rgb2hsv_rows_out_write = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((imgOutput_cols_out_full_n == 1'b0) | (imgOutput_rows_out_full_n == 1'b0) | (imgHelper4_cols_out_full_n == 1'b0) | (imgHelper4_rows_out_full_n == 1'b0) | (real_start == 1'b0) | (imgHelper3_cols_out_full_n == 1'b0) | (imgHelper3_rows_out_full_n == 1'b0) | (imgHelper2_cols_out_full_n == 1'b0) | (imgHelper2_rows_out_full_n == 1'b0) | (imgHelper1_cols_out_full_n == 1'b0) | (imgHelper1_rows_out_full_n == 1'b0) | (rgb2hsv_cols_out_full_n == 1'b0) | (rgb2hsv_rows_out_full_n == 1'b0) | (imgInput_cols_out_full_n == 1'b0) | (imgInput_rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ready = internal_ap_ready;

assign imgHelper1_cols_out_din = cols;

assign imgHelper1_rows_out_din = rows;

assign imgHelper2_cols_out_din = cols;

assign imgHelper2_rows_out_din = rows;

assign imgHelper3_cols_out_din = cols;

assign imgHelper3_rows_out_din = rows;

assign imgHelper4_cols_out_din = cols;

assign imgHelper4_rows_out_din = rows;

assign imgInput_cols_out_din = cols;

assign imgInput_rows_out_din = rows;

assign imgOutput_cols_out_din = cols;

assign imgOutput_rows_out_din = rows;

assign rgb2hsv_cols_out_din = cols;

assign rgb2hsv_rows_out_din = rows;

assign start_out = real_start;

endmodule //colordetect_accel_Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc
