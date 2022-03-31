// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Version: 2020.2.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module colordetect_accel_bgr2hsv_9_2160_3840_1_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        imgInput_499_dout,
        imgInput_499_empty_n,
        imgInput_499_read,
        rgb2hsv_4100_din,
        rgb2hsv_4100_full_n,
        rgb2hsv_4100_write,
        p_src_mat_rows_dout,
        p_src_mat_rows_empty_n,
        p_src_mat_rows_read,
        p_src_mat_cols_dout,
        p_src_mat_cols_empty_n,
        p_src_mat_cols_read
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state14 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [23:0] imgInput_499_dout;
input   imgInput_499_empty_n;
output   imgInput_499_read;
output  [23:0] rgb2hsv_4100_din;
input   rgb2hsv_4100_full_n;
output   rgb2hsv_4100_write;
input  [31:0] p_src_mat_rows_dout;
input   p_src_mat_rows_empty_n;
output   p_src_mat_rows_read;
input  [31:0] p_src_mat_cols_dout;
input   p_src_mat_cols_empty_n;
output   p_src_mat_cols_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg imgInput_499_read;
reg rgb2hsv_4100_write;
reg p_src_mat_rows_read;
reg p_src_mat_cols_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [9:0] xf_cv_icvSaturate8u_cv_address0;
reg    xf_cv_icvSaturate8u_cv_ce0;
wire   [7:0] xf_cv_icvSaturate8u_cv_q0;
wire   [9:0] xf_cv_icvSaturate8u_cv_address1;
reg    xf_cv_icvSaturate8u_cv_ce1;
wire   [7:0] xf_cv_icvSaturate8u_cv_q1;
wire   [9:0] xf_cv_icvSaturate8u_cv_address2;
reg    xf_cv_icvSaturate8u_cv_ce2;
wire   [7:0] xf_cv_icvSaturate8u_cv_q2;
wire   [9:0] xf_cv_icvSaturate8u_cv_address3;
reg    xf_cv_icvSaturate8u_cv_ce3;
wire   [7:0] xf_cv_icvSaturate8u_cv_q3;
wire   [7:0] void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0;
reg    void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0;
wire   [31:0] void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_q0;
wire   [7:0] void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_address0;
reg    void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0;
wire   [31:0] void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_q0;
reg    imgInput_499_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln128_reg_673;
reg    rgb2hsv_4100_blk_n;
reg    ap_enable_reg_pp0_iter10;
reg   [0:0] icmp_ln128_reg_673_pp0_iter9_reg;
reg    p_src_mat_rows_blk_n;
reg    p_src_mat_cols_blk_n;
reg   [63:0] indvar_flatten_reg_218;
reg   [31:0] rows_reg_653;
reg   [31:0] cols_reg_658;
wire   [63:0] mul_ln73_fu_235_p2;
reg   [63:0] mul_ln73_reg_663;
wire    ap_CS_fsm_state2;
wire   [63:0] add_ln128_fu_241_p2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state6_pp0_stage0_iter3;
wire    ap_block_state7_pp0_stage0_iter4;
wire    ap_block_state8_pp0_stage0_iter5;
wire    ap_block_state9_pp0_stage0_iter6;
wire    ap_block_state10_pp0_stage0_iter7;
wire    ap_block_state11_pp0_stage0_iter8;
wire    ap_block_state12_pp0_stage0_iter9;
reg    ap_block_state13_pp0_stage0_iter10;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln128_fu_247_p2;
reg   [0:0] icmp_ln128_reg_673_pp0_iter1_reg;
reg   [0:0] icmp_ln128_reg_673_pp0_iter2_reg;
reg   [0:0] icmp_ln128_reg_673_pp0_iter3_reg;
reg   [0:0] icmp_ln128_reg_673_pp0_iter4_reg;
reg   [0:0] icmp_ln128_reg_673_pp0_iter5_reg;
reg   [0:0] icmp_ln128_reg_673_pp0_iter6_reg;
reg   [0:0] icmp_ln128_reg_673_pp0_iter7_reg;
reg   [0:0] icmp_ln128_reg_673_pp0_iter8_reg;
wire   [7:0] b_V_fu_252_p1;
reg   [7:0] b_V_reg_677;
reg   [7:0] b_V_reg_677_pp0_iter2_reg;
reg   [7:0] b_V_reg_677_pp0_iter3_reg;
reg   [7:0] b_V_reg_677_pp0_iter4_reg;
reg   [7:0] g_V_reg_684;
reg   [7:0] g_V_reg_684_pp0_iter2_reg;
reg   [7:0] g_V_reg_684_pp0_iter3_reg;
reg   [7:0] g_V_reg_684_pp0_iter4_reg;
reg   [7:0] r_V_reg_690;
reg   [7:0] r_V_reg_690_pp0_iter2_reg;
reg   [7:0] r_V_reg_690_pp0_iter3_reg;
wire   [8:0] zext_ln123_fu_276_p1;
reg   [8:0] zext_ln123_reg_696;
reg   [8:0] zext_ln123_reg_696_pp0_iter3_reg;
reg   [8:0] zext_ln123_reg_696_pp0_iter4_reg;
reg   [8:0] zext_ln123_reg_696_pp0_iter5_reg;
wire   [8:0] zext_ln1347_fu_279_p1;
reg   [8:0] zext_ln1347_reg_703;
reg   [8:0] zext_ln1347_reg_703_pp0_iter3_reg;
reg   [8:0] zext_ln1347_reg_703_pp0_iter4_reg;
reg   [8:0] zext_ln1347_reg_703_pp0_iter5_reg;
reg   [7:0] xf_cv_icvSaturate8u_cv_load_reg_719;
reg    ap_enable_reg_pp0_iter3;
reg   [7:0] xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg;
reg   [7:0] xf_cv_icvSaturate8u_cv_load_2_reg_725;
wire   [9:0] zext_ln123_1_fu_324_p1;
reg   [9:0] zext_ln123_1_reg_730;
wire   [9:0] zext_ln1347_1_fu_328_p1;
reg   [9:0] zext_ln1347_1_reg_735;
wire   [7:0] vmin_V_fu_348_p2;
reg   [7:0] vmin_V_reg_745;
reg   [7:0] vmin_V_reg_745_pp0_iter5_reg;
wire   [8:0] zext_ln215_1_fu_356_p1;
reg   [8:0] zext_ln215_1_reg_750;
reg   [8:0] zext_ln215_1_reg_750_pp0_iter5_reg;
reg   [7:0] xf_cv_icvSaturate8u_cv_load_3_reg_761;
reg    ap_enable_reg_pp0_iter5;
wire   [7:0] add_ln213_1_fu_390_p2;
reg   [7:0] add_ln213_1_reg_766;
reg   [7:0] add_ln213_1_reg_766_pp0_iter6_reg;
reg   [7:0] add_ln213_1_reg_766_pp0_iter7_reg;
reg   [7:0] add_ln213_1_reg_766_pp0_iter8_reg;
reg   [7:0] add_ln213_1_reg_766_pp0_iter9_reg;
wire   [0:0] vr_fu_395_p2;
reg   [0:0] vr_reg_772;
wire   [0:0] vg_fu_403_p2;
reg   [0:0] vg_reg_778;
wire   [8:0] ret_22_fu_449_p2;
reg  signed [8:0] ret_22_reg_799;
wire   [12:0] and_ln157_2_fu_559_p2;
reg  signed [12:0] and_ln157_2_reg_804;
reg   [7:0] op_assign_1_reg_819;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
wire   [63:0] zext_ln534_fu_294_p1;
wire   [63:0] zext_ln534_7_fu_311_p1;
wire  signed [63:0] sext_ln534_fu_343_p1;
wire   [63:0] zext_ln534_8_fu_371_p1;
wire   [63:0] zext_ln156_fu_409_p1;
wire   [63:0] zext_ln534_9_fu_565_p1;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] mul_ln73_fu_235_p0;
wire   [31:0] mul_ln73_fu_235_p1;
wire   [8:0] sub_ln1347_fu_282_p2;
wire   [8:0] add_ln1346_fu_288_p2;
wire   [8:0] ret_26_fu_299_p2;
wire   [8:0] ret_17_fu_305_p2;
wire   [8:0] zext_ln147_fu_316_p1;
wire   [8:0] v_3_fu_319_p2;
wire   [9:0] ret_25_fu_331_p2;
wire   [9:0] ret_fu_337_p2;
wire   [8:0] zext_ln215_fu_352_p1;
wire   [8:0] ret_27_fu_359_p2;
wire   [8:0] ret_19_fu_365_p2;
wire   [9:0] zext_ln148_fu_376_p1;
wire   [7:0] add_ln213_fu_385_p2;
wire   [9:0] v_fu_380_p2;
wire   [9:0] zext_ln870_fu_400_p1;
wire   [7:0] sub_ln213_fu_414_p2;
wire   [7:0] diff_V_fu_418_p2;
wire   [8:0] ret_28_fu_445_p2;
wire   [8:0] select_ln126_fu_423_p3;
wire   [0:0] xor_ln157_fu_455_p2;
wire   [8:0] ret_23_fu_468_p2;
wire   [8:0] shl_ln_fu_476_p3;
wire   [10:0] zext_ln157_fu_484_p1;
wire  signed [10:0] sext_ln157_fu_472_p1;
wire   [10:0] add_ln157_fu_488_p2;
wire   [10:0] select_ln126_1_fu_430_p3;
wire   [10:0] and_ln157_fu_494_p2;
wire   [0:0] xor_ln157_1_fu_504_p2;
wire   [8:0] ret_24_fu_517_p2;
wire   [9:0] shl_ln157_1_fu_525_p3;
wire   [11:0] zext_ln157_1_fu_533_p1;
wire  signed [11:0] sext_ln157_2_fu_521_p1;
wire   [11:0] add_ln157_1_fu_537_p2;
wire   [11:0] select_ln1347_1_fu_509_p3;
wire   [11:0] and_ln157_1_fu_543_p2;
wire  signed [12:0] sext_ln157_3_fu_549_p1;
wire  signed [12:0] sext_ln157_1_fu_500_p1;
wire   [12:0] add_ln157_2_fu_553_p2;
wire   [12:0] select_ln1347_fu_460_p3;
wire   [16:0] trunc_ln158_fu_576_p1;
wire  signed [19:0] grp_fu_632_p3;
wire  signed [29:0] grp_fu_641_p4;
wire   [0:0] tmp_fu_593_p3;
wire   [7:0] select_ln159_fu_609_p3;
wire   [7:0] trunc_ln159_1_fu_600_p4;
wire   [7:0] add_ln161_fu_617_p2;
wire  signed [19:0] grp_fu_632_p0;
wire   [7:0] grp_fu_632_p1;
wire   [12:0] grp_fu_632_p2;
wire   [16:0] grp_fu_641_p2;
wire   [12:0] grp_fu_641_p3;
reg    grp_fu_632_ce;
reg    grp_fu_641_ce;
wire    ap_CS_fsm_state14;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [19:0] grp_fu_632_p10;
wire   [29:0] grp_fu_641_p20;
wire   [63:0] mul_ln73_fu_235_p00;
wire   [63:0] mul_ln73_fu_235_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
end

colordetect_accel_bgr2hsv_9_2160_3840_1_s_xf_cv_icvSaturate8u_cv #(
    .DataWidth( 8 ),
    .AddressRange( 769 ),
    .AddressWidth( 10 ))
xf_cv_icvSaturate8u_cv_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(xf_cv_icvSaturate8u_cv_address0),
    .ce0(xf_cv_icvSaturate8u_cv_ce0),
    .q0(xf_cv_icvSaturate8u_cv_q0),
    .address1(xf_cv_icvSaturate8u_cv_address1),
    .ce1(xf_cv_icvSaturate8u_cv_ce1),
    .q1(xf_cv_icvSaturate8u_cv_q1),
    .address2(xf_cv_icvSaturate8u_cv_address2),
    .ce2(xf_cv_icvSaturate8u_cv_ce2),
    .q2(xf_cv_icvSaturate8u_cv_q2),
    .address3(xf_cv_icvSaturate8u_cv_address3),
    .ce3(xf_cv_icvSaturate8u_cv_ce3),
    .q3(xf_cv_icvSaturate8u_cv_q3)
);

colordetect_accel_bgr2hsv_9_2160_3840_1_s_void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_bkb #(
    .DataWidth( 32 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0),
    .ce0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0),
    .q0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_q0)
);

colordetect_accel_bgr2hsv_9_2160_3840_1_s_void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_cud #(
    .DataWidth( 32 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_address0),
    .ce0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0),
    .q0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_q0)
);

colordetect_accel_mul_32ns_32ns_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
mul_32ns_32ns_64_1_1_U36(
    .din0(mul_ln73_fu_235_p0),
    .din1(mul_ln73_fu_235_p1),
    .dout(mul_ln73_fu_235_p2)
);

colordetect_accel_mac_muladd_20s_8ns_13ns_20_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 20 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 13 ),
    .dout_WIDTH( 20 ))
mac_muladd_20s_8ns_13ns_20_4_1_U37(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_632_p0),
    .din1(grp_fu_632_p1),
    .din2(grp_fu_632_p2),
    .ce(grp_fu_632_ce),
    .dout(grp_fu_632_p3)
);

colordetect_accel_ama_addmuladd_13s_9s_17ns_13ns_30_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 13 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 17 ),
    .din3_WIDTH( 13 ),
    .dout_WIDTH( 30 ))
ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U38(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(and_ln157_2_reg_804),
    .din1(ret_22_reg_799),
    .din2(grp_fu_641_p2),
    .din3(grp_fu_641_p3),
    .ce(grp_fu_641_ce),
    .dout(grp_fu_641_p4)
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
        end else if ((1'b1 == ap_CS_fsm_state14)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_enable_reg_pp0_iter10 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln128_fu_247_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        indvar_flatten_reg_218 <= add_ln128_fu_241_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        indvar_flatten_reg_218 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln128_reg_673_pp0_iter4_reg == 1'd0))) begin
        add_ln213_1_reg_766 <= add_ln213_1_fu_390_p2;
        vg_reg_778 <= vg_fu_403_p2;
        vr_reg_772 <= vr_fu_395_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln213_1_reg_766_pp0_iter6_reg <= add_ln213_1_reg_766;
        add_ln213_1_reg_766_pp0_iter7_reg <= add_ln213_1_reg_766_pp0_iter6_reg;
        add_ln213_1_reg_766_pp0_iter8_reg <= add_ln213_1_reg_766_pp0_iter7_reg;
        add_ln213_1_reg_766_pp0_iter9_reg <= add_ln213_1_reg_766_pp0_iter8_reg;
        b_V_reg_677_pp0_iter2_reg <= b_V_reg_677;
        b_V_reg_677_pp0_iter3_reg <= b_V_reg_677_pp0_iter2_reg;
        b_V_reg_677_pp0_iter4_reg <= b_V_reg_677_pp0_iter3_reg;
        g_V_reg_684_pp0_iter2_reg <= g_V_reg_684;
        g_V_reg_684_pp0_iter3_reg <= g_V_reg_684_pp0_iter2_reg;
        g_V_reg_684_pp0_iter4_reg <= g_V_reg_684_pp0_iter3_reg;
        icmp_ln128_reg_673_pp0_iter2_reg <= icmp_ln128_reg_673_pp0_iter1_reg;
        icmp_ln128_reg_673_pp0_iter3_reg <= icmp_ln128_reg_673_pp0_iter2_reg;
        icmp_ln128_reg_673_pp0_iter4_reg <= icmp_ln128_reg_673_pp0_iter3_reg;
        icmp_ln128_reg_673_pp0_iter5_reg <= icmp_ln128_reg_673_pp0_iter4_reg;
        icmp_ln128_reg_673_pp0_iter6_reg <= icmp_ln128_reg_673_pp0_iter5_reg;
        icmp_ln128_reg_673_pp0_iter7_reg <= icmp_ln128_reg_673_pp0_iter6_reg;
        icmp_ln128_reg_673_pp0_iter8_reg <= icmp_ln128_reg_673_pp0_iter7_reg;
        icmp_ln128_reg_673_pp0_iter9_reg <= icmp_ln128_reg_673_pp0_iter8_reg;
        r_V_reg_690_pp0_iter2_reg <= r_V_reg_690;
        r_V_reg_690_pp0_iter3_reg <= r_V_reg_690_pp0_iter2_reg;
        vmin_V_reg_745_pp0_iter5_reg <= vmin_V_reg_745;
        xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg <= xf_cv_icvSaturate8u_cv_load_reg_719;
        zext_ln123_reg_696_pp0_iter3_reg[7 : 0] <= zext_ln123_reg_696[7 : 0];
        zext_ln123_reg_696_pp0_iter4_reg[7 : 0] <= zext_ln123_reg_696_pp0_iter3_reg[7 : 0];
        zext_ln123_reg_696_pp0_iter5_reg[7 : 0] <= zext_ln123_reg_696_pp0_iter4_reg[7 : 0];
        zext_ln1347_reg_703_pp0_iter3_reg[7 : 0] <= zext_ln1347_reg_703[7 : 0];
        zext_ln1347_reg_703_pp0_iter4_reg[7 : 0] <= zext_ln1347_reg_703_pp0_iter3_reg[7 : 0];
        zext_ln1347_reg_703_pp0_iter5_reg[7 : 0] <= zext_ln1347_reg_703_pp0_iter4_reg[7 : 0];
        zext_ln215_1_reg_750_pp0_iter5_reg[7 : 0] <= zext_ln215_1_reg_750[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln128_reg_673_pp0_iter5_reg == 1'd0))) begin
        and_ln157_2_reg_804 <= and_ln157_2_fu_559_p2;
        ret_22_reg_799 <= ret_22_fu_449_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln128_reg_673 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_V_reg_677 <= b_V_fu_252_p1;
        g_V_reg_684 <= {{imgInput_499_dout[15:8]}};
        r_V_reg_690 <= {{imgInput_499_dout[23:16]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        cols_reg_658 <= p_src_mat_cols_dout;
        rows_reg_653 <= p_src_mat_rows_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln128_reg_673 <= icmp_ln128_fu_247_p2;
        icmp_ln128_reg_673_pp0_iter1_reg <= icmp_ln128_reg_673;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_ln73_reg_663 <= mul_ln73_fu_235_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln128_reg_673_pp0_iter8_reg == 1'd0))) begin
        op_assign_1_reg_819 <= {{grp_fu_632_p3[19:12]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln128_reg_673_pp0_iter3_reg == 1'd0))) begin
        vmin_V_reg_745 <= vmin_V_fu_348_p2;
        zext_ln123_1_reg_730[8 : 0] <= zext_ln123_1_fu_324_p1[8 : 0];
        zext_ln1347_1_reg_735[7 : 0] <= zext_ln1347_1_fu_328_p1[7 : 0];
        zext_ln215_1_reg_750[7 : 0] <= zext_ln215_1_fu_356_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln128_reg_673_pp0_iter2_reg == 1'd0))) begin
        xf_cv_icvSaturate8u_cv_load_2_reg_725 <= xf_cv_icvSaturate8u_cv_q2;
        xf_cv_icvSaturate8u_cv_load_reg_719 <= xf_cv_icvSaturate8u_cv_q3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln128_reg_673_pp0_iter4_reg == 1'd0))) begin
        xf_cv_icvSaturate8u_cv_load_3_reg_761 <= xf_cv_icvSaturate8u_cv_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln128_reg_673_pp0_iter1_reg == 1'd0))) begin
        zext_ln123_reg_696[7 : 0] <= zext_ln123_fu_276_p1[7 : 0];
        zext_ln1347_reg_703[7 : 0] <= zext_ln1347_fu_279_p1[7 : 0];
    end
end

always @ (*) begin
    if ((icmp_ln128_fu_247_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_632_ce = 1'b1;
    end else begin
        grp_fu_632_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_641_ce = 1'b1;
    end else begin
        grp_fu_641_ce = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln128_reg_673 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        imgInput_499_blk_n = imgInput_499_empty_n;
    end else begin
        imgInput_499_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln128_reg_673 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        imgInput_499_read = 1'b1;
    end else begin
        imgInput_499_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_mat_cols_blk_n = p_src_mat_cols_empty_n;
    end else begin
        p_src_mat_cols_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_mat_cols_read = 1'b1;
    end else begin
        p_src_mat_cols_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_mat_rows_blk_n = p_src_mat_rows_empty_n;
    end else begin
        p_src_mat_rows_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_mat_rows_read = 1'b1;
    end else begin
        p_src_mat_rows_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln128_reg_673_pp0_iter9_reg == 1'd0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rgb2hsv_4100_blk_n = rgb2hsv_4100_full_n;
    end else begin
        rgb2hsv_4100_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln128_reg_673_pp0_iter9_reg == 1'd0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rgb2hsv_4100_write = 1'b1;
    end else begin
        rgb2hsv_4100_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0 = 1'b1;
    end else begin
        void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0 = 1'b1;
    end else begin
        void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        xf_cv_icvSaturate8u_cv_ce0 = 1'b1;
    end else begin
        xf_cv_icvSaturate8u_cv_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        xf_cv_icvSaturate8u_cv_ce1 = 1'b1;
    end else begin
        xf_cv_icvSaturate8u_cv_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        xf_cv_icvSaturate8u_cv_ce2 = 1'b1;
    end else begin
        xf_cv_icvSaturate8u_cv_ce2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        xf_cv_icvSaturate8u_cv_ce3 = 1'b1;
    end else begin
        xf_cv_icvSaturate8u_cv_ce3 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln128_fu_247_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter9 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter9 == 1'b0)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln128_fu_247_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln128_fu_241_p2 = (indvar_flatten_reg_218 + 64'd1);

assign add_ln1346_fu_288_p2 = (sub_ln1347_fu_282_p2 + zext_ln1347_fu_279_p1);

assign add_ln157_1_fu_537_p2 = ($signed(zext_ln157_1_fu_533_p1) + $signed(sext_ln157_2_fu_521_p1));

assign add_ln157_2_fu_553_p2 = ($signed(sext_ln157_3_fu_549_p1) + $signed(sext_ln157_1_fu_500_p1));

assign add_ln157_fu_488_p2 = ($signed(zext_ln157_fu_484_p1) + $signed(sext_ln157_fu_472_p1));

assign add_ln161_fu_617_p2 = (select_ln159_fu_609_p3 + trunc_ln159_1_fu_600_p4);

assign add_ln213_1_fu_390_p2 = (add_ln213_fu_385_p2 + xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg);

assign add_ln213_fu_385_p2 = (xf_cv_icvSaturate8u_cv_q1 + b_V_reg_677_pp0_iter4_reg);

assign and_ln157_1_fu_543_p2 = (select_ln1347_1_fu_509_p3 & add_ln157_1_fu_537_p2);

assign and_ln157_2_fu_559_p2 = (select_ln1347_fu_460_p3 & add_ln157_2_fu_553_p2);

assign and_ln157_fu_494_p2 = (select_ln126_1_fu_430_p3 & add_ln157_fu_488_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln128_reg_673_pp0_iter9_reg == 1'd0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (rgb2hsv_4100_full_n == 1'b0)) | ((icmp_ln128_reg_673 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (imgInput_499_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln128_reg_673_pp0_iter9_reg == 1'd0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (rgb2hsv_4100_full_n == 1'b0)) | ((icmp_ln128_reg_673 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (imgInput_499_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln128_reg_673_pp0_iter9_reg == 1'd0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (rgb2hsv_4100_full_n == 1'b0)) | ((icmp_ln128_reg_673 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (imgInput_499_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state10_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state13_pp0_stage0_iter10 = ((icmp_ln128_reg_673_pp0_iter9_reg == 1'd0) & (rgb2hsv_4100_full_n == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((icmp_ln128_reg_673 == 1'd0) & (imgInput_499_empty_n == 1'b0));
end

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign b_V_fu_252_p1 = imgInput_499_dout[7:0];

assign diff_V_fu_418_p2 = (sub_ln213_fu_414_p2 + add_ln213_1_reg_766);

assign grp_fu_632_p0 = void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_q0[19:0];

assign grp_fu_632_p1 = grp_fu_632_p10;

assign grp_fu_632_p10 = diff_V_fu_418_p2;

assign grp_fu_632_p2 = 20'd2048;

assign grp_fu_641_p2 = grp_fu_641_p20;

assign grp_fu_641_p20 = trunc_ln158_fu_576_p1;

assign grp_fu_641_p3 = 30'd2048;

assign icmp_ln128_fu_247_p2 = ((indvar_flatten_reg_218 == mul_ln73_reg_663) ? 1'b1 : 1'b0);

assign mul_ln73_fu_235_p0 = mul_ln73_fu_235_p00;

assign mul_ln73_fu_235_p00 = rows_reg_653;

assign mul_ln73_fu_235_p1 = mul_ln73_fu_235_p10;

assign mul_ln73_fu_235_p10 = cols_reg_658;

assign ret_17_fu_305_p2 = (ret_26_fu_299_p2 ^ 9'd256);

assign ret_19_fu_365_p2 = (ret_27_fu_359_p2 ^ 9'd256);

assign ret_22_fu_449_p2 = (select_ln126_fu_423_p3 & ret_28_fu_445_p2);

assign ret_23_fu_468_p2 = (zext_ln123_reg_696_pp0_iter5_reg - zext_ln215_1_reg_750_pp0_iter5_reg);

assign ret_24_fu_517_p2 = (zext_ln215_1_reg_750_pp0_iter5_reg - zext_ln1347_reg_703_pp0_iter5_reg);

assign ret_25_fu_331_p2 = (zext_ln1347_1_fu_328_p1 - zext_ln123_1_fu_324_p1);

assign ret_26_fu_299_p2 = (zext_ln123_fu_276_p1 - zext_ln1347_fu_279_p1);

assign ret_27_fu_359_p2 = (zext_ln215_fu_352_p1 - zext_ln215_1_fu_356_p1);

assign ret_28_fu_445_p2 = (zext_ln1347_reg_703_pp0_iter5_reg - zext_ln123_reg_696_pp0_iter5_reg);

assign ret_fu_337_p2 = (ret_25_fu_331_p2 + 10'd256);

assign rgb2hsv_4100_din = {{{add_ln213_1_reg_766_pp0_iter9_reg}, {op_assign_1_reg_819}}, {add_ln161_fu_617_p2}};

assign select_ln126_1_fu_430_p3 = ((vg_reg_778[0:0] == 1'b1) ? 11'd2047 : 11'd0);

assign select_ln126_fu_423_p3 = ((vr_reg_772[0:0] == 1'b1) ? 9'd511 : 9'd0);

assign select_ln1347_1_fu_509_p3 = ((xor_ln157_1_fu_504_p2[0:0] == 1'b1) ? 12'd4095 : 12'd0);

assign select_ln1347_fu_460_p3 = ((xor_ln157_fu_455_p2[0:0] == 1'b1) ? 13'd8191 : 13'd0);

assign select_ln159_fu_609_p3 = ((tmp_fu_593_p3[0:0] == 1'b1) ? 8'd180 : 8'd0);

assign sext_ln157_1_fu_500_p1 = $signed(and_ln157_fu_494_p2);

assign sext_ln157_2_fu_521_p1 = $signed(ret_24_fu_517_p2);

assign sext_ln157_3_fu_549_p1 = $signed(and_ln157_1_fu_543_p2);

assign sext_ln157_fu_472_p1 = $signed(ret_23_fu_468_p2);

assign sext_ln534_fu_343_p1 = $signed(ret_fu_337_p2);

assign shl_ln157_1_fu_525_p3 = {{diff_V_fu_418_p2}, {2'd0}};

assign shl_ln_fu_476_p3 = {{diff_V_fu_418_p2}, {1'd0}};

assign sub_ln1347_fu_282_p2 = ($signed(9'd256) - $signed(zext_ln123_fu_276_p1));

assign sub_ln213_fu_414_p2 = (xf_cv_icvSaturate8u_cv_load_3_reg_761 - vmin_V_reg_745_pp0_iter5_reg);

assign tmp_fu_593_p3 = grp_fu_641_p4[32'd29];

assign trunc_ln158_fu_576_p1 = void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_q0[16:0];

assign trunc_ln159_1_fu_600_p4 = {{grp_fu_641_p4[19:12]}};

assign v_3_fu_319_p2 = (zext_ln147_fu_316_p1 + zext_ln123_reg_696_pp0_iter3_reg);

assign v_fu_380_p2 = (zext_ln123_1_reg_730 + zext_ln148_fu_376_p1);

assign vg_fu_403_p2 = ((v_fu_380_p2 == zext_ln870_fu_400_p1) ? 1'b1 : 1'b0);

assign vmin_V_fu_348_p2 = (b_V_reg_677_pp0_iter3_reg - xf_cv_icvSaturate8u_cv_load_2_reg_725);

assign void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_address0 = zext_ln534_9_fu_565_p1;

assign void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0 = zext_ln156_fu_409_p1;

assign vr_fu_395_p2 = ((v_fu_380_p2 == zext_ln1347_1_reg_735) ? 1'b1 : 1'b0);

assign xf_cv_icvSaturate8u_cv_address0 = zext_ln534_8_fu_371_p1;

assign xf_cv_icvSaturate8u_cv_address1 = sext_ln534_fu_343_p1;

assign xf_cv_icvSaturate8u_cv_address2 = zext_ln534_7_fu_311_p1;

assign xf_cv_icvSaturate8u_cv_address3 = zext_ln534_fu_294_p1;

assign xor_ln157_1_fu_504_p2 = (vg_reg_778 ^ 1'd1);

assign xor_ln157_fu_455_p2 = (vr_reg_772 ^ 1'd1);

assign zext_ln123_1_fu_324_p1 = v_3_fu_319_p2;

assign zext_ln123_fu_276_p1 = b_V_reg_677;

assign zext_ln1347_1_fu_328_p1 = r_V_reg_690_pp0_iter3_reg;

assign zext_ln1347_fu_279_p1 = g_V_reg_684;

assign zext_ln147_fu_316_p1 = xf_cv_icvSaturate8u_cv_load_reg_719;

assign zext_ln148_fu_376_p1 = xf_cv_icvSaturate8u_cv_q1;

assign zext_ln156_fu_409_p1 = v_fu_380_p2;

assign zext_ln157_1_fu_533_p1 = shl_ln157_1_fu_525_p3;

assign zext_ln157_fu_484_p1 = shl_ln_fu_476_p3;

assign zext_ln215_1_fu_356_p1 = r_V_reg_690_pp0_iter3_reg;

assign zext_ln215_fu_352_p1 = vmin_V_fu_348_p2;

assign zext_ln534_7_fu_311_p1 = ret_17_fu_305_p2;

assign zext_ln534_8_fu_371_p1 = ret_19_fu_365_p2;

assign zext_ln534_9_fu_565_p1 = diff_V_fu_418_p2;

assign zext_ln534_fu_294_p1 = add_ln1346_fu_288_p2;

assign zext_ln870_fu_400_p1 = g_V_reg_684_pp0_iter4_reg;

always @ (posedge ap_clk) begin
    zext_ln123_reg_696[8] <= 1'b0;
    zext_ln123_reg_696_pp0_iter3_reg[8] <= 1'b0;
    zext_ln123_reg_696_pp0_iter4_reg[8] <= 1'b0;
    zext_ln123_reg_696_pp0_iter5_reg[8] <= 1'b0;
    zext_ln1347_reg_703[8] <= 1'b0;
    zext_ln1347_reg_703_pp0_iter3_reg[8] <= 1'b0;
    zext_ln1347_reg_703_pp0_iter4_reg[8] <= 1'b0;
    zext_ln1347_reg_703_pp0_iter5_reg[8] <= 1'b0;
    zext_ln123_1_reg_730[9] <= 1'b0;
    zext_ln1347_1_reg_735[9:8] <= 2'b00;
    zext_ln215_1_reg_750[8] <= 1'b0;
    zext_ln215_1_reg_750_pp0_iter5_reg[8] <= 1'b0;
end

endmodule //colordetect_accel_bgr2hsv_9_2160_3840_1_s
