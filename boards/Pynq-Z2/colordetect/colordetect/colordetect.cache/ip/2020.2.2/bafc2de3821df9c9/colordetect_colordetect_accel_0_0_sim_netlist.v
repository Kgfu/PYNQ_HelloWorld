// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (lin64) Build 3118627 Tue Feb  9 05:13:49 MST 2021
// Date        : Mon Feb 14 21:23:47 2022
// Host        : ubuntu3 running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ colordetect_colordetect_accel_0_0_sim_netlist.v
// Design      : colordetect_colordetect_accel_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_S_AXI_ADDR_WIDTH = "32" *) (* C_S_AXI_CONTROL_ADDR_WIDTH = "5" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
(* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) 
(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel
   (s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_AWADDR,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_ARADDR,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP,
    ap_clk,
    ap_rst_n,
    interrupt,
    src_TDATA,
    src_TKEEP,
    src_TSTRB,
    src_TUSER,
    src_TLAST,
    src_TID,
    src_TDEST,
    dst_TDATA,
    dst_TKEEP,
    dst_TSTRB,
    dst_TUSER,
    dst_TLAST,
    dst_TID,
    dst_TDEST,
    src_TVALID,
    src_TREADY,
    dst_TVALID,
    dst_TREADY);
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [4:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [4:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input [23:0]src_TDATA;
  input [2:0]src_TKEEP;
  input [2:0]src_TSTRB;
  input [0:0]src_TUSER;
  input [0:0]src_TLAST;
  input [0:0]src_TID;
  input [0:0]src_TDEST;
  output [23:0]dst_TDATA;
  output [2:0]dst_TKEEP;
  output [2:0]dst_TSTRB;
  output [0:0]dst_TUSER;
  output [0:0]dst_TLAST;
  output [0:0]dst_TID;
  output [0:0]dst_TDEST;
  input src_TVALID;
  output src_TREADY;
  output dst_TVALID;
  input dst_TREADY;

  wire \<const0> ;
  wire Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start;
  wire [10:1]add_ln157_1_fu_537_p2;
  wire [9:0]add_ln157_fu_488_p2;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state1_3;
  wire ap_CS_fsm_state1_5;
  wire ap_CS_fsm_state2;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axis2xfMat_24_9_2160_3840_1_U0_ap_start;
  wire [23:0]axis2xfMat_24_9_2160_3840_1_U0_imgInput_420_din;
  wire axis2xfMat_24_9_2160_3840_1_U0_n_10;
  wire axis2xfMat_24_9_2160_3840_1_U0_n_9;
  wire bgr2hsv_9_2160_3840_1_U0_ap_ready;
  wire bgr2hsv_9_2160_3840_1_U0_ap_start;
  wire bgr2hsv_9_2160_3840_1_U0_n_45;
  wire bgr2hsv_9_2160_3840_1_U0_n_53;
  wire bgr2hsv_9_2160_3840_1_U0_n_54;
  wire bgr2hsv_9_2160_3840_1_U0_n_55;
  wire bgr2hsv_9_2160_3840_1_U0_n_56;
  wire bgr2hsv_9_2160_3840_1_U0_n_58;
  wire bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read;
  wire [23:0]bgr2hsv_9_2160_3840_1_U0_rgb2hsv_421_din;
  wire [31:0]cols;
  wire control_s_axi_U_n_75;
  wire [23:0]dst_TDATA;
  wire [0:0]dst_TLAST;
  wire dst_TREADY;
  wire dst_TVALID;
  wire icmp_ln81_fu_161_p2;
  wire [31:0]imgInput_cols_c10_dout;
  wire imgInput_cols_c10_empty_n;
  wire imgInput_cols_c10_full_n;
  wire imgInput_cols_c_U_n_5;
  wire [31:0]imgInput_cols_c_dout;
  wire imgInput_cols_c_empty_n;
  wire imgInput_cols_c_full_n;
  wire imgInput_data_U_n_3;
  wire [23:0]imgInput_data_dout;
  wire imgInput_data_empty_n;
  wire imgInput_data_full_n;
  wire [31:0]imgInput_rows_c9_dout;
  wire imgInput_rows_c9_empty_n;
  wire imgInput_rows_c9_full_n;
  wire [31:0]imgInput_rows_c_dout;
  wire imgInput_rows_c_empty_n;
  wire imgInput_rows_c_full_n;
  wire interrupt;
  wire [9:2]p_0_in;
  wire p_reg_reg_i_64_n_4;
  wire p_reg_reg_i_64_n_6;
  wire p_reg_reg_i_65_n_4;
  wire p_reg_reg_i_65_n_6;
  wire p_reg_reg_i_66_n_3;
  wire p_reg_reg_i_66_n_4;
  wire p_reg_reg_i_66_n_5;
  wire p_reg_reg_i_66_n_6;
  wire p_reg_reg_i_67_n_3;
  wire p_reg_reg_i_67_n_4;
  wire p_reg_reg_i_67_n_5;
  wire p_reg_reg_i_67_n_6;
  wire p_reg_reg_i_68_n_3;
  wire p_reg_reg_i_68_n_4;
  wire p_reg_reg_i_68_n_5;
  wire p_reg_reg_i_68_n_6;
  wire p_reg_reg_i_70_n_3;
  wire p_reg_reg_i_70_n_4;
  wire p_reg_reg_i_70_n_5;
  wire p_reg_reg_i_70_n_6;
  wire p_reg_reg_i_73_n_3;
  wire p_reg_reg_i_75_n_3;
  wire p_reg_reg_i_76_n_3;
  wire p_reg_reg_i_77_n_3;
  wire p_reg_reg_i_78_n_3;
  wire p_reg_reg_i_79_n_3;
  wire p_reg_reg_i_80_n_3;
  wire p_reg_reg_i_81_n_3;
  wire p_reg_reg_i_82_n_3;
  wire p_reg_reg_i_83_n_3;
  wire p_reg_reg_i_84_n_3;
  wire p_reg_reg_i_85_n_3;
  wire p_reg_reg_i_86_n_3;
  wire p_reg_reg_i_87_n_3;
  wire p_reg_reg_i_92_n_3;
  wire p_reg_reg_i_93_n_3;
  wire p_reg_reg_i_94_n_3;
  wire [31:0]rgb2hsv_cols_c_dout;
  wire rgb2hsv_cols_c_empty_n;
  wire rgb2hsv_cols_c_full_n;
  wire rgb2hsv_data_U_n_3;
  wire [23:0]rgb2hsv_data_dout;
  wire rgb2hsv_data_empty_n;
  wire rgb2hsv_data_full_n;
  wire [31:0]rgb2hsv_rows_c_dout;
  wire rgb2hsv_rows_c_empty_n;
  wire rgb2hsv_rows_c_full_n;
  wire [31:0]rows;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [4:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [7:1]sext_ln157_2_fu_521_p1;
  wire [8:0]sext_ln157_fu_472_p1;
  wire shiftReg_ce;
  wire shiftReg_ce_0;
  wire shiftReg_ce_2;
  wire shiftReg_ce_4;
  wire [23:0]src_TDATA;
  wire src_TREADY;
  wire src_TVALID;
  wire start_for_axis2xfMat_24_9_2160_3840_1_U0_U_n_10;
  wire start_for_axis2xfMat_24_9_2160_3840_1_U0_U_n_6;
  wire start_for_axis2xfMat_24_9_2160_3840_1_U0_U_n_7;
  wire start_for_axis2xfMat_24_9_2160_3840_1_U0_U_n_9;
  wire start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n;
  wire start_for_bgr2hsv_9_2160_3840_1_U0_U_n_5;
  wire start_for_bgr2hsv_9_2160_3840_1_U0_full_n;
  wire start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_1;
  wire xfMat2axis_24_9_2160_3840_1_U0_ap_start;
  wire xfMat2axis_24_9_2160_3840_1_U0_img_cols_read;
  wire xfMat2axis_24_9_2160_3840_1_U0_n_4;
  wire xfMat2axis_24_9_2160_3840_1_U0_n_6;
  wire xfMat2axis_24_9_2160_3840_1_U0_n_8;
  wire [3:1]NLW_p_reg_reg_i_64_CO_UNCONNECTED;
  wire [3:2]NLW_p_reg_reg_i_64_O_UNCONNECTED;
  wire [3:1]NLW_p_reg_reg_i_65_CO_UNCONNECTED;
  wire [3:2]NLW_p_reg_reg_i_65_O_UNCONNECTED;

  assign dst_TDEST[0] = \<const0> ;
  assign dst_TID[0] = \<const0> ;
  assign dst_TKEEP[2] = \<const0> ;
  assign dst_TKEEP[1] = \<const0> ;
  assign dst_TKEEP[0] = \<const0> ;
  assign dst_TSTRB[2] = \<const0> ;
  assign dst_TSTRB[1] = \<const0> ;
  assign dst_TSTRB[0] = \<const0> ;
  assign dst_TUSER[0] = \<const0> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0
       (.ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .imgInput_cols_c_full_n(imgInput_cols_c_full_n),
        .imgInput_rows_c_full_n(imgInput_rows_c_full_n),
        .rgb2hsv_cols_c_full_n(rgb2hsv_cols_c_full_n),
        .rgb2hsv_rows_c_full_n(rgb2hsv_rows_c_full_n),
        .start_once_reg(start_once_reg),
        .start_once_reg_reg_0(start_for_axis2xfMat_24_9_2160_3840_1_U0_U_n_6));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_axis2xfMat_24_9_2160_3840_1_s axis2xfMat_24_9_2160_3840_1_U0
       (.\B_V_data_1_state_reg[1] (src_TREADY),
        .CO(icmp_ln81_fu_161_p2),
        .D(imgInput_cols_c_dout),
        .Q({ap_CS_fsm_state2,ap_CS_fsm_state1}),
        .\ap_CS_fsm_reg[0]_0 (imgInput_cols_c_U_n_5),
        .\ap_CS_fsm_reg[1]_0 (axis2xfMat_24_9_2160_3840_1_U0_n_9),
        .\ap_CS_fsm_reg[1]_1 (axis2xfMat_24_9_2160_3840_1_U0_n_10),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\axi_data_V_reg_213_reg[23]_0 (axis2xfMat_24_9_2160_3840_1_U0_imgInput_420_din),
        .axis2xfMat_24_9_2160_3840_1_U0_ap_start(axis2xfMat_24_9_2160_3840_1_U0_ap_start),
        .\i_reg_129_reg[0]_0 (start_for_axis2xfMat_24_9_2160_3840_1_U0_U_n_10),
        .imgInput_cols_c10_full_n(imgInput_cols_c10_full_n),
        .imgInput_cols_c_empty_n(imgInput_cols_c_empty_n),
        .imgInput_data_full_n(imgInput_data_full_n),
        .imgInput_rows_c9_full_n(imgInput_rows_c9_full_n),
        .imgInput_rows_c_empty_n(imgInput_rows_c_empty_n),
        .\rows_reg_185_reg[31]_0 (imgInput_rows_c_dout),
        .shiftReg_ce(shiftReg_ce_0),
        .shiftReg_ce_0(shiftReg_ce),
        .src_TDATA(src_TDATA),
        .src_TVALID(src_TVALID),
        .start_for_bgr2hsv_9_2160_3840_1_U0_full_n(start_for_bgr2hsv_9_2160_3840_1_U0_full_n),
        .start_once_reg(start_once_reg_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_bgr2hsv_9_2160_3840_1_s bgr2hsv_9_2160_3840_1_U0
       (.CO(bgr2hsv_9_2160_3840_1_U0_n_45),
        .D(bgr2hsv_9_2160_3840_1_U0_rgb2hsv_421_din),
        .Q({bgr2hsv_9_2160_3840_1_U0_ap_ready,ap_CS_fsm_state1_3}),
        .add_ln157_1_fu_537_p2(add_ln157_1_fu_537_p2),
        .add_ln157_fu_488_p2(add_ln157_fu_488_p2),
        .\ap_CS_fsm_reg[0]_0 (bgr2hsv_9_2160_3840_1_U0_n_58),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .bgr2hsv_9_2160_3840_1_U0_ap_start(bgr2hsv_9_2160_3840_1_U0_ap_start),
        .bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read(bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read),
        .imgInput_cols_c10_dout(imgInput_cols_c10_dout),
        .imgInput_cols_c10_empty_n(imgInput_cols_c10_empty_n),
        .imgInput_data_dout(imgInput_data_dout),
        .imgInput_data_empty_n(imgInput_data_empty_n),
        .imgInput_rows_c9_dout(imgInput_rows_c9_dout),
        .imgInput_rows_c9_empty_n(imgInput_rows_c9_empty_n),
        .int_ap_idle_reg(ap_CS_fsm_state1_5),
        .int_ap_idle_reg_0(ap_CS_fsm_state1),
        .internal_empty_n_reg(bgr2hsv_9_2160_3840_1_U0_n_55),
        .\mOutPtr_reg[0] (bgr2hsv_9_2160_3840_1_U0_n_54),
        .\mOutPtr_reg[0]_0 (bgr2hsv_9_2160_3840_1_U0_n_56),
        .\mOutPtr_reg[0]_1 (imgInput_data_U_n_3),
        .\mOutPtr_reg[0]_2 (xfMat2axis_24_9_2160_3840_1_U0_n_8),
        .\mOutPtr_reg[0]_3 (rgb2hsv_data_U_n_3),
        .p_0_in(p_0_in),
        .p_reg_reg_i_26_0(p_reg_reg_i_64_n_4),
        .p_reg_reg_i_26_1(p_reg_reg_i_65_n_4),
        .rgb2hsv_data_full_n(rgb2hsv_data_full_n),
        .sext_ln157_fu_472_p1(sext_ln157_fu_472_p1[7:0]),
        .shiftReg_ce(shiftReg_ce_2),
        .shiftReg_ce_0(shiftReg_ce_0),
        .xfMat2axis_24_9_2160_3840_1_U0_ap_start(xfMat2axis_24_9_2160_3840_1_U0_ap_start),
        .\zext_ln215_1_reg_750_pp0_iter5_reg_reg[7]_0 (sext_ln157_2_fu_521_p1),
        .\zext_ln215_1_reg_750_pp0_iter5_reg_reg[7]_1 (bgr2hsv_9_2160_3840_1_U0_n_53));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_control_s_axi control_s_axi_U
       (.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start(Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_control_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_control_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_control_WREADY),
        .Q(rows),
        .ap_clk(ap_clk),
        .ap_idle(ap_idle),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .int_ap_start_reg_0(control_s_axi_U_n_75),
        .\int_cols_reg[31]_0 (cols),
        .\int_isr_reg[0]_0 (xfMat2axis_24_9_2160_3840_1_U0_n_4),
        .interrupt(interrupt),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .shiftReg_ce(shiftReg_ce_4),
        .start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n(start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n),
        .start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n(start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n),
        .start_once_reg(start_once_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d2_S imgInput_cols_c10_U
       (.D(imgInput_cols_c_dout),
        .Q(ap_CS_fsm_state1_3),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .bgr2hsv_9_2160_3840_1_U0_ap_start(bgr2hsv_9_2160_3840_1_U0_ap_start),
        .bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read(bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read),
        .imgInput_cols_c10_dout(imgInput_cols_c10_dout),
        .imgInput_cols_c10_empty_n(imgInput_cols_c10_empty_n),
        .imgInput_cols_c10_full_n(imgInput_cols_c10_full_n),
        .imgInput_rows_c9_empty_n(imgInput_rows_c9_empty_n),
        .internal_full_n_reg_0(start_for_bgr2hsv_9_2160_3840_1_U0_U_n_5),
        .shiftReg_ce(shiftReg_ce));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d2_S_0 imgInput_cols_c_U
       (.D(imgInput_cols_c_dout),
        .E(start_for_axis2xfMat_24_9_2160_3840_1_U0_U_n_7),
        .\ap_CS_fsm_reg[0] (start_for_axis2xfMat_24_9_2160_3840_1_U0_U_n_10),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .imgInput_cols_c10_full_n(imgInput_cols_c10_full_n),
        .imgInput_cols_c_empty_n(imgInput_cols_c_empty_n),
        .imgInput_cols_c_full_n(imgInput_cols_c_full_n),
        .imgInput_rows_c9_full_n(imgInput_rows_c9_full_n),
        .imgInput_rows_c_empty_n(imgInput_rows_c_empty_n),
        .in(cols),
        .internal_empty_n_reg_0(imgInput_cols_c_U_n_5),
        .shiftReg_ce(shiftReg_ce_4),
        .shiftReg_ce_0(shiftReg_ce));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w24_d2_S imgInput_data_U
       (.D(axis2xfMat_24_9_2160_3840_1_U0_imgInput_420_din),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .imgInput_data_dout(imgInput_data_dout),
        .imgInput_data_empty_n(imgInput_data_empty_n),
        .imgInput_data_full_n(imgInput_data_full_n),
        .\mOutPtr_reg[0]_0 (imgInput_data_U_n_3),
        .\mOutPtr_reg[0]_1 (bgr2hsv_9_2160_3840_1_U0_n_54),
        .\mOutPtr_reg[1]_0 (bgr2hsv_9_2160_3840_1_U0_n_55),
        .shiftReg_ce(shiftReg_ce_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d2_S_1 imgInput_rows_c9_U
       (.D(imgInput_rows_c_dout),
        .Q(ap_CS_fsm_state1_3),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .bgr2hsv_9_2160_3840_1_U0_ap_start(bgr2hsv_9_2160_3840_1_U0_ap_start),
        .bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read(bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read),
        .imgInput_cols_c10_empty_n(imgInput_cols_c10_empty_n),
        .imgInput_rows_c9_dout(imgInput_rows_c9_dout),
        .imgInput_rows_c9_empty_n(imgInput_rows_c9_empty_n),
        .imgInput_rows_c9_full_n(imgInput_rows_c9_full_n),
        .internal_full_n_reg_0(start_for_bgr2hsv_9_2160_3840_1_U0_U_n_5),
        .shiftReg_ce(shiftReg_ce));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d2_S_2 imgInput_rows_c_U
       (.D(imgInput_rows_c_dout),
        .E(start_for_axis2xfMat_24_9_2160_3840_1_U0_U_n_7),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .imgInput_rows_c_empty_n(imgInput_rows_c_empty_n),
        .imgInput_rows_c_full_n(imgInput_rows_c_full_n),
        .in(rows),
        .shiftReg_ce(shiftReg_ce),
        .shiftReg_ce_0(shiftReg_ce_4));
  CARRY4 p_reg_reg_i_64
       (.CI(p_reg_reg_i_68_n_3),
        .CO({NLW_p_reg_reg_i_64_CO_UNCONNECTED[3],p_reg_reg_i_64_n_4,NLW_p_reg_reg_i_64_CO_UNCONNECTED[1],p_reg_reg_i_64_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,bgr2hsv_9_2160_3840_1_U0_n_45,p_0_in[9]}),
        .O({NLW_p_reg_reg_i_64_O_UNCONNECTED[3:2],add_ln157_fu_488_p2[9:8]}),
        .S({1'b0,1'b1,sext_ln157_fu_472_p1[8],p_reg_reg_i_73_n_3}));
  CARRY4 p_reg_reg_i_65
       (.CI(p_reg_reg_i_66_n_3),
        .CO({NLW_p_reg_reg_i_65_CO_UNCONNECTED[3],p_reg_reg_i_65_n_4,NLW_p_reg_reg_i_65_CO_UNCONNECTED[1],p_reg_reg_i_65_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_0_in[9],bgr2hsv_9_2160_3840_1_U0_n_53}),
        .O({NLW_p_reg_reg_i_65_O_UNCONNECTED[3:2],add_ln157_1_fu_537_p2[10:9]}),
        .S({1'b0,1'b1,p_reg_reg_i_75_n_3,p_reg_reg_i_76_n_3}));
  CARRY4 p_reg_reg_i_66
       (.CI(p_reg_reg_i_67_n_3),
        .CO({p_reg_reg_i_66_n_3,p_reg_reg_i_66_n_4,p_reg_reg_i_66_n_5,p_reg_reg_i_66_n_6}),
        .CYINIT(1'b0),
        .DI(p_0_in[8:5]),
        .O(add_ln157_1_fu_537_p2[8:5]),
        .S({p_reg_reg_i_77_n_3,p_reg_reg_i_78_n_3,p_reg_reg_i_79_n_3,p_reg_reg_i_80_n_3}));
  CARRY4 p_reg_reg_i_67
       (.CI(1'b0),
        .CO({p_reg_reg_i_67_n_3,p_reg_reg_i_67_n_4,p_reg_reg_i_67_n_5,p_reg_reg_i_67_n_6}),
        .CYINIT(1'b0),
        .DI({p_0_in[4:2],1'b0}),
        .O(add_ln157_1_fu_537_p2[4:1]),
        .S({p_reg_reg_i_81_n_3,p_reg_reg_i_82_n_3,p_reg_reg_i_83_n_3,sext_ln157_2_fu_521_p1[1]}));
  CARRY4 p_reg_reg_i_68
       (.CI(p_reg_reg_i_70_n_3),
        .CO({p_reg_reg_i_68_n_3,p_reg_reg_i_68_n_4,p_reg_reg_i_68_n_5,p_reg_reg_i_68_n_6}),
        .CYINIT(1'b0),
        .DI(p_0_in[8:5]),
        .O(add_ln157_fu_488_p2[7:4]),
        .S({p_reg_reg_i_84_n_3,p_reg_reg_i_85_n_3,p_reg_reg_i_86_n_3,p_reg_reg_i_87_n_3}));
  CARRY4 p_reg_reg_i_70
       (.CI(1'b0),
        .CO({p_reg_reg_i_70_n_3,p_reg_reg_i_70_n_4,p_reg_reg_i_70_n_5,p_reg_reg_i_70_n_6}),
        .CYINIT(1'b0),
        .DI({p_0_in[4:2],1'b0}),
        .O(add_ln157_fu_488_p2[3:0]),
        .S({p_reg_reg_i_92_n_3,p_reg_reg_i_93_n_3,p_reg_reg_i_94_n_3,sext_ln157_fu_472_p1[0]}));
  LUT1 #(
    .INIT(2'h1)) 
    p_reg_reg_i_72
       (.I0(bgr2hsv_9_2160_3840_1_U0_n_45),
        .O(sext_ln157_fu_472_p1[8]));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_73
       (.I0(bgr2hsv_9_2160_3840_1_U0_n_45),
        .I1(p_0_in[9]),
        .O(p_reg_reg_i_73_n_3));
  LUT1 #(
    .INIT(2'h1)) 
    p_reg_reg_i_75
       (.I0(p_0_in[9]),
        .O(p_reg_reg_i_75_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_76
       (.I0(bgr2hsv_9_2160_3840_1_U0_n_53),
        .I1(p_0_in[9]),
        .O(p_reg_reg_i_76_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_77
       (.I0(bgr2hsv_9_2160_3840_1_U0_n_53),
        .I1(p_0_in[8]),
        .O(p_reg_reg_i_77_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_reg_reg_i_78
       (.I0(p_0_in[7]),
        .I1(sext_ln157_2_fu_521_p1[7]),
        .O(p_reg_reg_i_78_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_reg_reg_i_79
       (.I0(p_0_in[6]),
        .I1(sext_ln157_2_fu_521_p1[6]),
        .O(p_reg_reg_i_79_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_reg_reg_i_80
       (.I0(p_0_in[5]),
        .I1(sext_ln157_2_fu_521_p1[5]),
        .O(p_reg_reg_i_80_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_reg_reg_i_81
       (.I0(p_0_in[4]),
        .I1(sext_ln157_2_fu_521_p1[4]),
        .O(p_reg_reg_i_81_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_reg_reg_i_82
       (.I0(p_0_in[3]),
        .I1(sext_ln157_2_fu_521_p1[3]),
        .O(p_reg_reg_i_82_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_reg_reg_i_83
       (.I0(p_0_in[2]),
        .I1(sext_ln157_2_fu_521_p1[2]),
        .O(p_reg_reg_i_83_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_reg_reg_i_84
       (.I0(p_0_in[8]),
        .I1(sext_ln157_fu_472_p1[7]),
        .O(p_reg_reg_i_84_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_reg_reg_i_85
       (.I0(p_0_in[7]),
        .I1(sext_ln157_fu_472_p1[6]),
        .O(p_reg_reg_i_85_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_reg_reg_i_86
       (.I0(p_0_in[6]),
        .I1(sext_ln157_fu_472_p1[5]),
        .O(p_reg_reg_i_86_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_reg_reg_i_87
       (.I0(p_0_in[5]),
        .I1(sext_ln157_fu_472_p1[4]),
        .O(p_reg_reg_i_87_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_reg_reg_i_92
       (.I0(p_0_in[4]),
        .I1(sext_ln157_fu_472_p1[3]),
        .O(p_reg_reg_i_92_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_reg_reg_i_93
       (.I0(p_0_in[3]),
        .I1(sext_ln157_fu_472_p1[2]),
        .O(p_reg_reg_i_93_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_reg_reg_i_94
       (.I0(p_0_in[2]),
        .I1(sext_ln157_fu_472_p1[1]),
        .O(p_reg_reg_i_94_n_3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d4_S rgb2hsv_cols_c_U
       (.E(start_for_axis2xfMat_24_9_2160_3840_1_U0_U_n_9),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .in(cols),
        .out(rgb2hsv_cols_c_dout),
        .rgb2hsv_cols_c_empty_n(rgb2hsv_cols_c_empty_n),
        .rgb2hsv_cols_c_full_n(rgb2hsv_cols_c_full_n),
        .shiftReg_ce(shiftReg_ce_4),
        .xfMat2axis_24_9_2160_3840_1_U0_img_cols_read(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w24_d2_S_3 rgb2hsv_data_U
       (.D(rgb2hsv_data_dout),
        .\SRL_SIG_reg[0][23] (bgr2hsv_9_2160_3840_1_U0_rgb2hsv_421_din),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\mOutPtr_reg[0]_0 (rgb2hsv_data_U_n_3),
        .\mOutPtr_reg[0]_1 (bgr2hsv_9_2160_3840_1_U0_n_56),
        .\mOutPtr_reg[1]_0 (xfMat2axis_24_9_2160_3840_1_U0_n_8),
        .rgb2hsv_data_empty_n(rgb2hsv_data_empty_n),
        .rgb2hsv_data_full_n(rgb2hsv_data_full_n),
        .shiftReg_ce(shiftReg_ce_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d4_S_4 rgb2hsv_rows_c_U
       (.E(start_for_axis2xfMat_24_9_2160_3840_1_U0_U_n_9),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .in(rows),
        .out(rgb2hsv_rows_c_dout),
        .rgb2hsv_rows_c_empty_n(rgb2hsv_rows_c_empty_n),
        .rgb2hsv_rows_c_full_n(rgb2hsv_rows_c_full_n),
        .shiftReg_ce(shiftReg_ce_4),
        .xfMat2axis_24_9_2160_3840_1_U0_img_cols_read(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_start_for_axis2xfMat_24_9_2160_3840_1_U0 start_for_axis2xfMat_24_9_2160_3840_1_U0_U
       (.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start(Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start),
        .CO(icmp_ln81_fu_161_p2),
        .E(start_for_axis2xfMat_24_9_2160_3840_1_U0_U_n_7),
        .Q(ap_CS_fsm_state1_5),
        .ap_clk(ap_clk),
        .ap_idle(ap_idle),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axis2xfMat_24_9_2160_3840_1_U0_ap_start(axis2xfMat_24_9_2160_3840_1_U0_ap_start),
        .imgInput_cols_c_full_n(imgInput_cols_c_full_n),
        .imgInput_rows_c_full_n(imgInput_rows_c_full_n),
        .int_ap_idle_reg(bgr2hsv_9_2160_3840_1_U0_n_58),
        .internal_empty_n_reg_0(start_for_axis2xfMat_24_9_2160_3840_1_U0_U_n_9),
        .internal_empty_n_reg_1(start_for_axis2xfMat_24_9_2160_3840_1_U0_U_n_10),
        .internal_empty_n_reg_2(axis2xfMat_24_9_2160_3840_1_U0_n_10),
        .internal_full_n_reg_0(start_for_axis2xfMat_24_9_2160_3840_1_U0_U_n_6),
        .internal_full_n_reg_1(axis2xfMat_24_9_2160_3840_1_U0_n_9),
        .\mOutPtr_reg[1]_0 (control_s_axi_U_n_75),
        .\mOutPtr_reg[1]_1 (ap_CS_fsm_state2),
        .rgb2hsv_cols_c_empty_n(rgb2hsv_cols_c_empty_n),
        .rgb2hsv_cols_c_full_n(rgb2hsv_cols_c_full_n),
        .rgb2hsv_rows_c_empty_n(rgb2hsv_rows_c_empty_n),
        .rgb2hsv_rows_c_full_n(rgb2hsv_rows_c_full_n),
        .shiftReg_ce(shiftReg_ce_4),
        .shiftReg_ce_1(shiftReg_ce),
        .start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n(start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n),
        .start_for_bgr2hsv_9_2160_3840_1_U0_full_n(start_for_bgr2hsv_9_2160_3840_1_U0_full_n),
        .start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n(start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n),
        .start_once_reg(start_once_reg),
        .start_once_reg_0(start_once_reg_1),
        .xfMat2axis_24_9_2160_3840_1_U0_ap_start(xfMat2axis_24_9_2160_3840_1_U0_ap_start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_start_for_bgr2hsv_9_2160_3840_1_U0 start_for_bgr2hsv_9_2160_3840_1_U0_U
       (.Q({bgr2hsv_9_2160_3840_1_U0_ap_ready,ap_CS_fsm_state1_3}),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axis2xfMat_24_9_2160_3840_1_U0_ap_start(axis2xfMat_24_9_2160_3840_1_U0_ap_start),
        .bgr2hsv_9_2160_3840_1_U0_ap_start(bgr2hsv_9_2160_3840_1_U0_ap_start),
        .imgInput_cols_c10_empty_n(imgInput_cols_c10_empty_n),
        .imgInput_rows_c9_empty_n(imgInput_rows_c9_empty_n),
        .internal_empty_n_reg_0(start_for_bgr2hsv_9_2160_3840_1_U0_U_n_5),
        .\mOutPtr_reg[1]_0 (start_for_axis2xfMat_24_9_2160_3840_1_U0_U_n_10),
        .start_for_bgr2hsv_9_2160_3840_1_U0_full_n(start_for_bgr2hsv_9_2160_3840_1_U0_full_n),
        .start_once_reg(start_once_reg_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_start_for_xfMat2axis_24_9_2160_3840_1_U0 start_for_xfMat2axis_24_9_2160_3840_1_U0_U
       (.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start(Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\mOutPtr_reg[0]_0 (xfMat2axis_24_9_2160_3840_1_U0_n_6),
        .\mOutPtr_reg[2]_0 (xfMat2axis_24_9_2160_3840_1_U0_n_4),
        .\mOutPtr_reg[2]_1 (control_s_axi_U_n_75),
        .start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n(start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n),
        .start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n(start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n),
        .start_once_reg(start_once_reg),
        .xfMat2axis_24_9_2160_3840_1_U0_ap_start(xfMat2axis_24_9_2160_3840_1_U0_ap_start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_xfMat2axis_24_9_2160_3840_1_s xfMat2axis_24_9_2160_3840_1_U0
       (.\B_V_data_1_state_reg[0] (dst_TVALID),
        .D(rgb2hsv_data_dout),
        .Q(ap_CS_fsm_state1_5),
        .\ap_CS_fsm_reg[1]_0 (xfMat2axis_24_9_2160_3840_1_U0_n_4),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\cols_reg_211_reg[31]_0 (rgb2hsv_cols_c_dout),
        .dst_TDATA(dst_TDATA),
        .dst_TLAST(dst_TLAST),
        .dst_TREADY(dst_TREADY),
        .\icmp_ln108_reg_245_reg[0]_0 (xfMat2axis_24_9_2160_3840_1_U0_n_8),
        .internal_empty_n_reg(xfMat2axis_24_9_2160_3840_1_U0_n_6),
        .rgb2hsv_cols_c_empty_n(rgb2hsv_cols_c_empty_n),
        .rgb2hsv_data_empty_n(rgb2hsv_data_empty_n),
        .rgb2hsv_rows_c_empty_n(rgb2hsv_rows_c_empty_n),
        .\rows_reg_206_reg[31]_0 (rgb2hsv_rows_c_dout),
        .xfMat2axis_24_9_2160_3840_1_U0_ap_start(xfMat2axis_24_9_2160_3840_1_U0_ap_start),
        .xfMat2axis_24_9_2160_3840_1_U0_img_cols_read(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc
   (start_once_reg,
    ap_rst_n_inv,
    ap_clk,
    start_once_reg_reg_0,
    rgb2hsv_cols_c_full_n,
    imgInput_rows_c_full_n,
    rgb2hsv_rows_c_full_n,
    imgInput_cols_c_full_n);
  output start_once_reg;
  input ap_rst_n_inv;
  input ap_clk;
  input start_once_reg_reg_0;
  input rgb2hsv_cols_c_full_n;
  input imgInput_rows_c_full_n;
  input rgb2hsv_rows_c_full_n;
  input imgInput_cols_c_full_n;

  wire ap_clk;
  wire ap_rst_n_inv;
  wire imgInput_cols_c_full_n;
  wire imgInput_rows_c_full_n;
  wire rgb2hsv_cols_c_full_n;
  wire rgb2hsv_rows_c_full_n;
  wire start_once_reg;
  wire start_once_reg_i_1__0_n_3;
  wire start_once_reg_reg_0;

  LUT6 #(
    .INIT(64'h8BBBBBBBBBBBBBBB)) 
    start_once_reg_i_1__0
       (.I0(start_once_reg),
        .I1(start_once_reg_reg_0),
        .I2(rgb2hsv_cols_c_full_n),
        .I3(imgInput_rows_c_full_n),
        .I4(rgb2hsv_rows_c_full_n),
        .I5(imgInput_cols_c_full_n),
        .O(start_once_reg_i_1__0_n_3));
  FDRE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(start_once_reg_i_1__0_n_3),
        .Q(start_once_reg),
        .R(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_ama_addmuladd_13s_9s_17ns_13ns_30_4_1
   (P,
    S,
    p_reg_reg,
    grp_fu_632_ce,
    ap_clk,
    B,
    icmp_ln128_reg_673_pp0_iter5_reg,
    ap_block_pp0_stage0_11001,
    vr_reg_772,
    CO,
    p_reg_reg_0,
    add_ln157_2_fu_553_p2,
    ret_14_fu_445_p20_out);
  output [6:0]P;
  output [2:0]S;
  output [0:0]p_reg_reg;
  input grp_fu_632_ce;
  input ap_clk;
  input [16:0]B;
  input icmp_ln128_reg_673_pp0_iter5_reg;
  input ap_block_pp0_stage0_11001;
  input vr_reg_772;
  input [0:0]CO;
  input [0:0]p_reg_reg_0;
  input [11:0]add_ln157_2_fu_553_p2;
  input [7:0]ret_14_fu_445_p20_out;

  wire [16:0]B;
  wire [0:0]CO;
  wire [6:0]P;
  wire [2:0]S;
  wire [11:0]add_ln157_2_fu_553_p2;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire grp_fu_632_ce;
  wire icmp_ln128_reg_673_pp0_iter5_reg;
  wire [0:0]p_reg_reg;
  wire [0:0]p_reg_reg_0;
  wire [7:0]ret_14_fu_445_p20_out;
  wire vr_reg_772;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_ama_addmuladd_13s_9s_17ns_13ns_30_4_1_DSP48_1 colordetect_accel_ama_addmuladd_13s_9s_17ns_13ns_30_4_1_DSP48_1_U
       (.B(B),
        .CO(CO),
        .P(P),
        .S(S),
        .add_ln157_2_fu_553_p2(add_ln157_2_fu_553_p2),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .grp_fu_632_ce(grp_fu_632_ce),
        .icmp_ln128_reg_673_pp0_iter5_reg(icmp_ln128_reg_673_pp0_iter5_reg),
        .p_reg_reg_0(p_reg_reg),
        .p_reg_reg_1(p_reg_reg_0),
        .ret_14_fu_445_p20_out(ret_14_fu_445_p20_out),
        .vr_reg_772(vr_reg_772));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_ama_addmuladd_13s_9s_17ns_13ns_30_4_1_DSP48_1
   (P,
    S,
    p_reg_reg_0,
    grp_fu_632_ce,
    ap_clk,
    B,
    icmp_ln128_reg_673_pp0_iter5_reg,
    ap_block_pp0_stage0_11001,
    vr_reg_772,
    CO,
    p_reg_reg_1,
    add_ln157_2_fu_553_p2,
    ret_14_fu_445_p20_out);
  output [6:0]P;
  output [2:0]S;
  output [0:0]p_reg_reg_0;
  input grp_fu_632_ce;
  input ap_clk;
  input [16:0]B;
  input icmp_ln128_reg_673_pp0_iter5_reg;
  input ap_block_pp0_stage0_11001;
  input vr_reg_772;
  input [0:0]CO;
  input [0:0]p_reg_reg_1;
  input [11:0]add_ln157_2_fu_553_p2;
  input [7:0]ret_14_fu_445_p20_out;

  wire [16:0]B;
  wire [0:0]CO;
  wire [6:0]P;
  wire [2:0]S;
  wire [11:0]add_ln157_2_fu_553_p2;
  wire [11:0]and_ln157_2_fu_559_p2;
  wire and_ln157_2_reg_8040;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire grp_fu_632_ce;
  wire icmp_ln128_reg_673_pp0_iter5_reg;
  wire [0:0]p_reg_reg_0;
  wire [0:0]p_reg_reg_1;
  wire p_reg_reg_i_16_n_3;
  wire p_reg_reg_i_3__0_n_3;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_106;
  wire p_reg_reg_n_107;
  wire p_reg_reg_n_108;
  wire p_reg_reg_n_80;
  wire p_reg_reg_n_81;
  wire p_reg_reg_n_82;
  wire p_reg_reg_n_83;
  wire p_reg_reg_n_84;
  wire p_reg_reg_n_85;
  wire p_reg_reg_n_86;
  wire p_reg_reg_n_87;
  wire p_reg_reg_n_88;
  wire p_reg_reg_n_97;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire [7:0]ret_14_fu_445_p20_out;
  wire [7:0]ret_8_fu_449_p2;
  wire [7:6]trunc_ln159_1_fu_600_p4;
  wire vr_reg_772;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:30]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    \SRL_SIG[0][4]_i_3 
       (.I0(P[4]),
        .I1(P[6]),
        .O(p_reg_reg_0));
  LUT3 #(
    .INIT(8'h4B)) 
    \SRL_SIG[0][7]_i_2 
       (.I0(P[6]),
        .I1(trunc_ln159_1_fu_600_p4[6]),
        .I2(trunc_ln159_1_fu_600_p4[7]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h69)) 
    \SRL_SIG[0][7]_i_3 
       (.I0(P[5]),
        .I1(trunc_ln159_1_fu_600_p4[6]),
        .I2(P[6]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    \SRL_SIG[0][7]_i_4 
       (.I0(P[4]),
        .I1(P[5]),
        .O(S[0]));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("TRUE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,p_reg_reg_i_16_n_3,ret_8_fu_449_p2}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(and_ln157_2_reg_8040),
        .CEAD(grp_fu_632_ce),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(grp_fu_632_ce),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(and_ln157_2_reg_8040),
        .CEINMODE(1'b0),
        .CEM(grp_fu_632_ce),
        .CEP(grp_fu_632_ce),
        .CLK(ap_clk),
        .D({p_reg_reg_i_3__0_n_3,p_reg_reg_i_3__0_n_3,p_reg_reg_i_3__0_n_3,p_reg_reg_i_3__0_n_3,p_reg_reg_i_3__0_n_3,p_reg_reg_i_3__0_n_3,p_reg_reg_i_3__0_n_3,p_reg_reg_i_3__0_n_3,p_reg_reg_i_3__0_n_3,p_reg_reg_i_3__0_n_3,p_reg_reg_i_3__0_n_3,p_reg_reg_i_3__0_n_3,p_reg_reg_i_3__0_n_3,and_ln157_2_fu_559_p2}),
        .INMODE({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:30],P[6],p_reg_reg_n_80,p_reg_reg_n_81,p_reg_reg_n_82,p_reg_reg_n_83,p_reg_reg_n_84,p_reg_reg_n_85,p_reg_reg_n_86,p_reg_reg_n_87,p_reg_reg_n_88,trunc_ln159_1_fu_600_p4,P[5:0],p_reg_reg_n_97,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105,p_reg_reg_n_106,p_reg_reg_n_107,p_reg_reg_n_108}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h1)) 
    p_reg_reg_i_1
       (.I0(icmp_ln128_reg_673_pp0_iter5_reg),
        .I1(ap_block_pp0_stage0_11001),
        .O(and_ln157_2_reg_8040));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_10
       (.I0(add_ln157_2_fu_553_p2[5]),
        .I1(vr_reg_772),
        .O(and_ln157_2_fu_559_p2[5]));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_11
       (.I0(add_ln157_2_fu_553_p2[4]),
        .I1(vr_reg_772),
        .O(and_ln157_2_fu_559_p2[4]));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_12
       (.I0(add_ln157_2_fu_553_p2[3]),
        .I1(vr_reg_772),
        .O(and_ln157_2_fu_559_p2[3]));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_13
       (.I0(add_ln157_2_fu_553_p2[2]),
        .I1(vr_reg_772),
        .O(and_ln157_2_fu_559_p2[2]));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_14
       (.I0(add_ln157_2_fu_553_p2[1]),
        .I1(vr_reg_772),
        .O(and_ln157_2_fu_559_p2[1]));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_15
       (.I0(add_ln157_2_fu_553_p2[0]),
        .I1(vr_reg_772),
        .O(and_ln157_2_fu_559_p2[0]));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_16
       (.I0(vr_reg_772),
        .I1(p_reg_reg_1),
        .O(p_reg_reg_i_16_n_3));
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_17
       (.I0(vr_reg_772),
        .I1(ret_14_fu_445_p20_out[7]),
        .O(ret_8_fu_449_p2[7]));
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_18
       (.I0(vr_reg_772),
        .I1(ret_14_fu_445_p20_out[6]),
        .O(ret_8_fu_449_p2[6]));
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_19
       (.I0(vr_reg_772),
        .I1(ret_14_fu_445_p20_out[5]),
        .O(ret_8_fu_449_p2[5]));
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_20
       (.I0(vr_reg_772),
        .I1(ret_14_fu_445_p20_out[4]),
        .O(ret_8_fu_449_p2[4]));
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_21
       (.I0(vr_reg_772),
        .I1(ret_14_fu_445_p20_out[3]),
        .O(ret_8_fu_449_p2[3]));
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_22
       (.I0(vr_reg_772),
        .I1(ret_14_fu_445_p20_out[2]),
        .O(ret_8_fu_449_p2[2]));
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_23
       (.I0(vr_reg_772),
        .I1(ret_14_fu_445_p20_out[1]),
        .O(ret_8_fu_449_p2[1]));
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_24
       (.I0(vr_reg_772),
        .I1(ret_14_fu_445_p20_out[0]),
        .O(ret_8_fu_449_p2[0]));
  LUT2 #(
    .INIT(4'h1)) 
    p_reg_reg_i_3__0
       (.I0(vr_reg_772),
        .I1(CO),
        .O(p_reg_reg_i_3__0_n_3));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_4
       (.I0(add_ln157_2_fu_553_p2[11]),
        .I1(vr_reg_772),
        .O(and_ln157_2_fu_559_p2[11]));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_5
       (.I0(add_ln157_2_fu_553_p2[10]),
        .I1(vr_reg_772),
        .O(and_ln157_2_fu_559_p2[10]));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_6
       (.I0(add_ln157_2_fu_553_p2[9]),
        .I1(vr_reg_772),
        .O(and_ln157_2_fu_559_p2[9]));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_7
       (.I0(add_ln157_2_fu_553_p2[8]),
        .I1(vr_reg_772),
        .O(and_ln157_2_fu_559_p2[8]));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_8
       (.I0(add_ln157_2_fu_553_p2[7]),
        .I1(vr_reg_772),
        .O(and_ln157_2_fu_559_p2[7]));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_9
       (.I0(add_ln157_2_fu_553_p2[6]),
        .I1(vr_reg_772),
        .O(and_ln157_2_fu_559_p2[6]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_axis2xfMat_24_9_2160_3840_1_s
   (\B_V_data_1_state_reg[1] ,
    CO,
    start_once_reg,
    Q,
    shiftReg_ce,
    \ap_CS_fsm_reg[1]_0 ,
    \ap_CS_fsm_reg[1]_1 ,
    shiftReg_ce_0,
    \axi_data_V_reg_213_reg[23]_0 ,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    imgInput_data_full_n,
    src_TVALID,
    \ap_CS_fsm_reg[0]_0 ,
    axis2xfMat_24_9_2160_3840_1_U0_ap_start,
    \i_reg_129_reg[0]_0 ,
    imgInput_rows_c_empty_n,
    imgInput_rows_c9_full_n,
    imgInput_cols_c10_full_n,
    imgInput_cols_c_empty_n,
    start_for_bgr2hsv_9_2160_3840_1_U0_full_n,
    D,
    \rows_reg_185_reg[31]_0 ,
    src_TDATA);
  output \B_V_data_1_state_reg[1] ;
  output [0:0]CO;
  output start_once_reg;
  output [1:0]Q;
  output shiftReg_ce;
  output \ap_CS_fsm_reg[1]_0 ;
  output \ap_CS_fsm_reg[1]_1 ;
  output shiftReg_ce_0;
  output [23:0]\axi_data_V_reg_213_reg[23]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input imgInput_data_full_n;
  input src_TVALID;
  input \ap_CS_fsm_reg[0]_0 ;
  input axis2xfMat_24_9_2160_3840_1_U0_ap_start;
  input \i_reg_129_reg[0]_0 ;
  input imgInput_rows_c_empty_n;
  input imgInput_rows_c9_full_n;
  input imgInput_cols_c10_full_n;
  input imgInput_cols_c_empty_n;
  input start_for_bgr2hsv_9_2160_3840_1_U0_full_n;
  input [31:0]D;
  input [31:0]\rows_reg_185_reg[31]_0 ;
  input [23:0]src_TDATA;

  wire B_V_data_1_sel0;
  wire \B_V_data_1_state_reg[1] ;
  wire [0:0]CO;
  wire [31:0]D;
  wire [1:0]Q;
  wire ap_CS_fsm_pp0_stage0;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg[1]_1 ;
  wire ap_CS_fsm_state5;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter00;
  wire ap_enable_reg_pp0_iter1_reg_n_3;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axi_data_V_reg_2130;
  wire [23:0]\axi_data_V_reg_213_reg[23]_0 ;
  wire axis2xfMat_24_9_2160_3840_1_U0_ap_start;
  wire [31:0]cols_reg_190;
  wire [11:0]i_2_fu_151_p2;
  wire [11:0]i_2_reg_195;
  wire \i_2_reg_195_reg[11]_i_1_n_5 ;
  wire \i_2_reg_195_reg[11]_i_1_n_6 ;
  wire \i_2_reg_195_reg[4]_i_1_n_3 ;
  wire \i_2_reg_195_reg[4]_i_1_n_4 ;
  wire \i_2_reg_195_reg[4]_i_1_n_5 ;
  wire \i_2_reg_195_reg[4]_i_1_n_6 ;
  wire \i_2_reg_195_reg[8]_i_1_n_3 ;
  wire \i_2_reg_195_reg[8]_i_1_n_4 ;
  wire \i_2_reg_195_reg[8]_i_1_n_5 ;
  wire \i_2_reg_195_reg[8]_i_1_n_6 ;
  wire [11:0]i_reg_129;
  wire \i_reg_129_reg[0]_0 ;
  wire icmp_ln81_fu_161_p2_carry__0_i_1_n_3;
  wire icmp_ln81_fu_161_p2_carry__0_i_2_n_3;
  wire icmp_ln81_fu_161_p2_carry__0_i_3_n_3;
  wire icmp_ln81_fu_161_p2_carry__0_i_4_n_3;
  wire icmp_ln81_fu_161_p2_carry__0_i_5_n_3;
  wire icmp_ln81_fu_161_p2_carry__0_i_6_n_3;
  wire icmp_ln81_fu_161_p2_carry__0_i_7_n_3;
  wire icmp_ln81_fu_161_p2_carry__0_i_8_n_3;
  wire icmp_ln81_fu_161_p2_carry__0_n_3;
  wire icmp_ln81_fu_161_p2_carry__0_n_4;
  wire icmp_ln81_fu_161_p2_carry__0_n_5;
  wire icmp_ln81_fu_161_p2_carry__0_n_6;
  wire icmp_ln81_fu_161_p2_carry__1_i_1_n_3;
  wire icmp_ln81_fu_161_p2_carry__1_i_2_n_3;
  wire icmp_ln81_fu_161_p2_carry__1_i_3_n_3;
  wire icmp_ln81_fu_161_p2_carry__1_i_4_n_3;
  wire icmp_ln81_fu_161_p2_carry__1_i_5_n_3;
  wire icmp_ln81_fu_161_p2_carry__1_i_6_n_3;
  wire icmp_ln81_fu_161_p2_carry__1_i_7_n_3;
  wire icmp_ln81_fu_161_p2_carry__1_i_8_n_3;
  wire icmp_ln81_fu_161_p2_carry__1_n_3;
  wire icmp_ln81_fu_161_p2_carry__1_n_4;
  wire icmp_ln81_fu_161_p2_carry__1_n_5;
  wire icmp_ln81_fu_161_p2_carry__1_n_6;
  wire icmp_ln81_fu_161_p2_carry__2_i_1_n_3;
  wire icmp_ln81_fu_161_p2_carry__2_i_2_n_3;
  wire icmp_ln81_fu_161_p2_carry__2_i_3_n_3;
  wire icmp_ln81_fu_161_p2_carry__2_i_4_n_3;
  wire icmp_ln81_fu_161_p2_carry__2_i_5_n_3;
  wire icmp_ln81_fu_161_p2_carry__2_i_6_n_3;
  wire icmp_ln81_fu_161_p2_carry__2_i_7_n_3;
  wire icmp_ln81_fu_161_p2_carry__2_i_8_n_3;
  wire icmp_ln81_fu_161_p2_carry__2_n_4;
  wire icmp_ln81_fu_161_p2_carry__2_n_5;
  wire icmp_ln81_fu_161_p2_carry__2_n_6;
  wire icmp_ln81_fu_161_p2_carry_i_1_n_3;
  wire icmp_ln81_fu_161_p2_carry_i_2_n_3;
  wire icmp_ln81_fu_161_p2_carry_i_3_n_3;
  wire icmp_ln81_fu_161_p2_carry_i_4_n_3;
  wire icmp_ln81_fu_161_p2_carry_i_5_n_3;
  wire icmp_ln81_fu_161_p2_carry_i_6_n_3;
  wire icmp_ln81_fu_161_p2_carry_i_7_n_3;
  wire icmp_ln81_fu_161_p2_carry_i_8_n_3;
  wire icmp_ln81_fu_161_p2_carry_n_3;
  wire icmp_ln81_fu_161_p2_carry_n_4;
  wire icmp_ln81_fu_161_p2_carry_n_5;
  wire icmp_ln81_fu_161_p2_carry_n_6;
  wire icmp_ln83_fu_176_p2;
  wire icmp_ln83_fu_176_p2_carry__0_i_1_n_3;
  wire icmp_ln83_fu_176_p2_carry__0_i_2_n_3;
  wire icmp_ln83_fu_176_p2_carry__0_i_3_n_3;
  wire icmp_ln83_fu_176_p2_carry__0_i_4_n_3;
  wire icmp_ln83_fu_176_p2_carry__0_i_5_n_3;
  wire icmp_ln83_fu_176_p2_carry__0_i_6_n_3;
  wire icmp_ln83_fu_176_p2_carry__0_i_7_n_3;
  wire icmp_ln83_fu_176_p2_carry__0_i_8_n_3;
  wire icmp_ln83_fu_176_p2_carry__0_n_3;
  wire icmp_ln83_fu_176_p2_carry__0_n_4;
  wire icmp_ln83_fu_176_p2_carry__0_n_5;
  wire icmp_ln83_fu_176_p2_carry__0_n_6;
  wire icmp_ln83_fu_176_p2_carry__1_i_1_n_3;
  wire icmp_ln83_fu_176_p2_carry__1_i_2_n_3;
  wire icmp_ln83_fu_176_p2_carry__1_i_3_n_3;
  wire icmp_ln83_fu_176_p2_carry__1_i_4_n_3;
  wire icmp_ln83_fu_176_p2_carry__1_i_5_n_3;
  wire icmp_ln83_fu_176_p2_carry__1_i_6_n_3;
  wire icmp_ln83_fu_176_p2_carry__1_i_7_n_3;
  wire icmp_ln83_fu_176_p2_carry__1_i_8_n_3;
  wire icmp_ln83_fu_176_p2_carry__1_n_3;
  wire icmp_ln83_fu_176_p2_carry__1_n_4;
  wire icmp_ln83_fu_176_p2_carry__1_n_5;
  wire icmp_ln83_fu_176_p2_carry__1_n_6;
  wire icmp_ln83_fu_176_p2_carry__2_n_4;
  wire icmp_ln83_fu_176_p2_carry__2_n_5;
  wire icmp_ln83_fu_176_p2_carry__2_n_6;
  wire icmp_ln83_fu_176_p2_carry_i_1_n_3;
  wire icmp_ln83_fu_176_p2_carry_i_2_n_3;
  wire icmp_ln83_fu_176_p2_carry_i_3_n_3;
  wire icmp_ln83_fu_176_p2_carry_i_4_n_3;
  wire icmp_ln83_fu_176_p2_carry_i_5_n_3;
  wire icmp_ln83_fu_176_p2_carry_i_6_n_3;
  wire icmp_ln83_fu_176_p2_carry_i_7_n_3;
  wire icmp_ln83_fu_176_p2_carry_i_8_n_3;
  wire icmp_ln83_fu_176_p2_carry_n_3;
  wire icmp_ln83_fu_176_p2_carry_n_4;
  wire icmp_ln83_fu_176_p2_carry_n_5;
  wire icmp_ln83_fu_176_p2_carry_n_6;
  wire icmp_ln83_reg_209;
  wire imgInput_cols_c10_full_n;
  wire imgInput_cols_c_empty_n;
  wire imgInput_data_full_n;
  wire imgInput_rows_c9_full_n;
  wire imgInput_rows_c_empty_n;
  wire j_reg_140;
  wire \j_reg_140[0]_i_4_n_3 ;
  wire [11:0]j_reg_140_reg;
  wire \j_reg_140_reg[0]_i_3_n_10 ;
  wire \j_reg_140_reg[0]_i_3_n_3 ;
  wire \j_reg_140_reg[0]_i_3_n_4 ;
  wire \j_reg_140_reg[0]_i_3_n_5 ;
  wire \j_reg_140_reg[0]_i_3_n_6 ;
  wire \j_reg_140_reg[0]_i_3_n_7 ;
  wire \j_reg_140_reg[0]_i_3_n_8 ;
  wire \j_reg_140_reg[0]_i_3_n_9 ;
  wire \j_reg_140_reg[4]_i_1_n_10 ;
  wire \j_reg_140_reg[4]_i_1_n_3 ;
  wire \j_reg_140_reg[4]_i_1_n_4 ;
  wire \j_reg_140_reg[4]_i_1_n_5 ;
  wire \j_reg_140_reg[4]_i_1_n_6 ;
  wire \j_reg_140_reg[4]_i_1_n_7 ;
  wire \j_reg_140_reg[4]_i_1_n_8 ;
  wire \j_reg_140_reg[4]_i_1_n_9 ;
  wire \j_reg_140_reg[8]_i_1_n_10 ;
  wire \j_reg_140_reg[8]_i_1_n_4 ;
  wire \j_reg_140_reg[8]_i_1_n_5 ;
  wire \j_reg_140_reg[8]_i_1_n_6 ;
  wire \j_reg_140_reg[8]_i_1_n_7 ;
  wire \j_reg_140_reg[8]_i_1_n_8 ;
  wire \j_reg_140_reg[8]_i_1_n_9 ;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_12;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_13;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_14;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_15;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_16;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_17;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_18;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_19;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_20;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_4;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_8;
  wire [31:0]rows_reg_185;
  wire [31:0]\rows_reg_185_reg[31]_0 ;
  wire shiftReg_ce;
  wire shiftReg_ce_0;
  wire [23:0]src_TDATA;
  wire [23:0]src_TDATA_int_regslice;
  wire src_TVALID;
  wire start_for_bgr2hsv_9_2160_3840_1_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_i_1_n_3;
  wire [3:2]\NLW_i_2_reg_195_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_2_reg_195_reg[11]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_icmp_ln81_fu_161_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln81_fu_161_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln81_fu_161_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln81_fu_161_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln83_fu_176_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln83_fu_176_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln83_fu_176_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln83_fu_176_p2_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_j_reg_140_reg[8]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h88F8)) 
    \ap_CS_fsm[0]_i_1__1 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(CO),
        .O(ap_NS_fsm[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[1]_i_1__1 
       (.I0(ap_CS_fsm_state5),
        .I1(shiftReg_ce_0),
        .O(ap_NS_fsm[1]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_8),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    ap_enable_reg_pp0_iter1_i_2
       (.I0(CO),
        .I1(Q[1]),
        .O(ap_enable_reg_pp0_iter00));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .Q(ap_enable_reg_pp0_iter1_reg_n_3),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[0] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[0]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [0]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[10] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[10]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [10]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[11] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[11]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [11]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[12] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[12]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [12]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[13] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[13]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [13]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[14] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[14]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [14]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[15] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[15]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [15]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[16] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[16]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [16]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[17] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[17]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [17]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[18] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[18]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [18]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[19] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[19]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [19]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[1] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[1]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [1]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[20] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[20]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [20]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[21] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[21]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [21]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[22] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[22]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [22]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[23] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[23]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [23]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[2] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[2]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [2]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[3] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[3]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [3]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[4] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[4]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [4]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[5] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[5]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [5]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[6] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[6]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [6]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[7] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[7]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [7]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[8] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[8]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [8]),
        .R(1'b0));
  FDRE \axi_data_V_reg_213_reg[9] 
       (.C(ap_clk),
        .CE(axi_data_V_reg_2130),
        .D(src_TDATA_int_regslice[9]),
        .Q(\axi_data_V_reg_213_reg[23]_0 [9]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[0] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[0]),
        .Q(cols_reg_190[0]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[10] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[10]),
        .Q(cols_reg_190[10]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[11] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[11]),
        .Q(cols_reg_190[11]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[12] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[12]),
        .Q(cols_reg_190[12]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[13] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[13]),
        .Q(cols_reg_190[13]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[14] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[14]),
        .Q(cols_reg_190[14]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[15] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[15]),
        .Q(cols_reg_190[15]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[16] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[16]),
        .Q(cols_reg_190[16]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[17] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[17]),
        .Q(cols_reg_190[17]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[18] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[18]),
        .Q(cols_reg_190[18]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[19] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[19]),
        .Q(cols_reg_190[19]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[1] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[1]),
        .Q(cols_reg_190[1]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[20] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[20]),
        .Q(cols_reg_190[20]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[21] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[21]),
        .Q(cols_reg_190[21]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[22] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[22]),
        .Q(cols_reg_190[22]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[23] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[23]),
        .Q(cols_reg_190[23]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[24] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[24]),
        .Q(cols_reg_190[24]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[25] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[25]),
        .Q(cols_reg_190[25]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[26] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[26]),
        .Q(cols_reg_190[26]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[27] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[27]),
        .Q(cols_reg_190[27]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[28] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[28]),
        .Q(cols_reg_190[28]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[29] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[29]),
        .Q(cols_reg_190[29]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[2] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[2]),
        .Q(cols_reg_190[2]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[30] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[30]),
        .Q(cols_reg_190[30]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[31] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[31]),
        .Q(cols_reg_190[31]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[3] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[3]),
        .Q(cols_reg_190[3]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[4] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[4]),
        .Q(cols_reg_190[4]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[5] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[5]),
        .Q(cols_reg_190[5]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[6] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[6]),
        .Q(cols_reg_190[6]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[7] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[7]),
        .Q(cols_reg_190[7]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[8] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[8]),
        .Q(cols_reg_190[8]),
        .R(1'b0));
  FDRE \cols_reg_190_reg[9] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(D[9]),
        .Q(cols_reg_190[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \i_2_reg_195[0]_i_1 
       (.I0(i_reg_129[0]),
        .O(i_2_fu_151_p2[0]));
  FDRE \i_2_reg_195_reg[0] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_2_fu_151_p2[0]),
        .Q(i_2_reg_195[0]),
        .R(1'b0));
  FDRE \i_2_reg_195_reg[10] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_2_fu_151_p2[10]),
        .Q(i_2_reg_195[10]),
        .R(1'b0));
  FDRE \i_2_reg_195_reg[11] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_2_fu_151_p2[11]),
        .Q(i_2_reg_195[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_2_reg_195_reg[11]_i_1 
       (.CI(\i_2_reg_195_reg[8]_i_1_n_3 ),
        .CO({\NLW_i_2_reg_195_reg[11]_i_1_CO_UNCONNECTED [3:2],\i_2_reg_195_reg[11]_i_1_n_5 ,\i_2_reg_195_reg[11]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_2_reg_195_reg[11]_i_1_O_UNCONNECTED [3],i_2_fu_151_p2[11:9]}),
        .S({1'b0,i_reg_129[11:9]}));
  FDRE \i_2_reg_195_reg[1] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_2_fu_151_p2[1]),
        .Q(i_2_reg_195[1]),
        .R(1'b0));
  FDRE \i_2_reg_195_reg[2] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_2_fu_151_p2[2]),
        .Q(i_2_reg_195[2]),
        .R(1'b0));
  FDRE \i_2_reg_195_reg[3] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_2_fu_151_p2[3]),
        .Q(i_2_reg_195[3]),
        .R(1'b0));
  FDRE \i_2_reg_195_reg[4] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_2_fu_151_p2[4]),
        .Q(i_2_reg_195[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_2_reg_195_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\i_2_reg_195_reg[4]_i_1_n_3 ,\i_2_reg_195_reg[4]_i_1_n_4 ,\i_2_reg_195_reg[4]_i_1_n_5 ,\i_2_reg_195_reg[4]_i_1_n_6 }),
        .CYINIT(i_reg_129[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_2_fu_151_p2[4:1]),
        .S(i_reg_129[4:1]));
  FDRE \i_2_reg_195_reg[5] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_2_fu_151_p2[5]),
        .Q(i_2_reg_195[5]),
        .R(1'b0));
  FDRE \i_2_reg_195_reg[6] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_2_fu_151_p2[6]),
        .Q(i_2_reg_195[6]),
        .R(1'b0));
  FDRE \i_2_reg_195_reg[7] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_2_fu_151_p2[7]),
        .Q(i_2_reg_195[7]),
        .R(1'b0));
  FDRE \i_2_reg_195_reg[8] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_2_fu_151_p2[8]),
        .Q(i_2_reg_195[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_2_reg_195_reg[8]_i_1 
       (.CI(\i_2_reg_195_reg[4]_i_1_n_3 ),
        .CO({\i_2_reg_195_reg[8]_i_1_n_3 ,\i_2_reg_195_reg[8]_i_1_n_4 ,\i_2_reg_195_reg[8]_i_1_n_5 ,\i_2_reg_195_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_2_fu_151_p2[8:5]),
        .S(i_reg_129[8:5]));
  FDRE \i_2_reg_195_reg[9] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_2_fu_151_p2[9]),
        .Q(i_2_reg_195[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i_reg_129[11]_i_1 
       (.I0(Q[0]),
        .I1(\i_reg_129_reg[0]_0 ),
        .I2(imgInput_rows_c_empty_n),
        .I3(imgInput_rows_c9_full_n),
        .I4(imgInput_cols_c10_full_n),
        .I5(imgInput_cols_c_empty_n),
        .O(shiftReg_ce_0));
  FDRE \i_reg_129_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_2_reg_195[0]),
        .Q(i_reg_129[0]),
        .R(shiftReg_ce_0));
  FDRE \i_reg_129_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_2_reg_195[10]),
        .Q(i_reg_129[10]),
        .R(shiftReg_ce_0));
  FDRE \i_reg_129_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_2_reg_195[11]),
        .Q(i_reg_129[11]),
        .R(shiftReg_ce_0));
  FDRE \i_reg_129_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_2_reg_195[1]),
        .Q(i_reg_129[1]),
        .R(shiftReg_ce_0));
  FDRE \i_reg_129_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_2_reg_195[2]),
        .Q(i_reg_129[2]),
        .R(shiftReg_ce_0));
  FDRE \i_reg_129_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_2_reg_195[3]),
        .Q(i_reg_129[3]),
        .R(shiftReg_ce_0));
  FDRE \i_reg_129_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_2_reg_195[4]),
        .Q(i_reg_129[4]),
        .R(shiftReg_ce_0));
  FDRE \i_reg_129_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_2_reg_195[5]),
        .Q(i_reg_129[5]),
        .R(shiftReg_ce_0));
  FDRE \i_reg_129_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_2_reg_195[6]),
        .Q(i_reg_129[6]),
        .R(shiftReg_ce_0));
  FDRE \i_reg_129_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_2_reg_195[7]),
        .Q(i_reg_129[7]),
        .R(shiftReg_ce_0));
  FDRE \i_reg_129_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_2_reg_195[8]),
        .Q(i_reg_129[8]),
        .R(shiftReg_ce_0));
  FDRE \i_reg_129_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_2_reg_195[9]),
        .Q(i_reg_129[9]),
        .R(shiftReg_ce_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln81_fu_161_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln81_fu_161_p2_carry_n_3,icmp_ln81_fu_161_p2_carry_n_4,icmp_ln81_fu_161_p2_carry_n_5,icmp_ln81_fu_161_p2_carry_n_6}),
        .CYINIT(1'b0),
        .DI({icmp_ln81_fu_161_p2_carry_i_1_n_3,icmp_ln81_fu_161_p2_carry_i_2_n_3,icmp_ln81_fu_161_p2_carry_i_3_n_3,icmp_ln81_fu_161_p2_carry_i_4_n_3}),
        .O(NLW_icmp_ln81_fu_161_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln81_fu_161_p2_carry_i_5_n_3,icmp_ln81_fu_161_p2_carry_i_6_n_3,icmp_ln81_fu_161_p2_carry_i_7_n_3,icmp_ln81_fu_161_p2_carry_i_8_n_3}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln81_fu_161_p2_carry__0
       (.CI(icmp_ln81_fu_161_p2_carry_n_3),
        .CO({icmp_ln81_fu_161_p2_carry__0_n_3,icmp_ln81_fu_161_p2_carry__0_n_4,icmp_ln81_fu_161_p2_carry__0_n_5,icmp_ln81_fu_161_p2_carry__0_n_6}),
        .CYINIT(1'b0),
        .DI({icmp_ln81_fu_161_p2_carry__0_i_1_n_3,icmp_ln81_fu_161_p2_carry__0_i_2_n_3,icmp_ln81_fu_161_p2_carry__0_i_3_n_3,icmp_ln81_fu_161_p2_carry__0_i_4_n_3}),
        .O(NLW_icmp_ln81_fu_161_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln81_fu_161_p2_carry__0_i_5_n_3,icmp_ln81_fu_161_p2_carry__0_i_6_n_3,icmp_ln81_fu_161_p2_carry__0_i_7_n_3,icmp_ln81_fu_161_p2_carry__0_i_8_n_3}));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln81_fu_161_p2_carry__0_i_1
       (.I0(rows_reg_185[15]),
        .I1(rows_reg_185[14]),
        .O(icmp_ln81_fu_161_p2_carry__0_i_1_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln81_fu_161_p2_carry__0_i_2
       (.I0(rows_reg_185[13]),
        .I1(rows_reg_185[12]),
        .O(icmp_ln81_fu_161_p2_carry__0_i_2_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln81_fu_161_p2_carry__0_i_3
       (.I0(rows_reg_185[11]),
        .I1(i_reg_129[11]),
        .I2(rows_reg_185[10]),
        .I3(i_reg_129[10]),
        .O(icmp_ln81_fu_161_p2_carry__0_i_3_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln81_fu_161_p2_carry__0_i_4
       (.I0(rows_reg_185[9]),
        .I1(i_reg_129[9]),
        .I2(rows_reg_185[8]),
        .I3(i_reg_129[8]),
        .O(icmp_ln81_fu_161_p2_carry__0_i_4_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln81_fu_161_p2_carry__0_i_5
       (.I0(rows_reg_185[14]),
        .I1(rows_reg_185[15]),
        .O(icmp_ln81_fu_161_p2_carry__0_i_5_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln81_fu_161_p2_carry__0_i_6
       (.I0(rows_reg_185[12]),
        .I1(rows_reg_185[13]),
        .O(icmp_ln81_fu_161_p2_carry__0_i_6_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln81_fu_161_p2_carry__0_i_7
       (.I0(i_reg_129[11]),
        .I1(rows_reg_185[11]),
        .I2(i_reg_129[10]),
        .I3(rows_reg_185[10]),
        .O(icmp_ln81_fu_161_p2_carry__0_i_7_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln81_fu_161_p2_carry__0_i_8
       (.I0(i_reg_129[9]),
        .I1(rows_reg_185[9]),
        .I2(i_reg_129[8]),
        .I3(rows_reg_185[8]),
        .O(icmp_ln81_fu_161_p2_carry__0_i_8_n_3));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln81_fu_161_p2_carry__1
       (.CI(icmp_ln81_fu_161_p2_carry__0_n_3),
        .CO({icmp_ln81_fu_161_p2_carry__1_n_3,icmp_ln81_fu_161_p2_carry__1_n_4,icmp_ln81_fu_161_p2_carry__1_n_5,icmp_ln81_fu_161_p2_carry__1_n_6}),
        .CYINIT(1'b0),
        .DI({icmp_ln81_fu_161_p2_carry__1_i_1_n_3,icmp_ln81_fu_161_p2_carry__1_i_2_n_3,icmp_ln81_fu_161_p2_carry__1_i_3_n_3,icmp_ln81_fu_161_p2_carry__1_i_4_n_3}),
        .O(NLW_icmp_ln81_fu_161_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({icmp_ln81_fu_161_p2_carry__1_i_5_n_3,icmp_ln81_fu_161_p2_carry__1_i_6_n_3,icmp_ln81_fu_161_p2_carry__1_i_7_n_3,icmp_ln81_fu_161_p2_carry__1_i_8_n_3}));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln81_fu_161_p2_carry__1_i_1
       (.I0(rows_reg_185[23]),
        .I1(rows_reg_185[22]),
        .O(icmp_ln81_fu_161_p2_carry__1_i_1_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln81_fu_161_p2_carry__1_i_2
       (.I0(rows_reg_185[21]),
        .I1(rows_reg_185[20]),
        .O(icmp_ln81_fu_161_p2_carry__1_i_2_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln81_fu_161_p2_carry__1_i_3
       (.I0(rows_reg_185[19]),
        .I1(rows_reg_185[18]),
        .O(icmp_ln81_fu_161_p2_carry__1_i_3_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln81_fu_161_p2_carry__1_i_4
       (.I0(rows_reg_185[17]),
        .I1(rows_reg_185[16]),
        .O(icmp_ln81_fu_161_p2_carry__1_i_4_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln81_fu_161_p2_carry__1_i_5
       (.I0(rows_reg_185[22]),
        .I1(rows_reg_185[23]),
        .O(icmp_ln81_fu_161_p2_carry__1_i_5_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln81_fu_161_p2_carry__1_i_6
       (.I0(rows_reg_185[20]),
        .I1(rows_reg_185[21]),
        .O(icmp_ln81_fu_161_p2_carry__1_i_6_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln81_fu_161_p2_carry__1_i_7
       (.I0(rows_reg_185[18]),
        .I1(rows_reg_185[19]),
        .O(icmp_ln81_fu_161_p2_carry__1_i_7_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln81_fu_161_p2_carry__1_i_8
       (.I0(rows_reg_185[16]),
        .I1(rows_reg_185[17]),
        .O(icmp_ln81_fu_161_p2_carry__1_i_8_n_3));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln81_fu_161_p2_carry__2
       (.CI(icmp_ln81_fu_161_p2_carry__1_n_3),
        .CO({CO,icmp_ln81_fu_161_p2_carry__2_n_4,icmp_ln81_fu_161_p2_carry__2_n_5,icmp_ln81_fu_161_p2_carry__2_n_6}),
        .CYINIT(1'b0),
        .DI({icmp_ln81_fu_161_p2_carry__2_i_1_n_3,icmp_ln81_fu_161_p2_carry__2_i_2_n_3,icmp_ln81_fu_161_p2_carry__2_i_3_n_3,icmp_ln81_fu_161_p2_carry__2_i_4_n_3}),
        .O(NLW_icmp_ln81_fu_161_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({icmp_ln81_fu_161_p2_carry__2_i_5_n_3,icmp_ln81_fu_161_p2_carry__2_i_6_n_3,icmp_ln81_fu_161_p2_carry__2_i_7_n_3,icmp_ln81_fu_161_p2_carry__2_i_8_n_3}));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln81_fu_161_p2_carry__2_i_1
       (.I0(rows_reg_185[30]),
        .I1(rows_reg_185[31]),
        .O(icmp_ln81_fu_161_p2_carry__2_i_1_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln81_fu_161_p2_carry__2_i_2
       (.I0(rows_reg_185[29]),
        .I1(rows_reg_185[28]),
        .O(icmp_ln81_fu_161_p2_carry__2_i_2_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln81_fu_161_p2_carry__2_i_3
       (.I0(rows_reg_185[27]),
        .I1(rows_reg_185[26]),
        .O(icmp_ln81_fu_161_p2_carry__2_i_3_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln81_fu_161_p2_carry__2_i_4
       (.I0(rows_reg_185[25]),
        .I1(rows_reg_185[24]),
        .O(icmp_ln81_fu_161_p2_carry__2_i_4_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln81_fu_161_p2_carry__2_i_5
       (.I0(rows_reg_185[30]),
        .I1(rows_reg_185[31]),
        .O(icmp_ln81_fu_161_p2_carry__2_i_5_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln81_fu_161_p2_carry__2_i_6
       (.I0(rows_reg_185[28]),
        .I1(rows_reg_185[29]),
        .O(icmp_ln81_fu_161_p2_carry__2_i_6_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln81_fu_161_p2_carry__2_i_7
       (.I0(rows_reg_185[26]),
        .I1(rows_reg_185[27]),
        .O(icmp_ln81_fu_161_p2_carry__2_i_7_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln81_fu_161_p2_carry__2_i_8
       (.I0(rows_reg_185[24]),
        .I1(rows_reg_185[25]),
        .O(icmp_ln81_fu_161_p2_carry__2_i_8_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln81_fu_161_p2_carry_i_1
       (.I0(rows_reg_185[7]),
        .I1(i_reg_129[7]),
        .I2(rows_reg_185[6]),
        .I3(i_reg_129[6]),
        .O(icmp_ln81_fu_161_p2_carry_i_1_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln81_fu_161_p2_carry_i_2
       (.I0(rows_reg_185[5]),
        .I1(i_reg_129[5]),
        .I2(rows_reg_185[4]),
        .I3(i_reg_129[4]),
        .O(icmp_ln81_fu_161_p2_carry_i_2_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln81_fu_161_p2_carry_i_3
       (.I0(rows_reg_185[3]),
        .I1(i_reg_129[3]),
        .I2(rows_reg_185[2]),
        .I3(i_reg_129[2]),
        .O(icmp_ln81_fu_161_p2_carry_i_3_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln81_fu_161_p2_carry_i_4
       (.I0(rows_reg_185[1]),
        .I1(i_reg_129[1]),
        .I2(rows_reg_185[0]),
        .I3(i_reg_129[0]),
        .O(icmp_ln81_fu_161_p2_carry_i_4_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln81_fu_161_p2_carry_i_5
       (.I0(i_reg_129[7]),
        .I1(rows_reg_185[7]),
        .I2(i_reg_129[6]),
        .I3(rows_reg_185[6]),
        .O(icmp_ln81_fu_161_p2_carry_i_5_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln81_fu_161_p2_carry_i_6
       (.I0(i_reg_129[5]),
        .I1(rows_reg_185[5]),
        .I2(i_reg_129[4]),
        .I3(rows_reg_185[4]),
        .O(icmp_ln81_fu_161_p2_carry_i_6_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln81_fu_161_p2_carry_i_7
       (.I0(i_reg_129[3]),
        .I1(rows_reg_185[3]),
        .I2(i_reg_129[2]),
        .I3(rows_reg_185[2]),
        .O(icmp_ln81_fu_161_p2_carry_i_7_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln81_fu_161_p2_carry_i_8
       (.I0(i_reg_129[1]),
        .I1(rows_reg_185[1]),
        .I2(i_reg_129[0]),
        .I3(rows_reg_185[0]),
        .O(icmp_ln81_fu_161_p2_carry_i_8_n_3));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln83_fu_176_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln83_fu_176_p2_carry_n_3,icmp_ln83_fu_176_p2_carry_n_4,icmp_ln83_fu_176_p2_carry_n_5,icmp_ln83_fu_176_p2_carry_n_6}),
        .CYINIT(1'b0),
        .DI({icmp_ln83_fu_176_p2_carry_i_1_n_3,icmp_ln83_fu_176_p2_carry_i_2_n_3,icmp_ln83_fu_176_p2_carry_i_3_n_3,icmp_ln83_fu_176_p2_carry_i_4_n_3}),
        .O(NLW_icmp_ln83_fu_176_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln83_fu_176_p2_carry_i_5_n_3,icmp_ln83_fu_176_p2_carry_i_6_n_3,icmp_ln83_fu_176_p2_carry_i_7_n_3,icmp_ln83_fu_176_p2_carry_i_8_n_3}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln83_fu_176_p2_carry__0
       (.CI(icmp_ln83_fu_176_p2_carry_n_3),
        .CO({icmp_ln83_fu_176_p2_carry__0_n_3,icmp_ln83_fu_176_p2_carry__0_n_4,icmp_ln83_fu_176_p2_carry__0_n_5,icmp_ln83_fu_176_p2_carry__0_n_6}),
        .CYINIT(1'b0),
        .DI({icmp_ln83_fu_176_p2_carry__0_i_1_n_3,icmp_ln83_fu_176_p2_carry__0_i_2_n_3,icmp_ln83_fu_176_p2_carry__0_i_3_n_3,icmp_ln83_fu_176_p2_carry__0_i_4_n_3}),
        .O(NLW_icmp_ln83_fu_176_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln83_fu_176_p2_carry__0_i_5_n_3,icmp_ln83_fu_176_p2_carry__0_i_6_n_3,icmp_ln83_fu_176_p2_carry__0_i_7_n_3,icmp_ln83_fu_176_p2_carry__0_i_8_n_3}));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln83_fu_176_p2_carry__0_i_1
       (.I0(cols_reg_190[15]),
        .I1(cols_reg_190[14]),
        .O(icmp_ln83_fu_176_p2_carry__0_i_1_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln83_fu_176_p2_carry__0_i_2
       (.I0(cols_reg_190[13]),
        .I1(cols_reg_190[12]),
        .O(icmp_ln83_fu_176_p2_carry__0_i_2_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln83_fu_176_p2_carry__0_i_3
       (.I0(cols_reg_190[11]),
        .I1(j_reg_140_reg[11]),
        .I2(cols_reg_190[10]),
        .I3(j_reg_140_reg[10]),
        .O(icmp_ln83_fu_176_p2_carry__0_i_3_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln83_fu_176_p2_carry__0_i_4
       (.I0(cols_reg_190[9]),
        .I1(j_reg_140_reg[9]),
        .I2(cols_reg_190[8]),
        .I3(j_reg_140_reg[8]),
        .O(icmp_ln83_fu_176_p2_carry__0_i_4_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln83_fu_176_p2_carry__0_i_5
       (.I0(cols_reg_190[14]),
        .I1(cols_reg_190[15]),
        .O(icmp_ln83_fu_176_p2_carry__0_i_5_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln83_fu_176_p2_carry__0_i_6
       (.I0(cols_reg_190[12]),
        .I1(cols_reg_190[13]),
        .O(icmp_ln83_fu_176_p2_carry__0_i_6_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln83_fu_176_p2_carry__0_i_7
       (.I0(j_reg_140_reg[11]),
        .I1(cols_reg_190[11]),
        .I2(j_reg_140_reg[10]),
        .I3(cols_reg_190[10]),
        .O(icmp_ln83_fu_176_p2_carry__0_i_7_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln83_fu_176_p2_carry__0_i_8
       (.I0(j_reg_140_reg[9]),
        .I1(cols_reg_190[9]),
        .I2(j_reg_140_reg[8]),
        .I3(cols_reg_190[8]),
        .O(icmp_ln83_fu_176_p2_carry__0_i_8_n_3));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln83_fu_176_p2_carry__1
       (.CI(icmp_ln83_fu_176_p2_carry__0_n_3),
        .CO({icmp_ln83_fu_176_p2_carry__1_n_3,icmp_ln83_fu_176_p2_carry__1_n_4,icmp_ln83_fu_176_p2_carry__1_n_5,icmp_ln83_fu_176_p2_carry__1_n_6}),
        .CYINIT(1'b0),
        .DI({icmp_ln83_fu_176_p2_carry__1_i_1_n_3,icmp_ln83_fu_176_p2_carry__1_i_2_n_3,icmp_ln83_fu_176_p2_carry__1_i_3_n_3,icmp_ln83_fu_176_p2_carry__1_i_4_n_3}),
        .O(NLW_icmp_ln83_fu_176_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({icmp_ln83_fu_176_p2_carry__1_i_5_n_3,icmp_ln83_fu_176_p2_carry__1_i_6_n_3,icmp_ln83_fu_176_p2_carry__1_i_7_n_3,icmp_ln83_fu_176_p2_carry__1_i_8_n_3}));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln83_fu_176_p2_carry__1_i_1
       (.I0(cols_reg_190[23]),
        .I1(cols_reg_190[22]),
        .O(icmp_ln83_fu_176_p2_carry__1_i_1_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln83_fu_176_p2_carry__1_i_2
       (.I0(cols_reg_190[21]),
        .I1(cols_reg_190[20]),
        .O(icmp_ln83_fu_176_p2_carry__1_i_2_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln83_fu_176_p2_carry__1_i_3
       (.I0(cols_reg_190[19]),
        .I1(cols_reg_190[18]),
        .O(icmp_ln83_fu_176_p2_carry__1_i_3_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln83_fu_176_p2_carry__1_i_4
       (.I0(cols_reg_190[17]),
        .I1(cols_reg_190[16]),
        .O(icmp_ln83_fu_176_p2_carry__1_i_4_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln83_fu_176_p2_carry__1_i_5
       (.I0(cols_reg_190[22]),
        .I1(cols_reg_190[23]),
        .O(icmp_ln83_fu_176_p2_carry__1_i_5_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln83_fu_176_p2_carry__1_i_6
       (.I0(cols_reg_190[20]),
        .I1(cols_reg_190[21]),
        .O(icmp_ln83_fu_176_p2_carry__1_i_6_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln83_fu_176_p2_carry__1_i_7
       (.I0(cols_reg_190[18]),
        .I1(cols_reg_190[19]),
        .O(icmp_ln83_fu_176_p2_carry__1_i_7_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln83_fu_176_p2_carry__1_i_8
       (.I0(cols_reg_190[16]),
        .I1(cols_reg_190[17]),
        .O(icmp_ln83_fu_176_p2_carry__1_i_8_n_3));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln83_fu_176_p2_carry__2
       (.CI(icmp_ln83_fu_176_p2_carry__1_n_3),
        .CO({icmp_ln83_fu_176_p2,icmp_ln83_fu_176_p2_carry__2_n_4,icmp_ln83_fu_176_p2_carry__2_n_5,icmp_ln83_fu_176_p2_carry__2_n_6}),
        .CYINIT(1'b0),
        .DI({regslice_both_AXI_video_strm_V_data_V_U_n_12,regslice_both_AXI_video_strm_V_data_V_U_n_13,regslice_both_AXI_video_strm_V_data_V_U_n_14,regslice_both_AXI_video_strm_V_data_V_U_n_15}),
        .O(NLW_icmp_ln83_fu_176_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({regslice_both_AXI_video_strm_V_data_V_U_n_16,regslice_both_AXI_video_strm_V_data_V_U_n_17,regslice_both_AXI_video_strm_V_data_V_U_n_18,regslice_both_AXI_video_strm_V_data_V_U_n_19}));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln83_fu_176_p2_carry_i_1
       (.I0(cols_reg_190[7]),
        .I1(j_reg_140_reg[7]),
        .I2(cols_reg_190[6]),
        .I3(j_reg_140_reg[6]),
        .O(icmp_ln83_fu_176_p2_carry_i_1_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln83_fu_176_p2_carry_i_2
       (.I0(cols_reg_190[5]),
        .I1(j_reg_140_reg[5]),
        .I2(cols_reg_190[4]),
        .I3(j_reg_140_reg[4]),
        .O(icmp_ln83_fu_176_p2_carry_i_2_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln83_fu_176_p2_carry_i_3
       (.I0(cols_reg_190[3]),
        .I1(j_reg_140_reg[3]),
        .I2(cols_reg_190[2]),
        .I3(j_reg_140_reg[2]),
        .O(icmp_ln83_fu_176_p2_carry_i_3_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln83_fu_176_p2_carry_i_4
       (.I0(cols_reg_190[1]),
        .I1(j_reg_140_reg[1]),
        .I2(cols_reg_190[0]),
        .I3(j_reg_140_reg[0]),
        .O(icmp_ln83_fu_176_p2_carry_i_4_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln83_fu_176_p2_carry_i_5
       (.I0(j_reg_140_reg[7]),
        .I1(cols_reg_190[7]),
        .I2(j_reg_140_reg[6]),
        .I3(cols_reg_190[6]),
        .O(icmp_ln83_fu_176_p2_carry_i_5_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln83_fu_176_p2_carry_i_6
       (.I0(j_reg_140_reg[5]),
        .I1(cols_reg_190[5]),
        .I2(j_reg_140_reg[4]),
        .I3(cols_reg_190[4]),
        .O(icmp_ln83_fu_176_p2_carry_i_6_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln83_fu_176_p2_carry_i_7
       (.I0(j_reg_140_reg[3]),
        .I1(cols_reg_190[3]),
        .I2(j_reg_140_reg[2]),
        .I3(cols_reg_190[2]),
        .O(icmp_ln83_fu_176_p2_carry_i_7_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln83_fu_176_p2_carry_i_8
       (.I0(j_reg_140_reg[1]),
        .I1(cols_reg_190[1]),
        .I2(j_reg_140_reg[0]),
        .I3(cols_reg_190[0]),
        .O(icmp_ln83_fu_176_p2_carry_i_8_n_3));
  FDRE \icmp_ln83_reg_209_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_20),
        .Q(icmp_ln83_reg_209),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hB)) 
    internal_empty_n_i_2
       (.I0(CO),
        .I1(Q[1]),
        .O(\ap_CS_fsm_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    internal_full_n_i_2__0
       (.I0(Q[1]),
        .I1(CO),
        .I2(axis2xfMat_24_9_2160_3840_1_U0_ap_start),
        .O(\ap_CS_fsm_reg[1]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j_reg_140[0]_i_4 
       (.I0(j_reg_140_reg[0]),
        .O(\j_reg_140[0]_i_4_n_3 ));
  FDRE \j_reg_140_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_sel0),
        .D(\j_reg_140_reg[0]_i_3_n_10 ),
        .Q(j_reg_140_reg[0]),
        .R(j_reg_140));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \j_reg_140_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\j_reg_140_reg[0]_i_3_n_3 ,\j_reg_140_reg[0]_i_3_n_4 ,\j_reg_140_reg[0]_i_3_n_5 ,\j_reg_140_reg[0]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\j_reg_140_reg[0]_i_3_n_7 ,\j_reg_140_reg[0]_i_3_n_8 ,\j_reg_140_reg[0]_i_3_n_9 ,\j_reg_140_reg[0]_i_3_n_10 }),
        .S({j_reg_140_reg[3:1],\j_reg_140[0]_i_4_n_3 }));
  FDRE \j_reg_140_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_sel0),
        .D(\j_reg_140_reg[8]_i_1_n_8 ),
        .Q(j_reg_140_reg[10]),
        .R(j_reg_140));
  FDRE \j_reg_140_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_sel0),
        .D(\j_reg_140_reg[8]_i_1_n_7 ),
        .Q(j_reg_140_reg[11]),
        .R(j_reg_140));
  FDRE \j_reg_140_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_sel0),
        .D(\j_reg_140_reg[0]_i_3_n_9 ),
        .Q(j_reg_140_reg[1]),
        .R(j_reg_140));
  FDRE \j_reg_140_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_sel0),
        .D(\j_reg_140_reg[0]_i_3_n_8 ),
        .Q(j_reg_140_reg[2]),
        .R(j_reg_140));
  FDRE \j_reg_140_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_sel0),
        .D(\j_reg_140_reg[0]_i_3_n_7 ),
        .Q(j_reg_140_reg[3]),
        .R(j_reg_140));
  FDRE \j_reg_140_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_sel0),
        .D(\j_reg_140_reg[4]_i_1_n_10 ),
        .Q(j_reg_140_reg[4]),
        .R(j_reg_140));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \j_reg_140_reg[4]_i_1 
       (.CI(\j_reg_140_reg[0]_i_3_n_3 ),
        .CO({\j_reg_140_reg[4]_i_1_n_3 ,\j_reg_140_reg[4]_i_1_n_4 ,\j_reg_140_reg[4]_i_1_n_5 ,\j_reg_140_reg[4]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\j_reg_140_reg[4]_i_1_n_7 ,\j_reg_140_reg[4]_i_1_n_8 ,\j_reg_140_reg[4]_i_1_n_9 ,\j_reg_140_reg[4]_i_1_n_10 }),
        .S(j_reg_140_reg[7:4]));
  FDRE \j_reg_140_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_sel0),
        .D(\j_reg_140_reg[4]_i_1_n_9 ),
        .Q(j_reg_140_reg[5]),
        .R(j_reg_140));
  FDRE \j_reg_140_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_sel0),
        .D(\j_reg_140_reg[4]_i_1_n_8 ),
        .Q(j_reg_140_reg[6]),
        .R(j_reg_140));
  FDRE \j_reg_140_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_sel0),
        .D(\j_reg_140_reg[4]_i_1_n_7 ),
        .Q(j_reg_140_reg[7]),
        .R(j_reg_140));
  FDRE \j_reg_140_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_sel0),
        .D(\j_reg_140_reg[8]_i_1_n_10 ),
        .Q(j_reg_140_reg[8]),
        .R(j_reg_140));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \j_reg_140_reg[8]_i_1 
       (.CI(\j_reg_140_reg[4]_i_1_n_3 ),
        .CO({\NLW_j_reg_140_reg[8]_i_1_CO_UNCONNECTED [3],\j_reg_140_reg[8]_i_1_n_4 ,\j_reg_140_reg[8]_i_1_n_5 ,\j_reg_140_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\j_reg_140_reg[8]_i_1_n_7 ,\j_reg_140_reg[8]_i_1_n_8 ,\j_reg_140_reg[8]_i_1_n_9 ,\j_reg_140_reg[8]_i_1_n_10 }),
        .S(j_reg_140_reg[11:8]));
  FDRE \j_reg_140_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_sel0),
        .D(\j_reg_140_reg[8]_i_1_n_9 ),
        .Q(j_reg_140_reg[9]),
        .R(j_reg_140));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_regslice_both_10 regslice_both_AXI_video_strm_V_data_V_U
       (.\B_V_data_1_payload_B_reg[23]_0 (src_TDATA_int_regslice),
        .B_V_data_1_sel0(B_V_data_1_sel0),
        .\B_V_data_1_state_reg[1]_0 (\B_V_data_1_state_reg[1] ),
        .CO(icmp_ln83_fu_176_p2),
        .D(ap_NS_fsm[3:2]),
        .DI({regslice_both_AXI_video_strm_V_data_V_U_n_12,regslice_both_AXI_video_strm_V_data_V_U_n_13,regslice_both_AXI_video_strm_V_data_V_U_n_14,regslice_both_AXI_video_strm_V_data_V_U_n_15}),
        .E(axi_data_V_reg_2130),
        .Q({ap_CS_fsm_pp0_stage0,Q[1]}),
        .S({regslice_both_AXI_video_strm_V_data_V_U_n_16,regslice_both_AXI_video_strm_V_data_V_U_n_17,regslice_both_AXI_video_strm_V_data_V_U_n_18,regslice_both_AXI_video_strm_V_data_V_U_n_19}),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter00(ap_enable_reg_pp0_iter00),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg_n_3),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .ap_rst_n_1(regslice_both_AXI_video_strm_V_data_V_U_n_8),
        .ap_rst_n_inv(ap_rst_n_inv),
        .icmp_ln83_fu_176_p2_carry__2(cols_reg_190[31:24]),
        .icmp_ln83_reg_209(icmp_ln83_reg_209),
        .\icmp_ln83_reg_209_reg[0] (regslice_both_AXI_video_strm_V_data_V_U_n_20),
        .imgInput_data_full_n(imgInput_data_full_n),
        .j_reg_140(j_reg_140),
        .\j_reg_140_reg[0] (CO),
        .shiftReg_ce(shiftReg_ce),
        .src_TDATA(src_TDATA),
        .src_TVALID(src_TVALID));
  FDRE \rows_reg_185_reg[0] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [0]),
        .Q(rows_reg_185[0]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[10] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [10]),
        .Q(rows_reg_185[10]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[11] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [11]),
        .Q(rows_reg_185[11]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[12] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [12]),
        .Q(rows_reg_185[12]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[13] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [13]),
        .Q(rows_reg_185[13]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[14] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [14]),
        .Q(rows_reg_185[14]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[15] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [15]),
        .Q(rows_reg_185[15]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[16] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [16]),
        .Q(rows_reg_185[16]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[17] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [17]),
        .Q(rows_reg_185[17]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[18] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [18]),
        .Q(rows_reg_185[18]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[19] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [19]),
        .Q(rows_reg_185[19]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[1] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [1]),
        .Q(rows_reg_185[1]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[20] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [20]),
        .Q(rows_reg_185[20]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[21] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [21]),
        .Q(rows_reg_185[21]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[22] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [22]),
        .Q(rows_reg_185[22]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[23] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [23]),
        .Q(rows_reg_185[23]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[24] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [24]),
        .Q(rows_reg_185[24]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[25] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [25]),
        .Q(rows_reg_185[25]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[26] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [26]),
        .Q(rows_reg_185[26]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[27] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [27]),
        .Q(rows_reg_185[27]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[28] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [28]),
        .Q(rows_reg_185[28]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[29] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [29]),
        .Q(rows_reg_185[29]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[2] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [2]),
        .Q(rows_reg_185[2]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[30] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [30]),
        .Q(rows_reg_185[30]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[31] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [31]),
        .Q(rows_reg_185[31]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[3] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [3]),
        .Q(rows_reg_185[3]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[4] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [4]),
        .Q(rows_reg_185[4]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[5] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [5]),
        .Q(rows_reg_185[5]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[6] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [6]),
        .Q(rows_reg_185[6]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[7] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [7]),
        .Q(rows_reg_185[7]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[8] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [8]),
        .Q(rows_reg_185[8]),
        .R(1'b0));
  FDRE \rows_reg_185_reg[9] 
       (.C(ap_clk),
        .CE(Q[0]),
        .D(\rows_reg_185_reg[31]_0 [9]),
        .Q(rows_reg_185[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hEAEA00EA)) 
    start_once_reg_i_1
       (.I0(start_once_reg),
        .I1(start_for_bgr2hsv_9_2160_3840_1_U0_full_n),
        .I2(axis2xfMat_24_9_2160_3840_1_U0_ap_start),
        .I3(Q[1]),
        .I4(CO),
        .O(start_once_reg_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(start_once_reg_i_1_n_3),
        .Q(start_once_reg),
        .R(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_bgr2hsv_9_2160_3840_1_s
   (Q,
    D,
    p_0_in,
    sext_ln157_fu_472_p1,
    CO,
    \zext_ln215_1_reg_750_pp0_iter5_reg_reg[7]_0 ,
    \zext_ln215_1_reg_750_pp0_iter5_reg_reg[7]_1 ,
    \mOutPtr_reg[0] ,
    internal_empty_n_reg,
    \mOutPtr_reg[0]_0 ,
    shiftReg_ce,
    \ap_CS_fsm_reg[0]_0 ,
    ap_clk,
    imgInput_rows_c9_dout,
    imgInput_cols_c10_dout,
    ap_rst_n_inv,
    ap_rst_n,
    rgb2hsv_data_full_n,
    imgInput_data_empty_n,
    bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read,
    imgInput_cols_c10_empty_n,
    imgInput_rows_c9_empty_n,
    bgr2hsv_9_2160_3840_1_U0_ap_start,
    add_ln157_fu_488_p2,
    add_ln157_1_fu_537_p2,
    p_reg_reg_i_26_0,
    shiftReg_ce_0,
    \mOutPtr_reg[0]_1 ,
    \mOutPtr_reg[0]_2 ,
    \mOutPtr_reg[0]_3 ,
    int_ap_idle_reg,
    int_ap_idle_reg_0,
    xfMat2axis_24_9_2160_3840_1_U0_ap_start,
    p_reg_reg_i_26_1,
    imgInput_data_dout);
  output [1:0]Q;
  output [23:0]D;
  output [7:0]p_0_in;
  output [7:0]sext_ln157_fu_472_p1;
  output [0:0]CO;
  output [6:0]\zext_ln215_1_reg_750_pp0_iter5_reg_reg[7]_0 ;
  output [0:0]\zext_ln215_1_reg_750_pp0_iter5_reg_reg[7]_1 ;
  output \mOutPtr_reg[0] ;
  output internal_empty_n_reg;
  output \mOutPtr_reg[0]_0 ;
  output shiftReg_ce;
  output \ap_CS_fsm_reg[0]_0 ;
  input ap_clk;
  input [31:0]imgInput_rows_c9_dout;
  input [31:0]imgInput_cols_c10_dout;
  input ap_rst_n_inv;
  input ap_rst_n;
  input rgb2hsv_data_full_n;
  input imgInput_data_empty_n;
  input bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read;
  input imgInput_cols_c10_empty_n;
  input imgInput_rows_c9_empty_n;
  input bgr2hsv_9_2160_3840_1_U0_ap_start;
  input [9:0]add_ln157_fu_488_p2;
  input [9:0]add_ln157_1_fu_537_p2;
  input [0:0]p_reg_reg_i_26_0;
  input shiftReg_ce_0;
  input \mOutPtr_reg[0]_1 ;
  input \mOutPtr_reg[0]_2 ;
  input \mOutPtr_reg[0]_3 ;
  input [0:0]int_ap_idle_reg;
  input [0:0]int_ap_idle_reg_0;
  input xfMat2axis_24_9_2160_3840_1_U0_ap_start;
  input [0:0]p_reg_reg_i_26_1;
  input [23:0]imgInput_data_dout;

  wire [0:0]CO;
  wire [23:0]D;
  wire [1:0]Q;
  wire \SRL_SIG[0][4]_i_2_n_3 ;
  wire \SRL_SIG[0][4]_i_4_n_3 ;
  wire \SRL_SIG_reg[0][4]_i_1_n_3 ;
  wire \SRL_SIG_reg[0][4]_i_1_n_4 ;
  wire \SRL_SIG_reg[0][4]_i_1_n_5 ;
  wire \SRL_SIG_reg[0][4]_i_1_n_6 ;
  wire \SRL_SIG_reg[0][7]_i_1_n_5 ;
  wire \SRL_SIG_reg[0][7]_i_1_n_6 ;
  wire [9:0]add_ln157_1_fu_537_p2;
  wire [11:0]add_ln157_2_fu_553_p2;
  wire [9:0]add_ln157_fu_488_p2;
  wire [7:0]add_ln213_1_fu_390_p2;
  wire [7:0]add_ln213_1_reg_766;
  wire add_ln213_1_reg_7660;
  wire ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U28_n_10;
  wire ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U28_n_11;
  wire ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U28_n_12;
  wire ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U28_n_13;
  wire ap_CS_fsm_pp0_stage0;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire ap_CS_fsm_state2;
  wire [3:0]ap_NS_fsm;
  wire ap_block_pp0_stage0_11001;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter10_i_1_n_3;
  wire ap_enable_reg_pp0_iter10_reg_n_3;
  wire ap_enable_reg_pp0_iter1_reg_n_3;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_enable_reg_pp0_iter5;
  wire ap_enable_reg_pp0_iter6;
  wire ap_enable_reg_pp0_iter7;
  wire ap_enable_reg_pp0_iter8;
  wire ap_enable_reg_pp0_iter9;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [7:0]b_V_reg_677;
  wire b_V_reg_6770;
  wire [7:0]b_V_reg_677_pp0_iter2_reg;
  wire [7:0]b_V_reg_677_pp0_iter3_reg;
  wire [7:0]b_V_reg_677_pp0_iter4_reg;
  wire bgr2hsv_9_2160_3840_1_U0_ap_start;
  wire bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read;
  wire [7:0]g_V_reg_684;
  wire \g_V_reg_684_pp0_iter3_reg_reg[0]_srl2_n_3 ;
  wire \g_V_reg_684_pp0_iter3_reg_reg[1]_srl2_n_3 ;
  wire \g_V_reg_684_pp0_iter3_reg_reg[2]_srl2_n_3 ;
  wire \g_V_reg_684_pp0_iter3_reg_reg[3]_srl2_n_3 ;
  wire \g_V_reg_684_pp0_iter3_reg_reg[4]_srl2_n_3 ;
  wire \g_V_reg_684_pp0_iter3_reg_reg[5]_srl2_n_3 ;
  wire \g_V_reg_684_pp0_iter3_reg_reg[6]_srl2_n_3 ;
  wire \g_V_reg_684_pp0_iter3_reg_reg[7]_srl2_n_3 ;
  wire [7:0]g_V_reg_684_pp0_iter4_reg;
  wire grp_fu_632_ce;
  wire icmp_ln128_reg_673_pp0_iter1_reg;
  wire \icmp_ln128_reg_673_pp0_iter1_reg[0]_i_1_n_3 ;
  wire icmp_ln128_reg_673_pp0_iter2_reg;
  wire icmp_ln128_reg_673_pp0_iter3_reg;
  wire icmp_ln128_reg_673_pp0_iter4_reg;
  wire icmp_ln128_reg_673_pp0_iter5_reg;
  wire \icmp_ln128_reg_673_pp0_iter7_reg_reg[0]_srl2_n_3 ;
  wire icmp_ln128_reg_673_pp0_iter8_reg;
  wire icmp_ln128_reg_673_pp0_iter9_reg;
  wire \icmp_ln128_reg_673_reg_n_3_[0] ;
  wire [31:0]imgInput_cols_c10_dout;
  wire imgInput_cols_c10_empty_n;
  wire [23:0]imgInput_data_dout;
  wire imgInput_data_empty_n;
  wire [31:0]imgInput_rows_c9_dout;
  wire imgInput_rows_c9_empty_n;
  wire indvar_flatten_reg_218;
  wire indvar_flatten_reg_2180;
  wire \indvar_flatten_reg_218[0]_i_28_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_29_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_30_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_31_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_32_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_5_n_3 ;
  wire [63:0]indvar_flatten_reg_218_reg;
  wire \indvar_flatten_reg_218_reg[0]_i_24_n_3 ;
  wire \indvar_flatten_reg_218_reg[0]_i_24_n_4 ;
  wire \indvar_flatten_reg_218_reg[0]_i_24_n_5 ;
  wire \indvar_flatten_reg_218_reg[0]_i_24_n_6 ;
  wire \indvar_flatten_reg_218_reg[0]_i_3_n_10 ;
  wire \indvar_flatten_reg_218_reg[0]_i_3_n_3 ;
  wire \indvar_flatten_reg_218_reg[0]_i_3_n_4 ;
  wire \indvar_flatten_reg_218_reg[0]_i_3_n_5 ;
  wire \indvar_flatten_reg_218_reg[0]_i_3_n_6 ;
  wire \indvar_flatten_reg_218_reg[0]_i_3_n_7 ;
  wire \indvar_flatten_reg_218_reg[0]_i_3_n_8 ;
  wire \indvar_flatten_reg_218_reg[0]_i_3_n_9 ;
  wire \indvar_flatten_reg_218_reg[12]_i_1_n_10 ;
  wire \indvar_flatten_reg_218_reg[12]_i_1_n_3 ;
  wire \indvar_flatten_reg_218_reg[12]_i_1_n_4 ;
  wire \indvar_flatten_reg_218_reg[12]_i_1_n_5 ;
  wire \indvar_flatten_reg_218_reg[12]_i_1_n_6 ;
  wire \indvar_flatten_reg_218_reg[12]_i_1_n_7 ;
  wire \indvar_flatten_reg_218_reg[12]_i_1_n_8 ;
  wire \indvar_flatten_reg_218_reg[12]_i_1_n_9 ;
  wire \indvar_flatten_reg_218_reg[16]_i_1_n_10 ;
  wire \indvar_flatten_reg_218_reg[16]_i_1_n_3 ;
  wire \indvar_flatten_reg_218_reg[16]_i_1_n_4 ;
  wire \indvar_flatten_reg_218_reg[16]_i_1_n_5 ;
  wire \indvar_flatten_reg_218_reg[16]_i_1_n_6 ;
  wire \indvar_flatten_reg_218_reg[16]_i_1_n_7 ;
  wire \indvar_flatten_reg_218_reg[16]_i_1_n_8 ;
  wire \indvar_flatten_reg_218_reg[16]_i_1_n_9 ;
  wire \indvar_flatten_reg_218_reg[20]_i_1_n_10 ;
  wire \indvar_flatten_reg_218_reg[20]_i_1_n_3 ;
  wire \indvar_flatten_reg_218_reg[20]_i_1_n_4 ;
  wire \indvar_flatten_reg_218_reg[20]_i_1_n_5 ;
  wire \indvar_flatten_reg_218_reg[20]_i_1_n_6 ;
  wire \indvar_flatten_reg_218_reg[20]_i_1_n_7 ;
  wire \indvar_flatten_reg_218_reg[20]_i_1_n_8 ;
  wire \indvar_flatten_reg_218_reg[20]_i_1_n_9 ;
  wire \indvar_flatten_reg_218_reg[24]_i_1_n_10 ;
  wire \indvar_flatten_reg_218_reg[24]_i_1_n_3 ;
  wire \indvar_flatten_reg_218_reg[24]_i_1_n_4 ;
  wire \indvar_flatten_reg_218_reg[24]_i_1_n_5 ;
  wire \indvar_flatten_reg_218_reg[24]_i_1_n_6 ;
  wire \indvar_flatten_reg_218_reg[24]_i_1_n_7 ;
  wire \indvar_flatten_reg_218_reg[24]_i_1_n_8 ;
  wire \indvar_flatten_reg_218_reg[24]_i_1_n_9 ;
  wire \indvar_flatten_reg_218_reg[28]_i_1_n_10 ;
  wire \indvar_flatten_reg_218_reg[28]_i_1_n_3 ;
  wire \indvar_flatten_reg_218_reg[28]_i_1_n_4 ;
  wire \indvar_flatten_reg_218_reg[28]_i_1_n_5 ;
  wire \indvar_flatten_reg_218_reg[28]_i_1_n_6 ;
  wire \indvar_flatten_reg_218_reg[28]_i_1_n_7 ;
  wire \indvar_flatten_reg_218_reg[28]_i_1_n_8 ;
  wire \indvar_flatten_reg_218_reg[28]_i_1_n_9 ;
  wire \indvar_flatten_reg_218_reg[32]_i_1_n_10 ;
  wire \indvar_flatten_reg_218_reg[32]_i_1_n_3 ;
  wire \indvar_flatten_reg_218_reg[32]_i_1_n_4 ;
  wire \indvar_flatten_reg_218_reg[32]_i_1_n_5 ;
  wire \indvar_flatten_reg_218_reg[32]_i_1_n_6 ;
  wire \indvar_flatten_reg_218_reg[32]_i_1_n_7 ;
  wire \indvar_flatten_reg_218_reg[32]_i_1_n_8 ;
  wire \indvar_flatten_reg_218_reg[32]_i_1_n_9 ;
  wire \indvar_flatten_reg_218_reg[36]_i_1_n_10 ;
  wire \indvar_flatten_reg_218_reg[36]_i_1_n_3 ;
  wire \indvar_flatten_reg_218_reg[36]_i_1_n_4 ;
  wire \indvar_flatten_reg_218_reg[36]_i_1_n_5 ;
  wire \indvar_flatten_reg_218_reg[36]_i_1_n_6 ;
  wire \indvar_flatten_reg_218_reg[36]_i_1_n_7 ;
  wire \indvar_flatten_reg_218_reg[36]_i_1_n_8 ;
  wire \indvar_flatten_reg_218_reg[36]_i_1_n_9 ;
  wire \indvar_flatten_reg_218_reg[40]_i_1_n_10 ;
  wire \indvar_flatten_reg_218_reg[40]_i_1_n_3 ;
  wire \indvar_flatten_reg_218_reg[40]_i_1_n_4 ;
  wire \indvar_flatten_reg_218_reg[40]_i_1_n_5 ;
  wire \indvar_flatten_reg_218_reg[40]_i_1_n_6 ;
  wire \indvar_flatten_reg_218_reg[40]_i_1_n_7 ;
  wire \indvar_flatten_reg_218_reg[40]_i_1_n_8 ;
  wire \indvar_flatten_reg_218_reg[40]_i_1_n_9 ;
  wire \indvar_flatten_reg_218_reg[44]_i_1_n_10 ;
  wire \indvar_flatten_reg_218_reg[44]_i_1_n_3 ;
  wire \indvar_flatten_reg_218_reg[44]_i_1_n_4 ;
  wire \indvar_flatten_reg_218_reg[44]_i_1_n_5 ;
  wire \indvar_flatten_reg_218_reg[44]_i_1_n_6 ;
  wire \indvar_flatten_reg_218_reg[44]_i_1_n_7 ;
  wire \indvar_flatten_reg_218_reg[44]_i_1_n_8 ;
  wire \indvar_flatten_reg_218_reg[44]_i_1_n_9 ;
  wire \indvar_flatten_reg_218_reg[48]_i_1_n_10 ;
  wire \indvar_flatten_reg_218_reg[48]_i_1_n_3 ;
  wire \indvar_flatten_reg_218_reg[48]_i_1_n_4 ;
  wire \indvar_flatten_reg_218_reg[48]_i_1_n_5 ;
  wire \indvar_flatten_reg_218_reg[48]_i_1_n_6 ;
  wire \indvar_flatten_reg_218_reg[48]_i_1_n_7 ;
  wire \indvar_flatten_reg_218_reg[48]_i_1_n_8 ;
  wire \indvar_flatten_reg_218_reg[48]_i_1_n_9 ;
  wire \indvar_flatten_reg_218_reg[4]_i_1_n_10 ;
  wire \indvar_flatten_reg_218_reg[4]_i_1_n_3 ;
  wire \indvar_flatten_reg_218_reg[4]_i_1_n_4 ;
  wire \indvar_flatten_reg_218_reg[4]_i_1_n_5 ;
  wire \indvar_flatten_reg_218_reg[4]_i_1_n_6 ;
  wire \indvar_flatten_reg_218_reg[4]_i_1_n_7 ;
  wire \indvar_flatten_reg_218_reg[4]_i_1_n_8 ;
  wire \indvar_flatten_reg_218_reg[4]_i_1_n_9 ;
  wire \indvar_flatten_reg_218_reg[52]_i_1_n_10 ;
  wire \indvar_flatten_reg_218_reg[52]_i_1_n_3 ;
  wire \indvar_flatten_reg_218_reg[52]_i_1_n_4 ;
  wire \indvar_flatten_reg_218_reg[52]_i_1_n_5 ;
  wire \indvar_flatten_reg_218_reg[52]_i_1_n_6 ;
  wire \indvar_flatten_reg_218_reg[52]_i_1_n_7 ;
  wire \indvar_flatten_reg_218_reg[52]_i_1_n_8 ;
  wire \indvar_flatten_reg_218_reg[52]_i_1_n_9 ;
  wire \indvar_flatten_reg_218_reg[56]_i_1_n_10 ;
  wire \indvar_flatten_reg_218_reg[56]_i_1_n_3 ;
  wire \indvar_flatten_reg_218_reg[56]_i_1_n_4 ;
  wire \indvar_flatten_reg_218_reg[56]_i_1_n_5 ;
  wire \indvar_flatten_reg_218_reg[56]_i_1_n_6 ;
  wire \indvar_flatten_reg_218_reg[56]_i_1_n_7 ;
  wire \indvar_flatten_reg_218_reg[56]_i_1_n_8 ;
  wire \indvar_flatten_reg_218_reg[56]_i_1_n_9 ;
  wire \indvar_flatten_reg_218_reg[60]_i_1_n_10 ;
  wire \indvar_flatten_reg_218_reg[60]_i_1_n_4 ;
  wire \indvar_flatten_reg_218_reg[60]_i_1_n_5 ;
  wire \indvar_flatten_reg_218_reg[60]_i_1_n_6 ;
  wire \indvar_flatten_reg_218_reg[60]_i_1_n_7 ;
  wire \indvar_flatten_reg_218_reg[60]_i_1_n_8 ;
  wire \indvar_flatten_reg_218_reg[60]_i_1_n_9 ;
  wire \indvar_flatten_reg_218_reg[8]_i_1_n_10 ;
  wire \indvar_flatten_reg_218_reg[8]_i_1_n_3 ;
  wire \indvar_flatten_reg_218_reg[8]_i_1_n_4 ;
  wire \indvar_flatten_reg_218_reg[8]_i_1_n_5 ;
  wire \indvar_flatten_reg_218_reg[8]_i_1_n_6 ;
  wire \indvar_flatten_reg_218_reg[8]_i_1_n_7 ;
  wire \indvar_flatten_reg_218_reg[8]_i_1_n_8 ;
  wire \indvar_flatten_reg_218_reg[8]_i_1_n_9 ;
  wire [0:0]int_ap_idle_reg;
  wire [0:0]int_ap_idle_reg_0;
  wire internal_empty_n_reg;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[0]_1 ;
  wire \mOutPtr_reg[0]_2 ;
  wire \mOutPtr_reg[0]_3 ;
  wire mul_32ns_32ns_64_1_1_U26_n_10;
  wire mul_32ns_32ns_64_1_1_U26_n_100;
  wire mul_32ns_32ns_64_1_1_U26_n_101;
  wire mul_32ns_32ns_64_1_1_U26_n_102;
  wire mul_32ns_32ns_64_1_1_U26_n_103;
  wire mul_32ns_32ns_64_1_1_U26_n_104;
  wire mul_32ns_32ns_64_1_1_U26_n_105;
  wire mul_32ns_32ns_64_1_1_U26_n_106;
  wire mul_32ns_32ns_64_1_1_U26_n_107;
  wire mul_32ns_32ns_64_1_1_U26_n_108;
  wire mul_32ns_32ns_64_1_1_U26_n_109;
  wire mul_32ns_32ns_64_1_1_U26_n_11;
  wire mul_32ns_32ns_64_1_1_U26_n_110;
  wire mul_32ns_32ns_64_1_1_U26_n_111;
  wire mul_32ns_32ns_64_1_1_U26_n_112;
  wire mul_32ns_32ns_64_1_1_U26_n_113;
  wire mul_32ns_32ns_64_1_1_U26_n_114;
  wire mul_32ns_32ns_64_1_1_U26_n_115;
  wire mul_32ns_32ns_64_1_1_U26_n_116;
  wire mul_32ns_32ns_64_1_1_U26_n_117;
  wire mul_32ns_32ns_64_1_1_U26_n_118;
  wire mul_32ns_32ns_64_1_1_U26_n_119;
  wire mul_32ns_32ns_64_1_1_U26_n_12;
  wire mul_32ns_32ns_64_1_1_U26_n_120;
  wire mul_32ns_32ns_64_1_1_U26_n_121;
  wire mul_32ns_32ns_64_1_1_U26_n_122;
  wire mul_32ns_32ns_64_1_1_U26_n_123;
  wire mul_32ns_32ns_64_1_1_U26_n_124;
  wire mul_32ns_32ns_64_1_1_U26_n_125;
  wire mul_32ns_32ns_64_1_1_U26_n_126;
  wire mul_32ns_32ns_64_1_1_U26_n_127;
  wire mul_32ns_32ns_64_1_1_U26_n_128;
  wire mul_32ns_32ns_64_1_1_U26_n_129;
  wire mul_32ns_32ns_64_1_1_U26_n_13;
  wire mul_32ns_32ns_64_1_1_U26_n_130;
  wire mul_32ns_32ns_64_1_1_U26_n_131;
  wire mul_32ns_32ns_64_1_1_U26_n_132;
  wire mul_32ns_32ns_64_1_1_U26_n_133;
  wire mul_32ns_32ns_64_1_1_U26_n_134;
  wire mul_32ns_32ns_64_1_1_U26_n_135;
  wire mul_32ns_32ns_64_1_1_U26_n_136;
  wire mul_32ns_32ns_64_1_1_U26_n_137;
  wire mul_32ns_32ns_64_1_1_U26_n_138;
  wire mul_32ns_32ns_64_1_1_U26_n_139;
  wire mul_32ns_32ns_64_1_1_U26_n_14;
  wire mul_32ns_32ns_64_1_1_U26_n_140;
  wire mul_32ns_32ns_64_1_1_U26_n_141;
  wire mul_32ns_32ns_64_1_1_U26_n_142;
  wire mul_32ns_32ns_64_1_1_U26_n_143;
  wire mul_32ns_32ns_64_1_1_U26_n_144;
  wire mul_32ns_32ns_64_1_1_U26_n_145;
  wire mul_32ns_32ns_64_1_1_U26_n_146;
  wire mul_32ns_32ns_64_1_1_U26_n_147;
  wire mul_32ns_32ns_64_1_1_U26_n_148;
  wire mul_32ns_32ns_64_1_1_U26_n_149;
  wire mul_32ns_32ns_64_1_1_U26_n_15;
  wire mul_32ns_32ns_64_1_1_U26_n_150;
  wire mul_32ns_32ns_64_1_1_U26_n_151;
  wire mul_32ns_32ns_64_1_1_U26_n_152;
  wire mul_32ns_32ns_64_1_1_U26_n_153;
  wire mul_32ns_32ns_64_1_1_U26_n_154;
  wire mul_32ns_32ns_64_1_1_U26_n_155;
  wire mul_32ns_32ns_64_1_1_U26_n_156;
  wire mul_32ns_32ns_64_1_1_U26_n_157;
  wire mul_32ns_32ns_64_1_1_U26_n_158;
  wire mul_32ns_32ns_64_1_1_U26_n_159;
  wire mul_32ns_32ns_64_1_1_U26_n_16;
  wire mul_32ns_32ns_64_1_1_U26_n_160;
  wire mul_32ns_32ns_64_1_1_U26_n_161;
  wire mul_32ns_32ns_64_1_1_U26_n_162;
  wire mul_32ns_32ns_64_1_1_U26_n_163;
  wire mul_32ns_32ns_64_1_1_U26_n_167;
  wire mul_32ns_32ns_64_1_1_U26_n_168;
  wire mul_32ns_32ns_64_1_1_U26_n_17;
  wire mul_32ns_32ns_64_1_1_U26_n_18;
  wire mul_32ns_32ns_64_1_1_U26_n_19;
  wire mul_32ns_32ns_64_1_1_U26_n_20;
  wire mul_32ns_32ns_64_1_1_U26_n_21;
  wire mul_32ns_32ns_64_1_1_U26_n_22;
  wire mul_32ns_32ns_64_1_1_U26_n_23;
  wire mul_32ns_32ns_64_1_1_U26_n_24;
  wire mul_32ns_32ns_64_1_1_U26_n_25;
  wire mul_32ns_32ns_64_1_1_U26_n_26;
  wire mul_32ns_32ns_64_1_1_U26_n_27;
  wire mul_32ns_32ns_64_1_1_U26_n_28;
  wire mul_32ns_32ns_64_1_1_U26_n_29;
  wire mul_32ns_32ns_64_1_1_U26_n_3;
  wire mul_32ns_32ns_64_1_1_U26_n_30;
  wire mul_32ns_32ns_64_1_1_U26_n_31;
  wire mul_32ns_32ns_64_1_1_U26_n_32;
  wire mul_32ns_32ns_64_1_1_U26_n_33;
  wire mul_32ns_32ns_64_1_1_U26_n_34;
  wire mul_32ns_32ns_64_1_1_U26_n_35;
  wire mul_32ns_32ns_64_1_1_U26_n_36;
  wire mul_32ns_32ns_64_1_1_U26_n_37;
  wire mul_32ns_32ns_64_1_1_U26_n_38;
  wire mul_32ns_32ns_64_1_1_U26_n_39;
  wire mul_32ns_32ns_64_1_1_U26_n_4;
  wire mul_32ns_32ns_64_1_1_U26_n_40;
  wire mul_32ns_32ns_64_1_1_U26_n_41;
  wire mul_32ns_32ns_64_1_1_U26_n_42;
  wire mul_32ns_32ns_64_1_1_U26_n_43;
  wire mul_32ns_32ns_64_1_1_U26_n_44;
  wire mul_32ns_32ns_64_1_1_U26_n_45;
  wire mul_32ns_32ns_64_1_1_U26_n_46;
  wire mul_32ns_32ns_64_1_1_U26_n_47;
  wire mul_32ns_32ns_64_1_1_U26_n_48;
  wire mul_32ns_32ns_64_1_1_U26_n_49;
  wire mul_32ns_32ns_64_1_1_U26_n_5;
  wire mul_32ns_32ns_64_1_1_U26_n_50;
  wire mul_32ns_32ns_64_1_1_U26_n_51;
  wire mul_32ns_32ns_64_1_1_U26_n_52;
  wire mul_32ns_32ns_64_1_1_U26_n_53;
  wire mul_32ns_32ns_64_1_1_U26_n_54;
  wire mul_32ns_32ns_64_1_1_U26_n_55;
  wire mul_32ns_32ns_64_1_1_U26_n_56;
  wire mul_32ns_32ns_64_1_1_U26_n_57;
  wire mul_32ns_32ns_64_1_1_U26_n_58;
  wire mul_32ns_32ns_64_1_1_U26_n_59;
  wire mul_32ns_32ns_64_1_1_U26_n_6;
  wire mul_32ns_32ns_64_1_1_U26_n_60;
  wire mul_32ns_32ns_64_1_1_U26_n_61;
  wire mul_32ns_32ns_64_1_1_U26_n_62;
  wire mul_32ns_32ns_64_1_1_U26_n_63;
  wire mul_32ns_32ns_64_1_1_U26_n_64;
  wire mul_32ns_32ns_64_1_1_U26_n_65;
  wire mul_32ns_32ns_64_1_1_U26_n_66;
  wire mul_32ns_32ns_64_1_1_U26_n_67;
  wire mul_32ns_32ns_64_1_1_U26_n_68;
  wire mul_32ns_32ns_64_1_1_U26_n_69;
  wire mul_32ns_32ns_64_1_1_U26_n_7;
  wire mul_32ns_32ns_64_1_1_U26_n_70;
  wire mul_32ns_32ns_64_1_1_U26_n_71;
  wire mul_32ns_32ns_64_1_1_U26_n_72;
  wire mul_32ns_32ns_64_1_1_U26_n_73;
  wire mul_32ns_32ns_64_1_1_U26_n_74;
  wire mul_32ns_32ns_64_1_1_U26_n_75;
  wire mul_32ns_32ns_64_1_1_U26_n_76;
  wire mul_32ns_32ns_64_1_1_U26_n_77;
  wire mul_32ns_32ns_64_1_1_U26_n_78;
  wire mul_32ns_32ns_64_1_1_U26_n_79;
  wire mul_32ns_32ns_64_1_1_U26_n_8;
  wire mul_32ns_32ns_64_1_1_U26_n_80;
  wire mul_32ns_32ns_64_1_1_U26_n_81;
  wire mul_32ns_32ns_64_1_1_U26_n_82;
  wire mul_32ns_32ns_64_1_1_U26_n_83;
  wire mul_32ns_32ns_64_1_1_U26_n_84;
  wire mul_32ns_32ns_64_1_1_U26_n_85;
  wire mul_32ns_32ns_64_1_1_U26_n_86;
  wire mul_32ns_32ns_64_1_1_U26_n_87;
  wire mul_32ns_32ns_64_1_1_U26_n_88;
  wire mul_32ns_32ns_64_1_1_U26_n_89;
  wire mul_32ns_32ns_64_1_1_U26_n_9;
  wire mul_32ns_32ns_64_1_1_U26_n_90;
  wire mul_32ns_32ns_64_1_1_U26_n_91;
  wire mul_32ns_32ns_64_1_1_U26_n_92;
  wire mul_32ns_32ns_64_1_1_U26_n_93;
  wire mul_32ns_32ns_64_1_1_U26_n_94;
  wire mul_32ns_32ns_64_1_1_U26_n_95;
  wire mul_32ns_32ns_64_1_1_U26_n_96;
  wire mul_32ns_32ns_64_1_1_U26_n_97;
  wire mul_32ns_32ns_64_1_1_U26_n_98;
  wire mul_32ns_32ns_64_1_1_U26_n_99;
  wire \mul_ln73_reg_663_reg[0]__0_n_3 ;
  wire \mul_ln73_reg_663_reg[10]__0_n_3 ;
  wire \mul_ln73_reg_663_reg[11]__0_n_3 ;
  wire \mul_ln73_reg_663_reg[12]__0_n_3 ;
  wire \mul_ln73_reg_663_reg[13]__0_n_3 ;
  wire \mul_ln73_reg_663_reg[14]__0_n_3 ;
  wire \mul_ln73_reg_663_reg[15]__0_n_3 ;
  wire \mul_ln73_reg_663_reg[16]__0_n_3 ;
  wire \mul_ln73_reg_663_reg[1]__0_n_3 ;
  wire \mul_ln73_reg_663_reg[2]__0_n_3 ;
  wire \mul_ln73_reg_663_reg[3]__0_n_3 ;
  wire \mul_ln73_reg_663_reg[4]__0_n_3 ;
  wire \mul_ln73_reg_663_reg[5]__0_n_3 ;
  wire \mul_ln73_reg_663_reg[6]__0_n_3 ;
  wire \mul_ln73_reg_663_reg[7]__0_n_3 ;
  wire \mul_ln73_reg_663_reg[8]__0_n_3 ;
  wire \mul_ln73_reg_663_reg[9]__0_n_3 ;
  wire mul_ln73_reg_663_reg__0_n_100;
  wire mul_ln73_reg_663_reg__0_n_101;
  wire mul_ln73_reg_663_reg__0_n_102;
  wire mul_ln73_reg_663_reg__0_n_103;
  wire mul_ln73_reg_663_reg__0_n_104;
  wire mul_ln73_reg_663_reg__0_n_105;
  wire mul_ln73_reg_663_reg__0_n_106;
  wire mul_ln73_reg_663_reg__0_n_107;
  wire mul_ln73_reg_663_reg__0_n_108;
  wire mul_ln73_reg_663_reg__0_n_61;
  wire mul_ln73_reg_663_reg__0_n_62;
  wire mul_ln73_reg_663_reg__0_n_63;
  wire mul_ln73_reg_663_reg__0_n_64;
  wire mul_ln73_reg_663_reg__0_n_65;
  wire mul_ln73_reg_663_reg__0_n_66;
  wire mul_ln73_reg_663_reg__0_n_67;
  wire mul_ln73_reg_663_reg__0_n_68;
  wire mul_ln73_reg_663_reg__0_n_69;
  wire mul_ln73_reg_663_reg__0_n_70;
  wire mul_ln73_reg_663_reg__0_n_71;
  wire mul_ln73_reg_663_reg__0_n_72;
  wire mul_ln73_reg_663_reg__0_n_73;
  wire mul_ln73_reg_663_reg__0_n_74;
  wire mul_ln73_reg_663_reg__0_n_75;
  wire mul_ln73_reg_663_reg__0_n_76;
  wire mul_ln73_reg_663_reg__0_n_77;
  wire mul_ln73_reg_663_reg__0_n_78;
  wire mul_ln73_reg_663_reg__0_n_79;
  wire mul_ln73_reg_663_reg__0_n_80;
  wire mul_ln73_reg_663_reg__0_n_81;
  wire mul_ln73_reg_663_reg__0_n_82;
  wire mul_ln73_reg_663_reg__0_n_83;
  wire mul_ln73_reg_663_reg__0_n_84;
  wire mul_ln73_reg_663_reg__0_n_85;
  wire mul_ln73_reg_663_reg__0_n_86;
  wire mul_ln73_reg_663_reg__0_n_87;
  wire mul_ln73_reg_663_reg__0_n_88;
  wire mul_ln73_reg_663_reg__0_n_89;
  wire mul_ln73_reg_663_reg__0_n_90;
  wire mul_ln73_reg_663_reg__0_n_91;
  wire mul_ln73_reg_663_reg__0_n_92;
  wire mul_ln73_reg_663_reg__0_n_93;
  wire mul_ln73_reg_663_reg__0_n_94;
  wire mul_ln73_reg_663_reg__0_n_95;
  wire mul_ln73_reg_663_reg__0_n_96;
  wire mul_ln73_reg_663_reg__0_n_97;
  wire mul_ln73_reg_663_reg__0_n_98;
  wire mul_ln73_reg_663_reg__0_n_99;
  wire mul_ln73_reg_663_reg_n_100;
  wire mul_ln73_reg_663_reg_n_101;
  wire mul_ln73_reg_663_reg_n_102;
  wire mul_ln73_reg_663_reg_n_103;
  wire mul_ln73_reg_663_reg_n_104;
  wire mul_ln73_reg_663_reg_n_105;
  wire mul_ln73_reg_663_reg_n_106;
  wire mul_ln73_reg_663_reg_n_107;
  wire mul_ln73_reg_663_reg_n_108;
  wire \mul_ln73_reg_663_reg_n_3_[0] ;
  wire \mul_ln73_reg_663_reg_n_3_[10] ;
  wire \mul_ln73_reg_663_reg_n_3_[11] ;
  wire \mul_ln73_reg_663_reg_n_3_[12] ;
  wire \mul_ln73_reg_663_reg_n_3_[13] ;
  wire \mul_ln73_reg_663_reg_n_3_[14] ;
  wire \mul_ln73_reg_663_reg_n_3_[15] ;
  wire \mul_ln73_reg_663_reg_n_3_[16] ;
  wire \mul_ln73_reg_663_reg_n_3_[1] ;
  wire \mul_ln73_reg_663_reg_n_3_[2] ;
  wire \mul_ln73_reg_663_reg_n_3_[3] ;
  wire \mul_ln73_reg_663_reg_n_3_[4] ;
  wire \mul_ln73_reg_663_reg_n_3_[5] ;
  wire \mul_ln73_reg_663_reg_n_3_[6] ;
  wire \mul_ln73_reg_663_reg_n_3_[7] ;
  wire \mul_ln73_reg_663_reg_n_3_[8] ;
  wire \mul_ln73_reg_663_reg_n_3_[9] ;
  wire mul_ln73_reg_663_reg_n_61;
  wire mul_ln73_reg_663_reg_n_62;
  wire mul_ln73_reg_663_reg_n_63;
  wire mul_ln73_reg_663_reg_n_64;
  wire mul_ln73_reg_663_reg_n_65;
  wire mul_ln73_reg_663_reg_n_66;
  wire mul_ln73_reg_663_reg_n_67;
  wire mul_ln73_reg_663_reg_n_68;
  wire mul_ln73_reg_663_reg_n_69;
  wire mul_ln73_reg_663_reg_n_70;
  wire mul_ln73_reg_663_reg_n_71;
  wire mul_ln73_reg_663_reg_n_72;
  wire mul_ln73_reg_663_reg_n_73;
  wire mul_ln73_reg_663_reg_n_74;
  wire mul_ln73_reg_663_reg_n_75;
  wire mul_ln73_reg_663_reg_n_76;
  wire mul_ln73_reg_663_reg_n_77;
  wire mul_ln73_reg_663_reg_n_78;
  wire mul_ln73_reg_663_reg_n_79;
  wire mul_ln73_reg_663_reg_n_80;
  wire mul_ln73_reg_663_reg_n_81;
  wire mul_ln73_reg_663_reg_n_82;
  wire mul_ln73_reg_663_reg_n_83;
  wire mul_ln73_reg_663_reg_n_84;
  wire mul_ln73_reg_663_reg_n_85;
  wire mul_ln73_reg_663_reg_n_86;
  wire mul_ln73_reg_663_reg_n_87;
  wire mul_ln73_reg_663_reg_n_88;
  wire mul_ln73_reg_663_reg_n_89;
  wire mul_ln73_reg_663_reg_n_90;
  wire mul_ln73_reg_663_reg_n_91;
  wire mul_ln73_reg_663_reg_n_92;
  wire mul_ln73_reg_663_reg_n_93;
  wire mul_ln73_reg_663_reg_n_94;
  wire mul_ln73_reg_663_reg_n_95;
  wire mul_ln73_reg_663_reg_n_96;
  wire mul_ln73_reg_663_reg_n_97;
  wire mul_ln73_reg_663_reg_n_98;
  wire mul_ln73_reg_663_reg_n_99;
  wire op_assign_1_reg_8190;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire p_reg_reg_i_100_n_3;
  wire p_reg_reg_i_101_n_3;
  wire p_reg_reg_i_102_n_3;
  wire p_reg_reg_i_103_n_3;
  wire p_reg_reg_i_104_n_3;
  wire p_reg_reg_i_105_n_3;
  wire p_reg_reg_i_106_n_3;
  wire p_reg_reg_i_107_n_3;
  wire p_reg_reg_i_108_n_3;
  wire p_reg_reg_i_109_n_3;
  wire p_reg_reg_i_25_n_6;
  wire [0:0]p_reg_reg_i_26_0;
  wire [0:0]p_reg_reg_i_26_1;
  wire p_reg_reg_i_26_n_3;
  wire p_reg_reg_i_26_n_4;
  wire p_reg_reg_i_26_n_5;
  wire p_reg_reg_i_26_n_6;
  wire p_reg_reg_i_27_n_3;
  wire p_reg_reg_i_27_n_4;
  wire p_reg_reg_i_27_n_5;
  wire p_reg_reg_i_27_n_6;
  wire p_reg_reg_i_28_n_3;
  wire p_reg_reg_i_28_n_4;
  wire p_reg_reg_i_28_n_5;
  wire p_reg_reg_i_28_n_6;
  wire p_reg_reg_i_29_n_6;
  wire p_reg_reg_i_30_n_3;
  wire p_reg_reg_i_30_n_4;
  wire p_reg_reg_i_30_n_5;
  wire p_reg_reg_i_30_n_6;
  wire p_reg_reg_i_31_n_3;
  wire p_reg_reg_i_31_n_4;
  wire p_reg_reg_i_31_n_5;
  wire p_reg_reg_i_31_n_6;
  wire p_reg_reg_i_32_n_3;
  wire p_reg_reg_i_33_n_3;
  wire p_reg_reg_i_36_n_3;
  wire p_reg_reg_i_37_n_3;
  wire p_reg_reg_i_38_n_3;
  wire p_reg_reg_i_39_n_3;
  wire p_reg_reg_i_44_n_3;
  wire p_reg_reg_i_45_n_3;
  wire p_reg_reg_i_46_n_3;
  wire p_reg_reg_i_47_n_3;
  wire p_reg_reg_i_52_n_3;
  wire p_reg_reg_i_53_n_3;
  wire p_reg_reg_i_54_n_3;
  wire p_reg_reg_i_55_n_3;
  wire p_reg_reg_i_56_n_3;
  wire p_reg_reg_i_57_n_3;
  wire p_reg_reg_i_58_n_3;
  wire p_reg_reg_i_59_n_3;
  wire p_reg_reg_i_60_n_3;
  wire p_reg_reg_i_61_n_3;
  wire p_reg_reg_i_62_n_3;
  wire p_reg_reg_i_63_n_3;
  wire p_reg_reg_i_69_n_3;
  wire p_reg_reg_i_69_n_4;
  wire p_reg_reg_i_69_n_5;
  wire p_reg_reg_i_69_n_6;
  wire p_reg_reg_i_88_n_3;
  wire p_reg_reg_i_89_n_3;
  wire p_reg_reg_i_90_n_3;
  wire p_reg_reg_i_91_n_3;
  wire p_reg_reg_i_95_n_3;
  wire p_reg_reg_i_95_n_4;
  wire p_reg_reg_i_95_n_5;
  wire p_reg_reg_i_95_n_6;
  wire p_reg_reg_i_96_n_3;
  wire p_reg_reg_i_96_n_4;
  wire p_reg_reg_i_96_n_5;
  wire p_reg_reg_i_96_n_6;
  wire p_reg_reg_i_97_n_3;
  wire p_reg_reg_i_97_n_4;
  wire p_reg_reg_i_97_n_5;
  wire p_reg_reg_i_97_n_6;
  wire p_reg_reg_i_98_n_3;
  wire p_reg_reg_i_99_n_3;
  wire [7:0]r_V_reg_690;
  wire [7:0]r_V_reg_690_pp0_iter2_reg;
  wire [7:0]r_V_reg_690_pp0_iter3_reg;
  wire [7:0]ret_14_fu_445_p20_out;
  wire rgb2hsv_data_full_n;
  wire select_ln159_fu_609_p30;
  wire [0:0]sext_ln157_2_fu_521_p1;
  wire [9:0]sext_ln157_3_fu_549_p1;
  wire [7:0]sext_ln157_fu_472_p1;
  wire shiftReg_ce;
  wire shiftReg_ce_0;
  wire [5:1]trunc_ln159_1_fu_600_p4;
  wire vg_fu_403_p2;
  wire vg_reg_778;
  wire \vg_reg_778[0]_i_2_n_3 ;
  wire \vg_reg_778[0]_i_3_n_3 ;
  wire \vg_reg_778[0]_i_4_n_3 ;
  wire \vg_reg_778_reg[0]_i_1_n_4 ;
  wire \vg_reg_778_reg[0]_i_1_n_5 ;
  wire \vg_reg_778_reg[0]_i_1_n_6 ;
  wire [7:0]vmin_V_fu_348_p20_out;
  wire [7:0]vmin_V_reg_745;
  wire vmin_V_reg_7450;
  wire [7:0]vmin_V_reg_745_pp0_iter5_reg;
  wire void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U_n_20;
  wire void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U_n_21;
  wire void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U_n_22;
  wire void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U_n_23;
  wire [16:0]void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_q0;
  wire void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U_n_24;
  wire void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U_n_25;
  wire void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U_n_26;
  wire [7:0]void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0;
  wire [8:8]void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0__0;
  wire void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0;
  wire [19:0]void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_q0;
  wire vr_fu_395_p2;
  wire vr_reg_772;
  wire \vr_reg_772[0]_i_3_n_3 ;
  wire \vr_reg_772[0]_i_4_n_3 ;
  wire \vr_reg_772[0]_i_5_n_3 ;
  wire \vr_reg_772_reg[0]_i_1_n_4 ;
  wire \vr_reg_772_reg[0]_i_1_n_5 ;
  wire \vr_reg_772_reg[0]_i_1_n_6 ;
  wire xfMat2axis_24_9_2160_3840_1_U0_ap_start;
  wire xf_cv_icvSaturate8u_cv_U_n_20;
  wire xf_cv_icvSaturate8u_cv_U_n_29;
  wire xf_cv_icvSaturate8u_cv_U_n_30;
  wire xf_cv_icvSaturate8u_cv_U_n_31;
  wire xf_cv_icvSaturate8u_cv_U_n_32;
  wire xf_cv_icvSaturate8u_cv_U_n_33;
  wire xf_cv_icvSaturate8u_cv_U_n_34;
  wire xf_cv_icvSaturate8u_cv_U_n_35;
  wire xf_cv_icvSaturate8u_cv_U_n_36;
  wire xf_cv_icvSaturate8u_cv_U_n_37;
  wire xf_cv_icvSaturate8u_cv_U_n_38;
  wire xf_cv_icvSaturate8u_cv_U_n_39;
  wire xf_cv_icvSaturate8u_cv_U_n_40;
  wire xf_cv_icvSaturate8u_cv_U_n_41;
  wire xf_cv_icvSaturate8u_cv_U_n_42;
  wire xf_cv_icvSaturate8u_cv_U_n_43;
  wire xf_cv_icvSaturate8u_cv_U_n_44;
  wire xf_cv_icvSaturate8u_cv_U_n_61;
  wire xf_cv_icvSaturate8u_cv_U_n_63;
  wire xf_cv_icvSaturate8u_cv_U_n_64;
  wire xf_cv_icvSaturate8u_cv_U_n_65;
  wire xf_cv_icvSaturate8u_cv_U_n_66;
  wire xf_cv_icvSaturate8u_cv_U_n_67;
  wire xf_cv_icvSaturate8u_cv_U_n_68;
  wire xf_cv_icvSaturate8u_cv_U_n_69;
  wire xf_cv_icvSaturate8u_cv_U_n_70;
  wire xf_cv_icvSaturate8u_cv_U_n_71;
  wire xf_cv_icvSaturate8u_cv_U_n_72;
  wire xf_cv_icvSaturate8u_cv_U_n_73;
  wire xf_cv_icvSaturate8u_cv_U_n_74;
  wire xf_cv_icvSaturate8u_cv_U_n_75;
  wire xf_cv_icvSaturate8u_cv_U_n_76;
  wire xf_cv_icvSaturate8u_cv_U_n_77;
  wire xf_cv_icvSaturate8u_cv_U_n_78;
  wire xf_cv_icvSaturate8u_cv_U_n_79;
  wire xf_cv_icvSaturate8u_cv_U_n_80;
  wire xf_cv_icvSaturate8u_cv_U_n_81;
  wire xf_cv_icvSaturate8u_cv_U_n_82;
  wire xf_cv_icvSaturate8u_cv_U_n_83;
  wire xf_cv_icvSaturate8u_cv_U_n_84;
  wire xf_cv_icvSaturate8u_cv_U_n_85;
  wire xf_cv_icvSaturate8u_cv_U_n_86;
  wire xf_cv_icvSaturate8u_cv_U_n_87;
  wire xf_cv_icvSaturate8u_cv_U_n_88;
  wire xf_cv_icvSaturate8u_cv_U_n_89;
  wire [7:0]xf_cv_icvSaturate8u_cv_load_reg_719;
  wire [7:0]xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg;
  wire [8:0]zext_ln123_1_reg_730_reg;
  wire \zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[0] ;
  wire \zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[1] ;
  wire \zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[2] ;
  wire \zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[3] ;
  wire \zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[4] ;
  wire \zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[5] ;
  wire \zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[6] ;
  wire \zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[7] ;
  wire [7:0]zext_ln123_reg_696_pp0_iter4_reg_reg;
  wire [7:0]zext_ln123_reg_696_pp0_iter5_reg_reg;
  wire [7:0]zext_ln123_reg_696_reg;
  wire zext_ln123_reg_696_reg0;
  wire [7:0]zext_ln1347_1_reg_735;
  wire \zext_ln1347_reg_703_pp0_iter4_reg_reg[0]_srl2_n_3 ;
  wire \zext_ln1347_reg_703_pp0_iter4_reg_reg[1]_srl2_n_3 ;
  wire \zext_ln1347_reg_703_pp0_iter4_reg_reg[2]_srl2_n_3 ;
  wire \zext_ln1347_reg_703_pp0_iter4_reg_reg[3]_srl2_n_3 ;
  wire \zext_ln1347_reg_703_pp0_iter4_reg_reg[4]_srl2_n_3 ;
  wire \zext_ln1347_reg_703_pp0_iter4_reg_reg[5]_srl2_n_3 ;
  wire \zext_ln1347_reg_703_pp0_iter4_reg_reg[6]_srl2_n_3 ;
  wire \zext_ln1347_reg_703_pp0_iter4_reg_reg[7]_srl2_n_3 ;
  wire [7:0]zext_ln1347_reg_703_pp0_iter5_reg_reg;
  wire [7:0]zext_ln1347_reg_703_reg;
  wire [7:0]zext_ln215_1_reg_750_pp0_iter5_reg;
  wire [6:0]\zext_ln215_1_reg_750_pp0_iter5_reg_reg[7]_0 ;
  wire [0:0]\zext_ln215_1_reg_750_pp0_iter5_reg_reg[7]_1 ;
  wire [3:2]\NLW_SRL_SIG_reg[0][7]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_SRL_SIG_reg[0][7]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_indvar_flatten_reg_218_reg[0]_i_24_O_UNCONNECTED ;
  wire [3:3]\NLW_indvar_flatten_reg_218_reg[60]_i_1_CO_UNCONNECTED ;
  wire NLW_mul_ln73_reg_663_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln73_reg_663_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln73_reg_663_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln73_reg_663_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln73_reg_663_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln73_reg_663_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln73_reg_663_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln73_reg_663_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln73_reg_663_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln73_reg_663_reg_PCOUT_UNCONNECTED;
  wire NLW_mul_ln73_reg_663_reg__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln73_reg_663_reg__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln73_reg_663_reg__0_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln73_reg_663_reg__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln73_reg_663_reg__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln73_reg_663_reg__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln73_reg_663_reg__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln73_reg_663_reg__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln73_reg_663_reg__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln73_reg_663_reg__0_PCOUT_UNCONNECTED;
  wire [3:1]NLW_p_reg_reg_i_25_CO_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_i_25_O_UNCONNECTED;
  wire [3:1]NLW_p_reg_reg_i_29_CO_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_i_29_O_UNCONNECTED;
  wire [3:1]NLW_p_reg_reg_i_71_CO_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_i_71_O_UNCONNECTED;
  wire [3:1]NLW_p_reg_reg_i_74_CO_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_i_74_O_UNCONNECTED;
  wire [3:0]\NLW_vg_reg_778_reg[0]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_vr_reg_772_reg[0]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00000000FD000000)) 
    \SRL_SIG[0][23]_i_1 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_3),
        .I1(imgInput_data_empty_n),
        .I2(\icmp_ln128_reg_673_reg_n_3_[0] ),
        .I3(rgb2hsv_data_full_n),
        .I4(ap_enable_reg_pp0_iter10_reg_n_3),
        .I5(icmp_ln128_reg_673_pp0_iter9_reg),
        .O(shiftReg_ce));
  LUT1 #(
    .INIT(2'h1)) 
    \SRL_SIG[0][4]_i_2 
       (.I0(trunc_ln159_1_fu_600_p4[4]),
        .O(\SRL_SIG[0][4]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SRL_SIG[0][4]_i_4 
       (.I0(select_ln159_fu_609_p30),
        .I1(trunc_ln159_1_fu_600_p4[2]),
        .O(\SRL_SIG[0][4]_i_4_n_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \SRL_SIG_reg[0][4]_i_1 
       (.CI(1'b0),
        .CO({\SRL_SIG_reg[0][4]_i_1_n_3 ,\SRL_SIG_reg[0][4]_i_1_n_4 ,\SRL_SIG_reg[0][4]_i_1_n_5 ,\SRL_SIG_reg[0][4]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({\SRL_SIG[0][4]_i_2_n_3 ,1'b0,select_ln159_fu_609_p30,1'b0}),
        .O(D[4:1]),
        .S({ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U28_n_13,trunc_ln159_1_fu_600_p4[3],\SRL_SIG[0][4]_i_4_n_3 ,trunc_ln159_1_fu_600_p4[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \SRL_SIG_reg[0][7]_i_1 
       (.CI(\SRL_SIG_reg[0][4]_i_1_n_3 ),
        .CO({\NLW_SRL_SIG_reg[0][7]_i_1_CO_UNCONNECTED [3:2],\SRL_SIG_reg[0][7]_i_1_n_5 ,\SRL_SIG_reg[0][7]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,trunc_ln159_1_fu_600_p4[5:4]}),
        .O({\NLW_SRL_SIG_reg[0][7]_i_1_O_UNCONNECTED [3],D[7:5]}),
        .S({1'b0,ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U28_n_10,ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U28_n_11,ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U28_n_12}));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln213_1_reg_766[7]_i_1 
       (.I0(ap_block_pp0_stage0_11001),
        .I1(icmp_ln128_reg_673_pp0_iter4_reg),
        .O(add_ln213_1_reg_7660));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/add_ln213_1_reg_766_pp0_iter9_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/add_ln213_1_reg_766_pp0_iter9_reg_reg[0]_srl4 " *) 
  SRL16E \add_ln213_1_reg_766_pp0_iter9_reg_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(add_ln213_1_reg_766[0]),
        .Q(D[16]));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/add_ln213_1_reg_766_pp0_iter9_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/add_ln213_1_reg_766_pp0_iter9_reg_reg[1]_srl4 " *) 
  SRL16E \add_ln213_1_reg_766_pp0_iter9_reg_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(add_ln213_1_reg_766[1]),
        .Q(D[17]));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/add_ln213_1_reg_766_pp0_iter9_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/add_ln213_1_reg_766_pp0_iter9_reg_reg[2]_srl4 " *) 
  SRL16E \add_ln213_1_reg_766_pp0_iter9_reg_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(add_ln213_1_reg_766[2]),
        .Q(D[18]));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/add_ln213_1_reg_766_pp0_iter9_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/add_ln213_1_reg_766_pp0_iter9_reg_reg[3]_srl4 " *) 
  SRL16E \add_ln213_1_reg_766_pp0_iter9_reg_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(add_ln213_1_reg_766[3]),
        .Q(D[19]));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/add_ln213_1_reg_766_pp0_iter9_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/add_ln213_1_reg_766_pp0_iter9_reg_reg[4]_srl4 " *) 
  SRL16E \add_ln213_1_reg_766_pp0_iter9_reg_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(add_ln213_1_reg_766[4]),
        .Q(D[20]));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/add_ln213_1_reg_766_pp0_iter9_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/add_ln213_1_reg_766_pp0_iter9_reg_reg[5]_srl4 " *) 
  SRL16E \add_ln213_1_reg_766_pp0_iter9_reg_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(add_ln213_1_reg_766[5]),
        .Q(D[21]));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/add_ln213_1_reg_766_pp0_iter9_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/add_ln213_1_reg_766_pp0_iter9_reg_reg[6]_srl4 " *) 
  SRL16E \add_ln213_1_reg_766_pp0_iter9_reg_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(add_ln213_1_reg_766[6]),
        .Q(D[22]));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/add_ln213_1_reg_766_pp0_iter9_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/add_ln213_1_reg_766_pp0_iter9_reg_reg[7]_srl4 " *) 
  SRL16E \add_ln213_1_reg_766_pp0_iter9_reg_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(add_ln213_1_reg_766[7]),
        .Q(D[23]));
  FDRE \add_ln213_1_reg_766_reg[0] 
       (.C(ap_clk),
        .CE(add_ln213_1_reg_7660),
        .D(add_ln213_1_fu_390_p2[0]),
        .Q(add_ln213_1_reg_766[0]),
        .R(1'b0));
  FDRE \add_ln213_1_reg_766_reg[1] 
       (.C(ap_clk),
        .CE(add_ln213_1_reg_7660),
        .D(add_ln213_1_fu_390_p2[1]),
        .Q(add_ln213_1_reg_766[1]),
        .R(1'b0));
  FDRE \add_ln213_1_reg_766_reg[2] 
       (.C(ap_clk),
        .CE(add_ln213_1_reg_7660),
        .D(add_ln213_1_fu_390_p2[2]),
        .Q(add_ln213_1_reg_766[2]),
        .R(1'b0));
  FDRE \add_ln213_1_reg_766_reg[3] 
       (.C(ap_clk),
        .CE(add_ln213_1_reg_7660),
        .D(add_ln213_1_fu_390_p2[3]),
        .Q(add_ln213_1_reg_766[3]),
        .R(1'b0));
  FDRE \add_ln213_1_reg_766_reg[4] 
       (.C(ap_clk),
        .CE(add_ln213_1_reg_7660),
        .D(add_ln213_1_fu_390_p2[4]),
        .Q(add_ln213_1_reg_766[4]),
        .R(1'b0));
  FDRE \add_ln213_1_reg_766_reg[5] 
       (.C(ap_clk),
        .CE(add_ln213_1_reg_7660),
        .D(add_ln213_1_fu_390_p2[5]),
        .Q(add_ln213_1_reg_766[5]),
        .R(1'b0));
  FDRE \add_ln213_1_reg_766_reg[6] 
       (.C(ap_clk),
        .CE(add_ln213_1_reg_7660),
        .D(add_ln213_1_fu_390_p2[6]),
        .Q(add_ln213_1_reg_766[6]),
        .R(1'b0));
  FDRE \add_ln213_1_reg_766_reg[7] 
       (.C(ap_clk),
        .CE(add_ln213_1_reg_7660),
        .D(add_ln213_1_fu_390_p2[7]),
        .Q(add_ln213_1_reg_766[7]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_ama_addmuladd_13s_9s_17ns_13ns_30_4_1 ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U28
       (.B(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_q0),
        .CO(p_reg_reg_i_25_n_6),
        .P({select_ln159_fu_609_p30,trunc_ln159_1_fu_600_p4,D[0]}),
        .S({ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U28_n_10,ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U28_n_11,ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U28_n_12}),
        .add_ln157_2_fu_553_p2(add_ln157_2_fu_553_p2),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .grp_fu_632_ce(grp_fu_632_ce),
        .icmp_ln128_reg_673_pp0_iter5_reg(icmp_ln128_reg_673_pp0_iter5_reg),
        .p_reg_reg(ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U28_n_13),
        .p_reg_reg_0(p_reg_reg_i_29_n_6),
        .ret_14_fu_445_p20_out(ret_14_fu_445_p20_out),
        .vr_reg_772(vr_reg_772));
  LUT5 #(
    .INIT(32'hFFFF70F0)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(imgInput_cols_c10_empty_n),
        .I1(imgInput_rows_c9_empty_n),
        .I2(Q[0]),
        .I3(bgr2hsv_9_2160_3840_1_U0_ap_start),
        .I4(Q[1]),
        .O(ap_NS_fsm[0]));
  LUT4 #(
    .INIT(16'h0100)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(Q[1]),
        .I3(bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read),
        .O(ap_NS_fsm[1]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32ns_32ns_64_1_1_U26_n_167),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00A0C0A0)) 
    ap_enable_reg_pp0_iter10_i_1
       (.I0(ap_enable_reg_pp0_iter9),
        .I1(ap_enable_reg_pp0_iter10_reg_n_3),
        .I2(ap_rst_n),
        .I3(ap_block_pp0_stage0_11001),
        .I4(ap_CS_fsm_state2),
        .O(ap_enable_reg_pp0_iter10_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter10_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter10_i_1_n_3),
        .Q(ap_enable_reg_pp0_iter10_reg_n_3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32ns_32ns_64_1_1_U26_n_163),
        .Q(ap_enable_reg_pp0_iter1_reg_n_3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter1_reg_n_3),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter2),
        .Q(ap_enable_reg_pp0_iter3),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter3),
        .Q(ap_enable_reg_pp0_iter4),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter5_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter4),
        .Q(ap_enable_reg_pp0_iter5),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter6_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter5),
        .Q(ap_enable_reg_pp0_iter6),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter7_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter6),
        .Q(ap_enable_reg_pp0_iter7),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter8_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter7),
        .Q(ap_enable_reg_pp0_iter8),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter9_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter8),
        .Q(ap_enable_reg_pp0_iter9),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFBFBFB00FBFBFBFB)) 
    \b_V_reg_677_pp0_iter2_reg[7]_i_1 
       (.I0(icmp_ln128_reg_673_pp0_iter9_reg),
        .I1(ap_enable_reg_pp0_iter10_reg_n_3),
        .I2(rgb2hsv_data_full_n),
        .I3(\icmp_ln128_reg_673_reg_n_3_[0] ),
        .I4(imgInput_data_empty_n),
        .I5(ap_enable_reg_pp0_iter1_reg_n_3),
        .O(ap_block_pp0_stage0_subdone));
  FDRE \b_V_reg_677_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677[0]),
        .Q(b_V_reg_677_pp0_iter2_reg[0]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter2_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677[1]),
        .Q(b_V_reg_677_pp0_iter2_reg[1]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter2_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677[2]),
        .Q(b_V_reg_677_pp0_iter2_reg[2]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter2_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677[3]),
        .Q(b_V_reg_677_pp0_iter2_reg[3]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter2_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677[4]),
        .Q(b_V_reg_677_pp0_iter2_reg[4]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter2_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677[5]),
        .Q(b_V_reg_677_pp0_iter2_reg[5]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter2_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677[6]),
        .Q(b_V_reg_677_pp0_iter2_reg[6]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter2_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677[7]),
        .Q(b_V_reg_677_pp0_iter2_reg[7]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677_pp0_iter2_reg[0]),
        .Q(b_V_reg_677_pp0_iter3_reg[0]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter3_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677_pp0_iter2_reg[1]),
        .Q(b_V_reg_677_pp0_iter3_reg[1]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter3_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677_pp0_iter2_reg[2]),
        .Q(b_V_reg_677_pp0_iter3_reg[2]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter3_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677_pp0_iter2_reg[3]),
        .Q(b_V_reg_677_pp0_iter3_reg[3]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter3_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677_pp0_iter2_reg[4]),
        .Q(b_V_reg_677_pp0_iter3_reg[4]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter3_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677_pp0_iter2_reg[5]),
        .Q(b_V_reg_677_pp0_iter3_reg[5]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter3_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677_pp0_iter2_reg[6]),
        .Q(b_V_reg_677_pp0_iter3_reg[6]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter3_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677_pp0_iter2_reg[7]),
        .Q(b_V_reg_677_pp0_iter3_reg[7]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter4_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677_pp0_iter3_reg[0]),
        .Q(b_V_reg_677_pp0_iter4_reg[0]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter4_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677_pp0_iter3_reg[1]),
        .Q(b_V_reg_677_pp0_iter4_reg[1]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter4_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677_pp0_iter3_reg[2]),
        .Q(b_V_reg_677_pp0_iter4_reg[2]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter4_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677_pp0_iter3_reg[3]),
        .Q(b_V_reg_677_pp0_iter4_reg[3]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter4_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677_pp0_iter3_reg[4]),
        .Q(b_V_reg_677_pp0_iter4_reg[4]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter4_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677_pp0_iter3_reg[5]),
        .Q(b_V_reg_677_pp0_iter4_reg[5]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter4_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677_pp0_iter3_reg[6]),
        .Q(b_V_reg_677_pp0_iter4_reg[6]),
        .R(1'b0));
  FDRE \b_V_reg_677_pp0_iter4_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(b_V_reg_677_pp0_iter3_reg[7]),
        .Q(b_V_reg_677_pp0_iter4_reg[7]),
        .R(1'b0));
  FDRE \b_V_reg_677_reg[0] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[0]),
        .Q(b_V_reg_677[0]),
        .R(1'b0));
  FDRE \b_V_reg_677_reg[1] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[1]),
        .Q(b_V_reg_677[1]),
        .R(1'b0));
  FDRE \b_V_reg_677_reg[2] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[2]),
        .Q(b_V_reg_677[2]),
        .R(1'b0));
  FDRE \b_V_reg_677_reg[3] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[3]),
        .Q(b_V_reg_677[3]),
        .R(1'b0));
  FDRE \b_V_reg_677_reg[4] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[4]),
        .Q(b_V_reg_677[4]),
        .R(1'b0));
  FDRE \b_V_reg_677_reg[5] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[5]),
        .Q(b_V_reg_677[5]),
        .R(1'b0));
  FDRE \b_V_reg_677_reg[6] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[6]),
        .Q(b_V_reg_677[6]),
        .R(1'b0));
  FDRE \b_V_reg_677_reg[7] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[7]),
        .Q(b_V_reg_677[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \g_V_reg_684[7]_i_1 
       (.I0(\icmp_ln128_reg_673_reg_n_3_[0] ),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_block_pp0_stage0_11001),
        .O(b_V_reg_6770));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/g_V_reg_684_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/g_V_reg_684_pp0_iter3_reg_reg[0]_srl2 " *) 
  SRL16E \g_V_reg_684_pp0_iter3_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(g_V_reg_684[0]),
        .Q(\g_V_reg_684_pp0_iter3_reg_reg[0]_srl2_n_3 ));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/g_V_reg_684_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/g_V_reg_684_pp0_iter3_reg_reg[1]_srl2 " *) 
  SRL16E \g_V_reg_684_pp0_iter3_reg_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(g_V_reg_684[1]),
        .Q(\g_V_reg_684_pp0_iter3_reg_reg[1]_srl2_n_3 ));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/g_V_reg_684_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/g_V_reg_684_pp0_iter3_reg_reg[2]_srl2 " *) 
  SRL16E \g_V_reg_684_pp0_iter3_reg_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(g_V_reg_684[2]),
        .Q(\g_V_reg_684_pp0_iter3_reg_reg[2]_srl2_n_3 ));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/g_V_reg_684_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/g_V_reg_684_pp0_iter3_reg_reg[3]_srl2 " *) 
  SRL16E \g_V_reg_684_pp0_iter3_reg_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(g_V_reg_684[3]),
        .Q(\g_V_reg_684_pp0_iter3_reg_reg[3]_srl2_n_3 ));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/g_V_reg_684_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/g_V_reg_684_pp0_iter3_reg_reg[4]_srl2 " *) 
  SRL16E \g_V_reg_684_pp0_iter3_reg_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(g_V_reg_684[4]),
        .Q(\g_V_reg_684_pp0_iter3_reg_reg[4]_srl2_n_3 ));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/g_V_reg_684_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/g_V_reg_684_pp0_iter3_reg_reg[5]_srl2 " *) 
  SRL16E \g_V_reg_684_pp0_iter3_reg_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(g_V_reg_684[5]),
        .Q(\g_V_reg_684_pp0_iter3_reg_reg[5]_srl2_n_3 ));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/g_V_reg_684_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/g_V_reg_684_pp0_iter3_reg_reg[6]_srl2 " *) 
  SRL16E \g_V_reg_684_pp0_iter3_reg_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(g_V_reg_684[6]),
        .Q(\g_V_reg_684_pp0_iter3_reg_reg[6]_srl2_n_3 ));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/g_V_reg_684_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/g_V_reg_684_pp0_iter3_reg_reg[7]_srl2 " *) 
  SRL16E \g_V_reg_684_pp0_iter3_reg_reg[7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(g_V_reg_684[7]),
        .Q(\g_V_reg_684_pp0_iter3_reg_reg[7]_srl2_n_3 ));
  FDRE \g_V_reg_684_pp0_iter4_reg_reg[0]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\g_V_reg_684_pp0_iter3_reg_reg[0]_srl2_n_3 ),
        .Q(g_V_reg_684_pp0_iter4_reg[0]),
        .R(1'b0));
  FDRE \g_V_reg_684_pp0_iter4_reg_reg[1]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\g_V_reg_684_pp0_iter3_reg_reg[1]_srl2_n_3 ),
        .Q(g_V_reg_684_pp0_iter4_reg[1]),
        .R(1'b0));
  FDRE \g_V_reg_684_pp0_iter4_reg_reg[2]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\g_V_reg_684_pp0_iter3_reg_reg[2]_srl2_n_3 ),
        .Q(g_V_reg_684_pp0_iter4_reg[2]),
        .R(1'b0));
  FDRE \g_V_reg_684_pp0_iter4_reg_reg[3]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\g_V_reg_684_pp0_iter3_reg_reg[3]_srl2_n_3 ),
        .Q(g_V_reg_684_pp0_iter4_reg[3]),
        .R(1'b0));
  FDRE \g_V_reg_684_pp0_iter4_reg_reg[4]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\g_V_reg_684_pp0_iter3_reg_reg[4]_srl2_n_3 ),
        .Q(g_V_reg_684_pp0_iter4_reg[4]),
        .R(1'b0));
  FDRE \g_V_reg_684_pp0_iter4_reg_reg[5]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\g_V_reg_684_pp0_iter3_reg_reg[5]_srl2_n_3 ),
        .Q(g_V_reg_684_pp0_iter4_reg[5]),
        .R(1'b0));
  FDRE \g_V_reg_684_pp0_iter4_reg_reg[6]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\g_V_reg_684_pp0_iter3_reg_reg[6]_srl2_n_3 ),
        .Q(g_V_reg_684_pp0_iter4_reg[6]),
        .R(1'b0));
  FDRE \g_V_reg_684_pp0_iter4_reg_reg[7]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\g_V_reg_684_pp0_iter3_reg_reg[7]_srl2_n_3 ),
        .Q(g_V_reg_684_pp0_iter4_reg[7]),
        .R(1'b0));
  FDRE \g_V_reg_684_reg[0] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[8]),
        .Q(g_V_reg_684[0]),
        .R(1'b0));
  FDRE \g_V_reg_684_reg[1] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[9]),
        .Q(g_V_reg_684[1]),
        .R(1'b0));
  FDRE \g_V_reg_684_reg[2] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[10]),
        .Q(g_V_reg_684[2]),
        .R(1'b0));
  FDRE \g_V_reg_684_reg[3] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[11]),
        .Q(g_V_reg_684[3]),
        .R(1'b0));
  FDRE \g_V_reg_684_reg[4] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[12]),
        .Q(g_V_reg_684[4]),
        .R(1'b0));
  FDRE \g_V_reg_684_reg[5] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[13]),
        .Q(g_V_reg_684[5]),
        .R(1'b0));
  FDRE \g_V_reg_684_reg[6] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[14]),
        .Q(g_V_reg_684[6]),
        .R(1'b0));
  FDRE \g_V_reg_684_reg[7] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[15]),
        .Q(g_V_reg_684[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \icmp_ln128_reg_673_pp0_iter1_reg[0]_i_1 
       (.I0(\icmp_ln128_reg_673_reg_n_3_[0] ),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_block_pp0_stage0_11001),
        .I3(icmp_ln128_reg_673_pp0_iter1_reg),
        .O(\icmp_ln128_reg_673_pp0_iter1_reg[0]_i_1_n_3 ));
  FDRE \icmp_ln128_reg_673_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln128_reg_673_pp0_iter1_reg[0]_i_1_n_3 ),
        .Q(icmp_ln128_reg_673_pp0_iter1_reg),
        .R(1'b0));
  FDRE \icmp_ln128_reg_673_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln128_reg_673_pp0_iter1_reg),
        .Q(icmp_ln128_reg_673_pp0_iter2_reg),
        .R(1'b0));
  FDRE \icmp_ln128_reg_673_pp0_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln128_reg_673_pp0_iter2_reg),
        .Q(icmp_ln128_reg_673_pp0_iter3_reg),
        .R(1'b0));
  FDRE \icmp_ln128_reg_673_pp0_iter4_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln128_reg_673_pp0_iter3_reg),
        .Q(icmp_ln128_reg_673_pp0_iter4_reg),
        .R(1'b0));
  FDRE \icmp_ln128_reg_673_pp0_iter5_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln128_reg_673_pp0_iter4_reg),
        .Q(icmp_ln128_reg_673_pp0_iter5_reg),
        .R(1'b0));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/icmp_ln128_reg_673_pp0_iter7_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/icmp_ln128_reg_673_pp0_iter7_reg_reg[0]_srl2 " *) 
  SRL16E \icmp_ln128_reg_673_pp0_iter7_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(icmp_ln128_reg_673_pp0_iter5_reg),
        .Q(\icmp_ln128_reg_673_pp0_iter7_reg_reg[0]_srl2_n_3 ));
  FDRE \icmp_ln128_reg_673_pp0_iter8_reg_reg[0]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\icmp_ln128_reg_673_pp0_iter7_reg_reg[0]_srl2_n_3 ),
        .Q(icmp_ln128_reg_673_pp0_iter8_reg),
        .R(1'b0));
  FDRE \icmp_ln128_reg_673_pp0_iter9_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln128_reg_673_pp0_iter8_reg),
        .Q(icmp_ln128_reg_673_pp0_iter9_reg),
        .R(1'b0));
  FDRE \icmp_ln128_reg_673_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32ns_32ns_64_1_1_U26_n_168),
        .Q(\icmp_ln128_reg_673_reg_n_3_[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_28 
       (.I0(indvar_flatten_reg_218_reg[13]),
        .I1(\mul_ln73_reg_663_reg[13]__0_n_3 ),
        .I2(indvar_flatten_reg_218_reg[12]),
        .I3(\mul_ln73_reg_663_reg[12]__0_n_3 ),
        .I4(\mul_ln73_reg_663_reg[14]__0_n_3 ),
        .I5(indvar_flatten_reg_218_reg[14]),
        .O(\indvar_flatten_reg_218[0]_i_28_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_29 
       (.I0(indvar_flatten_reg_218_reg[10]),
        .I1(\mul_ln73_reg_663_reg[10]__0_n_3 ),
        .I2(indvar_flatten_reg_218_reg[9]),
        .I3(\mul_ln73_reg_663_reg[9]__0_n_3 ),
        .I4(\mul_ln73_reg_663_reg[11]__0_n_3 ),
        .I5(indvar_flatten_reg_218_reg[11]),
        .O(\indvar_flatten_reg_218[0]_i_29_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_30 
       (.I0(indvar_flatten_reg_218_reg[7]),
        .I1(\mul_ln73_reg_663_reg[7]__0_n_3 ),
        .I2(indvar_flatten_reg_218_reg[6]),
        .I3(\mul_ln73_reg_663_reg[6]__0_n_3 ),
        .I4(\mul_ln73_reg_663_reg[8]__0_n_3 ),
        .I5(indvar_flatten_reg_218_reg[8]),
        .O(\indvar_flatten_reg_218[0]_i_30_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_31 
       (.I0(indvar_flatten_reg_218_reg[4]),
        .I1(\mul_ln73_reg_663_reg[4]__0_n_3 ),
        .I2(indvar_flatten_reg_218_reg[3]),
        .I3(\mul_ln73_reg_663_reg[3]__0_n_3 ),
        .I4(\mul_ln73_reg_663_reg[5]__0_n_3 ),
        .I5(indvar_flatten_reg_218_reg[5]),
        .O(\indvar_flatten_reg_218[0]_i_31_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_32 
       (.I0(indvar_flatten_reg_218_reg[1]),
        .I1(\mul_ln73_reg_663_reg[1]__0_n_3 ),
        .I2(indvar_flatten_reg_218_reg[0]),
        .I3(\mul_ln73_reg_663_reg[0]__0_n_3 ),
        .I4(\mul_ln73_reg_663_reg[2]__0_n_3 ),
        .I5(indvar_flatten_reg_218_reg[2]),
        .O(\indvar_flatten_reg_218[0]_i_32_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten_reg_218[0]_i_5 
       (.I0(indvar_flatten_reg_218_reg[0]),
        .O(\indvar_flatten_reg_218[0]_i_5_n_3 ));
  FDRE \indvar_flatten_reg_218_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[0]_i_3_n_10 ),
        .Q(indvar_flatten_reg_218_reg[0]),
        .R(indvar_flatten_reg_218));
  CARRY4 \indvar_flatten_reg_218_reg[0]_i_24 
       (.CI(1'b0),
        .CO({\indvar_flatten_reg_218_reg[0]_i_24_n_3 ,\indvar_flatten_reg_218_reg[0]_i_24_n_4 ,\indvar_flatten_reg_218_reg[0]_i_24_n_5 ,\indvar_flatten_reg_218_reg[0]_i_24_n_6 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_indvar_flatten_reg_218_reg[0]_i_24_O_UNCONNECTED [3:0]),
        .S({\indvar_flatten_reg_218[0]_i_29_n_3 ,\indvar_flatten_reg_218[0]_i_30_n_3 ,\indvar_flatten_reg_218[0]_i_31_n_3 ,\indvar_flatten_reg_218[0]_i_32_n_3 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_reg_218_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\indvar_flatten_reg_218_reg[0]_i_3_n_3 ,\indvar_flatten_reg_218_reg[0]_i_3_n_4 ,\indvar_flatten_reg_218_reg[0]_i_3_n_5 ,\indvar_flatten_reg_218_reg[0]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\indvar_flatten_reg_218_reg[0]_i_3_n_7 ,\indvar_flatten_reg_218_reg[0]_i_3_n_8 ,\indvar_flatten_reg_218_reg[0]_i_3_n_9 ,\indvar_flatten_reg_218_reg[0]_i_3_n_10 }),
        .S({indvar_flatten_reg_218_reg[3:1],\indvar_flatten_reg_218[0]_i_5_n_3 }));
  FDRE \indvar_flatten_reg_218_reg[10] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[8]_i_1_n_8 ),
        .Q(indvar_flatten_reg_218_reg[10]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[11] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[8]_i_1_n_7 ),
        .Q(indvar_flatten_reg_218_reg[11]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[12] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[12]_i_1_n_10 ),
        .Q(indvar_flatten_reg_218_reg[12]),
        .R(indvar_flatten_reg_218));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_reg_218_reg[12]_i_1 
       (.CI(\indvar_flatten_reg_218_reg[8]_i_1_n_3 ),
        .CO({\indvar_flatten_reg_218_reg[12]_i_1_n_3 ,\indvar_flatten_reg_218_reg[12]_i_1_n_4 ,\indvar_flatten_reg_218_reg[12]_i_1_n_5 ,\indvar_flatten_reg_218_reg[12]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_218_reg[12]_i_1_n_7 ,\indvar_flatten_reg_218_reg[12]_i_1_n_8 ,\indvar_flatten_reg_218_reg[12]_i_1_n_9 ,\indvar_flatten_reg_218_reg[12]_i_1_n_10 }),
        .S(indvar_flatten_reg_218_reg[15:12]));
  FDRE \indvar_flatten_reg_218_reg[13] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[12]_i_1_n_9 ),
        .Q(indvar_flatten_reg_218_reg[13]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[14] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[12]_i_1_n_8 ),
        .Q(indvar_flatten_reg_218_reg[14]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[15] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[12]_i_1_n_7 ),
        .Q(indvar_flatten_reg_218_reg[15]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[16] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[16]_i_1_n_10 ),
        .Q(indvar_flatten_reg_218_reg[16]),
        .R(indvar_flatten_reg_218));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_reg_218_reg[16]_i_1 
       (.CI(\indvar_flatten_reg_218_reg[12]_i_1_n_3 ),
        .CO({\indvar_flatten_reg_218_reg[16]_i_1_n_3 ,\indvar_flatten_reg_218_reg[16]_i_1_n_4 ,\indvar_flatten_reg_218_reg[16]_i_1_n_5 ,\indvar_flatten_reg_218_reg[16]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_218_reg[16]_i_1_n_7 ,\indvar_flatten_reg_218_reg[16]_i_1_n_8 ,\indvar_flatten_reg_218_reg[16]_i_1_n_9 ,\indvar_flatten_reg_218_reg[16]_i_1_n_10 }),
        .S(indvar_flatten_reg_218_reg[19:16]));
  FDRE \indvar_flatten_reg_218_reg[17] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[16]_i_1_n_9 ),
        .Q(indvar_flatten_reg_218_reg[17]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[18] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[16]_i_1_n_8 ),
        .Q(indvar_flatten_reg_218_reg[18]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[19] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[16]_i_1_n_7 ),
        .Q(indvar_flatten_reg_218_reg[19]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[0]_i_3_n_9 ),
        .Q(indvar_flatten_reg_218_reg[1]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[20] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[20]_i_1_n_10 ),
        .Q(indvar_flatten_reg_218_reg[20]),
        .R(indvar_flatten_reg_218));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_reg_218_reg[20]_i_1 
       (.CI(\indvar_flatten_reg_218_reg[16]_i_1_n_3 ),
        .CO({\indvar_flatten_reg_218_reg[20]_i_1_n_3 ,\indvar_flatten_reg_218_reg[20]_i_1_n_4 ,\indvar_flatten_reg_218_reg[20]_i_1_n_5 ,\indvar_flatten_reg_218_reg[20]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_218_reg[20]_i_1_n_7 ,\indvar_flatten_reg_218_reg[20]_i_1_n_8 ,\indvar_flatten_reg_218_reg[20]_i_1_n_9 ,\indvar_flatten_reg_218_reg[20]_i_1_n_10 }),
        .S(indvar_flatten_reg_218_reg[23:20]));
  FDRE \indvar_flatten_reg_218_reg[21] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[20]_i_1_n_9 ),
        .Q(indvar_flatten_reg_218_reg[21]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[22] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[20]_i_1_n_8 ),
        .Q(indvar_flatten_reg_218_reg[22]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[23] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[20]_i_1_n_7 ),
        .Q(indvar_flatten_reg_218_reg[23]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[24] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[24]_i_1_n_10 ),
        .Q(indvar_flatten_reg_218_reg[24]),
        .R(indvar_flatten_reg_218));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_reg_218_reg[24]_i_1 
       (.CI(\indvar_flatten_reg_218_reg[20]_i_1_n_3 ),
        .CO({\indvar_flatten_reg_218_reg[24]_i_1_n_3 ,\indvar_flatten_reg_218_reg[24]_i_1_n_4 ,\indvar_flatten_reg_218_reg[24]_i_1_n_5 ,\indvar_flatten_reg_218_reg[24]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_218_reg[24]_i_1_n_7 ,\indvar_flatten_reg_218_reg[24]_i_1_n_8 ,\indvar_flatten_reg_218_reg[24]_i_1_n_9 ,\indvar_flatten_reg_218_reg[24]_i_1_n_10 }),
        .S(indvar_flatten_reg_218_reg[27:24]));
  FDRE \indvar_flatten_reg_218_reg[25] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[24]_i_1_n_9 ),
        .Q(indvar_flatten_reg_218_reg[25]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[26] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[24]_i_1_n_8 ),
        .Q(indvar_flatten_reg_218_reg[26]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[27] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[24]_i_1_n_7 ),
        .Q(indvar_flatten_reg_218_reg[27]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[28] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[28]_i_1_n_10 ),
        .Q(indvar_flatten_reg_218_reg[28]),
        .R(indvar_flatten_reg_218));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_reg_218_reg[28]_i_1 
       (.CI(\indvar_flatten_reg_218_reg[24]_i_1_n_3 ),
        .CO({\indvar_flatten_reg_218_reg[28]_i_1_n_3 ,\indvar_flatten_reg_218_reg[28]_i_1_n_4 ,\indvar_flatten_reg_218_reg[28]_i_1_n_5 ,\indvar_flatten_reg_218_reg[28]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_218_reg[28]_i_1_n_7 ,\indvar_flatten_reg_218_reg[28]_i_1_n_8 ,\indvar_flatten_reg_218_reg[28]_i_1_n_9 ,\indvar_flatten_reg_218_reg[28]_i_1_n_10 }),
        .S(indvar_flatten_reg_218_reg[31:28]));
  FDRE \indvar_flatten_reg_218_reg[29] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[28]_i_1_n_9 ),
        .Q(indvar_flatten_reg_218_reg[29]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[2] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[0]_i_3_n_8 ),
        .Q(indvar_flatten_reg_218_reg[2]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[30] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[28]_i_1_n_8 ),
        .Q(indvar_flatten_reg_218_reg[30]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[31] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[28]_i_1_n_7 ),
        .Q(indvar_flatten_reg_218_reg[31]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[32] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[32]_i_1_n_10 ),
        .Q(indvar_flatten_reg_218_reg[32]),
        .R(indvar_flatten_reg_218));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_reg_218_reg[32]_i_1 
       (.CI(\indvar_flatten_reg_218_reg[28]_i_1_n_3 ),
        .CO({\indvar_flatten_reg_218_reg[32]_i_1_n_3 ,\indvar_flatten_reg_218_reg[32]_i_1_n_4 ,\indvar_flatten_reg_218_reg[32]_i_1_n_5 ,\indvar_flatten_reg_218_reg[32]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_218_reg[32]_i_1_n_7 ,\indvar_flatten_reg_218_reg[32]_i_1_n_8 ,\indvar_flatten_reg_218_reg[32]_i_1_n_9 ,\indvar_flatten_reg_218_reg[32]_i_1_n_10 }),
        .S(indvar_flatten_reg_218_reg[35:32]));
  FDRE \indvar_flatten_reg_218_reg[33] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[32]_i_1_n_9 ),
        .Q(indvar_flatten_reg_218_reg[33]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[34] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[32]_i_1_n_8 ),
        .Q(indvar_flatten_reg_218_reg[34]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[35] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[32]_i_1_n_7 ),
        .Q(indvar_flatten_reg_218_reg[35]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[36] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[36]_i_1_n_10 ),
        .Q(indvar_flatten_reg_218_reg[36]),
        .R(indvar_flatten_reg_218));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_reg_218_reg[36]_i_1 
       (.CI(\indvar_flatten_reg_218_reg[32]_i_1_n_3 ),
        .CO({\indvar_flatten_reg_218_reg[36]_i_1_n_3 ,\indvar_flatten_reg_218_reg[36]_i_1_n_4 ,\indvar_flatten_reg_218_reg[36]_i_1_n_5 ,\indvar_flatten_reg_218_reg[36]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_218_reg[36]_i_1_n_7 ,\indvar_flatten_reg_218_reg[36]_i_1_n_8 ,\indvar_flatten_reg_218_reg[36]_i_1_n_9 ,\indvar_flatten_reg_218_reg[36]_i_1_n_10 }),
        .S(indvar_flatten_reg_218_reg[39:36]));
  FDRE \indvar_flatten_reg_218_reg[37] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[36]_i_1_n_9 ),
        .Q(indvar_flatten_reg_218_reg[37]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[38] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[36]_i_1_n_8 ),
        .Q(indvar_flatten_reg_218_reg[38]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[39] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[36]_i_1_n_7 ),
        .Q(indvar_flatten_reg_218_reg[39]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[3] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[0]_i_3_n_7 ),
        .Q(indvar_flatten_reg_218_reg[3]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[40] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[40]_i_1_n_10 ),
        .Q(indvar_flatten_reg_218_reg[40]),
        .R(indvar_flatten_reg_218));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_reg_218_reg[40]_i_1 
       (.CI(\indvar_flatten_reg_218_reg[36]_i_1_n_3 ),
        .CO({\indvar_flatten_reg_218_reg[40]_i_1_n_3 ,\indvar_flatten_reg_218_reg[40]_i_1_n_4 ,\indvar_flatten_reg_218_reg[40]_i_1_n_5 ,\indvar_flatten_reg_218_reg[40]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_218_reg[40]_i_1_n_7 ,\indvar_flatten_reg_218_reg[40]_i_1_n_8 ,\indvar_flatten_reg_218_reg[40]_i_1_n_9 ,\indvar_flatten_reg_218_reg[40]_i_1_n_10 }),
        .S(indvar_flatten_reg_218_reg[43:40]));
  FDRE \indvar_flatten_reg_218_reg[41] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[40]_i_1_n_9 ),
        .Q(indvar_flatten_reg_218_reg[41]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[42] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[40]_i_1_n_8 ),
        .Q(indvar_flatten_reg_218_reg[42]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[43] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[40]_i_1_n_7 ),
        .Q(indvar_flatten_reg_218_reg[43]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[44] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[44]_i_1_n_10 ),
        .Q(indvar_flatten_reg_218_reg[44]),
        .R(indvar_flatten_reg_218));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_reg_218_reg[44]_i_1 
       (.CI(\indvar_flatten_reg_218_reg[40]_i_1_n_3 ),
        .CO({\indvar_flatten_reg_218_reg[44]_i_1_n_3 ,\indvar_flatten_reg_218_reg[44]_i_1_n_4 ,\indvar_flatten_reg_218_reg[44]_i_1_n_5 ,\indvar_flatten_reg_218_reg[44]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_218_reg[44]_i_1_n_7 ,\indvar_flatten_reg_218_reg[44]_i_1_n_8 ,\indvar_flatten_reg_218_reg[44]_i_1_n_9 ,\indvar_flatten_reg_218_reg[44]_i_1_n_10 }),
        .S(indvar_flatten_reg_218_reg[47:44]));
  FDRE \indvar_flatten_reg_218_reg[45] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[44]_i_1_n_9 ),
        .Q(indvar_flatten_reg_218_reg[45]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[46] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[44]_i_1_n_8 ),
        .Q(indvar_flatten_reg_218_reg[46]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[47] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[44]_i_1_n_7 ),
        .Q(indvar_flatten_reg_218_reg[47]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[48] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[48]_i_1_n_10 ),
        .Q(indvar_flatten_reg_218_reg[48]),
        .R(indvar_flatten_reg_218));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_reg_218_reg[48]_i_1 
       (.CI(\indvar_flatten_reg_218_reg[44]_i_1_n_3 ),
        .CO({\indvar_flatten_reg_218_reg[48]_i_1_n_3 ,\indvar_flatten_reg_218_reg[48]_i_1_n_4 ,\indvar_flatten_reg_218_reg[48]_i_1_n_5 ,\indvar_flatten_reg_218_reg[48]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_218_reg[48]_i_1_n_7 ,\indvar_flatten_reg_218_reg[48]_i_1_n_8 ,\indvar_flatten_reg_218_reg[48]_i_1_n_9 ,\indvar_flatten_reg_218_reg[48]_i_1_n_10 }),
        .S(indvar_flatten_reg_218_reg[51:48]));
  FDRE \indvar_flatten_reg_218_reg[49] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[48]_i_1_n_9 ),
        .Q(indvar_flatten_reg_218_reg[49]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[4] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[4]_i_1_n_10 ),
        .Q(indvar_flatten_reg_218_reg[4]),
        .R(indvar_flatten_reg_218));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_reg_218_reg[4]_i_1 
       (.CI(\indvar_flatten_reg_218_reg[0]_i_3_n_3 ),
        .CO({\indvar_flatten_reg_218_reg[4]_i_1_n_3 ,\indvar_flatten_reg_218_reg[4]_i_1_n_4 ,\indvar_flatten_reg_218_reg[4]_i_1_n_5 ,\indvar_flatten_reg_218_reg[4]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_218_reg[4]_i_1_n_7 ,\indvar_flatten_reg_218_reg[4]_i_1_n_8 ,\indvar_flatten_reg_218_reg[4]_i_1_n_9 ,\indvar_flatten_reg_218_reg[4]_i_1_n_10 }),
        .S(indvar_flatten_reg_218_reg[7:4]));
  FDRE \indvar_flatten_reg_218_reg[50] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[48]_i_1_n_8 ),
        .Q(indvar_flatten_reg_218_reg[50]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[51] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[48]_i_1_n_7 ),
        .Q(indvar_flatten_reg_218_reg[51]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[52] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[52]_i_1_n_10 ),
        .Q(indvar_flatten_reg_218_reg[52]),
        .R(indvar_flatten_reg_218));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_reg_218_reg[52]_i_1 
       (.CI(\indvar_flatten_reg_218_reg[48]_i_1_n_3 ),
        .CO({\indvar_flatten_reg_218_reg[52]_i_1_n_3 ,\indvar_flatten_reg_218_reg[52]_i_1_n_4 ,\indvar_flatten_reg_218_reg[52]_i_1_n_5 ,\indvar_flatten_reg_218_reg[52]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_218_reg[52]_i_1_n_7 ,\indvar_flatten_reg_218_reg[52]_i_1_n_8 ,\indvar_flatten_reg_218_reg[52]_i_1_n_9 ,\indvar_flatten_reg_218_reg[52]_i_1_n_10 }),
        .S(indvar_flatten_reg_218_reg[55:52]));
  FDRE \indvar_flatten_reg_218_reg[53] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[52]_i_1_n_9 ),
        .Q(indvar_flatten_reg_218_reg[53]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[54] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[52]_i_1_n_8 ),
        .Q(indvar_flatten_reg_218_reg[54]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[55] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[52]_i_1_n_7 ),
        .Q(indvar_flatten_reg_218_reg[55]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[56] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[56]_i_1_n_10 ),
        .Q(indvar_flatten_reg_218_reg[56]),
        .R(indvar_flatten_reg_218));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_reg_218_reg[56]_i_1 
       (.CI(\indvar_flatten_reg_218_reg[52]_i_1_n_3 ),
        .CO({\indvar_flatten_reg_218_reg[56]_i_1_n_3 ,\indvar_flatten_reg_218_reg[56]_i_1_n_4 ,\indvar_flatten_reg_218_reg[56]_i_1_n_5 ,\indvar_flatten_reg_218_reg[56]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_218_reg[56]_i_1_n_7 ,\indvar_flatten_reg_218_reg[56]_i_1_n_8 ,\indvar_flatten_reg_218_reg[56]_i_1_n_9 ,\indvar_flatten_reg_218_reg[56]_i_1_n_10 }),
        .S(indvar_flatten_reg_218_reg[59:56]));
  FDRE \indvar_flatten_reg_218_reg[57] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[56]_i_1_n_9 ),
        .Q(indvar_flatten_reg_218_reg[57]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[58] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[56]_i_1_n_8 ),
        .Q(indvar_flatten_reg_218_reg[58]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[59] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[56]_i_1_n_7 ),
        .Q(indvar_flatten_reg_218_reg[59]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[5] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[4]_i_1_n_9 ),
        .Q(indvar_flatten_reg_218_reg[5]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[60] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[60]_i_1_n_10 ),
        .Q(indvar_flatten_reg_218_reg[60]),
        .R(indvar_flatten_reg_218));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_reg_218_reg[60]_i_1 
       (.CI(\indvar_flatten_reg_218_reg[56]_i_1_n_3 ),
        .CO({\NLW_indvar_flatten_reg_218_reg[60]_i_1_CO_UNCONNECTED [3],\indvar_flatten_reg_218_reg[60]_i_1_n_4 ,\indvar_flatten_reg_218_reg[60]_i_1_n_5 ,\indvar_flatten_reg_218_reg[60]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_218_reg[60]_i_1_n_7 ,\indvar_flatten_reg_218_reg[60]_i_1_n_8 ,\indvar_flatten_reg_218_reg[60]_i_1_n_9 ,\indvar_flatten_reg_218_reg[60]_i_1_n_10 }),
        .S(indvar_flatten_reg_218_reg[63:60]));
  FDRE \indvar_flatten_reg_218_reg[61] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[60]_i_1_n_9 ),
        .Q(indvar_flatten_reg_218_reg[61]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[62] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[60]_i_1_n_8 ),
        .Q(indvar_flatten_reg_218_reg[62]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[63] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[60]_i_1_n_7 ),
        .Q(indvar_flatten_reg_218_reg[63]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[6] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[4]_i_1_n_8 ),
        .Q(indvar_flatten_reg_218_reg[6]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[7] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[4]_i_1_n_7 ),
        .Q(indvar_flatten_reg_218_reg[7]),
        .R(indvar_flatten_reg_218));
  FDRE \indvar_flatten_reg_218_reg[8] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[8]_i_1_n_10 ),
        .Q(indvar_flatten_reg_218_reg[8]),
        .R(indvar_flatten_reg_218));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_reg_218_reg[8]_i_1 
       (.CI(\indvar_flatten_reg_218_reg[4]_i_1_n_3 ),
        .CO({\indvar_flatten_reg_218_reg[8]_i_1_n_3 ,\indvar_flatten_reg_218_reg[8]_i_1_n_4 ,\indvar_flatten_reg_218_reg[8]_i_1_n_5 ,\indvar_flatten_reg_218_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_218_reg[8]_i_1_n_7 ,\indvar_flatten_reg_218_reg[8]_i_1_n_8 ,\indvar_flatten_reg_218_reg[8]_i_1_n_9 ,\indvar_flatten_reg_218_reg[8]_i_1_n_10 }),
        .S(indvar_flatten_reg_218_reg[11:8]));
  FDRE \indvar_flatten_reg_218_reg[9] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2180),
        .D(\indvar_flatten_reg_218_reg[8]_i_1_n_9 ),
        .Q(indvar_flatten_reg_218_reg[9]),
        .R(indvar_flatten_reg_218));
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    int_ap_idle_i_2
       (.I0(Q[0]),
        .I1(bgr2hsv_9_2160_3840_1_U0_ap_start),
        .I2(int_ap_idle_reg),
        .I3(int_ap_idle_reg_0),
        .I4(xfMat2axis_24_9_2160_3840_1_U0_ap_start),
        .O(\ap_CS_fsm_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mOutPtr[0]_i_1 
       (.I0(internal_empty_n_reg),
        .I1(shiftReg_ce_0),
        .I2(\mOutPtr_reg[0]_1 ),
        .O(\mOutPtr_reg[0] ));
  LUT3 #(
    .INIT(8'h69)) 
    \mOutPtr[0]_i_1__2 
       (.I0(shiftReg_ce),
        .I1(\mOutPtr_reg[0]_2 ),
        .I2(\mOutPtr_reg[0]_3 ),
        .O(\mOutPtr_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \mOutPtr[1]_i_2 
       (.I0(imgInput_data_empty_n),
        .I1(ap_block_pp0_stage0_11001),
        .I2(\icmp_ln128_reg_673_reg_n_3_[0] ),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter1_reg_n_3),
        .O(internal_empty_n_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_mac_muladd_20s_8ns_13ns_20_4_1 mac_muladd_20s_8ns_13ns_20_4_1_U27
       (.A(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_q0),
        .B(p_0_in),
        .D(p_0_in__0),
        .Q(ap_CS_fsm_pp0_stage0),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .grp_fu_632_ce(grp_fu_632_ce));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_mul_32ns_32ns_64_1_1 mul_32ns_32ns_64_1_1_U26
       (.ACOUT({mul_32ns_32ns_64_1_1_U26_n_68,mul_32ns_32ns_64_1_1_U26_n_69,mul_32ns_32ns_64_1_1_U26_n_70,mul_32ns_32ns_64_1_1_U26_n_71,mul_32ns_32ns_64_1_1_U26_n_72,mul_32ns_32ns_64_1_1_U26_n_73,mul_32ns_32ns_64_1_1_U26_n_74,mul_32ns_32ns_64_1_1_U26_n_75,mul_32ns_32ns_64_1_1_U26_n_76,mul_32ns_32ns_64_1_1_U26_n_77,mul_32ns_32ns_64_1_1_U26_n_78,mul_32ns_32ns_64_1_1_U26_n_79,mul_32ns_32ns_64_1_1_U26_n_80,mul_32ns_32ns_64_1_1_U26_n_81,mul_32ns_32ns_64_1_1_U26_n_82,mul_32ns_32ns_64_1_1_U26_n_83,mul_32ns_32ns_64_1_1_U26_n_84,mul_32ns_32ns_64_1_1_U26_n_85,mul_32ns_32ns_64_1_1_U26_n_86,mul_32ns_32ns_64_1_1_U26_n_87,mul_32ns_32ns_64_1_1_U26_n_88,mul_32ns_32ns_64_1_1_U26_n_89,mul_32ns_32ns_64_1_1_U26_n_90,mul_32ns_32ns_64_1_1_U26_n_91,mul_32ns_32ns_64_1_1_U26_n_92,mul_32ns_32ns_64_1_1_U26_n_93,mul_32ns_32ns_64_1_1_U26_n_94,mul_32ns_32ns_64_1_1_U26_n_95,mul_32ns_32ns_64_1_1_U26_n_96,mul_32ns_32ns_64_1_1_U26_n_97}),
        .CO(\indvar_flatten_reg_218_reg[0]_i_24_n_3 ),
        .D({mul_32ns_32ns_64_1_1_U26_n_3,mul_32ns_32ns_64_1_1_U26_n_4,mul_32ns_32ns_64_1_1_U26_n_5,mul_32ns_32ns_64_1_1_U26_n_6,mul_32ns_32ns_64_1_1_U26_n_7,mul_32ns_32ns_64_1_1_U26_n_8,mul_32ns_32ns_64_1_1_U26_n_9,mul_32ns_32ns_64_1_1_U26_n_10,mul_32ns_32ns_64_1_1_U26_n_11,mul_32ns_32ns_64_1_1_U26_n_12,mul_32ns_32ns_64_1_1_U26_n_13,mul_32ns_32ns_64_1_1_U26_n_14,mul_32ns_32ns_64_1_1_U26_n_15,mul_32ns_32ns_64_1_1_U26_n_16,mul_32ns_32ns_64_1_1_U26_n_17,mul_32ns_32ns_64_1_1_U26_n_18,mul_32ns_32ns_64_1_1_U26_n_19}),
        .P({mul_ln73_reg_663_reg__0_n_62,mul_ln73_reg_663_reg__0_n_63,mul_ln73_reg_663_reg__0_n_64,mul_ln73_reg_663_reg__0_n_65,mul_ln73_reg_663_reg__0_n_66,mul_ln73_reg_663_reg__0_n_67,mul_ln73_reg_663_reg__0_n_68,mul_ln73_reg_663_reg__0_n_69,mul_ln73_reg_663_reg__0_n_70,mul_ln73_reg_663_reg__0_n_71,mul_ln73_reg_663_reg__0_n_72,mul_ln73_reg_663_reg__0_n_73,mul_ln73_reg_663_reg__0_n_74,mul_ln73_reg_663_reg__0_n_75,mul_ln73_reg_663_reg__0_n_76,mul_ln73_reg_663_reg__0_n_77,mul_ln73_reg_663_reg__0_n_78,mul_ln73_reg_663_reg__0_n_79,mul_ln73_reg_663_reg__0_n_80,mul_ln73_reg_663_reg__0_n_81,mul_ln73_reg_663_reg__0_n_82,mul_ln73_reg_663_reg__0_n_83,mul_ln73_reg_663_reg__0_n_84,mul_ln73_reg_663_reg__0_n_85,mul_ln73_reg_663_reg__0_n_86,mul_ln73_reg_663_reg__0_n_87,mul_ln73_reg_663_reg__0_n_88,mul_ln73_reg_663_reg__0_n_89,mul_ln73_reg_663_reg__0_n_90,mul_ln73_reg_663_reg__0_n_91,mul_ln73_reg_663_reg__0_n_92,mul_ln73_reg_663_reg__0_n_93,mul_ln73_reg_663_reg__0_n_94,mul_ln73_reg_663_reg__0_n_95,mul_ln73_reg_663_reg__0_n_96,mul_ln73_reg_663_reg__0_n_97,mul_ln73_reg_663_reg__0_n_98,mul_ln73_reg_663_reg__0_n_99,mul_ln73_reg_663_reg__0_n_100,mul_ln73_reg_663_reg__0_n_101,mul_ln73_reg_663_reg__0_n_102,mul_ln73_reg_663_reg__0_n_103,mul_ln73_reg_663_reg__0_n_104,mul_ln73_reg_663_reg__0_n_105,mul_ln73_reg_663_reg__0_n_106,mul_ln73_reg_663_reg__0_n_107,mul_ln73_reg_663_reg__0_n_108}),
        .PCOUT({mul_32ns_32ns_64_1_1_U26_n_20,mul_32ns_32ns_64_1_1_U26_n_21,mul_32ns_32ns_64_1_1_U26_n_22,mul_32ns_32ns_64_1_1_U26_n_23,mul_32ns_32ns_64_1_1_U26_n_24,mul_32ns_32ns_64_1_1_U26_n_25,mul_32ns_32ns_64_1_1_U26_n_26,mul_32ns_32ns_64_1_1_U26_n_27,mul_32ns_32ns_64_1_1_U26_n_28,mul_32ns_32ns_64_1_1_U26_n_29,mul_32ns_32ns_64_1_1_U26_n_30,mul_32ns_32ns_64_1_1_U26_n_31,mul_32ns_32ns_64_1_1_U26_n_32,mul_32ns_32ns_64_1_1_U26_n_33,mul_32ns_32ns_64_1_1_U26_n_34,mul_32ns_32ns_64_1_1_U26_n_35,mul_32ns_32ns_64_1_1_U26_n_36,mul_32ns_32ns_64_1_1_U26_n_37,mul_32ns_32ns_64_1_1_U26_n_38,mul_32ns_32ns_64_1_1_U26_n_39,mul_32ns_32ns_64_1_1_U26_n_40,mul_32ns_32ns_64_1_1_U26_n_41,mul_32ns_32ns_64_1_1_U26_n_42,mul_32ns_32ns_64_1_1_U26_n_43,mul_32ns_32ns_64_1_1_U26_n_44,mul_32ns_32ns_64_1_1_U26_n_45,mul_32ns_32ns_64_1_1_U26_n_46,mul_32ns_32ns_64_1_1_U26_n_47,mul_32ns_32ns_64_1_1_U26_n_48,mul_32ns_32ns_64_1_1_U26_n_49,mul_32ns_32ns_64_1_1_U26_n_50,mul_32ns_32ns_64_1_1_U26_n_51,mul_32ns_32ns_64_1_1_U26_n_52,mul_32ns_32ns_64_1_1_U26_n_53,mul_32ns_32ns_64_1_1_U26_n_54,mul_32ns_32ns_64_1_1_U26_n_55,mul_32ns_32ns_64_1_1_U26_n_56,mul_32ns_32ns_64_1_1_U26_n_57,mul_32ns_32ns_64_1_1_U26_n_58,mul_32ns_32ns_64_1_1_U26_n_59,mul_32ns_32ns_64_1_1_U26_n_60,mul_32ns_32ns_64_1_1_U26_n_61,mul_32ns_32ns_64_1_1_U26_n_62,mul_32ns_32ns_64_1_1_U26_n_63,mul_32ns_32ns_64_1_1_U26_n_64,mul_32ns_32ns_64_1_1_U26_n_65,mul_32ns_32ns_64_1_1_U26_n_66,mul_32ns_32ns_64_1_1_U26_n_67}),
        .Q({ap_CS_fsm_pp0_stage0,ap_CS_fsm_state2,Q[0]}),
        .S(\indvar_flatten_reg_218[0]_i_28_n_3 ),
        .\ap_CS_fsm_reg[2] (ap_NS_fsm[3:2]),
        .\ap_CS_fsm_reg[2]_0 (mul_32ns_32ns_64_1_1_U26_n_168),
        .\ap_CS_fsm_reg[3] (ap_enable_reg_pp0_iter10_reg_n_3),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(mul_32ns_32ns_64_1_1_U26_n_163),
        .ap_enable_reg_pp0_iter0_reg_0(mul_32ns_32ns_64_1_1_U26_n_167),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg_n_3),
        .ap_enable_reg_pp0_iter9(ap_enable_reg_pp0_iter9),
        .ap_rst_n(ap_rst_n),
        .\icmp_ln128_reg_673_reg[0] (\icmp_ln128_reg_673_reg_n_3_[0] ),
        .imgInput_cols_c10_dout(imgInput_cols_c10_dout[16:0]),
        .imgInput_rows_c9_dout(imgInput_rows_c9_dout),
        .indvar_flatten_reg_218(indvar_flatten_reg_218),
        .indvar_flatten_reg_2180(indvar_flatten_reg_2180),
        .\indvar_flatten_reg_218[0]_i_27 ({\mul_ln73_reg_663_reg[16]__0_n_3 ,\mul_ln73_reg_663_reg[15]__0_n_3 }),
        .indvar_flatten_reg_218_reg(indvar_flatten_reg_218_reg[63:15]),
        .p__0({mul_32ns_32ns_64_1_1_U26_n_98,mul_32ns_32ns_64_1_1_U26_n_99,mul_32ns_32ns_64_1_1_U26_n_100,mul_32ns_32ns_64_1_1_U26_n_101,mul_32ns_32ns_64_1_1_U26_n_102,mul_32ns_32ns_64_1_1_U26_n_103,mul_32ns_32ns_64_1_1_U26_n_104,mul_32ns_32ns_64_1_1_U26_n_105,mul_32ns_32ns_64_1_1_U26_n_106,mul_32ns_32ns_64_1_1_U26_n_107,mul_32ns_32ns_64_1_1_U26_n_108,mul_32ns_32ns_64_1_1_U26_n_109,mul_32ns_32ns_64_1_1_U26_n_110,mul_32ns_32ns_64_1_1_U26_n_111,mul_32ns_32ns_64_1_1_U26_n_112,mul_32ns_32ns_64_1_1_U26_n_113,mul_32ns_32ns_64_1_1_U26_n_114}),
        .p__0_0({mul_32ns_32ns_64_1_1_U26_n_115,mul_32ns_32ns_64_1_1_U26_n_116,mul_32ns_32ns_64_1_1_U26_n_117,mul_32ns_32ns_64_1_1_U26_n_118,mul_32ns_32ns_64_1_1_U26_n_119,mul_32ns_32ns_64_1_1_U26_n_120,mul_32ns_32ns_64_1_1_U26_n_121,mul_32ns_32ns_64_1_1_U26_n_122,mul_32ns_32ns_64_1_1_U26_n_123,mul_32ns_32ns_64_1_1_U26_n_124,mul_32ns_32ns_64_1_1_U26_n_125,mul_32ns_32ns_64_1_1_U26_n_126,mul_32ns_32ns_64_1_1_U26_n_127,mul_32ns_32ns_64_1_1_U26_n_128,mul_32ns_32ns_64_1_1_U26_n_129,mul_32ns_32ns_64_1_1_U26_n_130,mul_32ns_32ns_64_1_1_U26_n_131,mul_32ns_32ns_64_1_1_U26_n_132,mul_32ns_32ns_64_1_1_U26_n_133,mul_32ns_32ns_64_1_1_U26_n_134,mul_32ns_32ns_64_1_1_U26_n_135,mul_32ns_32ns_64_1_1_U26_n_136,mul_32ns_32ns_64_1_1_U26_n_137,mul_32ns_32ns_64_1_1_U26_n_138,mul_32ns_32ns_64_1_1_U26_n_139,mul_32ns_32ns_64_1_1_U26_n_140,mul_32ns_32ns_64_1_1_U26_n_141,mul_32ns_32ns_64_1_1_U26_n_142,mul_32ns_32ns_64_1_1_U26_n_143,mul_32ns_32ns_64_1_1_U26_n_144,mul_32ns_32ns_64_1_1_U26_n_145,mul_32ns_32ns_64_1_1_U26_n_146,mul_32ns_32ns_64_1_1_U26_n_147,mul_32ns_32ns_64_1_1_U26_n_148,mul_32ns_32ns_64_1_1_U26_n_149,mul_32ns_32ns_64_1_1_U26_n_150,mul_32ns_32ns_64_1_1_U26_n_151,mul_32ns_32ns_64_1_1_U26_n_152,mul_32ns_32ns_64_1_1_U26_n_153,mul_32ns_32ns_64_1_1_U26_n_154,mul_32ns_32ns_64_1_1_U26_n_155,mul_32ns_32ns_64_1_1_U26_n_156,mul_32ns_32ns_64_1_1_U26_n_157,mul_32ns_32ns_64_1_1_U26_n_158,mul_32ns_32ns_64_1_1_U26_n_159,mul_32ns_32ns_64_1_1_U26_n_160,mul_32ns_32ns_64_1_1_U26_n_161,mul_32ns_32ns_64_1_1_U26_n_162}),
        .p_carry__10({mul_ln73_reg_663_reg_n_79,mul_ln73_reg_663_reg_n_80,mul_ln73_reg_663_reg_n_81,mul_ln73_reg_663_reg_n_82,mul_ln73_reg_663_reg_n_83,mul_ln73_reg_663_reg_n_84,mul_ln73_reg_663_reg_n_85,mul_ln73_reg_663_reg_n_86,mul_ln73_reg_663_reg_n_87,mul_ln73_reg_663_reg_n_88,mul_ln73_reg_663_reg_n_89,mul_ln73_reg_663_reg_n_90,mul_ln73_reg_663_reg_n_91,mul_ln73_reg_663_reg_n_92,mul_ln73_reg_663_reg_n_93,mul_ln73_reg_663_reg_n_94,mul_ln73_reg_663_reg_n_95,mul_ln73_reg_663_reg_n_96,mul_ln73_reg_663_reg_n_97,mul_ln73_reg_663_reg_n_98,mul_ln73_reg_663_reg_n_99,mul_ln73_reg_663_reg_n_100,mul_ln73_reg_663_reg_n_101,mul_ln73_reg_663_reg_n_102,mul_ln73_reg_663_reg_n_103,mul_ln73_reg_663_reg_n_104,mul_ln73_reg_663_reg_n_105,mul_ln73_reg_663_reg_n_106,mul_ln73_reg_663_reg_n_107,mul_ln73_reg_663_reg_n_108}),
        .p_carry__3({\mul_ln73_reg_663_reg_n_3_[16] ,\mul_ln73_reg_663_reg_n_3_[15] ,\mul_ln73_reg_663_reg_n_3_[14] ,\mul_ln73_reg_663_reg_n_3_[13] ,\mul_ln73_reg_663_reg_n_3_[12] ,\mul_ln73_reg_663_reg_n_3_[11] ,\mul_ln73_reg_663_reg_n_3_[10] ,\mul_ln73_reg_663_reg_n_3_[9] ,\mul_ln73_reg_663_reg_n_3_[8] ,\mul_ln73_reg_663_reg_n_3_[7] ,\mul_ln73_reg_663_reg_n_3_[6] ,\mul_ln73_reg_663_reg_n_3_[5] ,\mul_ln73_reg_663_reg_n_3_[4] ,\mul_ln73_reg_663_reg_n_3_[3] ,\mul_ln73_reg_663_reg_n_3_[2] ,\mul_ln73_reg_663_reg_n_3_[1] ,\mul_ln73_reg_663_reg_n_3_[0] }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x16 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mul_ln73_reg_663_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,imgInput_rows_c9_dout[31:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln73_reg_663_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,imgInput_cols_c10_dout[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln73_reg_663_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln73_reg_663_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln73_reg_663_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q[0]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[0]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ap_CS_fsm_state2),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln73_reg_663_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln73_reg_663_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln73_reg_663_reg_n_61,mul_ln73_reg_663_reg_n_62,mul_ln73_reg_663_reg_n_63,mul_ln73_reg_663_reg_n_64,mul_ln73_reg_663_reg_n_65,mul_ln73_reg_663_reg_n_66,mul_ln73_reg_663_reg_n_67,mul_ln73_reg_663_reg_n_68,mul_ln73_reg_663_reg_n_69,mul_ln73_reg_663_reg_n_70,mul_ln73_reg_663_reg_n_71,mul_ln73_reg_663_reg_n_72,mul_ln73_reg_663_reg_n_73,mul_ln73_reg_663_reg_n_74,mul_ln73_reg_663_reg_n_75,mul_ln73_reg_663_reg_n_76,mul_ln73_reg_663_reg_n_77,mul_ln73_reg_663_reg_n_78,mul_ln73_reg_663_reg_n_79,mul_ln73_reg_663_reg_n_80,mul_ln73_reg_663_reg_n_81,mul_ln73_reg_663_reg_n_82,mul_ln73_reg_663_reg_n_83,mul_ln73_reg_663_reg_n_84,mul_ln73_reg_663_reg_n_85,mul_ln73_reg_663_reg_n_86,mul_ln73_reg_663_reg_n_87,mul_ln73_reg_663_reg_n_88,mul_ln73_reg_663_reg_n_89,mul_ln73_reg_663_reg_n_90,mul_ln73_reg_663_reg_n_91,mul_ln73_reg_663_reg_n_92,mul_ln73_reg_663_reg_n_93,mul_ln73_reg_663_reg_n_94,mul_ln73_reg_663_reg_n_95,mul_ln73_reg_663_reg_n_96,mul_ln73_reg_663_reg_n_97,mul_ln73_reg_663_reg_n_98,mul_ln73_reg_663_reg_n_99,mul_ln73_reg_663_reg_n_100,mul_ln73_reg_663_reg_n_101,mul_ln73_reg_663_reg_n_102,mul_ln73_reg_663_reg_n_103,mul_ln73_reg_663_reg_n_104,mul_ln73_reg_663_reg_n_105,mul_ln73_reg_663_reg_n_106,mul_ln73_reg_663_reg_n_107,mul_ln73_reg_663_reg_n_108}),
        .PATTERNBDETECT(NLW_mul_ln73_reg_663_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln73_reg_663_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32ns_32ns_64_1_1_U26_n_20,mul_32ns_32ns_64_1_1_U26_n_21,mul_32ns_32ns_64_1_1_U26_n_22,mul_32ns_32ns_64_1_1_U26_n_23,mul_32ns_32ns_64_1_1_U26_n_24,mul_32ns_32ns_64_1_1_U26_n_25,mul_32ns_32ns_64_1_1_U26_n_26,mul_32ns_32ns_64_1_1_U26_n_27,mul_32ns_32ns_64_1_1_U26_n_28,mul_32ns_32ns_64_1_1_U26_n_29,mul_32ns_32ns_64_1_1_U26_n_30,mul_32ns_32ns_64_1_1_U26_n_31,mul_32ns_32ns_64_1_1_U26_n_32,mul_32ns_32ns_64_1_1_U26_n_33,mul_32ns_32ns_64_1_1_U26_n_34,mul_32ns_32ns_64_1_1_U26_n_35,mul_32ns_32ns_64_1_1_U26_n_36,mul_32ns_32ns_64_1_1_U26_n_37,mul_32ns_32ns_64_1_1_U26_n_38,mul_32ns_32ns_64_1_1_U26_n_39,mul_32ns_32ns_64_1_1_U26_n_40,mul_32ns_32ns_64_1_1_U26_n_41,mul_32ns_32ns_64_1_1_U26_n_42,mul_32ns_32ns_64_1_1_U26_n_43,mul_32ns_32ns_64_1_1_U26_n_44,mul_32ns_32ns_64_1_1_U26_n_45,mul_32ns_32ns_64_1_1_U26_n_46,mul_32ns_32ns_64_1_1_U26_n_47,mul_32ns_32ns_64_1_1_U26_n_48,mul_32ns_32ns_64_1_1_U26_n_49,mul_32ns_32ns_64_1_1_U26_n_50,mul_32ns_32ns_64_1_1_U26_n_51,mul_32ns_32ns_64_1_1_U26_n_52,mul_32ns_32ns_64_1_1_U26_n_53,mul_32ns_32ns_64_1_1_U26_n_54,mul_32ns_32ns_64_1_1_U26_n_55,mul_32ns_32ns_64_1_1_U26_n_56,mul_32ns_32ns_64_1_1_U26_n_57,mul_32ns_32ns_64_1_1_U26_n_58,mul_32ns_32ns_64_1_1_U26_n_59,mul_32ns_32ns_64_1_1_U26_n_60,mul_32ns_32ns_64_1_1_U26_n_61,mul_32ns_32ns_64_1_1_U26_n_62,mul_32ns_32ns_64_1_1_U26_n_63,mul_32ns_32ns_64_1_1_U26_n_64,mul_32ns_32ns_64_1_1_U26_n_65,mul_32ns_32ns_64_1_1_U26_n_66,mul_32ns_32ns_64_1_1_U26_n_67}),
        .PCOUT(NLW_mul_ln73_reg_663_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_ln73_reg_663_reg_UNDERFLOW_UNCONNECTED));
  FDRE \mul_ln73_reg_663_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_19),
        .Q(\mul_ln73_reg_663_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[0]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_114),
        .Q(\mul_ln73_reg_663_reg[0]__0_n_3 ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_9),
        .Q(\mul_ln73_reg_663_reg_n_3_[10] ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[10]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_104),
        .Q(\mul_ln73_reg_663_reg[10]__0_n_3 ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_8),
        .Q(\mul_ln73_reg_663_reg_n_3_[11] ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[11]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_103),
        .Q(\mul_ln73_reg_663_reg[11]__0_n_3 ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_7),
        .Q(\mul_ln73_reg_663_reg_n_3_[12] ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[12]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_102),
        .Q(\mul_ln73_reg_663_reg[12]__0_n_3 ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_6),
        .Q(\mul_ln73_reg_663_reg_n_3_[13] ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[13]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_101),
        .Q(\mul_ln73_reg_663_reg[13]__0_n_3 ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_5),
        .Q(\mul_ln73_reg_663_reg_n_3_[14] ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[14]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_100),
        .Q(\mul_ln73_reg_663_reg[14]__0_n_3 ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_4),
        .Q(\mul_ln73_reg_663_reg_n_3_[15] ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[15]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_99),
        .Q(\mul_ln73_reg_663_reg[15]__0_n_3 ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_3),
        .Q(\mul_ln73_reg_663_reg_n_3_[16] ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[16]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_98),
        .Q(\mul_ln73_reg_663_reg[16]__0_n_3 ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_18),
        .Q(\mul_ln73_reg_663_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[1]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_113),
        .Q(\mul_ln73_reg_663_reg[1]__0_n_3 ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_17),
        .Q(\mul_ln73_reg_663_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[2]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_112),
        .Q(\mul_ln73_reg_663_reg[2]__0_n_3 ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_16),
        .Q(\mul_ln73_reg_663_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[3]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_111),
        .Q(\mul_ln73_reg_663_reg[3]__0_n_3 ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_15),
        .Q(\mul_ln73_reg_663_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[4]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_110),
        .Q(\mul_ln73_reg_663_reg[4]__0_n_3 ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_14),
        .Q(\mul_ln73_reg_663_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[5]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_109),
        .Q(\mul_ln73_reg_663_reg[5]__0_n_3 ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_13),
        .Q(\mul_ln73_reg_663_reg_n_3_[6] ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[6]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_108),
        .Q(\mul_ln73_reg_663_reg[6]__0_n_3 ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_12),
        .Q(\mul_ln73_reg_663_reg_n_3_[7] ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[7]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_107),
        .Q(\mul_ln73_reg_663_reg[7]__0_n_3 ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_11),
        .Q(\mul_ln73_reg_663_reg_n_3_[8] ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[8]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_106),
        .Q(\mul_ln73_reg_663_reg[8]__0_n_3 ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_10),
        .Q(\mul_ln73_reg_663_reg_n_3_[9] ),
        .R(1'b0));
  FDRE \mul_ln73_reg_663_reg[9]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(mul_32ns_32ns_64_1_1_U26_n_105),
        .Q(\mul_ln73_reg_663_reg[9]__0_n_3 ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mul_ln73_reg_663_reg__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({mul_32ns_32ns_64_1_1_U26_n_68,mul_32ns_32ns_64_1_1_U26_n_69,mul_32ns_32ns_64_1_1_U26_n_70,mul_32ns_32ns_64_1_1_U26_n_71,mul_32ns_32ns_64_1_1_U26_n_72,mul_32ns_32ns_64_1_1_U26_n_73,mul_32ns_32ns_64_1_1_U26_n_74,mul_32ns_32ns_64_1_1_U26_n_75,mul_32ns_32ns_64_1_1_U26_n_76,mul_32ns_32ns_64_1_1_U26_n_77,mul_32ns_32ns_64_1_1_U26_n_78,mul_32ns_32ns_64_1_1_U26_n_79,mul_32ns_32ns_64_1_1_U26_n_80,mul_32ns_32ns_64_1_1_U26_n_81,mul_32ns_32ns_64_1_1_U26_n_82,mul_32ns_32ns_64_1_1_U26_n_83,mul_32ns_32ns_64_1_1_U26_n_84,mul_32ns_32ns_64_1_1_U26_n_85,mul_32ns_32ns_64_1_1_U26_n_86,mul_32ns_32ns_64_1_1_U26_n_87,mul_32ns_32ns_64_1_1_U26_n_88,mul_32ns_32ns_64_1_1_U26_n_89,mul_32ns_32ns_64_1_1_U26_n_90,mul_32ns_32ns_64_1_1_U26_n_91,mul_32ns_32ns_64_1_1_U26_n_92,mul_32ns_32ns_64_1_1_U26_n_93,mul_32ns_32ns_64_1_1_U26_n_94,mul_32ns_32ns_64_1_1_U26_n_95,mul_32ns_32ns_64_1_1_U26_n_96,mul_32ns_32ns_64_1_1_U26_n_97}),
        .ACOUT(NLW_mul_ln73_reg_663_reg__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,imgInput_cols_c10_dout[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln73_reg_663_reg__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln73_reg_663_reg__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln73_reg_663_reg__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[0]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ap_CS_fsm_state2),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln73_reg_663_reg__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln73_reg_663_reg__0_OVERFLOW_UNCONNECTED),
        .P({mul_ln73_reg_663_reg__0_n_61,mul_ln73_reg_663_reg__0_n_62,mul_ln73_reg_663_reg__0_n_63,mul_ln73_reg_663_reg__0_n_64,mul_ln73_reg_663_reg__0_n_65,mul_ln73_reg_663_reg__0_n_66,mul_ln73_reg_663_reg__0_n_67,mul_ln73_reg_663_reg__0_n_68,mul_ln73_reg_663_reg__0_n_69,mul_ln73_reg_663_reg__0_n_70,mul_ln73_reg_663_reg__0_n_71,mul_ln73_reg_663_reg__0_n_72,mul_ln73_reg_663_reg__0_n_73,mul_ln73_reg_663_reg__0_n_74,mul_ln73_reg_663_reg__0_n_75,mul_ln73_reg_663_reg__0_n_76,mul_ln73_reg_663_reg__0_n_77,mul_ln73_reg_663_reg__0_n_78,mul_ln73_reg_663_reg__0_n_79,mul_ln73_reg_663_reg__0_n_80,mul_ln73_reg_663_reg__0_n_81,mul_ln73_reg_663_reg__0_n_82,mul_ln73_reg_663_reg__0_n_83,mul_ln73_reg_663_reg__0_n_84,mul_ln73_reg_663_reg__0_n_85,mul_ln73_reg_663_reg__0_n_86,mul_ln73_reg_663_reg__0_n_87,mul_ln73_reg_663_reg__0_n_88,mul_ln73_reg_663_reg__0_n_89,mul_ln73_reg_663_reg__0_n_90,mul_ln73_reg_663_reg__0_n_91,mul_ln73_reg_663_reg__0_n_92,mul_ln73_reg_663_reg__0_n_93,mul_ln73_reg_663_reg__0_n_94,mul_ln73_reg_663_reg__0_n_95,mul_ln73_reg_663_reg__0_n_96,mul_ln73_reg_663_reg__0_n_97,mul_ln73_reg_663_reg__0_n_98,mul_ln73_reg_663_reg__0_n_99,mul_ln73_reg_663_reg__0_n_100,mul_ln73_reg_663_reg__0_n_101,mul_ln73_reg_663_reg__0_n_102,mul_ln73_reg_663_reg__0_n_103,mul_ln73_reg_663_reg__0_n_104,mul_ln73_reg_663_reg__0_n_105,mul_ln73_reg_663_reg__0_n_106,mul_ln73_reg_663_reg__0_n_107,mul_ln73_reg_663_reg__0_n_108}),
        .PATTERNBDETECT(NLW_mul_ln73_reg_663_reg__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln73_reg_663_reg__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32ns_32ns_64_1_1_U26_n_115,mul_32ns_32ns_64_1_1_U26_n_116,mul_32ns_32ns_64_1_1_U26_n_117,mul_32ns_32ns_64_1_1_U26_n_118,mul_32ns_32ns_64_1_1_U26_n_119,mul_32ns_32ns_64_1_1_U26_n_120,mul_32ns_32ns_64_1_1_U26_n_121,mul_32ns_32ns_64_1_1_U26_n_122,mul_32ns_32ns_64_1_1_U26_n_123,mul_32ns_32ns_64_1_1_U26_n_124,mul_32ns_32ns_64_1_1_U26_n_125,mul_32ns_32ns_64_1_1_U26_n_126,mul_32ns_32ns_64_1_1_U26_n_127,mul_32ns_32ns_64_1_1_U26_n_128,mul_32ns_32ns_64_1_1_U26_n_129,mul_32ns_32ns_64_1_1_U26_n_130,mul_32ns_32ns_64_1_1_U26_n_131,mul_32ns_32ns_64_1_1_U26_n_132,mul_32ns_32ns_64_1_1_U26_n_133,mul_32ns_32ns_64_1_1_U26_n_134,mul_32ns_32ns_64_1_1_U26_n_135,mul_32ns_32ns_64_1_1_U26_n_136,mul_32ns_32ns_64_1_1_U26_n_137,mul_32ns_32ns_64_1_1_U26_n_138,mul_32ns_32ns_64_1_1_U26_n_139,mul_32ns_32ns_64_1_1_U26_n_140,mul_32ns_32ns_64_1_1_U26_n_141,mul_32ns_32ns_64_1_1_U26_n_142,mul_32ns_32ns_64_1_1_U26_n_143,mul_32ns_32ns_64_1_1_U26_n_144,mul_32ns_32ns_64_1_1_U26_n_145,mul_32ns_32ns_64_1_1_U26_n_146,mul_32ns_32ns_64_1_1_U26_n_147,mul_32ns_32ns_64_1_1_U26_n_148,mul_32ns_32ns_64_1_1_U26_n_149,mul_32ns_32ns_64_1_1_U26_n_150,mul_32ns_32ns_64_1_1_U26_n_151,mul_32ns_32ns_64_1_1_U26_n_152,mul_32ns_32ns_64_1_1_U26_n_153,mul_32ns_32ns_64_1_1_U26_n_154,mul_32ns_32ns_64_1_1_U26_n_155,mul_32ns_32ns_64_1_1_U26_n_156,mul_32ns_32ns_64_1_1_U26_n_157,mul_32ns_32ns_64_1_1_U26_n_158,mul_32ns_32ns_64_1_1_U26_n_159,mul_32ns_32ns_64_1_1_U26_n_160,mul_32ns_32ns_64_1_1_U26_n_161,mul_32ns_32ns_64_1_1_U26_n_162}),
        .PCOUT(NLW_mul_ln73_reg_663_reg__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_ln73_reg_663_reg__0_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h1)) 
    \op_assign_1_reg_819[7]_i_1 
       (.I0(icmp_ln128_reg_673_pp0_iter8_reg),
        .I1(ap_block_pp0_stage0_11001),
        .O(op_assign_1_reg_8190));
  FDRE \op_assign_1_reg_819_reg[0] 
       (.C(ap_clk),
        .CE(op_assign_1_reg_8190),
        .D(p_0_in__0[0]),
        .Q(D[8]),
        .R(1'b0));
  FDRE \op_assign_1_reg_819_reg[1] 
       (.C(ap_clk),
        .CE(op_assign_1_reg_8190),
        .D(p_0_in__0[1]),
        .Q(D[9]),
        .R(1'b0));
  FDRE \op_assign_1_reg_819_reg[2] 
       (.C(ap_clk),
        .CE(op_assign_1_reg_8190),
        .D(p_0_in__0[2]),
        .Q(D[10]),
        .R(1'b0));
  FDRE \op_assign_1_reg_819_reg[3] 
       (.C(ap_clk),
        .CE(op_assign_1_reg_8190),
        .D(p_0_in__0[3]),
        .Q(D[11]),
        .R(1'b0));
  FDRE \op_assign_1_reg_819_reg[4] 
       (.C(ap_clk),
        .CE(op_assign_1_reg_8190),
        .D(p_0_in__0[4]),
        .Q(D[12]),
        .R(1'b0));
  FDRE \op_assign_1_reg_819_reg[5] 
       (.C(ap_clk),
        .CE(op_assign_1_reg_8190),
        .D(p_0_in__0[5]),
        .Q(D[13]),
        .R(1'b0));
  FDRE \op_assign_1_reg_819_reg[6] 
       (.C(ap_clk),
        .CE(op_assign_1_reg_8190),
        .D(p_0_in__0[6]),
        .Q(D[14]),
        .R(1'b0));
  FDRE \op_assign_1_reg_819_reg[7] 
       (.C(ap_clk),
        .CE(op_assign_1_reg_8190),
        .D(p_0_in__0[7]),
        .Q(D[15]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_100
       (.I0(zext_ln123_reg_696_pp0_iter5_reg_reg[1]),
        .I1(zext_ln215_1_reg_750_pp0_iter5_reg[1]),
        .O(p_reg_reg_i_100_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_101
       (.I0(zext_ln123_reg_696_pp0_iter5_reg_reg[0]),
        .I1(zext_ln215_1_reg_750_pp0_iter5_reg[0]),
        .O(p_reg_reg_i_101_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_102
       (.I0(zext_ln123_reg_696_pp0_iter5_reg_reg[7]),
        .I1(zext_ln215_1_reg_750_pp0_iter5_reg[7]),
        .O(p_reg_reg_i_102_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_103
       (.I0(zext_ln123_reg_696_pp0_iter5_reg_reg[6]),
        .I1(zext_ln215_1_reg_750_pp0_iter5_reg[6]),
        .O(p_reg_reg_i_103_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_104
       (.I0(zext_ln123_reg_696_pp0_iter5_reg_reg[5]),
        .I1(zext_ln215_1_reg_750_pp0_iter5_reg[5]),
        .O(p_reg_reg_i_104_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_105
       (.I0(zext_ln123_reg_696_pp0_iter5_reg_reg[4]),
        .I1(zext_ln215_1_reg_750_pp0_iter5_reg[4]),
        .O(p_reg_reg_i_105_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_106
       (.I0(zext_ln215_1_reg_750_pp0_iter5_reg[7]),
        .I1(zext_ln1347_reg_703_pp0_iter5_reg_reg[7]),
        .O(p_reg_reg_i_106_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_107
       (.I0(zext_ln215_1_reg_750_pp0_iter5_reg[6]),
        .I1(zext_ln1347_reg_703_pp0_iter5_reg_reg[6]),
        .O(p_reg_reg_i_107_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_108
       (.I0(zext_ln215_1_reg_750_pp0_iter5_reg[5]),
        .I1(zext_ln1347_reg_703_pp0_iter5_reg_reg[5]),
        .O(p_reg_reg_i_108_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_109
       (.I0(zext_ln215_1_reg_750_pp0_iter5_reg[4]),
        .I1(zext_ln1347_reg_703_pp0_iter5_reg_reg[4]),
        .O(p_reg_reg_i_109_n_3));
  CARRY4 p_reg_reg_i_25
       (.CI(p_reg_reg_i_26_n_3),
        .CO({NLW_p_reg_reg_i_25_CO_UNCONNECTED[3:1],p_reg_reg_i_25_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_p_reg_reg_i_25_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 p_reg_reg_i_26
       (.CI(p_reg_reg_i_27_n_3),
        .CO({p_reg_reg_i_26_n_3,p_reg_reg_i_26_n_4,p_reg_reg_i_26_n_5,p_reg_reg_i_26_n_6}),
        .CYINIT(1'b0),
        .DI({p_reg_reg_i_32_n_3,p_reg_reg_i_33_n_3,sext_ln157_3_fu_549_p1[9:8]}),
        .O(add_ln157_2_fu_553_p2[11:8]),
        .S({p_reg_reg_i_36_n_3,p_reg_reg_i_37_n_3,p_reg_reg_i_38_n_3,p_reg_reg_i_39_n_3}));
  CARRY4 p_reg_reg_i_27
       (.CI(p_reg_reg_i_28_n_3),
        .CO({p_reg_reg_i_27_n_3,p_reg_reg_i_27_n_4,p_reg_reg_i_27_n_5,p_reg_reg_i_27_n_6}),
        .CYINIT(1'b0),
        .DI(sext_ln157_3_fu_549_p1[7:4]),
        .O(add_ln157_2_fu_553_p2[7:4]),
        .S({p_reg_reg_i_44_n_3,p_reg_reg_i_45_n_3,p_reg_reg_i_46_n_3,p_reg_reg_i_47_n_3}));
  CARRY4 p_reg_reg_i_28
       (.CI(1'b0),
        .CO({p_reg_reg_i_28_n_3,p_reg_reg_i_28_n_4,p_reg_reg_i_28_n_5,p_reg_reg_i_28_n_6}),
        .CYINIT(1'b0),
        .DI(sext_ln157_3_fu_549_p1[3:0]),
        .O(add_ln157_2_fu_553_p2[3:0]),
        .S({p_reg_reg_i_52_n_3,p_reg_reg_i_53_n_3,p_reg_reg_i_54_n_3,p_reg_reg_i_55_n_3}));
  CARRY4 p_reg_reg_i_29
       (.CI(p_reg_reg_i_30_n_3),
        .CO({NLW_p_reg_reg_i_29_CO_UNCONNECTED[3:1],p_reg_reg_i_29_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_p_reg_reg_i_29_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 p_reg_reg_i_30
       (.CI(p_reg_reg_i_31_n_3),
        .CO({p_reg_reg_i_30_n_3,p_reg_reg_i_30_n_4,p_reg_reg_i_30_n_5,p_reg_reg_i_30_n_6}),
        .CYINIT(1'b0),
        .DI(zext_ln1347_reg_703_pp0_iter5_reg_reg[7:4]),
        .O(ret_14_fu_445_p20_out[7:4]),
        .S({p_reg_reg_i_56_n_3,p_reg_reg_i_57_n_3,p_reg_reg_i_58_n_3,p_reg_reg_i_59_n_3}));
  CARRY4 p_reg_reg_i_31
       (.CI(1'b0),
        .CO({p_reg_reg_i_31_n_3,p_reg_reg_i_31_n_4,p_reg_reg_i_31_n_5,p_reg_reg_i_31_n_6}),
        .CYINIT(1'b1),
        .DI(zext_ln1347_reg_703_pp0_iter5_reg_reg[3:0]),
        .O(ret_14_fu_445_p20_out[3:0]),
        .S({p_reg_reg_i_60_n_3,p_reg_reg_i_61_n_3,p_reg_reg_i_62_n_3,p_reg_reg_i_63_n_3}));
  LUT2 #(
    .INIT(4'hB)) 
    p_reg_reg_i_32
       (.I0(p_reg_reg_i_26_0),
        .I1(vg_reg_778),
        .O(p_reg_reg_i_32_n_3));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_33
       (.I0(vg_reg_778),
        .I1(p_reg_reg_i_26_0),
        .O(p_reg_reg_i_33_n_3));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_34
       (.I0(add_ln157_1_fu_537_p2[8]),
        .I1(vg_reg_778),
        .O(sext_ln157_3_fu_549_p1[9]));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_35
       (.I0(add_ln157_1_fu_537_p2[7]),
        .I1(vg_reg_778),
        .O(sext_ln157_3_fu_549_p1[8]));
  LUT3 #(
    .INIT(8'h53)) 
    p_reg_reg_i_36
       (.I0(p_reg_reg_i_26_0),
        .I1(p_reg_reg_i_26_1),
        .I2(vg_reg_778),
        .O(p_reg_reg_i_36_n_3));
  LUT3 #(
    .INIT(8'h74)) 
    p_reg_reg_i_37
       (.I0(p_reg_reg_i_26_0),
        .I1(vg_reg_778),
        .I2(add_ln157_1_fu_537_p2[9]),
        .O(p_reg_reg_i_37_n_3));
  LUT3 #(
    .INIT(8'hCA)) 
    p_reg_reg_i_38
       (.I0(add_ln157_1_fu_537_p2[8]),
        .I1(add_ln157_fu_488_p2[9]),
        .I2(vg_reg_778),
        .O(p_reg_reg_i_38_n_3));
  LUT3 #(
    .INIT(8'hCA)) 
    p_reg_reg_i_39
       (.I0(add_ln157_1_fu_537_p2[7]),
        .I1(add_ln157_fu_488_p2[8]),
        .I2(vg_reg_778),
        .O(p_reg_reg_i_39_n_3));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_40
       (.I0(add_ln157_1_fu_537_p2[6]),
        .I1(vg_reg_778),
        .O(sext_ln157_3_fu_549_p1[7]));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_41
       (.I0(add_ln157_1_fu_537_p2[5]),
        .I1(vg_reg_778),
        .O(sext_ln157_3_fu_549_p1[6]));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_42
       (.I0(add_ln157_1_fu_537_p2[4]),
        .I1(vg_reg_778),
        .O(sext_ln157_3_fu_549_p1[5]));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_43
       (.I0(add_ln157_1_fu_537_p2[3]),
        .I1(vg_reg_778),
        .O(sext_ln157_3_fu_549_p1[4]));
  LUT3 #(
    .INIT(8'hCA)) 
    p_reg_reg_i_44
       (.I0(add_ln157_1_fu_537_p2[6]),
        .I1(add_ln157_fu_488_p2[7]),
        .I2(vg_reg_778),
        .O(p_reg_reg_i_44_n_3));
  LUT3 #(
    .INIT(8'hCA)) 
    p_reg_reg_i_45
       (.I0(add_ln157_1_fu_537_p2[5]),
        .I1(add_ln157_fu_488_p2[6]),
        .I2(vg_reg_778),
        .O(p_reg_reg_i_45_n_3));
  LUT3 #(
    .INIT(8'hCA)) 
    p_reg_reg_i_46
       (.I0(add_ln157_1_fu_537_p2[4]),
        .I1(add_ln157_fu_488_p2[5]),
        .I2(vg_reg_778),
        .O(p_reg_reg_i_46_n_3));
  LUT3 #(
    .INIT(8'hCA)) 
    p_reg_reg_i_47
       (.I0(add_ln157_1_fu_537_p2[3]),
        .I1(add_ln157_fu_488_p2[4]),
        .I2(vg_reg_778),
        .O(p_reg_reg_i_47_n_3));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_48
       (.I0(add_ln157_1_fu_537_p2[2]),
        .I1(vg_reg_778),
        .O(sext_ln157_3_fu_549_p1[3]));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_49
       (.I0(add_ln157_1_fu_537_p2[1]),
        .I1(vg_reg_778),
        .O(sext_ln157_3_fu_549_p1[2]));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_50
       (.I0(add_ln157_1_fu_537_p2[0]),
        .I1(vg_reg_778),
        .O(sext_ln157_3_fu_549_p1[1]));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_51
       (.I0(sext_ln157_2_fu_521_p1),
        .I1(vg_reg_778),
        .O(sext_ln157_3_fu_549_p1[0]));
  LUT3 #(
    .INIT(8'hCA)) 
    p_reg_reg_i_52
       (.I0(add_ln157_1_fu_537_p2[2]),
        .I1(add_ln157_fu_488_p2[3]),
        .I2(vg_reg_778),
        .O(p_reg_reg_i_52_n_3));
  LUT3 #(
    .INIT(8'hCA)) 
    p_reg_reg_i_53
       (.I0(add_ln157_1_fu_537_p2[1]),
        .I1(add_ln157_fu_488_p2[2]),
        .I2(vg_reg_778),
        .O(p_reg_reg_i_53_n_3));
  LUT3 #(
    .INIT(8'hCA)) 
    p_reg_reg_i_54
       (.I0(add_ln157_1_fu_537_p2[0]),
        .I1(add_ln157_fu_488_p2[1]),
        .I2(vg_reg_778),
        .O(p_reg_reg_i_54_n_3));
  LUT3 #(
    .INIT(8'hCA)) 
    p_reg_reg_i_55
       (.I0(sext_ln157_2_fu_521_p1),
        .I1(add_ln157_fu_488_p2[0]),
        .I2(vg_reg_778),
        .O(p_reg_reg_i_55_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_56
       (.I0(zext_ln1347_reg_703_pp0_iter5_reg_reg[7]),
        .I1(zext_ln123_reg_696_pp0_iter5_reg_reg[7]),
        .O(p_reg_reg_i_56_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_57
       (.I0(zext_ln1347_reg_703_pp0_iter5_reg_reg[6]),
        .I1(zext_ln123_reg_696_pp0_iter5_reg_reg[6]),
        .O(p_reg_reg_i_57_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_58
       (.I0(zext_ln1347_reg_703_pp0_iter5_reg_reg[5]),
        .I1(zext_ln123_reg_696_pp0_iter5_reg_reg[5]),
        .O(p_reg_reg_i_58_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_59
       (.I0(zext_ln1347_reg_703_pp0_iter5_reg_reg[4]),
        .I1(zext_ln123_reg_696_pp0_iter5_reg_reg[4]),
        .O(p_reg_reg_i_59_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_60
       (.I0(zext_ln1347_reg_703_pp0_iter5_reg_reg[3]),
        .I1(zext_ln123_reg_696_pp0_iter5_reg_reg[3]),
        .O(p_reg_reg_i_60_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_61
       (.I0(zext_ln1347_reg_703_pp0_iter5_reg_reg[2]),
        .I1(zext_ln123_reg_696_pp0_iter5_reg_reg[2]),
        .O(p_reg_reg_i_61_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_62
       (.I0(zext_ln1347_reg_703_pp0_iter5_reg_reg[1]),
        .I1(zext_ln123_reg_696_pp0_iter5_reg_reg[1]),
        .O(p_reg_reg_i_62_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_63
       (.I0(zext_ln1347_reg_703_pp0_iter5_reg_reg[0]),
        .I1(zext_ln123_reg_696_pp0_iter5_reg_reg[0]),
        .O(p_reg_reg_i_63_n_3));
  CARRY4 p_reg_reg_i_69
       (.CI(1'b0),
        .CO({p_reg_reg_i_69_n_3,p_reg_reg_i_69_n_4,p_reg_reg_i_69_n_5,p_reg_reg_i_69_n_6}),
        .CYINIT(1'b1),
        .DI(zext_ln215_1_reg_750_pp0_iter5_reg[3:0]),
        .O({\zext_ln215_1_reg_750_pp0_iter5_reg_reg[7]_0 [2:0],sext_ln157_2_fu_521_p1}),
        .S({p_reg_reg_i_88_n_3,p_reg_reg_i_89_n_3,p_reg_reg_i_90_n_3,p_reg_reg_i_91_n_3}));
  CARRY4 p_reg_reg_i_71
       (.CI(p_reg_reg_i_96_n_3),
        .CO({NLW_p_reg_reg_i_71_CO_UNCONNECTED[3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_p_reg_reg_i_71_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 p_reg_reg_i_74
       (.CI(p_reg_reg_i_97_n_3),
        .CO({NLW_p_reg_reg_i_74_CO_UNCONNECTED[3:1],\zext_ln215_1_reg_750_pp0_iter5_reg_reg[7]_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_p_reg_reg_i_74_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_88
       (.I0(zext_ln215_1_reg_750_pp0_iter5_reg[3]),
        .I1(zext_ln1347_reg_703_pp0_iter5_reg_reg[3]),
        .O(p_reg_reg_i_88_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_89
       (.I0(zext_ln215_1_reg_750_pp0_iter5_reg[2]),
        .I1(zext_ln1347_reg_703_pp0_iter5_reg_reg[2]),
        .O(p_reg_reg_i_89_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_90
       (.I0(zext_ln215_1_reg_750_pp0_iter5_reg[1]),
        .I1(zext_ln1347_reg_703_pp0_iter5_reg_reg[1]),
        .O(p_reg_reg_i_90_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_91
       (.I0(zext_ln215_1_reg_750_pp0_iter5_reg[0]),
        .I1(zext_ln1347_reg_703_pp0_iter5_reg_reg[0]),
        .O(p_reg_reg_i_91_n_3));
  CARRY4 p_reg_reg_i_95
       (.CI(1'b0),
        .CO({p_reg_reg_i_95_n_3,p_reg_reg_i_95_n_4,p_reg_reg_i_95_n_5,p_reg_reg_i_95_n_6}),
        .CYINIT(1'b1),
        .DI(zext_ln123_reg_696_pp0_iter5_reg_reg[3:0]),
        .O(sext_ln157_fu_472_p1[3:0]),
        .S({p_reg_reg_i_98_n_3,p_reg_reg_i_99_n_3,p_reg_reg_i_100_n_3,p_reg_reg_i_101_n_3}));
  CARRY4 p_reg_reg_i_96
       (.CI(p_reg_reg_i_95_n_3),
        .CO({p_reg_reg_i_96_n_3,p_reg_reg_i_96_n_4,p_reg_reg_i_96_n_5,p_reg_reg_i_96_n_6}),
        .CYINIT(1'b0),
        .DI(zext_ln123_reg_696_pp0_iter5_reg_reg[7:4]),
        .O(sext_ln157_fu_472_p1[7:4]),
        .S({p_reg_reg_i_102_n_3,p_reg_reg_i_103_n_3,p_reg_reg_i_104_n_3,p_reg_reg_i_105_n_3}));
  CARRY4 p_reg_reg_i_97
       (.CI(p_reg_reg_i_69_n_3),
        .CO({p_reg_reg_i_97_n_3,p_reg_reg_i_97_n_4,p_reg_reg_i_97_n_5,p_reg_reg_i_97_n_6}),
        .CYINIT(1'b0),
        .DI(zext_ln215_1_reg_750_pp0_iter5_reg[7:4]),
        .O(\zext_ln215_1_reg_750_pp0_iter5_reg_reg[7]_0 [6:3]),
        .S({p_reg_reg_i_106_n_3,p_reg_reg_i_107_n_3,p_reg_reg_i_108_n_3,p_reg_reg_i_109_n_3}));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_98
       (.I0(zext_ln123_reg_696_pp0_iter5_reg_reg[3]),
        .I1(zext_ln215_1_reg_750_pp0_iter5_reg[3]),
        .O(p_reg_reg_i_98_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_99
       (.I0(zext_ln123_reg_696_pp0_iter5_reg_reg[2]),
        .I1(zext_ln215_1_reg_750_pp0_iter5_reg[2]),
        .O(p_reg_reg_i_99_n_3));
  FDRE \r_V_reg_690_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(r_V_reg_690[0]),
        .Q(r_V_reg_690_pp0_iter2_reg[0]),
        .R(1'b0));
  FDRE \r_V_reg_690_pp0_iter2_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(r_V_reg_690[1]),
        .Q(r_V_reg_690_pp0_iter2_reg[1]),
        .R(1'b0));
  FDRE \r_V_reg_690_pp0_iter2_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(r_V_reg_690[2]),
        .Q(r_V_reg_690_pp0_iter2_reg[2]),
        .R(1'b0));
  FDRE \r_V_reg_690_pp0_iter2_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(r_V_reg_690[3]),
        .Q(r_V_reg_690_pp0_iter2_reg[3]),
        .R(1'b0));
  FDRE \r_V_reg_690_pp0_iter2_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(r_V_reg_690[4]),
        .Q(r_V_reg_690_pp0_iter2_reg[4]),
        .R(1'b0));
  FDRE \r_V_reg_690_pp0_iter2_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(r_V_reg_690[5]),
        .Q(r_V_reg_690_pp0_iter2_reg[5]),
        .R(1'b0));
  FDRE \r_V_reg_690_pp0_iter2_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(r_V_reg_690[6]),
        .Q(r_V_reg_690_pp0_iter2_reg[6]),
        .R(1'b0));
  FDRE \r_V_reg_690_pp0_iter2_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(r_V_reg_690[7]),
        .Q(r_V_reg_690_pp0_iter2_reg[7]),
        .R(1'b0));
  FDRE \r_V_reg_690_pp0_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(r_V_reg_690_pp0_iter2_reg[0]),
        .Q(r_V_reg_690_pp0_iter3_reg[0]),
        .R(1'b0));
  FDRE \r_V_reg_690_pp0_iter3_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(r_V_reg_690_pp0_iter2_reg[1]),
        .Q(r_V_reg_690_pp0_iter3_reg[1]),
        .R(1'b0));
  FDRE \r_V_reg_690_pp0_iter3_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(r_V_reg_690_pp0_iter2_reg[2]),
        .Q(r_V_reg_690_pp0_iter3_reg[2]),
        .R(1'b0));
  FDRE \r_V_reg_690_pp0_iter3_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(r_V_reg_690_pp0_iter2_reg[3]),
        .Q(r_V_reg_690_pp0_iter3_reg[3]),
        .R(1'b0));
  FDRE \r_V_reg_690_pp0_iter3_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(r_V_reg_690_pp0_iter2_reg[4]),
        .Q(r_V_reg_690_pp0_iter3_reg[4]),
        .R(1'b0));
  FDRE \r_V_reg_690_pp0_iter3_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(r_V_reg_690_pp0_iter2_reg[5]),
        .Q(r_V_reg_690_pp0_iter3_reg[5]),
        .R(1'b0));
  FDRE \r_V_reg_690_pp0_iter3_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(r_V_reg_690_pp0_iter2_reg[6]),
        .Q(r_V_reg_690_pp0_iter3_reg[6]),
        .R(1'b0));
  FDRE \r_V_reg_690_pp0_iter3_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(r_V_reg_690_pp0_iter2_reg[7]),
        .Q(r_V_reg_690_pp0_iter3_reg[7]),
        .R(1'b0));
  FDRE \r_V_reg_690_reg[0] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[16]),
        .Q(r_V_reg_690[0]),
        .R(1'b0));
  FDRE \r_V_reg_690_reg[1] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[17]),
        .Q(r_V_reg_690[1]),
        .R(1'b0));
  FDRE \r_V_reg_690_reg[2] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[18]),
        .Q(r_V_reg_690[2]),
        .R(1'b0));
  FDRE \r_V_reg_690_reg[3] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[19]),
        .Q(r_V_reg_690[3]),
        .R(1'b0));
  FDRE \r_V_reg_690_reg[4] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[20]),
        .Q(r_V_reg_690[4]),
        .R(1'b0));
  FDRE \r_V_reg_690_reg[5] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[21]),
        .Q(r_V_reg_690[5]),
        .R(1'b0));
  FDRE \r_V_reg_690_reg[6] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[22]),
        .Q(r_V_reg_690[6]),
        .R(1'b0));
  FDRE \r_V_reg_690_reg[7] 
       (.C(ap_clk),
        .CE(b_V_reg_6770),
        .D(imgInput_data_dout[23]),
        .Q(r_V_reg_690[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h09000009)) 
    \vg_reg_778[0]_i_2 
       (.I0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[6]),
        .I1(g_V_reg_684_pp0_iter4_reg[6]),
        .I2(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0__0),
        .I3(g_V_reg_684_pp0_iter4_reg[7]),
        .I4(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[7]),
        .O(\vg_reg_778[0]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \vg_reg_778[0]_i_3 
       (.I0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[3]),
        .I1(g_V_reg_684_pp0_iter4_reg[3]),
        .I2(g_V_reg_684_pp0_iter4_reg[5]),
        .I3(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[5]),
        .I4(g_V_reg_684_pp0_iter4_reg[4]),
        .I5(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[4]),
        .O(\vg_reg_778[0]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \vg_reg_778[0]_i_4 
       (.I0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[0]),
        .I1(g_V_reg_684_pp0_iter4_reg[0]),
        .I2(g_V_reg_684_pp0_iter4_reg[2]),
        .I3(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[2]),
        .I4(g_V_reg_684_pp0_iter4_reg[1]),
        .I5(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[1]),
        .O(\vg_reg_778[0]_i_4_n_3 ));
  FDRE \vg_reg_778_reg[0] 
       (.C(ap_clk),
        .CE(add_ln213_1_reg_7660),
        .D(vg_fu_403_p2),
        .Q(vg_reg_778),
        .R(1'b0));
  CARRY4 \vg_reg_778_reg[0]_i_1 
       (.CI(1'b0),
        .CO({vg_fu_403_p2,\vg_reg_778_reg[0]_i_1_n_4 ,\vg_reg_778_reg[0]_i_1_n_5 ,\vg_reg_778_reg[0]_i_1_n_6 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_vg_reg_778_reg[0]_i_1_O_UNCONNECTED [3:0]),
        .S({xf_cv_icvSaturate8u_cv_U_n_61,\vg_reg_778[0]_i_2_n_3 ,\vg_reg_778[0]_i_3_n_3 ,\vg_reg_778[0]_i_4_n_3 }));
  LUT2 #(
    .INIT(4'h1)) 
    \vmin_V_reg_745[7]_i_1 
       (.I0(icmp_ln128_reg_673_pp0_iter3_reg),
        .I1(ap_block_pp0_stage0_11001),
        .O(vmin_V_reg_7450));
  FDRE \vmin_V_reg_745_pp0_iter5_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(vmin_V_reg_745[0]),
        .Q(vmin_V_reg_745_pp0_iter5_reg[0]),
        .R(1'b0));
  FDRE \vmin_V_reg_745_pp0_iter5_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(vmin_V_reg_745[1]),
        .Q(vmin_V_reg_745_pp0_iter5_reg[1]),
        .R(1'b0));
  FDRE \vmin_V_reg_745_pp0_iter5_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(vmin_V_reg_745[2]),
        .Q(vmin_V_reg_745_pp0_iter5_reg[2]),
        .R(1'b0));
  FDRE \vmin_V_reg_745_pp0_iter5_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(vmin_V_reg_745[3]),
        .Q(vmin_V_reg_745_pp0_iter5_reg[3]),
        .R(1'b0));
  FDRE \vmin_V_reg_745_pp0_iter5_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(vmin_V_reg_745[4]),
        .Q(vmin_V_reg_745_pp0_iter5_reg[4]),
        .R(1'b0));
  FDRE \vmin_V_reg_745_pp0_iter5_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(vmin_V_reg_745[5]),
        .Q(vmin_V_reg_745_pp0_iter5_reg[5]),
        .R(1'b0));
  FDRE \vmin_V_reg_745_pp0_iter5_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(vmin_V_reg_745[6]),
        .Q(vmin_V_reg_745_pp0_iter5_reg[6]),
        .R(1'b0));
  FDRE \vmin_V_reg_745_pp0_iter5_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(vmin_V_reg_745[7]),
        .Q(vmin_V_reg_745_pp0_iter5_reg[7]),
        .R(1'b0));
  FDRE \vmin_V_reg_745_reg[0] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(vmin_V_fu_348_p20_out[0]),
        .Q(vmin_V_reg_745[0]),
        .R(1'b0));
  FDRE \vmin_V_reg_745_reg[1] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(vmin_V_fu_348_p20_out[1]),
        .Q(vmin_V_reg_745[1]),
        .R(1'b0));
  FDRE \vmin_V_reg_745_reg[2] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(vmin_V_fu_348_p20_out[2]),
        .Q(vmin_V_reg_745[2]),
        .R(1'b0));
  FDRE \vmin_V_reg_745_reg[3] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(vmin_V_fu_348_p20_out[3]),
        .Q(vmin_V_reg_745[3]),
        .R(1'b0));
  FDRE \vmin_V_reg_745_reg[4] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(vmin_V_fu_348_p20_out[4]),
        .Q(vmin_V_reg_745[4]),
        .R(1'b0));
  FDRE \vmin_V_reg_745_reg[5] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(vmin_V_fu_348_p20_out[5]),
        .Q(vmin_V_reg_745[5]),
        .R(1'b0));
  FDRE \vmin_V_reg_745_reg[6] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(vmin_V_fu_348_p20_out[6]),
        .Q(vmin_V_reg_745[6]),
        .R(1'b0));
  FDRE \vmin_V_reg_745_reg[7] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(vmin_V_fu_348_p20_out[7]),
        .Q(vmin_V_reg_745[7]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_bgr2hsv_9_2160_3840_1_s_void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_cud void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U
       (.B(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_q0),
        .DI(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U_n_23),
        .Q(add_ln213_1_reg_766[0]),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter6(ap_enable_reg_pp0_iter6),
        .p_reg_reg(vmin_V_reg_745_pp0_iter5_reg[0]),
        .\q0_reg[0] (xf_cv_icvSaturate8u_cv_U_n_79),
        .\q0_reg[10] (xf_cv_icvSaturate8u_cv_U_n_65),
        .\q0_reg[10]_0 (xf_cv_icvSaturate8u_cv_U_n_89),
        .\q0_reg[11] (xf_cv_icvSaturate8u_cv_U_n_32),
        .\q0_reg[12] (p_0_in[6:0]),
        .\q0_reg[13] (xf_cv_icvSaturate8u_cv_U_n_33),
        .\q0_reg[14] (xf_cv_icvSaturate8u_cv_U_n_35),
        .\q0_reg[15] (xf_cv_icvSaturate8u_cv_U_n_34),
        .\q0_reg[1] (xf_cv_icvSaturate8u_cv_U_n_80),
        .\q0_reg[2] (xf_cv_icvSaturate8u_cv_U_n_81),
        .\q0_reg[3] (xf_cv_icvSaturate8u_cv_U_n_82),
        .\q0_reg[4] (xf_cv_icvSaturate8u_cv_U_n_83),
        .\q0_reg[5] (xf_cv_icvSaturate8u_cv_U_n_84),
        .\q0_reg[6] (xf_cv_icvSaturate8u_cv_U_n_85),
        .\q0_reg[7] (xf_cv_icvSaturate8u_cv_U_n_86),
        .\q0_reg[8] (xf_cv_icvSaturate8u_cv_U_n_87),
        .\q0_reg[9] (xf_cv_icvSaturate8u_cv_U_n_88),
        .q1_reg(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U_n_20),
        .q1_reg_0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U_n_21),
        .q1_reg_1(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U_n_22));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_bgr2hsv_9_2160_3840_1_s_void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_bkb void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U
       (.A(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_q0),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter5(ap_enable_reg_pp0_iter5),
        .\q0_reg[0] (xf_cv_icvSaturate8u_cv_U_n_66),
        .\q0_reg[10] (xf_cv_icvSaturate8u_cv_U_n_76),
        .\q0_reg[11] (xf_cv_icvSaturate8u_cv_U_n_77),
        .\q0_reg[12] (xf_cv_icvSaturate8u_cv_U_n_63),
        .\q0_reg[13] (xf_cv_icvSaturate8u_cv_U_n_64),
        .\q0_reg[13]_0 (xf_cv_icvSaturate8u_cv_U_n_78),
        .\q0_reg[14] (xf_cv_icvSaturate8u_cv_U_n_20),
        .\q0_reg[16] (xf_cv_icvSaturate8u_cv_U_n_29),
        .\q0_reg[17] (xf_cv_icvSaturate8u_cv_U_n_31),
        .\q0_reg[18] (xf_cv_icvSaturate8u_cv_U_n_30),
        .\q0_reg[1] (xf_cv_icvSaturate8u_cv_U_n_67),
        .\q0_reg[2] (xf_cv_icvSaturate8u_cv_U_n_68),
        .\q0_reg[3] (xf_cv_icvSaturate8u_cv_U_n_69),
        .\q0_reg[4] (xf_cv_icvSaturate8u_cv_U_n_70),
        .\q0_reg[5] (xf_cv_icvSaturate8u_cv_U_n_71),
        .\q0_reg[6] (xf_cv_icvSaturate8u_cv_U_n_72),
        .\q0_reg[7] (xf_cv_icvSaturate8u_cv_U_n_73),
        .\q0_reg[8] (xf_cv_icvSaturate8u_cv_U_n_74),
        .\q0_reg[9] (xf_cv_icvSaturate8u_cv_U_n_75),
        .void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[6:0]),
        .void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0),
        .\zext_ln123_1_reg_730_reg[3] (void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U_n_26),
        .\zext_ln123_1_reg_730_reg[7] (void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U_n_24),
        .\zext_ln123_1_reg_730_reg[7]_0 (void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U_n_25));
  LUT5 #(
    .INIT(32'h09000009)) 
    \vr_reg_772[0]_i_3 
       (.I0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[6]),
        .I1(zext_ln1347_1_reg_735[6]),
        .I2(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0__0),
        .I3(zext_ln1347_1_reg_735[7]),
        .I4(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[7]),
        .O(\vr_reg_772[0]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \vr_reg_772[0]_i_4 
       (.I0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[3]),
        .I1(zext_ln1347_1_reg_735[3]),
        .I2(zext_ln1347_1_reg_735[5]),
        .I3(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[5]),
        .I4(zext_ln1347_1_reg_735[4]),
        .I5(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[4]),
        .O(\vr_reg_772[0]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \vr_reg_772[0]_i_5 
       (.I0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[0]),
        .I1(zext_ln1347_1_reg_735[0]),
        .I2(zext_ln1347_1_reg_735[2]),
        .I3(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[2]),
        .I4(zext_ln1347_1_reg_735[1]),
        .I5(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[1]),
        .O(\vr_reg_772[0]_i_5_n_3 ));
  FDRE \vr_reg_772_reg[0] 
       (.C(ap_clk),
        .CE(add_ln213_1_reg_7660),
        .D(vr_fu_395_p2),
        .Q(vr_reg_772),
        .R(1'b0));
  CARRY4 \vr_reg_772_reg[0]_i_1 
       (.CI(1'b0),
        .CO({vr_fu_395_p2,\vr_reg_772_reg[0]_i_1_n_4 ,\vr_reg_772_reg[0]_i_1_n_5 ,\vr_reg_772_reg[0]_i_1_n_6 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_vr_reg_772_reg[0]_i_1_O_UNCONNECTED [3:0]),
        .S({xf_cv_icvSaturate8u_cv_U_n_61,\vr_reg_772[0]_i_3_n_3 ,\vr_reg_772[0]_i_4_n_3 ,\vr_reg_772[0]_i_5_n_3 }));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_bgr2hsv_9_2160_3840_1_s_xf_cv_icvSaturate8u_cv xf_cv_icvSaturate8u_cv_U
       (.A(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_q0[12]),
        .B(p_0_in),
        .D(vmin_V_fu_348_p20_out),
        .DI(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U_n_23),
        .I238(xf_cv_icvSaturate8u_cv_load_reg_719),
        .O({xf_cv_icvSaturate8u_cv_U_n_61,void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0__0}),
        .O184({xf_cv_icvSaturate8u_cv_U_n_36,xf_cv_icvSaturate8u_cv_U_n_37,xf_cv_icvSaturate8u_cv_U_n_38,xf_cv_icvSaturate8u_cv_U_n_39,xf_cv_icvSaturate8u_cv_U_n_40,xf_cv_icvSaturate8u_cv_U_n_41,xf_cv_icvSaturate8u_cv_U_n_42,xf_cv_icvSaturate8u_cv_U_n_43,xf_cv_icvSaturate8u_cv_U_n_44}),
        .Q(add_ln213_1_reg_766),
        .\add_ln213_1_reg_766_reg[7] (xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg),
        .\add_ln213_1_reg_766_reg[7]_0 (b_V_reg_677_pp0_iter4_reg),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4),
        .ap_enable_reg_pp0_iter5(ap_enable_reg_pp0_iter5),
        .ap_enable_reg_pp0_iter5_reg(xf_cv_icvSaturate8u_cv_U_n_64),
        .ap_enable_reg_pp0_iter6(ap_enable_reg_pp0_iter6),
        .ap_enable_reg_pp0_iter6_reg(xf_cv_icvSaturate8u_cv_U_n_65),
        .\b_V_reg_677_pp0_iter4_reg_reg[5] (add_ln213_1_fu_390_p2),
        .icmp_ln128_reg_673_pp0_iter2_reg(icmp_ln128_reg_673_pp0_iter2_reg),
        .icmp_ln128_reg_673_pp0_iter4_reg(icmp_ln128_reg_673_pp0_iter4_reg),
        .icmp_ln128_reg_673_pp0_iter9_reg(icmp_ln128_reg_673_pp0_iter9_reg),
        .imgInput_data_empty_n(imgInput_data_empty_n),
        .p_reg_reg(vmin_V_reg_745_pp0_iter5_reg),
        .p_reg_reg_i_1__0(xf_cv_icvSaturate8u_cv_U_n_32),
        .\q0[10]_i_3 (xf_cv_icvSaturate8u_cv_U_n_89),
        .\q0[9]_i_5__0 (xf_cv_icvSaturate8u_cv_U_n_88),
        .\q0_reg[0]_i_3__0 (xf_cv_icvSaturate8u_cv_U_n_79),
        .\q0_reg[10] (void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U_n_24),
        .\q0_reg[10]_0 (void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U_n_20),
        .\q0_reg[11] (void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U_n_26),
        .\q0_reg[12] (xf_cv_icvSaturate8u_cv_U_n_63),
        .\q0_reg[12]_0 (void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U_n_25),
        .\q0_reg[1]_i_3__0 (xf_cv_icvSaturate8u_cv_U_n_80),
        .\q0_reg[2]_i_3__0 (xf_cv_icvSaturate8u_cv_U_n_81),
        .\q0_reg[3]_i_3__0 (xf_cv_icvSaturate8u_cv_U_n_82),
        .\q0_reg[4]_i_3__0 (xf_cv_icvSaturate8u_cv_U_n_83),
        .\q0_reg[5]_i_3__0 (xf_cv_icvSaturate8u_cv_U_n_84),
        .\q0_reg[6]_i_3__0 (xf_cv_icvSaturate8u_cv_U_n_85),
        .\q0_reg[7]_i_3__0 (xf_cv_icvSaturate8u_cv_U_n_86),
        .\q0_reg[8] (void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U_n_22),
        .\q0_reg[8]_i_3__0 (xf_cv_icvSaturate8u_cv_U_n_87),
        .\q0_reg[9] (void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U_n_21),
        .q1_reg(xf_cv_icvSaturate8u_cv_U_n_33),
        .q1_reg_0(xf_cv_icvSaturate8u_cv_U_n_34),
        .q1_reg_1(xf_cv_icvSaturate8u_cv_U_n_35),
        .q1_reg_2(ap_enable_reg_pp0_iter1_reg_n_3),
        .q1_reg_3(\icmp_ln128_reg_673_reg_n_3_[0] ),
        .q1_reg_4(ap_enable_reg_pp0_iter10_reg_n_3),
        .q1_reg_5(r_V_reg_690_pp0_iter3_reg),
        .q2_reg(b_V_reg_677),
        .q2_reg_0(g_V_reg_684),
        .rgb2hsv_data_full_n(rgb2hsv_data_full_n),
        .\vg_reg_778_reg[0] (zext_ln123_1_reg_730_reg),
        .\vmin_V_reg_745_reg[7] (b_V_reg_677_pp0_iter3_reg),
        .void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0),
        .void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0),
        .\zext_ln123_1_reg_730_reg[7] (xf_cv_icvSaturate8u_cv_U_n_20),
        .\zext_ln123_1_reg_730_reg[7]_0 (xf_cv_icvSaturate8u_cv_U_n_29),
        .\zext_ln123_1_reg_730_reg[7]_1 (xf_cv_icvSaturate8u_cv_U_n_30),
        .\zext_ln123_1_reg_730_reg[7]_10 (xf_cv_icvSaturate8u_cv_U_n_73),
        .\zext_ln123_1_reg_730_reg[7]_11 (xf_cv_icvSaturate8u_cv_U_n_74),
        .\zext_ln123_1_reg_730_reg[7]_12 (xf_cv_icvSaturate8u_cv_U_n_75),
        .\zext_ln123_1_reg_730_reg[7]_13 (xf_cv_icvSaturate8u_cv_U_n_76),
        .\zext_ln123_1_reg_730_reg[7]_14 (xf_cv_icvSaturate8u_cv_U_n_77),
        .\zext_ln123_1_reg_730_reg[7]_15 (xf_cv_icvSaturate8u_cv_U_n_78),
        .\zext_ln123_1_reg_730_reg[7]_16 ({\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[7] ,\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[6] ,\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[5] ,\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[4] ,\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[3] ,\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[2] ,\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[1] ,\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[0] }),
        .\zext_ln123_1_reg_730_reg[7]_2 (xf_cv_icvSaturate8u_cv_U_n_31),
        .\zext_ln123_1_reg_730_reg[7]_3 (xf_cv_icvSaturate8u_cv_U_n_66),
        .\zext_ln123_1_reg_730_reg[7]_4 (xf_cv_icvSaturate8u_cv_U_n_67),
        .\zext_ln123_1_reg_730_reg[7]_5 (xf_cv_icvSaturate8u_cv_U_n_68),
        .\zext_ln123_1_reg_730_reg[7]_6 (xf_cv_icvSaturate8u_cv_U_n_69),
        .\zext_ln123_1_reg_730_reg[7]_7 (xf_cv_icvSaturate8u_cv_U_n_70),
        .\zext_ln123_1_reg_730_reg[7]_8 (xf_cv_icvSaturate8u_cv_U_n_71),
        .\zext_ln123_1_reg_730_reg[7]_9 (xf_cv_icvSaturate8u_cv_U_n_72));
  FDRE \xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(xf_cv_icvSaturate8u_cv_load_reg_719[0]),
        .Q(xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg[0]),
        .R(1'b0));
  FDRE \xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(xf_cv_icvSaturate8u_cv_load_reg_719[1]),
        .Q(xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg[1]),
        .R(1'b0));
  FDRE \xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(xf_cv_icvSaturate8u_cv_load_reg_719[2]),
        .Q(xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg[2]),
        .R(1'b0));
  FDRE \xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(xf_cv_icvSaturate8u_cv_load_reg_719[3]),
        .Q(xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg[3]),
        .R(1'b0));
  FDRE \xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(xf_cv_icvSaturate8u_cv_load_reg_719[4]),
        .Q(xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg[4]),
        .R(1'b0));
  FDRE \xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(xf_cv_icvSaturate8u_cv_load_reg_719[5]),
        .Q(xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg[5]),
        .R(1'b0));
  FDRE \xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(xf_cv_icvSaturate8u_cv_load_reg_719[6]),
        .Q(xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg[6]),
        .R(1'b0));
  FDRE \xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(xf_cv_icvSaturate8u_cv_load_reg_719[7]),
        .Q(xf_cv_icvSaturate8u_cv_load_reg_719_pp0_iter4_reg[7]),
        .R(1'b0));
  FDRE \zext_ln123_1_reg_730_reg[0] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(xf_cv_icvSaturate8u_cv_U_n_44),
        .Q(zext_ln123_1_reg_730_reg[0]),
        .R(1'b0));
  FDRE \zext_ln123_1_reg_730_reg[1] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(xf_cv_icvSaturate8u_cv_U_n_43),
        .Q(zext_ln123_1_reg_730_reg[1]),
        .R(1'b0));
  FDRE \zext_ln123_1_reg_730_reg[2] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(xf_cv_icvSaturate8u_cv_U_n_42),
        .Q(zext_ln123_1_reg_730_reg[2]),
        .R(1'b0));
  FDRE \zext_ln123_1_reg_730_reg[3] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(xf_cv_icvSaturate8u_cv_U_n_41),
        .Q(zext_ln123_1_reg_730_reg[3]),
        .R(1'b0));
  FDRE \zext_ln123_1_reg_730_reg[4] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(xf_cv_icvSaturate8u_cv_U_n_40),
        .Q(zext_ln123_1_reg_730_reg[4]),
        .R(1'b0));
  FDRE \zext_ln123_1_reg_730_reg[5] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(xf_cv_icvSaturate8u_cv_U_n_39),
        .Q(zext_ln123_1_reg_730_reg[5]),
        .R(1'b0));
  FDRE \zext_ln123_1_reg_730_reg[6] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(xf_cv_icvSaturate8u_cv_U_n_38),
        .Q(zext_ln123_1_reg_730_reg[6]),
        .R(1'b0));
  FDRE \zext_ln123_1_reg_730_reg[7] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(xf_cv_icvSaturate8u_cv_U_n_37),
        .Q(zext_ln123_1_reg_730_reg[7]),
        .R(1'b0));
  FDRE \zext_ln123_1_reg_730_reg[8] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(xf_cv_icvSaturate8u_cv_U_n_36),
        .Q(zext_ln123_1_reg_730_reg[8]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \zext_ln123_reg_696[7]_i_1 
       (.I0(icmp_ln128_reg_673_pp0_iter1_reg),
        .I1(ap_block_pp0_stage0_11001),
        .O(zext_ln123_reg_696_reg0));
  FDRE \zext_ln123_reg_696_pp0_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln123_reg_696_reg[0]),
        .Q(\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter3_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln123_reg_696_reg[1]),
        .Q(\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter3_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln123_reg_696_reg[2]),
        .Q(\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter3_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln123_reg_696_reg[3]),
        .Q(\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter3_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln123_reg_696_reg[4]),
        .Q(\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter3_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln123_reg_696_reg[5]),
        .Q(\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter3_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln123_reg_696_reg[6]),
        .Q(\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[6] ),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter3_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln123_reg_696_reg[7]),
        .Q(\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[7] ),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter4_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[0] ),
        .Q(zext_ln123_reg_696_pp0_iter4_reg_reg[0]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter4_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[1] ),
        .Q(zext_ln123_reg_696_pp0_iter4_reg_reg[1]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter4_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[2] ),
        .Q(zext_ln123_reg_696_pp0_iter4_reg_reg[2]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter4_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[3] ),
        .Q(zext_ln123_reg_696_pp0_iter4_reg_reg[3]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter4_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[4] ),
        .Q(zext_ln123_reg_696_pp0_iter4_reg_reg[4]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter4_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[5] ),
        .Q(zext_ln123_reg_696_pp0_iter4_reg_reg[5]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter4_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[6] ),
        .Q(zext_ln123_reg_696_pp0_iter4_reg_reg[6]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter4_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\zext_ln123_reg_696_pp0_iter3_reg_reg_n_3_[7] ),
        .Q(zext_ln123_reg_696_pp0_iter4_reg_reg[7]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter5_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln123_reg_696_pp0_iter4_reg_reg[0]),
        .Q(zext_ln123_reg_696_pp0_iter5_reg_reg[0]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter5_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln123_reg_696_pp0_iter4_reg_reg[1]),
        .Q(zext_ln123_reg_696_pp0_iter5_reg_reg[1]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter5_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln123_reg_696_pp0_iter4_reg_reg[2]),
        .Q(zext_ln123_reg_696_pp0_iter5_reg_reg[2]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter5_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln123_reg_696_pp0_iter4_reg_reg[3]),
        .Q(zext_ln123_reg_696_pp0_iter5_reg_reg[3]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter5_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln123_reg_696_pp0_iter4_reg_reg[4]),
        .Q(zext_ln123_reg_696_pp0_iter5_reg_reg[4]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter5_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln123_reg_696_pp0_iter4_reg_reg[5]),
        .Q(zext_ln123_reg_696_pp0_iter5_reg_reg[5]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter5_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln123_reg_696_pp0_iter4_reg_reg[6]),
        .Q(zext_ln123_reg_696_pp0_iter5_reg_reg[6]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_pp0_iter5_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln123_reg_696_pp0_iter4_reg_reg[7]),
        .Q(zext_ln123_reg_696_pp0_iter5_reg_reg[7]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_reg[0] 
       (.C(ap_clk),
        .CE(zext_ln123_reg_696_reg0),
        .D(b_V_reg_677[0]),
        .Q(zext_ln123_reg_696_reg[0]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_reg[1] 
       (.C(ap_clk),
        .CE(zext_ln123_reg_696_reg0),
        .D(b_V_reg_677[1]),
        .Q(zext_ln123_reg_696_reg[1]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_reg[2] 
       (.C(ap_clk),
        .CE(zext_ln123_reg_696_reg0),
        .D(b_V_reg_677[2]),
        .Q(zext_ln123_reg_696_reg[2]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_reg[3] 
       (.C(ap_clk),
        .CE(zext_ln123_reg_696_reg0),
        .D(b_V_reg_677[3]),
        .Q(zext_ln123_reg_696_reg[3]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_reg[4] 
       (.C(ap_clk),
        .CE(zext_ln123_reg_696_reg0),
        .D(b_V_reg_677[4]),
        .Q(zext_ln123_reg_696_reg[4]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_reg[5] 
       (.C(ap_clk),
        .CE(zext_ln123_reg_696_reg0),
        .D(b_V_reg_677[5]),
        .Q(zext_ln123_reg_696_reg[5]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_reg[6] 
       (.C(ap_clk),
        .CE(zext_ln123_reg_696_reg0),
        .D(b_V_reg_677[6]),
        .Q(zext_ln123_reg_696_reg[6]),
        .R(1'b0));
  FDRE \zext_ln123_reg_696_reg[7] 
       (.C(ap_clk),
        .CE(zext_ln123_reg_696_reg0),
        .D(b_V_reg_677[7]),
        .Q(zext_ln123_reg_696_reg[7]),
        .R(1'b0));
  FDRE \zext_ln1347_1_reg_735_reg[0] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(r_V_reg_690_pp0_iter3_reg[0]),
        .Q(zext_ln1347_1_reg_735[0]),
        .R(1'b0));
  FDRE \zext_ln1347_1_reg_735_reg[1] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(r_V_reg_690_pp0_iter3_reg[1]),
        .Q(zext_ln1347_1_reg_735[1]),
        .R(1'b0));
  FDRE \zext_ln1347_1_reg_735_reg[2] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(r_V_reg_690_pp0_iter3_reg[2]),
        .Q(zext_ln1347_1_reg_735[2]),
        .R(1'b0));
  FDRE \zext_ln1347_1_reg_735_reg[3] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(r_V_reg_690_pp0_iter3_reg[3]),
        .Q(zext_ln1347_1_reg_735[3]),
        .R(1'b0));
  FDRE \zext_ln1347_1_reg_735_reg[4] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(r_V_reg_690_pp0_iter3_reg[4]),
        .Q(zext_ln1347_1_reg_735[4]),
        .R(1'b0));
  FDRE \zext_ln1347_1_reg_735_reg[5] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(r_V_reg_690_pp0_iter3_reg[5]),
        .Q(zext_ln1347_1_reg_735[5]),
        .R(1'b0));
  FDRE \zext_ln1347_1_reg_735_reg[6] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(r_V_reg_690_pp0_iter3_reg[6]),
        .Q(zext_ln1347_1_reg_735[6]),
        .R(1'b0));
  FDRE \zext_ln1347_1_reg_735_reg[7] 
       (.C(ap_clk),
        .CE(vmin_V_reg_7450),
        .D(r_V_reg_690_pp0_iter3_reg[7]),
        .Q(zext_ln1347_1_reg_735[7]),
        .R(1'b0));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/zext_ln1347_reg_703_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/zext_ln1347_reg_703_pp0_iter4_reg_reg[0]_srl2 " *) 
  SRL16E \zext_ln1347_reg_703_pp0_iter4_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(zext_ln1347_reg_703_reg[0]),
        .Q(\zext_ln1347_reg_703_pp0_iter4_reg_reg[0]_srl2_n_3 ));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/zext_ln1347_reg_703_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/zext_ln1347_reg_703_pp0_iter4_reg_reg[1]_srl2 " *) 
  SRL16E \zext_ln1347_reg_703_pp0_iter4_reg_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(zext_ln1347_reg_703_reg[1]),
        .Q(\zext_ln1347_reg_703_pp0_iter4_reg_reg[1]_srl2_n_3 ));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/zext_ln1347_reg_703_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/zext_ln1347_reg_703_pp0_iter4_reg_reg[2]_srl2 " *) 
  SRL16E \zext_ln1347_reg_703_pp0_iter4_reg_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(zext_ln1347_reg_703_reg[2]),
        .Q(\zext_ln1347_reg_703_pp0_iter4_reg_reg[2]_srl2_n_3 ));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/zext_ln1347_reg_703_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/zext_ln1347_reg_703_pp0_iter4_reg_reg[3]_srl2 " *) 
  SRL16E \zext_ln1347_reg_703_pp0_iter4_reg_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(zext_ln1347_reg_703_reg[3]),
        .Q(\zext_ln1347_reg_703_pp0_iter4_reg_reg[3]_srl2_n_3 ));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/zext_ln1347_reg_703_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/zext_ln1347_reg_703_pp0_iter4_reg_reg[4]_srl2 " *) 
  SRL16E \zext_ln1347_reg_703_pp0_iter4_reg_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(zext_ln1347_reg_703_reg[4]),
        .Q(\zext_ln1347_reg_703_pp0_iter4_reg_reg[4]_srl2_n_3 ));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/zext_ln1347_reg_703_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/zext_ln1347_reg_703_pp0_iter4_reg_reg[5]_srl2 " *) 
  SRL16E \zext_ln1347_reg_703_pp0_iter4_reg_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(zext_ln1347_reg_703_reg[5]),
        .Q(\zext_ln1347_reg_703_pp0_iter4_reg_reg[5]_srl2_n_3 ));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/zext_ln1347_reg_703_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/zext_ln1347_reg_703_pp0_iter4_reg_reg[6]_srl2 " *) 
  SRL16E \zext_ln1347_reg_703_pp0_iter4_reg_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(zext_ln1347_reg_703_reg[6]),
        .Q(\zext_ln1347_reg_703_pp0_iter4_reg_reg[6]_srl2_n_3 ));
  (* srl_bus_name = "inst/\bgr2hsv_9_2160_3840_1_U0/zext_ln1347_reg_703_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\bgr2hsv_9_2160_3840_1_U0/zext_ln1347_reg_703_pp0_iter4_reg_reg[7]_srl2 " *) 
  SRL16E \zext_ln1347_reg_703_pp0_iter4_reg_reg[7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(zext_ln1347_reg_703_reg[7]),
        .Q(\zext_ln1347_reg_703_pp0_iter4_reg_reg[7]_srl2_n_3 ));
  FDRE \zext_ln1347_reg_703_pp0_iter5_reg_reg[0]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\zext_ln1347_reg_703_pp0_iter4_reg_reg[0]_srl2_n_3 ),
        .Q(zext_ln1347_reg_703_pp0_iter5_reg_reg[0]),
        .R(1'b0));
  FDRE \zext_ln1347_reg_703_pp0_iter5_reg_reg[1]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\zext_ln1347_reg_703_pp0_iter4_reg_reg[1]_srl2_n_3 ),
        .Q(zext_ln1347_reg_703_pp0_iter5_reg_reg[1]),
        .R(1'b0));
  FDRE \zext_ln1347_reg_703_pp0_iter5_reg_reg[2]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\zext_ln1347_reg_703_pp0_iter4_reg_reg[2]_srl2_n_3 ),
        .Q(zext_ln1347_reg_703_pp0_iter5_reg_reg[2]),
        .R(1'b0));
  FDRE \zext_ln1347_reg_703_pp0_iter5_reg_reg[3]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\zext_ln1347_reg_703_pp0_iter4_reg_reg[3]_srl2_n_3 ),
        .Q(zext_ln1347_reg_703_pp0_iter5_reg_reg[3]),
        .R(1'b0));
  FDRE \zext_ln1347_reg_703_pp0_iter5_reg_reg[4]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\zext_ln1347_reg_703_pp0_iter4_reg_reg[4]_srl2_n_3 ),
        .Q(zext_ln1347_reg_703_pp0_iter5_reg_reg[4]),
        .R(1'b0));
  FDRE \zext_ln1347_reg_703_pp0_iter5_reg_reg[5]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\zext_ln1347_reg_703_pp0_iter4_reg_reg[5]_srl2_n_3 ),
        .Q(zext_ln1347_reg_703_pp0_iter5_reg_reg[5]),
        .R(1'b0));
  FDRE \zext_ln1347_reg_703_pp0_iter5_reg_reg[6]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\zext_ln1347_reg_703_pp0_iter4_reg_reg[6]_srl2_n_3 ),
        .Q(zext_ln1347_reg_703_pp0_iter5_reg_reg[6]),
        .R(1'b0));
  FDRE \zext_ln1347_reg_703_pp0_iter5_reg_reg[7]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\zext_ln1347_reg_703_pp0_iter4_reg_reg[7]_srl2_n_3 ),
        .Q(zext_ln1347_reg_703_pp0_iter5_reg_reg[7]),
        .R(1'b0));
  FDRE \zext_ln1347_reg_703_reg[0] 
       (.C(ap_clk),
        .CE(zext_ln123_reg_696_reg0),
        .D(g_V_reg_684[0]),
        .Q(zext_ln1347_reg_703_reg[0]),
        .R(1'b0));
  FDRE \zext_ln1347_reg_703_reg[1] 
       (.C(ap_clk),
        .CE(zext_ln123_reg_696_reg0),
        .D(g_V_reg_684[1]),
        .Q(zext_ln1347_reg_703_reg[1]),
        .R(1'b0));
  FDRE \zext_ln1347_reg_703_reg[2] 
       (.C(ap_clk),
        .CE(zext_ln123_reg_696_reg0),
        .D(g_V_reg_684[2]),
        .Q(zext_ln1347_reg_703_reg[2]),
        .R(1'b0));
  FDRE \zext_ln1347_reg_703_reg[3] 
       (.C(ap_clk),
        .CE(zext_ln123_reg_696_reg0),
        .D(g_V_reg_684[3]),
        .Q(zext_ln1347_reg_703_reg[3]),
        .R(1'b0));
  FDRE \zext_ln1347_reg_703_reg[4] 
       (.C(ap_clk),
        .CE(zext_ln123_reg_696_reg0),
        .D(g_V_reg_684[4]),
        .Q(zext_ln1347_reg_703_reg[4]),
        .R(1'b0));
  FDRE \zext_ln1347_reg_703_reg[5] 
       (.C(ap_clk),
        .CE(zext_ln123_reg_696_reg0),
        .D(g_V_reg_684[5]),
        .Q(zext_ln1347_reg_703_reg[5]),
        .R(1'b0));
  FDRE \zext_ln1347_reg_703_reg[6] 
       (.C(ap_clk),
        .CE(zext_ln123_reg_696_reg0),
        .D(g_V_reg_684[6]),
        .Q(zext_ln1347_reg_703_reg[6]),
        .R(1'b0));
  FDRE \zext_ln1347_reg_703_reg[7] 
       (.C(ap_clk),
        .CE(zext_ln123_reg_696_reg0),
        .D(g_V_reg_684[7]),
        .Q(zext_ln1347_reg_703_reg[7]),
        .R(1'b0));
  FDRE \zext_ln215_1_reg_750_pp0_iter5_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln1347_1_reg_735[0]),
        .Q(zext_ln215_1_reg_750_pp0_iter5_reg[0]),
        .R(1'b0));
  FDRE \zext_ln215_1_reg_750_pp0_iter5_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln1347_1_reg_735[1]),
        .Q(zext_ln215_1_reg_750_pp0_iter5_reg[1]),
        .R(1'b0));
  FDRE \zext_ln215_1_reg_750_pp0_iter5_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln1347_1_reg_735[2]),
        .Q(zext_ln215_1_reg_750_pp0_iter5_reg[2]),
        .R(1'b0));
  FDRE \zext_ln215_1_reg_750_pp0_iter5_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln1347_1_reg_735[3]),
        .Q(zext_ln215_1_reg_750_pp0_iter5_reg[3]),
        .R(1'b0));
  FDRE \zext_ln215_1_reg_750_pp0_iter5_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln1347_1_reg_735[4]),
        .Q(zext_ln215_1_reg_750_pp0_iter5_reg[4]),
        .R(1'b0));
  FDRE \zext_ln215_1_reg_750_pp0_iter5_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln1347_1_reg_735[5]),
        .Q(zext_ln215_1_reg_750_pp0_iter5_reg[5]),
        .R(1'b0));
  FDRE \zext_ln215_1_reg_750_pp0_iter5_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln1347_1_reg_735[6]),
        .Q(zext_ln215_1_reg_750_pp0_iter5_reg[6]),
        .R(1'b0));
  FDRE \zext_ln215_1_reg_750_pp0_iter5_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(zext_ln1347_1_reg_735[7]),
        .Q(zext_ln215_1_reg_750_pp0_iter5_reg[7]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_bgr2hsv_9_2160_3840_1_s_void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_bkb
   (A,
    void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0,
    \zext_ln123_1_reg_730_reg[7] ,
    \zext_ln123_1_reg_730_reg[7]_0 ,
    \zext_ln123_1_reg_730_reg[3] ,
    \q0_reg[11] ,
    ap_clk,
    \q0_reg[10] ,
    \q0_reg[9] ,
    \q0_reg[8] ,
    \q0_reg[7] ,
    \q0_reg[6] ,
    \q0_reg[5] ,
    \q0_reg[4] ,
    \q0_reg[3] ,
    \q0_reg[2] ,
    \q0_reg[1] ,
    \q0_reg[0] ,
    \q0_reg[13] ,
    \q0_reg[18] ,
    \q0_reg[17] ,
    \q0_reg[16] ,
    \q0_reg[14] ,
    \q0_reg[13]_0 ,
    \q0_reg[12] ,
    ap_enable_reg_pp0_iter5,
    ap_block_pp0_stage0_11001,
    void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0);
  output [19:0]A;
  output void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0;
  output \zext_ln123_1_reg_730_reg[7] ;
  output \zext_ln123_1_reg_730_reg[7]_0 ;
  output \zext_ln123_1_reg_730_reg[3] ;
  input \q0_reg[11] ;
  input ap_clk;
  input \q0_reg[10] ;
  input \q0_reg[9] ;
  input \q0_reg[8] ;
  input \q0_reg[7] ;
  input \q0_reg[6] ;
  input \q0_reg[5] ;
  input \q0_reg[4] ;
  input \q0_reg[3] ;
  input \q0_reg[2] ;
  input \q0_reg[1] ;
  input \q0_reg[0] ;
  input \q0_reg[13] ;
  input \q0_reg[18] ;
  input \q0_reg[17] ;
  input \q0_reg[16] ;
  input \q0_reg[14] ;
  input \q0_reg[13]_0 ;
  input \q0_reg[12] ;
  input ap_enable_reg_pp0_iter5;
  input ap_block_pp0_stage0_11001;
  input [6:0]void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0;

  wire [19:0]A;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter5;
  wire \q0_reg[0] ;
  wire \q0_reg[10] ;
  wire \q0_reg[11] ;
  wire \q0_reg[12] ;
  wire \q0_reg[13] ;
  wire \q0_reg[13]_0 ;
  wire \q0_reg[14] ;
  wire \q0_reg[16] ;
  wire \q0_reg[17] ;
  wire \q0_reg[18] ;
  wire \q0_reg[1] ;
  wire \q0_reg[2] ;
  wire \q0_reg[3] ;
  wire \q0_reg[4] ;
  wire \q0_reg[5] ;
  wire \q0_reg[6] ;
  wire \q0_reg[7] ;
  wire \q0_reg[8] ;
  wire \q0_reg[9] ;
  wire [6:0]void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0;
  wire void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0;
  wire \zext_ln123_1_reg_730_reg[3] ;
  wire \zext_ln123_1_reg_730_reg[7] ;
  wire \zext_ln123_1_reg_730_reg[7]_0 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_bgr2hsv_9_2160_3840_1_s_void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_bkb_rom colordetect_accel_bgr2hsv_9_2160_3840_1_s_void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_bkb_rom_U
       (.A(A),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter5(ap_enable_reg_pp0_iter5),
        .ap_enable_reg_pp0_iter5_reg(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0),
        .\q0_reg[0]_0 (\q0_reg[0] ),
        .\q0_reg[10]_0 (\q0_reg[10] ),
        .\q0_reg[11]_0 (\q0_reg[11] ),
        .\q0_reg[12]_0 (\q0_reg[12] ),
        .\q0_reg[13]_0 (\q0_reg[13] ),
        .\q0_reg[13]_1 (\q0_reg[13]_0 ),
        .\q0_reg[14]_0 (\q0_reg[14] ),
        .\q0_reg[16]_0 (\q0_reg[16] ),
        .\q0_reg[17]_0 (\q0_reg[17] ),
        .\q0_reg[18]_0 (\q0_reg[18] ),
        .\q0_reg[1]_0 (\q0_reg[1] ),
        .\q0_reg[2]_0 (\q0_reg[2] ),
        .\q0_reg[3]_0 (\q0_reg[3] ),
        .\q0_reg[4]_0 (\q0_reg[4] ),
        .\q0_reg[5]_0 (\q0_reg[5] ),
        .\q0_reg[6]_0 (\q0_reg[6] ),
        .\q0_reg[7]_0 (\q0_reg[7] ),
        .\q0_reg[8]_0 (\q0_reg[8] ),
        .\q0_reg[9]_0 (\q0_reg[9] ),
        .void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0),
        .\zext_ln123_1_reg_730_reg[3] (\zext_ln123_1_reg_730_reg[3] ),
        .\zext_ln123_1_reg_730_reg[7] (\zext_ln123_1_reg_730_reg[7] ),
        .\zext_ln123_1_reg_730_reg[7]_0 (\zext_ln123_1_reg_730_reg[7]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_bgr2hsv_9_2160_3840_1_s_void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_bkb_rom
   (A,
    ap_enable_reg_pp0_iter5_reg,
    \zext_ln123_1_reg_730_reg[7] ,
    \zext_ln123_1_reg_730_reg[7]_0 ,
    \zext_ln123_1_reg_730_reg[3] ,
    \q0_reg[11]_0 ,
    ap_clk,
    \q0_reg[10]_0 ,
    \q0_reg[9]_0 ,
    \q0_reg[8]_0 ,
    \q0_reg[7]_0 ,
    \q0_reg[6]_0 ,
    \q0_reg[5]_0 ,
    \q0_reg[4]_0 ,
    \q0_reg[3]_0 ,
    \q0_reg[2]_0 ,
    \q0_reg[1]_0 ,
    \q0_reg[0]_0 ,
    \q0_reg[13]_0 ,
    \q0_reg[18]_0 ,
    \q0_reg[17]_0 ,
    \q0_reg[16]_0 ,
    \q0_reg[14]_0 ,
    \q0_reg[13]_1 ,
    \q0_reg[12]_0 ,
    ap_enable_reg_pp0_iter5,
    ap_block_pp0_stage0_11001,
    void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0);
  output [19:0]A;
  output ap_enable_reg_pp0_iter5_reg;
  output \zext_ln123_1_reg_730_reg[7] ;
  output \zext_ln123_1_reg_730_reg[7]_0 ;
  output \zext_ln123_1_reg_730_reg[3] ;
  input \q0_reg[11]_0 ;
  input ap_clk;
  input \q0_reg[10]_0 ;
  input \q0_reg[9]_0 ;
  input \q0_reg[8]_0 ;
  input \q0_reg[7]_0 ;
  input \q0_reg[6]_0 ;
  input \q0_reg[5]_0 ;
  input \q0_reg[4]_0 ;
  input \q0_reg[3]_0 ;
  input \q0_reg[2]_0 ;
  input \q0_reg[1]_0 ;
  input \q0_reg[0]_0 ;
  input \q0_reg[13]_0 ;
  input \q0_reg[18]_0 ;
  input \q0_reg[17]_0 ;
  input \q0_reg[16]_0 ;
  input \q0_reg[14]_0 ;
  input \q0_reg[13]_1 ;
  input \q0_reg[12]_0 ;
  input ap_enable_reg_pp0_iter5;
  input ap_block_pp0_stage0_11001;
  input [6:0]void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0;

  wire [19:0]A;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter5;
  wire ap_enable_reg_pp0_iter5_reg;
  wire \q0[15]_i_1_n_3 ;
  wire \q0[15]_i_2__0_n_3 ;
  wire \q0[19]_i_2_n_3 ;
  wire \q0[19]_i_4_n_3 ;
  wire \q0_reg[0]_0 ;
  wire \q0_reg[10]_0 ;
  wire \q0_reg[11]_0 ;
  wire \q0_reg[12]_0 ;
  wire \q0_reg[13]_0 ;
  wire \q0_reg[13]_1 ;
  wire \q0_reg[14]_0 ;
  wire \q0_reg[16]_0 ;
  wire \q0_reg[17]_0 ;
  wire \q0_reg[18]_0 ;
  wire \q0_reg[1]_0 ;
  wire \q0_reg[2]_0 ;
  wire \q0_reg[3]_0 ;
  wire \q0_reg[4]_0 ;
  wire \q0_reg[5]_0 ;
  wire \q0_reg[6]_0 ;
  wire \q0_reg[7]_0 ;
  wire \q0_reg[8]_0 ;
  wire \q0_reg[9]_0 ;
  wire [6:0]void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0;
  wire \zext_ln123_1_reg_730_reg[3] ;
  wire \zext_ln123_1_reg_730_reg[7] ;
  wire \zext_ln123_1_reg_730_reg[7]_0 ;

  LUT6 #(
    .INIT(64'h0000000011155555)) 
    \q0[10]_i_7 
       (.I0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[4]),
        .I1(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[2]),
        .I2(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[0]),
        .I3(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[1]),
        .I4(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[3]),
        .I5(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[5]),
        .O(\zext_ln123_1_reg_730_reg[7] ));
  LUT2 #(
    .INIT(4'h2)) 
    \q0[11]_i_1 
       (.I0(ap_enable_reg_pp0_iter5),
        .I1(ap_block_pp0_stage0_11001),
        .O(ap_enable_reg_pp0_iter5_reg));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h0000557F)) 
    \q0[11]_i_5 
       (.I0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[3]),
        .I1(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[0]),
        .I2(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[1]),
        .I3(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[2]),
        .I4(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[4]),
        .O(\zext_ln123_1_reg_730_reg[3] ));
  LUT5 #(
    .INIT(32'h0000557F)) 
    \q0[12]_i_3 
       (.I0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[4]),
        .I1(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[1]),
        .I2(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[2]),
        .I3(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[3]),
        .I4(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[5]),
        .O(\zext_ln123_1_reg_730_reg[7]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q0[15]_i_1 
       (.I0(\q0[15]_i_2__0_n_3 ),
        .I1(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[6]),
        .O(\q0[15]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0376)) 
    \q0[15]_i_2__0 
       (.I0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[3]),
        .I1(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[2]),
        .I2(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[1]),
        .I3(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[0]),
        .I4(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[4]),
        .I5(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[5]),
        .O(\q0[15]_i_2__0_n_3 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \q0[19]_i_2 
       (.I0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[5]),
        .I1(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[3]),
        .I2(\q0[19]_i_4_n_3 ),
        .I3(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[2]),
        .I4(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[4]),
        .I5(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[6]),
        .O(\q0[19]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q0[19]_i_4 
       (.I0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[0]),
        .I1(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[1]),
        .O(\q0[19]_i_4_n_3 ));
  FDRE \q0_reg[0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0_reg[0]_0 ),
        .Q(A[0]),
        .R(1'b0));
  FDRE \q0_reg[10] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0_reg[10]_0 ),
        .Q(A[10]),
        .R(1'b0));
  FDRE \q0_reg[11] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0_reg[11]_0 ),
        .Q(A[11]),
        .R(1'b0));
  FDRE \q0_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\q0_reg[12]_0 ),
        .Q(A[12]),
        .R(1'b0));
  FDRE \q0_reg[13] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0_reg[13]_1 ),
        .Q(A[13]),
        .R(\q0_reg[13]_0 ));
  FDRE \q0_reg[14] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0_reg[14]_0 ),
        .Q(A[14]),
        .R(\q0_reg[13]_0 ));
  FDRE \q0_reg[15] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0[15]_i_1_n_3 ),
        .Q(A[15]),
        .R(\q0_reg[13]_0 ));
  FDRE \q0_reg[16] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0_reg[16]_0 ),
        .Q(A[16]),
        .R(\q0_reg[13]_0 ));
  FDRE \q0_reg[17] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0_reg[17]_0 ),
        .Q(A[17]),
        .R(\q0_reg[13]_0 ));
  FDRE \q0_reg[18] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0_reg[18]_0 ),
        .Q(A[18]),
        .R(\q0_reg[13]_0 ));
  FDRE \q0_reg[19] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0[19]_i_2_n_3 ),
        .Q(A[19]),
        .R(\q0_reg[13]_0 ));
  FDRE \q0_reg[1] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0_reg[1]_0 ),
        .Q(A[1]),
        .R(1'b0));
  FDRE \q0_reg[2] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0_reg[2]_0 ),
        .Q(A[2]),
        .R(1'b0));
  FDRE \q0_reg[3] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0_reg[3]_0 ),
        .Q(A[3]),
        .R(1'b0));
  FDRE \q0_reg[4] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0_reg[4]_0 ),
        .Q(A[4]),
        .R(1'b0));
  FDRE \q0_reg[5] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0_reg[5]_0 ),
        .Q(A[5]),
        .R(1'b0));
  FDRE \q0_reg[6] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0_reg[6]_0 ),
        .Q(A[6]),
        .R(1'b0));
  FDRE \q0_reg[7] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0_reg[7]_0 ),
        .Q(A[7]),
        .R(1'b0));
  FDRE \q0_reg[8] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0_reg[8]_0 ),
        .Q(A[8]),
        .R(1'b0));
  FDRE \q0_reg[9] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5_reg),
        .D(\q0_reg[9]_0 ),
        .Q(A[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_bgr2hsv_9_2160_3840_1_s_void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_cud
   (B,
    q1_reg,
    q1_reg_0,
    q1_reg_1,
    DI,
    \q0_reg[9] ,
    ap_clk,
    \q0_reg[8] ,
    \q0_reg[7] ,
    \q0_reg[6] ,
    \q0_reg[5] ,
    \q0_reg[4] ,
    \q0_reg[3] ,
    \q0_reg[2] ,
    \q0_reg[1] ,
    \q0_reg[0] ,
    \q0_reg[10] ,
    \q0_reg[15] ,
    \q0_reg[14] ,
    \q0_reg[13] ,
    \q0_reg[11] ,
    \q0_reg[10]_0 ,
    ap_enable_reg_pp0_iter6,
    ap_block_pp0_stage0_11001,
    \q0_reg[12] ,
    Q,
    p_reg_reg);
  output [16:0]B;
  output q1_reg;
  output q1_reg_0;
  output q1_reg_1;
  output [0:0]DI;
  input \q0_reg[9] ;
  input ap_clk;
  input \q0_reg[8] ;
  input \q0_reg[7] ;
  input \q0_reg[6] ;
  input \q0_reg[5] ;
  input \q0_reg[4] ;
  input \q0_reg[3] ;
  input \q0_reg[2] ;
  input \q0_reg[1] ;
  input \q0_reg[0] ;
  input \q0_reg[10] ;
  input \q0_reg[15] ;
  input \q0_reg[14] ;
  input \q0_reg[13] ;
  input \q0_reg[11] ;
  input \q0_reg[10]_0 ;
  input ap_enable_reg_pp0_iter6;
  input ap_block_pp0_stage0_11001;
  input [6:0]\q0_reg[12] ;
  input [0:0]Q;
  input [0:0]p_reg_reg;

  wire [16:0]B;
  wire [0:0]DI;
  wire [0:0]Q;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter6;
  wire [0:0]p_reg_reg;
  wire \q0_reg[0] ;
  wire \q0_reg[10] ;
  wire \q0_reg[10]_0 ;
  wire \q0_reg[11] ;
  wire [6:0]\q0_reg[12] ;
  wire \q0_reg[13] ;
  wire \q0_reg[14] ;
  wire \q0_reg[15] ;
  wire \q0_reg[1] ;
  wire \q0_reg[2] ;
  wire \q0_reg[3] ;
  wire \q0_reg[4] ;
  wire \q0_reg[5] ;
  wire \q0_reg[6] ;
  wire \q0_reg[7] ;
  wire \q0_reg[8] ;
  wire \q0_reg[9] ;
  wire q1_reg;
  wire q1_reg_0;
  wire q1_reg_1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_bgr2hsv_9_2160_3840_1_s_void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_cud_rom colordetect_accel_bgr2hsv_9_2160_3840_1_s_void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_cud_rom_U
       (.B(B),
        .DI(DI),
        .Q(Q),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter6(ap_enable_reg_pp0_iter6),
        .p_reg_reg(p_reg_reg),
        .\q0_reg[0]_0 (\q0_reg[0] ),
        .\q0_reg[10]_0 (\q0_reg[10] ),
        .\q0_reg[10]_1 (\q0_reg[10]_0 ),
        .\q0_reg[11]_0 (\q0_reg[11] ),
        .\q0_reg[12]_0 (\q0_reg[12] ),
        .\q0_reg[13]_0 (\q0_reg[13] ),
        .\q0_reg[14]_0 (\q0_reg[14] ),
        .\q0_reg[15]_0 (\q0_reg[15] ),
        .\q0_reg[1]_0 (\q0_reg[1] ),
        .\q0_reg[2]_0 (\q0_reg[2] ),
        .\q0_reg[3]_0 (\q0_reg[3] ),
        .\q0_reg[4]_0 (\q0_reg[4] ),
        .\q0_reg[5]_0 (\q0_reg[5] ),
        .\q0_reg[6]_0 (\q0_reg[6] ),
        .\q0_reg[7]_0 (\q0_reg[7] ),
        .\q0_reg[8]_0 (\q0_reg[8] ),
        .\q0_reg[9]_0 (\q0_reg[9] ),
        .q1_reg(q1_reg),
        .q1_reg_0(q1_reg_0),
        .q1_reg_1(q1_reg_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_bgr2hsv_9_2160_3840_1_s_void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_cud_rom
   (B,
    q1_reg,
    q1_reg_0,
    q1_reg_1,
    DI,
    \q0_reg[9]_0 ,
    ap_clk,
    \q0_reg[8]_0 ,
    \q0_reg[7]_0 ,
    \q0_reg[6]_0 ,
    \q0_reg[5]_0 ,
    \q0_reg[4]_0 ,
    \q0_reg[3]_0 ,
    \q0_reg[2]_0 ,
    \q0_reg[1]_0 ,
    \q0_reg[0]_0 ,
    \q0_reg[10]_0 ,
    \q0_reg[15]_0 ,
    \q0_reg[14]_0 ,
    \q0_reg[13]_0 ,
    \q0_reg[11]_0 ,
    \q0_reg[10]_1 ,
    ap_enable_reg_pp0_iter6,
    ap_block_pp0_stage0_11001,
    \q0_reg[12]_0 ,
    Q,
    p_reg_reg);
  output [16:0]B;
  output q1_reg;
  output q1_reg_0;
  output q1_reg_1;
  output [0:0]DI;
  input \q0_reg[9]_0 ;
  input ap_clk;
  input \q0_reg[8]_0 ;
  input \q0_reg[7]_0 ;
  input \q0_reg[6]_0 ;
  input \q0_reg[5]_0 ;
  input \q0_reg[4]_0 ;
  input \q0_reg[3]_0 ;
  input \q0_reg[2]_0 ;
  input \q0_reg[1]_0 ;
  input \q0_reg[0]_0 ;
  input \q0_reg[10]_0 ;
  input \q0_reg[15]_0 ;
  input \q0_reg[14]_0 ;
  input \q0_reg[13]_0 ;
  input \q0_reg[11]_0 ;
  input \q0_reg[10]_1 ;
  input ap_enable_reg_pp0_iter6;
  input ap_block_pp0_stage0_11001;
  input [6:0]\q0_reg[12]_0 ;
  input [0:0]Q;
  input [0:0]p_reg_reg;

  wire [16:0]B;
  wire [0:0]DI;
  wire [0:0]Q;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter6;
  wire [0:0]p_reg_reg;
  wire \q0[12]_i_1__0_n_3 ;
  wire \q0[12]_i_2__0_n_3 ;
  wire \q0[16]_i_2__0_n_3 ;
  wire \q0[16]_i_3_n_3 ;
  wire \q0_reg[0]_0 ;
  wire \q0_reg[10]_0 ;
  wire \q0_reg[10]_1 ;
  wire \q0_reg[11]_0 ;
  wire [6:0]\q0_reg[12]_0 ;
  wire \q0_reg[13]_0 ;
  wire \q0_reg[14]_0 ;
  wire \q0_reg[15]_0 ;
  wire \q0_reg[1]_0 ;
  wire \q0_reg[2]_0 ;
  wire \q0_reg[3]_0 ;
  wire \q0_reg[4]_0 ;
  wire \q0_reg[5]_0 ;
  wire \q0_reg[6]_0 ;
  wire \q0_reg[7]_0 ;
  wire \q0_reg[8]_0 ;
  wire \q0_reg[9]_0 ;
  wire q1_reg;
  wire q1_reg_0;
  wire q1_reg_1;
  wire void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0;

  LUT2 #(
    .INIT(4'hB)) 
    p_reg_reg_i_12__0
       (.I0(Q),
        .I1(p_reg_reg),
        .O(DI));
  LUT6 #(
    .INIT(64'h5557FFFFFFFFFFFF)) 
    \q0[10]_i_3 
       (.I0(\q0_reg[12]_0 [4]),
        .I1(\q0_reg[12]_0 [2]),
        .I2(\q0_reg[12]_0 [0]),
        .I3(\q0_reg[12]_0 [1]),
        .I4(\q0_reg[12]_0 [3]),
        .I5(\q0_reg[12]_0 [5]),
        .O(q1_reg));
  LUT2 #(
    .INIT(4'h2)) 
    \q0[12]_i_1__0 
       (.I0(\q0[12]_i_2__0_n_3 ),
        .I1(\q0_reg[12]_0 [6]),
        .O(\q0[12]_i_1__0_n_3 ));
  LUT6 #(
    .INIT(64'h000000007FFF0754)) 
    \q0[12]_i_2__0 
       (.I0(\q0_reg[12]_0 [0]),
        .I1(\q0_reg[12]_0 [1]),
        .I2(\q0_reg[12]_0 [2]),
        .I3(\q0_reg[12]_0 [3]),
        .I4(\q0_reg[12]_0 [4]),
        .I5(\q0_reg[12]_0 [5]),
        .O(\q0[12]_i_2__0_n_3 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \q0[16]_i_2__0 
       (.I0(\q0_reg[12]_0 [5]),
        .I1(\q0_reg[12]_0 [3]),
        .I2(\q0[16]_i_3_n_3 ),
        .I3(\q0_reg[12]_0 [2]),
        .I4(\q0_reg[12]_0 [4]),
        .I5(\q0_reg[12]_0 [6]),
        .O(\q0[16]_i_2__0_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q0[16]_i_3 
       (.I0(\q0_reg[12]_0 [0]),
        .I1(\q0_reg[12]_0 [1]),
        .O(\q0[16]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \q0[8]_i_6__0 
       (.I0(\q0_reg[12]_0 [4]),
        .I1(\q0_reg[12]_0 [2]),
        .I2(\q0_reg[12]_0 [0]),
        .I3(\q0_reg[12]_0 [1]),
        .I4(\q0_reg[12]_0 [3]),
        .I5(\q0_reg[12]_0 [5]),
        .O(q1_reg_1));
  LUT2 #(
    .INIT(4'h2)) 
    \q0[9]_i_1 
       (.I0(ap_enable_reg_pp0_iter6),
        .I1(ap_block_pp0_stage0_11001),
        .O(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \q0[9]_i_3 
       (.I0(\q0_reg[12]_0 [3]),
        .I1(\q0_reg[12]_0 [1]),
        .I2(\q0_reg[12]_0 [0]),
        .I3(\q0_reg[12]_0 [2]),
        .I4(\q0_reg[12]_0 [4]),
        .O(q1_reg_0));
  FDRE \q0_reg[0] 
       (.C(ap_clk),
        .CE(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0),
        .D(\q0_reg[0]_0 ),
        .Q(B[0]),
        .R(1'b0));
  FDRE \q0_reg[10] 
       (.C(ap_clk),
        .CE(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0),
        .D(\q0_reg[10]_1 ),
        .Q(B[10]),
        .R(\q0_reg[10]_0 ));
  FDRE \q0_reg[11] 
       (.C(ap_clk),
        .CE(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0),
        .D(\q0_reg[11]_0 ),
        .Q(B[11]),
        .R(\q0_reg[10]_0 ));
  FDRE \q0_reg[12] 
       (.C(ap_clk),
        .CE(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0),
        .D(\q0[12]_i_1__0_n_3 ),
        .Q(B[12]),
        .R(\q0_reg[10]_0 ));
  FDRE \q0_reg[13] 
       (.C(ap_clk),
        .CE(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0),
        .D(\q0_reg[13]_0 ),
        .Q(B[13]),
        .R(\q0_reg[10]_0 ));
  FDRE \q0_reg[14] 
       (.C(ap_clk),
        .CE(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0),
        .D(\q0_reg[14]_0 ),
        .Q(B[14]),
        .R(\q0_reg[10]_0 ));
  FDRE \q0_reg[15] 
       (.C(ap_clk),
        .CE(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0),
        .D(\q0_reg[15]_0 ),
        .Q(B[15]),
        .R(\q0_reg[10]_0 ));
  FDRE \q0_reg[16] 
       (.C(ap_clk),
        .CE(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0),
        .D(\q0[16]_i_2__0_n_3 ),
        .Q(B[16]),
        .R(\q0_reg[10]_0 ));
  FDRE \q0_reg[1] 
       (.C(ap_clk),
        .CE(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0),
        .D(\q0_reg[1]_0 ),
        .Q(B[1]),
        .R(1'b0));
  FDRE \q0_reg[2] 
       (.C(ap_clk),
        .CE(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0),
        .D(\q0_reg[2]_0 ),
        .Q(B[2]),
        .R(1'b0));
  FDRE \q0_reg[3] 
       (.C(ap_clk),
        .CE(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0),
        .D(\q0_reg[3]_0 ),
        .Q(B[3]),
        .R(1'b0));
  FDRE \q0_reg[4] 
       (.C(ap_clk),
        .CE(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0),
        .D(\q0_reg[4]_0 ),
        .Q(B[4]),
        .R(1'b0));
  FDRE \q0_reg[5] 
       (.C(ap_clk),
        .CE(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0),
        .D(\q0_reg[5]_0 ),
        .Q(B[5]),
        .R(1'b0));
  FDRE \q0_reg[6] 
       (.C(ap_clk),
        .CE(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0),
        .D(\q0_reg[6]_0 ),
        .Q(B[6]),
        .R(1'b0));
  FDRE \q0_reg[7] 
       (.C(ap_clk),
        .CE(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0),
        .D(\q0_reg[7]_0 ),
        .Q(B[7]),
        .R(1'b0));
  FDRE \q0_reg[8] 
       (.C(ap_clk),
        .CE(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0),
        .D(\q0_reg[8]_0 ),
        .Q(B[8]),
        .R(1'b0));
  FDRE \q0_reg[9] 
       (.C(ap_clk),
        .CE(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_ce0),
        .D(\q0_reg[9]_0 ),
        .Q(B[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_bgr2hsv_9_2160_3840_1_s_xf_cv_icvSaturate8u_cv
   (I238,
    ap_block_pp0_stage0_11001,
    B,
    \zext_ln123_1_reg_730_reg[7] ,
    void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0,
    \zext_ln123_1_reg_730_reg[7]_0 ,
    \zext_ln123_1_reg_730_reg[7]_1 ,
    \zext_ln123_1_reg_730_reg[7]_2 ,
    p_reg_reg_i_1__0,
    q1_reg,
    q1_reg_0,
    q1_reg_1,
    O184,
    D,
    \b_V_reg_677_pp0_iter4_reg_reg[5] ,
    O,
    \q0_reg[12] ,
    ap_enable_reg_pp0_iter5_reg,
    ap_enable_reg_pp0_iter6_reg,
    \zext_ln123_1_reg_730_reg[7]_3 ,
    \zext_ln123_1_reg_730_reg[7]_4 ,
    \zext_ln123_1_reg_730_reg[7]_5 ,
    \zext_ln123_1_reg_730_reg[7]_6 ,
    \zext_ln123_1_reg_730_reg[7]_7 ,
    \zext_ln123_1_reg_730_reg[7]_8 ,
    \zext_ln123_1_reg_730_reg[7]_9 ,
    \zext_ln123_1_reg_730_reg[7]_10 ,
    \zext_ln123_1_reg_730_reg[7]_11 ,
    \zext_ln123_1_reg_730_reg[7]_12 ,
    \zext_ln123_1_reg_730_reg[7]_13 ,
    \zext_ln123_1_reg_730_reg[7]_14 ,
    \zext_ln123_1_reg_730_reg[7]_15 ,
    \q0_reg[0]_i_3__0 ,
    \q0_reg[1]_i_3__0 ,
    \q0_reg[2]_i_3__0 ,
    \q0_reg[3]_i_3__0 ,
    \q0_reg[4]_i_3__0 ,
    \q0_reg[5]_i_3__0 ,
    \q0_reg[6]_i_3__0 ,
    \q0_reg[7]_i_3__0 ,
    \q0_reg[8]_i_3__0 ,
    \q0[9]_i_5__0 ,
    \q0[10]_i_3 ,
    ap_clk,
    icmp_ln128_reg_673_pp0_iter2_reg,
    ap_enable_reg_pp0_iter3,
    ap_enable_reg_pp0_iter2,
    ap_enable_reg_pp0_iter4,
    icmp_ln128_reg_673_pp0_iter4_reg,
    ap_enable_reg_pp0_iter5,
    q1_reg_2,
    imgInput_data_empty_n,
    q1_reg_3,
    rgb2hsv_data_full_n,
    q1_reg_4,
    icmp_ln128_reg_673_pp0_iter9_reg,
    DI,
    Q,
    p_reg_reg,
    q2_reg,
    q2_reg_0,
    \vmin_V_reg_745_reg[7] ,
    q1_reg_5,
    \vg_reg_778_reg[0] ,
    \add_ln213_1_reg_766_reg[7] ,
    \add_ln213_1_reg_766_reg[7]_0 ,
    A,
    \q0_reg[12]_0 ,
    void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0,
    ap_enable_reg_pp0_iter6,
    \zext_ln123_1_reg_730_reg[7]_16 ,
    \q0_reg[10] ,
    \q0_reg[11] ,
    \q0_reg[8] ,
    \q0_reg[9] ,
    \q0_reg[10]_0 );
  output [7:0]I238;
  output ap_block_pp0_stage0_11001;
  output [7:0]B;
  output \zext_ln123_1_reg_730_reg[7] ;
  output [7:0]void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0;
  output \zext_ln123_1_reg_730_reg[7]_0 ;
  output \zext_ln123_1_reg_730_reg[7]_1 ;
  output \zext_ln123_1_reg_730_reg[7]_2 ;
  output p_reg_reg_i_1__0;
  output q1_reg;
  output q1_reg_0;
  output q1_reg_1;
  output [8:0]O184;
  output [7:0]D;
  output [7:0]\b_V_reg_677_pp0_iter4_reg_reg[5] ;
  output [1:0]O;
  output \q0_reg[12] ;
  output ap_enable_reg_pp0_iter5_reg;
  output ap_enable_reg_pp0_iter6_reg;
  output \zext_ln123_1_reg_730_reg[7]_3 ;
  output \zext_ln123_1_reg_730_reg[7]_4 ;
  output \zext_ln123_1_reg_730_reg[7]_5 ;
  output \zext_ln123_1_reg_730_reg[7]_6 ;
  output \zext_ln123_1_reg_730_reg[7]_7 ;
  output \zext_ln123_1_reg_730_reg[7]_8 ;
  output \zext_ln123_1_reg_730_reg[7]_9 ;
  output \zext_ln123_1_reg_730_reg[7]_10 ;
  output \zext_ln123_1_reg_730_reg[7]_11 ;
  output \zext_ln123_1_reg_730_reg[7]_12 ;
  output \zext_ln123_1_reg_730_reg[7]_13 ;
  output \zext_ln123_1_reg_730_reg[7]_14 ;
  output \zext_ln123_1_reg_730_reg[7]_15 ;
  output \q0_reg[0]_i_3__0 ;
  output \q0_reg[1]_i_3__0 ;
  output \q0_reg[2]_i_3__0 ;
  output \q0_reg[3]_i_3__0 ;
  output \q0_reg[4]_i_3__0 ;
  output \q0_reg[5]_i_3__0 ;
  output \q0_reg[6]_i_3__0 ;
  output \q0_reg[7]_i_3__0 ;
  output \q0_reg[8]_i_3__0 ;
  output \q0[9]_i_5__0 ;
  output \q0[10]_i_3 ;
  input ap_clk;
  input icmp_ln128_reg_673_pp0_iter2_reg;
  input ap_enable_reg_pp0_iter3;
  input ap_enable_reg_pp0_iter2;
  input ap_enable_reg_pp0_iter4;
  input icmp_ln128_reg_673_pp0_iter4_reg;
  input ap_enable_reg_pp0_iter5;
  input q1_reg_2;
  input imgInput_data_empty_n;
  input q1_reg_3;
  input rgb2hsv_data_full_n;
  input q1_reg_4;
  input icmp_ln128_reg_673_pp0_iter9_reg;
  input [0:0]DI;
  input [7:0]Q;
  input [7:0]p_reg_reg;
  input [7:0]q2_reg;
  input [7:0]q2_reg_0;
  input [7:0]\vmin_V_reg_745_reg[7] ;
  input [7:0]q1_reg_5;
  input [8:0]\vg_reg_778_reg[0] ;
  input [7:0]\add_ln213_1_reg_766_reg[7] ;
  input [7:0]\add_ln213_1_reg_766_reg[7]_0 ;
  input [0:0]A;
  input \q0_reg[12]_0 ;
  input void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0;
  input ap_enable_reg_pp0_iter6;
  input [7:0]\zext_ln123_1_reg_730_reg[7]_16 ;
  input \q0_reg[10] ;
  input \q0_reg[11] ;
  input \q0_reg[8] ;
  input \q0_reg[9] ;
  input \q0_reg[10]_0 ;

  wire [0:0]A;
  wire [7:0]B;
  wire [7:0]D;
  wire [0:0]DI;
  wire [7:0]I238;
  wire [1:0]O;
  wire [8:0]O184;
  wire [7:0]Q;
  wire [7:0]\add_ln213_1_reg_766_reg[7] ;
  wire [7:0]\add_ln213_1_reg_766_reg[7]_0 ;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_enable_reg_pp0_iter5;
  wire ap_enable_reg_pp0_iter5_reg;
  wire ap_enable_reg_pp0_iter6;
  wire ap_enable_reg_pp0_iter6_reg;
  wire [7:0]\b_V_reg_677_pp0_iter4_reg_reg[5] ;
  wire icmp_ln128_reg_673_pp0_iter2_reg;
  wire icmp_ln128_reg_673_pp0_iter4_reg;
  wire icmp_ln128_reg_673_pp0_iter9_reg;
  wire imgInput_data_empty_n;
  wire [7:0]p_reg_reg;
  wire p_reg_reg_i_1__0;
  wire \q0[10]_i_3 ;
  wire \q0[9]_i_5__0 ;
  wire \q0_reg[0]_i_3__0 ;
  wire \q0_reg[10] ;
  wire \q0_reg[10]_0 ;
  wire \q0_reg[11] ;
  wire \q0_reg[12] ;
  wire \q0_reg[12]_0 ;
  wire \q0_reg[1]_i_3__0 ;
  wire \q0_reg[2]_i_3__0 ;
  wire \q0_reg[3]_i_3__0 ;
  wire \q0_reg[4]_i_3__0 ;
  wire \q0_reg[5]_i_3__0 ;
  wire \q0_reg[6]_i_3__0 ;
  wire \q0_reg[7]_i_3__0 ;
  wire \q0_reg[8] ;
  wire \q0_reg[8]_i_3__0 ;
  wire \q0_reg[9] ;
  wire q1_reg;
  wire q1_reg_0;
  wire q1_reg_1;
  wire q1_reg_2;
  wire q1_reg_3;
  wire q1_reg_4;
  wire [7:0]q1_reg_5;
  wire [7:0]q2_reg;
  wire [7:0]q2_reg_0;
  wire rgb2hsv_data_full_n;
  wire [8:0]\vg_reg_778_reg[0] ;
  wire [7:0]\vmin_V_reg_745_reg[7] ;
  wire [7:0]void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0;
  wire void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0;
  wire \zext_ln123_1_reg_730_reg[7] ;
  wire \zext_ln123_1_reg_730_reg[7]_0 ;
  wire \zext_ln123_1_reg_730_reg[7]_1 ;
  wire \zext_ln123_1_reg_730_reg[7]_10 ;
  wire \zext_ln123_1_reg_730_reg[7]_11 ;
  wire \zext_ln123_1_reg_730_reg[7]_12 ;
  wire \zext_ln123_1_reg_730_reg[7]_13 ;
  wire \zext_ln123_1_reg_730_reg[7]_14 ;
  wire \zext_ln123_1_reg_730_reg[7]_15 ;
  wire [7:0]\zext_ln123_1_reg_730_reg[7]_16 ;
  wire \zext_ln123_1_reg_730_reg[7]_2 ;
  wire \zext_ln123_1_reg_730_reg[7]_3 ;
  wire \zext_ln123_1_reg_730_reg[7]_4 ;
  wire \zext_ln123_1_reg_730_reg[7]_5 ;
  wire \zext_ln123_1_reg_730_reg[7]_6 ;
  wire \zext_ln123_1_reg_730_reg[7]_7 ;
  wire \zext_ln123_1_reg_730_reg[7]_8 ;
  wire \zext_ln123_1_reg_730_reg[7]_9 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_bgr2hsv_9_2160_3840_1_s_xf_cv_icvSaturate8u_cv_rom colordetect_accel_bgr2hsv_9_2160_3840_1_s_xf_cv_icvSaturate8u_cv_rom_U
       (.A(A),
        .D(D),
        .DI(DI),
        .I238(I238),
        .O(B[3:0]),
        .O184(O184),
        .Q(Q),
        .\add_ln213_1_reg_766_reg[7] (\add_ln213_1_reg_766_reg[7] ),
        .\add_ln213_1_reg_766_reg[7]_0 (\add_ln213_1_reg_766_reg[7]_0 ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(ap_block_pp0_stage0_11001),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4),
        .ap_enable_reg_pp0_iter5(ap_enable_reg_pp0_iter5),
        .ap_enable_reg_pp0_iter5_reg(ap_enable_reg_pp0_iter5_reg),
        .ap_enable_reg_pp0_iter6(ap_enable_reg_pp0_iter6),
        .ap_enable_reg_pp0_iter6_reg(ap_enable_reg_pp0_iter6_reg),
        .\b_V_reg_677_pp0_iter4_reg_reg[5] (\b_V_reg_677_pp0_iter4_reg_reg[5] ),
        .icmp_ln128_reg_673_pp0_iter2_reg(icmp_ln128_reg_673_pp0_iter2_reg),
        .icmp_ln128_reg_673_pp0_iter4_reg(icmp_ln128_reg_673_pp0_iter4_reg),
        .icmp_ln128_reg_673_pp0_iter9_reg(icmp_ln128_reg_673_pp0_iter9_reg),
        .imgInput_data_empty_n(imgInput_data_empty_n),
        .p_reg_reg(p_reg_reg),
        .p_reg_reg_i_1__0_0(p_reg_reg_i_1__0),
        .\q0[10]_i_3 (\q0[10]_i_3 ),
        .\q0[9]_i_5__0_0 (\q0[9]_i_5__0 ),
        .\q0_reg[0]_i_3__0_0 (\q0_reg[0]_i_3__0 ),
        .\q0_reg[10] (\q0_reg[10] ),
        .\q0_reg[10]_0 (\q0_reg[10]_0 ),
        .\q0_reg[11] (\q0_reg[11] ),
        .\q0_reg[12] (\q0_reg[12] ),
        .\q0_reg[12]_0 (\q0_reg[12]_0 ),
        .\q0_reg[1]_i_3__0_0 (\q0_reg[1]_i_3__0 ),
        .\q0_reg[2]_i_3__0_0 (\q0_reg[2]_i_3__0 ),
        .\q0_reg[3]_i_3__0_0 (\q0_reg[3]_i_3__0 ),
        .\q0_reg[4]_i_3__0_0 (\q0_reg[4]_i_3__0 ),
        .\q0_reg[5]_i_3__0_0 (\q0_reg[5]_i_3__0 ),
        .\q0_reg[6]_i_3__0_0 (\q0_reg[6]_i_3__0 ),
        .\q0_reg[7]_i_3__0_0 (\q0_reg[7]_i_3__0 ),
        .\q0_reg[8] (\q0_reg[8] ),
        .\q0_reg[8]_i_3__0_0 (\q0_reg[8]_i_3__0 ),
        .\q0_reg[9] (\q0_reg[9] ),
        .q1_reg_0(B[7:4]),
        .q1_reg_1(q1_reg),
        .q1_reg_2(q1_reg_0),
        .q1_reg_3(q1_reg_1),
        .q1_reg_4(q1_reg_2),
        .q1_reg_5(q1_reg_3),
        .q1_reg_6(q1_reg_4),
        .q1_reg_7(q1_reg_5),
        .q2_reg_0(q2_reg),
        .q2_reg_1(q2_reg_0),
        .rgb2hsv_data_full_n(rgb2hsv_data_full_n),
        .\vg_reg_778_reg[0] (\vg_reg_778_reg[0] ),
        .\vmin_V_reg_745_reg[7] (\vmin_V_reg_745_reg[7] ),
        .void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0),
        .\zext_ln123_1_reg_730_reg[3] (void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[3:0]),
        .\zext_ln123_1_reg_730_reg[7] (\zext_ln123_1_reg_730_reg[7] ),
        .\zext_ln123_1_reg_730_reg[7]_0 (void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0[7:4]),
        .\zext_ln123_1_reg_730_reg[7]_1 (\zext_ln123_1_reg_730_reg[7]_0 ),
        .\zext_ln123_1_reg_730_reg[7]_10 (\zext_ln123_1_reg_730_reg[7]_9 ),
        .\zext_ln123_1_reg_730_reg[7]_11 (\zext_ln123_1_reg_730_reg[7]_10 ),
        .\zext_ln123_1_reg_730_reg[7]_12 (\zext_ln123_1_reg_730_reg[7]_11 ),
        .\zext_ln123_1_reg_730_reg[7]_13 (\zext_ln123_1_reg_730_reg[7]_12 ),
        .\zext_ln123_1_reg_730_reg[7]_14 (\zext_ln123_1_reg_730_reg[7]_13 ),
        .\zext_ln123_1_reg_730_reg[7]_15 (\zext_ln123_1_reg_730_reg[7]_14 ),
        .\zext_ln123_1_reg_730_reg[7]_16 (\zext_ln123_1_reg_730_reg[7]_15 ),
        .\zext_ln123_1_reg_730_reg[7]_17 (\zext_ln123_1_reg_730_reg[7]_16 ),
        .\zext_ln123_1_reg_730_reg[7]_2 (\zext_ln123_1_reg_730_reg[7]_1 ),
        .\zext_ln123_1_reg_730_reg[7]_3 (\zext_ln123_1_reg_730_reg[7]_2 ),
        .\zext_ln123_1_reg_730_reg[7]_4 (\zext_ln123_1_reg_730_reg[7]_3 ),
        .\zext_ln123_1_reg_730_reg[7]_5 (\zext_ln123_1_reg_730_reg[7]_4 ),
        .\zext_ln123_1_reg_730_reg[7]_6 (\zext_ln123_1_reg_730_reg[7]_5 ),
        .\zext_ln123_1_reg_730_reg[7]_7 (\zext_ln123_1_reg_730_reg[7]_6 ),
        .\zext_ln123_1_reg_730_reg[7]_8 (\zext_ln123_1_reg_730_reg[7]_7 ),
        .\zext_ln123_1_reg_730_reg[7]_9 (\zext_ln123_1_reg_730_reg[7]_8 ),
        .\zext_ln123_1_reg_730_reg[8] (O));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_bgr2hsv_9_2160_3840_1_s_xf_cv_icvSaturate8u_cv_rom
   (I238,
    ap_enable_reg_pp0_iter1_reg,
    O,
    q1_reg_0,
    \zext_ln123_1_reg_730_reg[7] ,
    \zext_ln123_1_reg_730_reg[7]_0 ,
    \zext_ln123_1_reg_730_reg[7]_1 ,
    \zext_ln123_1_reg_730_reg[3] ,
    \zext_ln123_1_reg_730_reg[7]_2 ,
    \zext_ln123_1_reg_730_reg[7]_3 ,
    p_reg_reg_i_1__0_0,
    q1_reg_1,
    q1_reg_2,
    q1_reg_3,
    O184,
    D,
    \b_V_reg_677_pp0_iter4_reg_reg[5] ,
    \zext_ln123_1_reg_730_reg[8] ,
    \q0_reg[12] ,
    ap_enable_reg_pp0_iter5_reg,
    ap_enable_reg_pp0_iter6_reg,
    \zext_ln123_1_reg_730_reg[7]_4 ,
    \zext_ln123_1_reg_730_reg[7]_5 ,
    \zext_ln123_1_reg_730_reg[7]_6 ,
    \zext_ln123_1_reg_730_reg[7]_7 ,
    \zext_ln123_1_reg_730_reg[7]_8 ,
    \zext_ln123_1_reg_730_reg[7]_9 ,
    \zext_ln123_1_reg_730_reg[7]_10 ,
    \zext_ln123_1_reg_730_reg[7]_11 ,
    \zext_ln123_1_reg_730_reg[7]_12 ,
    \zext_ln123_1_reg_730_reg[7]_13 ,
    \zext_ln123_1_reg_730_reg[7]_14 ,
    \zext_ln123_1_reg_730_reg[7]_15 ,
    \zext_ln123_1_reg_730_reg[7]_16 ,
    \q0_reg[0]_i_3__0_0 ,
    \q0_reg[1]_i_3__0_0 ,
    \q0_reg[2]_i_3__0_0 ,
    \q0_reg[3]_i_3__0_0 ,
    \q0_reg[4]_i_3__0_0 ,
    \q0_reg[5]_i_3__0_0 ,
    \q0_reg[6]_i_3__0_0 ,
    \q0_reg[7]_i_3__0_0 ,
    \q0_reg[8]_i_3__0_0 ,
    \q0[9]_i_5__0_0 ,
    \q0[10]_i_3 ,
    ap_clk,
    icmp_ln128_reg_673_pp0_iter2_reg,
    ap_enable_reg_pp0_iter3,
    ap_enable_reg_pp0_iter2,
    ap_enable_reg_pp0_iter4,
    icmp_ln128_reg_673_pp0_iter4_reg,
    ap_enable_reg_pp0_iter5,
    q1_reg_4,
    imgInput_data_empty_n,
    q1_reg_5,
    rgb2hsv_data_full_n,
    q1_reg_6,
    icmp_ln128_reg_673_pp0_iter9_reg,
    DI,
    Q,
    p_reg_reg,
    q2_reg_0,
    q2_reg_1,
    \vmin_V_reg_745_reg[7] ,
    q1_reg_7,
    \vg_reg_778_reg[0] ,
    \add_ln213_1_reg_766_reg[7] ,
    \add_ln213_1_reg_766_reg[7]_0 ,
    A,
    \q0_reg[12]_0 ,
    void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0,
    ap_enable_reg_pp0_iter6,
    \zext_ln123_1_reg_730_reg[7]_17 ,
    \q0_reg[10] ,
    \q0_reg[11] ,
    \q0_reg[8] ,
    \q0_reg[9] ,
    \q0_reg[10]_0 );
  output [7:0]I238;
  output ap_enable_reg_pp0_iter1_reg;
  output [3:0]O;
  output [3:0]q1_reg_0;
  output \zext_ln123_1_reg_730_reg[7] ;
  output [3:0]\zext_ln123_1_reg_730_reg[7]_0 ;
  output \zext_ln123_1_reg_730_reg[7]_1 ;
  output [3:0]\zext_ln123_1_reg_730_reg[3] ;
  output \zext_ln123_1_reg_730_reg[7]_2 ;
  output \zext_ln123_1_reg_730_reg[7]_3 ;
  output p_reg_reg_i_1__0_0;
  output q1_reg_1;
  output q1_reg_2;
  output q1_reg_3;
  output [8:0]O184;
  output [7:0]D;
  output [7:0]\b_V_reg_677_pp0_iter4_reg_reg[5] ;
  output [1:0]\zext_ln123_1_reg_730_reg[8] ;
  output \q0_reg[12] ;
  output ap_enable_reg_pp0_iter5_reg;
  output ap_enable_reg_pp0_iter6_reg;
  output \zext_ln123_1_reg_730_reg[7]_4 ;
  output \zext_ln123_1_reg_730_reg[7]_5 ;
  output \zext_ln123_1_reg_730_reg[7]_6 ;
  output \zext_ln123_1_reg_730_reg[7]_7 ;
  output \zext_ln123_1_reg_730_reg[7]_8 ;
  output \zext_ln123_1_reg_730_reg[7]_9 ;
  output \zext_ln123_1_reg_730_reg[7]_10 ;
  output \zext_ln123_1_reg_730_reg[7]_11 ;
  output \zext_ln123_1_reg_730_reg[7]_12 ;
  output \zext_ln123_1_reg_730_reg[7]_13 ;
  output \zext_ln123_1_reg_730_reg[7]_14 ;
  output \zext_ln123_1_reg_730_reg[7]_15 ;
  output \zext_ln123_1_reg_730_reg[7]_16 ;
  output \q0_reg[0]_i_3__0_0 ;
  output \q0_reg[1]_i_3__0_0 ;
  output \q0_reg[2]_i_3__0_0 ;
  output \q0_reg[3]_i_3__0_0 ;
  output \q0_reg[4]_i_3__0_0 ;
  output \q0_reg[5]_i_3__0_0 ;
  output \q0_reg[6]_i_3__0_0 ;
  output \q0_reg[7]_i_3__0_0 ;
  output \q0_reg[8]_i_3__0_0 ;
  output \q0[9]_i_5__0_0 ;
  output \q0[10]_i_3 ;
  input ap_clk;
  input icmp_ln128_reg_673_pp0_iter2_reg;
  input ap_enable_reg_pp0_iter3;
  input ap_enable_reg_pp0_iter2;
  input ap_enable_reg_pp0_iter4;
  input icmp_ln128_reg_673_pp0_iter4_reg;
  input ap_enable_reg_pp0_iter5;
  input q1_reg_4;
  input imgInput_data_empty_n;
  input q1_reg_5;
  input rgb2hsv_data_full_n;
  input q1_reg_6;
  input icmp_ln128_reg_673_pp0_iter9_reg;
  input [0:0]DI;
  input [7:0]Q;
  input [7:0]p_reg_reg;
  input [7:0]q2_reg_0;
  input [7:0]q2_reg_1;
  input [7:0]\vmin_V_reg_745_reg[7] ;
  input [7:0]q1_reg_7;
  input [8:0]\vg_reg_778_reg[0] ;
  input [7:0]\add_ln213_1_reg_766_reg[7] ;
  input [7:0]\add_ln213_1_reg_766_reg[7]_0 ;
  input [0:0]A;
  input \q0_reg[12]_0 ;
  input void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0;
  input ap_enable_reg_pp0_iter6;
  input [7:0]\zext_ln123_1_reg_730_reg[7]_17 ;
  input \q0_reg[10] ;
  input \q0_reg[11] ;
  input \q0_reg[8] ;
  input \q0_reg[9] ;
  input \q0_reg[10]_0 ;

  wire [0:0]A;
  wire [7:0]D;
  wire [0:0]DI;
  wire [7:0]I238;
  wire [3:0]O;
  wire [8:0]O184;
  wire [7:0]Q;
  wire \add_ln213_1_reg_766[3]_i_2_n_3 ;
  wire \add_ln213_1_reg_766[3]_i_3_n_3 ;
  wire \add_ln213_1_reg_766[3]_i_4_n_3 ;
  wire \add_ln213_1_reg_766[3]_i_5_n_3 ;
  wire \add_ln213_1_reg_766[3]_i_6_n_3 ;
  wire \add_ln213_1_reg_766[3]_i_7_n_3 ;
  wire \add_ln213_1_reg_766[3]_i_8_n_3 ;
  wire \add_ln213_1_reg_766[7]_i_3_n_3 ;
  wire \add_ln213_1_reg_766[7]_i_4_n_3 ;
  wire \add_ln213_1_reg_766[7]_i_5_n_3 ;
  wire \add_ln213_1_reg_766[7]_i_6_n_3 ;
  wire \add_ln213_1_reg_766[7]_i_7_n_3 ;
  wire \add_ln213_1_reg_766[7]_i_8_n_3 ;
  wire \add_ln213_1_reg_766[7]_i_9_n_3 ;
  wire \add_ln213_1_reg_766_reg[3]_i_1_n_3 ;
  wire \add_ln213_1_reg_766_reg[3]_i_1_n_4 ;
  wire \add_ln213_1_reg_766_reg[3]_i_1_n_5 ;
  wire \add_ln213_1_reg_766_reg[3]_i_1_n_6 ;
  wire [7:0]\add_ln213_1_reg_766_reg[7] ;
  wire [7:0]\add_ln213_1_reg_766_reg[7]_0 ;
  wire \add_ln213_1_reg_766_reg[7]_i_2_n_4 ;
  wire \add_ln213_1_reg_766_reg[7]_i_2_n_5 ;
  wire \add_ln213_1_reg_766_reg[7]_i_2_n_6 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_enable_reg_pp0_iter5;
  wire ap_enable_reg_pp0_iter5_reg;
  wire ap_enable_reg_pp0_iter6;
  wire ap_enable_reg_pp0_iter6_reg;
  wire [7:0]\b_V_reg_677_pp0_iter4_reg_reg[5] ;
  wire icmp_ln128_reg_673_pp0_iter2_reg;
  wire icmp_ln128_reg_673_pp0_iter4_reg;
  wire icmp_ln128_reg_673_pp0_iter9_reg;
  wire imgInput_data_empty_n;
  wire [7:0]p_reg_reg;
  wire p_reg_reg_i_10__0_n_3;
  wire p_reg_reg_i_11__0_n_3;
  wire p_reg_reg_i_13__0_n_3;
  wire p_reg_reg_i_14__0_n_3;
  wire p_reg_reg_i_15__0_n_3;
  wire p_reg_reg_i_16__0_n_3;
  wire p_reg_reg_i_1__0_0;
  wire p_reg_reg_i_1__0_n_4;
  wire p_reg_reg_i_1__0_n_5;
  wire p_reg_reg_i_1__0_n_6;
  wire p_reg_reg_i_2__0_n_3;
  wire p_reg_reg_i_2__0_n_4;
  wire p_reg_reg_i_2__0_n_5;
  wire p_reg_reg_i_2__0_n_6;
  wire p_reg_reg_i_3_n_3;
  wire p_reg_reg_i_4__0_n_3;
  wire p_reg_reg_i_5__0_n_3;
  wire p_reg_reg_i_6__0_n_3;
  wire p_reg_reg_i_7__0_n_3;
  wire p_reg_reg_i_8__0_n_3;
  wire p_reg_reg_i_9__0_n_3;
  wire \q0[0]_i_4__0_n_3 ;
  wire \q0[0]_i_4_n_3 ;
  wire \q0[0]_i_5__0_n_3 ;
  wire \q0[0]_i_5_n_3 ;
  wire \q0[0]_i_6__0_n_3 ;
  wire \q0[0]_i_6_n_3 ;
  wire \q0[0]_i_7__0_n_3 ;
  wire \q0[0]_i_7_n_3 ;
  wire \q0[10]_i_2_n_3 ;
  wire \q0[10]_i_3 ;
  wire \q0[10]_i_4_n_3 ;
  wire \q0[10]_i_5_n_3 ;
  wire \q0[10]_i_6_n_3 ;
  wire \q0[11]_i_10_n_3 ;
  wire \q0[11]_i_11_n_3 ;
  wire \q0[11]_i_2__0_n_3 ;
  wire \q0[11]_i_6_n_3 ;
  wire \q0[11]_i_7_n_3 ;
  wire \q0[11]_i_8_n_3 ;
  wire \q0[11]_i_9_n_3 ;
  wire \q0[12]_i_2_n_3 ;
  wire \q0[13]_i_2__0_n_3 ;
  wire \q0[13]_i_2_n_3 ;
  wire \q0[14]_i_2__0_n_3 ;
  wire \q0[14]_i_2_n_3 ;
  wire \q0[15]_i_2_n_3 ;
  wire \q0[16]_i_2_n_3 ;
  wire \q0[17]_i_2_n_3 ;
  wire \q0[18]_i_2_n_3 ;
  wire \q0[19]_i_5_n_3 ;
  wire \q0[19]_i_6_n_3 ;
  wire \q0[19]_i_7_n_3 ;
  wire \q0[19]_i_8_n_3 ;
  wire \q0[1]_i_4__0_n_3 ;
  wire \q0[1]_i_4_n_3 ;
  wire \q0[1]_i_5__0_n_3 ;
  wire \q0[1]_i_5_n_3 ;
  wire \q0[1]_i_6__0_n_3 ;
  wire \q0[1]_i_6_n_3 ;
  wire \q0[1]_i_7__0_n_3 ;
  wire \q0[1]_i_7_n_3 ;
  wire \q0[2]_i_4__0_n_3 ;
  wire \q0[2]_i_4_n_3 ;
  wire \q0[2]_i_5__0_n_3 ;
  wire \q0[2]_i_5_n_3 ;
  wire \q0[2]_i_6__0_n_3 ;
  wire \q0[2]_i_6_n_3 ;
  wire \q0[2]_i_7__0_n_3 ;
  wire \q0[2]_i_7_n_3 ;
  wire \q0[3]_i_4__0_n_3 ;
  wire \q0[3]_i_4_n_3 ;
  wire \q0[3]_i_5__0_n_3 ;
  wire \q0[3]_i_5_n_3 ;
  wire \q0[3]_i_6__0_n_3 ;
  wire \q0[3]_i_6_n_3 ;
  wire \q0[3]_i_7__0_n_3 ;
  wire \q0[3]_i_7_n_3 ;
  wire \q0[4]_i_4__0_n_3 ;
  wire \q0[4]_i_4_n_3 ;
  wire \q0[4]_i_5__0_n_3 ;
  wire \q0[4]_i_5_n_3 ;
  wire \q0[4]_i_6__0_n_3 ;
  wire \q0[4]_i_6_n_3 ;
  wire \q0[4]_i_7__0_n_3 ;
  wire \q0[4]_i_7_n_3 ;
  wire \q0[5]_i_4__0_n_3 ;
  wire \q0[5]_i_4_n_3 ;
  wire \q0[5]_i_5__0_n_3 ;
  wire \q0[5]_i_5_n_3 ;
  wire \q0[5]_i_6__0_n_3 ;
  wire \q0[5]_i_6_n_3 ;
  wire \q0[5]_i_7__0_n_3 ;
  wire \q0[5]_i_7_n_3 ;
  wire \q0[6]_i_4__0_n_3 ;
  wire \q0[6]_i_4_n_3 ;
  wire \q0[6]_i_5__0_n_3 ;
  wire \q0[6]_i_5_n_3 ;
  wire \q0[6]_i_6__0_n_3 ;
  wire \q0[6]_i_6_n_3 ;
  wire \q0[6]_i_7__0_n_3 ;
  wire \q0[6]_i_7_n_3 ;
  wire \q0[7]_i_4__0_n_3 ;
  wire \q0[7]_i_4_n_3 ;
  wire \q0[7]_i_5__0_n_3 ;
  wire \q0[7]_i_5_n_3 ;
  wire \q0[7]_i_6__0_n_3 ;
  wire \q0[7]_i_6_n_3 ;
  wire \q0[7]_i_7__0_n_3 ;
  wire \q0[7]_i_7_n_3 ;
  wire \q0[8]_i_4__0_n_3 ;
  wire \q0[8]_i_4_n_3 ;
  wire \q0[8]_i_5__0_n_3 ;
  wire \q0[8]_i_5_n_3 ;
  wire \q0[8]_i_6_n_3 ;
  wire \q0[8]_i_7__0_n_3 ;
  wire \q0[8]_i_7_n_3 ;
  wire \q0[9]_i_4__0_n_3 ;
  wire \q0[9]_i_4_n_3 ;
  wire \q0[9]_i_5__0_0 ;
  wire \q0[9]_i_5__0_n_3 ;
  wire \q0[9]_i_5_n_3 ;
  wire \q0[9]_i_6_n_3 ;
  wire \q0[9]_i_7_n_3 ;
  wire \q0_reg[0]_i_2__0_n_3 ;
  wire \q0_reg[0]_i_2_n_3 ;
  wire \q0_reg[0]_i_3__0_0 ;
  wire \q0_reg[0]_i_3__0_n_3 ;
  wire \q0_reg[0]_i_3_n_3 ;
  wire \q0_reg[10] ;
  wire \q0_reg[10]_0 ;
  wire \q0_reg[10]_i_2_n_3 ;
  wire \q0_reg[10]_i_3_n_3 ;
  wire \q0_reg[11] ;
  wire \q0_reg[11]_i_4_n_3 ;
  wire \q0_reg[11]_i_4_n_4 ;
  wire \q0_reg[11]_i_4_n_5 ;
  wire \q0_reg[11]_i_4_n_6 ;
  wire \q0_reg[12] ;
  wire \q0_reg[12]_0 ;
  wire \q0_reg[19]_i_3_n_3 ;
  wire \q0_reg[19]_i_3_n_4 ;
  wire \q0_reg[19]_i_3_n_5 ;
  wire \q0_reg[19]_i_3_n_6 ;
  wire \q0_reg[1]_i_2__0_n_3 ;
  wire \q0_reg[1]_i_2_n_3 ;
  wire \q0_reg[1]_i_3__0_0 ;
  wire \q0_reg[1]_i_3__0_n_3 ;
  wire \q0_reg[1]_i_3_n_3 ;
  wire \q0_reg[2]_i_2__0_n_3 ;
  wire \q0_reg[2]_i_2_n_3 ;
  wire \q0_reg[2]_i_3__0_0 ;
  wire \q0_reg[2]_i_3__0_n_3 ;
  wire \q0_reg[2]_i_3_n_3 ;
  wire \q0_reg[3]_i_2__0_n_3 ;
  wire \q0_reg[3]_i_2_n_3 ;
  wire \q0_reg[3]_i_3__0_0 ;
  wire \q0_reg[3]_i_3__0_n_3 ;
  wire \q0_reg[3]_i_3_n_3 ;
  wire \q0_reg[4]_i_2__0_n_3 ;
  wire \q0_reg[4]_i_2_n_3 ;
  wire \q0_reg[4]_i_3__0_0 ;
  wire \q0_reg[4]_i_3__0_n_3 ;
  wire \q0_reg[4]_i_3_n_3 ;
  wire \q0_reg[5]_i_2__0_n_3 ;
  wire \q0_reg[5]_i_2_n_3 ;
  wire \q0_reg[5]_i_3__0_0 ;
  wire \q0_reg[5]_i_3__0_n_3 ;
  wire \q0_reg[5]_i_3_n_3 ;
  wire \q0_reg[6]_i_2__0_n_3 ;
  wire \q0_reg[6]_i_2_n_3 ;
  wire \q0_reg[6]_i_3__0_0 ;
  wire \q0_reg[6]_i_3__0_n_3 ;
  wire \q0_reg[6]_i_3_n_3 ;
  wire \q0_reg[7]_i_2__0_n_3 ;
  wire \q0_reg[7]_i_2_n_3 ;
  wire \q0_reg[7]_i_3__0_0 ;
  wire \q0_reg[7]_i_3__0_n_3 ;
  wire \q0_reg[7]_i_3_n_3 ;
  wire \q0_reg[8] ;
  wire \q0_reg[8]_i_2__0_n_3 ;
  wire \q0_reg[8]_i_2_n_3 ;
  wire \q0_reg[8]_i_3__0_0 ;
  wire \q0_reg[8]_i_3__0_n_3 ;
  wire \q0_reg[8]_i_3_n_3 ;
  wire \q0_reg[9] ;
  wire \q0_reg[9]_i_2_n_3 ;
  wire \q0_reg[9]_i_3_n_3 ;
  wire [7:0]\^q1_reg ;
  wire [3:0]q1_reg_0;
  wire q1_reg_1;
  wire q1_reg_2;
  wire q1_reg_3;
  wire q1_reg_4;
  wire q1_reg_5;
  wire q1_reg_6;
  wire [7:0]q1_reg_7;
  wire q1_reg_i_10_n_3;
  wire q1_reg_i_11_n_3;
  wire q1_reg_i_12_n_3;
  wire q1_reg_i_13_n_3;
  wire q1_reg_i_14_n_3;
  wire q1_reg_i_15_n_3;
  wire q1_reg_i_16_n_3;
  wire q1_reg_i_17_n_3;
  wire q1_reg_i_18_n_3;
  wire q1_reg_i_19_n_3;
  wire q1_reg_i_20_n_3;
  wire q1_reg_i_21_n_3;
  wire q1_reg_i_22_n_3;
  wire q1_reg_i_23_n_3;
  wire q1_reg_i_24_n_3;
  wire q1_reg_i_25_n_3;
  wire q1_reg_i_3_n_6;
  wire q1_reg_i_4_n_3;
  wire q1_reg_i_4_n_4;
  wire q1_reg_i_4_n_5;
  wire q1_reg_i_4_n_6;
  wire q1_reg_i_5_n_3;
  wire q1_reg_i_5_n_4;
  wire q1_reg_i_5_n_5;
  wire q1_reg_i_5_n_6;
  wire q1_reg_i_6_n_6;
  wire q1_reg_i_7_n_3;
  wire q1_reg_i_7_n_4;
  wire q1_reg_i_7_n_5;
  wire q1_reg_i_7_n_6;
  wire q1_reg_i_8_n_3;
  wire q1_reg_i_8_n_4;
  wire q1_reg_i_8_n_5;
  wire q1_reg_i_8_n_6;
  wire q1_reg_i_9_n_3;
  wire [7:0]q2_reg_0;
  wire [7:0]q2_reg_1;
  wire q2_reg_i_10_n_3;
  wire q2_reg_i_11_n_3;
  wire q2_reg_i_12_n_3;
  wire q2_reg_i_13_n_3;
  wire q2_reg_i_14_n_3;
  wire q2_reg_i_15_n_3;
  wire q2_reg_i_16_n_3;
  wire q2_reg_i_17_n_3;
  wire q2_reg_i_18_n_3;
  wire q2_reg_i_19_n_3;
  wire q2_reg_i_20_n_3;
  wire q2_reg_i_21_n_3;
  wire q2_reg_i_22_n_3;
  wire q2_reg_i_23_n_3;
  wire q2_reg_i_24_n_3;
  wire q2_reg_i_3_n_6;
  wire q2_reg_i_4_n_3;
  wire q2_reg_i_4_n_4;
  wire q2_reg_i_4_n_5;
  wire q2_reg_i_4_n_6;
  wire q2_reg_i_5_n_3;
  wire q2_reg_i_5_n_4;
  wire q2_reg_i_5_n_5;
  wire q2_reg_i_5_n_6;
  wire q2_reg_i_6_n_6;
  wire q2_reg_i_7_n_10;
  wire q2_reg_i_7_n_3;
  wire q2_reg_i_7_n_4;
  wire q2_reg_i_7_n_5;
  wire q2_reg_i_7_n_6;
  wire q2_reg_i_7_n_7;
  wire q2_reg_i_7_n_8;
  wire q2_reg_i_7_n_9;
  wire q2_reg_i_8_n_10;
  wire q2_reg_i_8_n_3;
  wire q2_reg_i_8_n_4;
  wire q2_reg_i_8_n_5;
  wire q2_reg_i_8_n_6;
  wire q2_reg_i_8_n_7;
  wire q2_reg_i_8_n_8;
  wire q2_reg_i_8_n_9;
  wire q2_reg_i_9_n_3;
  wire [7:0]ret_12_fu_299_p2;
  wire [7:0]ret_13_fu_359_p2;
  wire rgb2hsv_data_full_n;
  wire [9:0]sel;
  wire [8:0]\vg_reg_778_reg[0] ;
  wire \vmin_V_reg_745[3]_i_2_n_3 ;
  wire \vmin_V_reg_745[3]_i_3_n_3 ;
  wire \vmin_V_reg_745[3]_i_4_n_3 ;
  wire \vmin_V_reg_745[3]_i_5_n_3 ;
  wire \vmin_V_reg_745[7]_i_3_n_3 ;
  wire \vmin_V_reg_745[7]_i_4_n_3 ;
  wire \vmin_V_reg_745[7]_i_5_n_3 ;
  wire \vmin_V_reg_745[7]_i_6_n_3 ;
  wire \vmin_V_reg_745_reg[3]_i_1_n_3 ;
  wire \vmin_V_reg_745_reg[3]_i_1_n_4 ;
  wire \vmin_V_reg_745_reg[3]_i_1_n_5 ;
  wire \vmin_V_reg_745_reg[3]_i_1_n_6 ;
  wire [7:0]\vmin_V_reg_745_reg[7] ;
  wire \vmin_V_reg_745_reg[7]_i_2_n_4 ;
  wire \vmin_V_reg_745_reg[7]_i_2_n_5 ;
  wire \vmin_V_reg_745_reg[7]_i_2_n_6 ;
  wire [9:9]void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0__0;
  wire void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0;
  wire xf_cv_icvSaturate8u_cv_ce0;
  wire xf_cv_icvSaturate8u_cv_ce2;
  wire [7:0]xf_cv_icvSaturate8u_cv_load_2_reg_725;
  wire xf_cv_icvSaturate8u_cv_load_2_reg_7250;
  wire [7:0]xf_cv_icvSaturate8u_cv_load_3_reg_761;
  wire xf_cv_icvSaturate8u_cv_load_3_reg_7610;
  wire \zext_ln123_1_reg_730[3]_i_2_n_3 ;
  wire \zext_ln123_1_reg_730[3]_i_3_n_3 ;
  wire \zext_ln123_1_reg_730[3]_i_4_n_3 ;
  wire \zext_ln123_1_reg_730[3]_i_5_n_3 ;
  wire \zext_ln123_1_reg_730[7]_i_2_n_3 ;
  wire \zext_ln123_1_reg_730[7]_i_3_n_3 ;
  wire \zext_ln123_1_reg_730[7]_i_4_n_3 ;
  wire \zext_ln123_1_reg_730[7]_i_5_n_3 ;
  wire [3:0]\zext_ln123_1_reg_730_reg[3] ;
  wire \zext_ln123_1_reg_730_reg[3]_i_1_n_3 ;
  wire \zext_ln123_1_reg_730_reg[3]_i_1_n_4 ;
  wire \zext_ln123_1_reg_730_reg[3]_i_1_n_5 ;
  wire \zext_ln123_1_reg_730_reg[3]_i_1_n_6 ;
  wire \zext_ln123_1_reg_730_reg[7] ;
  wire [3:0]\zext_ln123_1_reg_730_reg[7]_0 ;
  wire \zext_ln123_1_reg_730_reg[7]_1 ;
  wire \zext_ln123_1_reg_730_reg[7]_10 ;
  wire \zext_ln123_1_reg_730_reg[7]_11 ;
  wire \zext_ln123_1_reg_730_reg[7]_12 ;
  wire \zext_ln123_1_reg_730_reg[7]_13 ;
  wire \zext_ln123_1_reg_730_reg[7]_14 ;
  wire \zext_ln123_1_reg_730_reg[7]_15 ;
  wire \zext_ln123_1_reg_730_reg[7]_16 ;
  wire [7:0]\zext_ln123_1_reg_730_reg[7]_17 ;
  wire \zext_ln123_1_reg_730_reg[7]_2 ;
  wire \zext_ln123_1_reg_730_reg[7]_3 ;
  wire \zext_ln123_1_reg_730_reg[7]_4 ;
  wire \zext_ln123_1_reg_730_reg[7]_5 ;
  wire \zext_ln123_1_reg_730_reg[7]_6 ;
  wire \zext_ln123_1_reg_730_reg[7]_7 ;
  wire \zext_ln123_1_reg_730_reg[7]_8 ;
  wire \zext_ln123_1_reg_730_reg[7]_9 ;
  wire \zext_ln123_1_reg_730_reg[7]_i_1_n_3 ;
  wire \zext_ln123_1_reg_730_reg[7]_i_1_n_4 ;
  wire \zext_ln123_1_reg_730_reg[7]_i_1_n_5 ;
  wire \zext_ln123_1_reg_730_reg[7]_i_1_n_6 ;
  wire [1:0]\zext_ln123_1_reg_730_reg[8] ;
  wire [3:3]\NLW_add_ln213_1_reg_766_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:3]NLW_p_reg_reg_i_1__0_CO_UNCONNECTED;
  wire [15:8]NLW_q1_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_q1_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_q1_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_q1_reg_DOPBDOP_UNCONNECTED;
  wire [3:1]NLW_q1_reg_i_3_CO_UNCONNECTED;
  wire [3:2]NLW_q1_reg_i_3_O_UNCONNECTED;
  wire [3:1]NLW_q1_reg_i_6_CO_UNCONNECTED;
  wire [3:0]NLW_q1_reg_i_6_O_UNCONNECTED;
  wire [15:8]NLW_q2_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_q2_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_q2_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_q2_reg_DOPBDOP_UNCONNECTED;
  wire [3:1]NLW_q2_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_q2_reg_i_3_O_UNCONNECTED;
  wire [3:1]NLW_q2_reg_i_6_CO_UNCONNECTED;
  wire [3:0]NLW_q2_reg_i_6_O_UNCONNECTED;
  wire [3:3]\NLW_vmin_V_reg_745_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_vr_reg_772_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_vr_reg_772_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_zext_ln123_1_reg_730_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_zext_ln123_1_reg_730_reg[8]_i_1_O_UNCONNECTED ;

  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln213_1_reg_766[3]_i_2 
       (.I0(\add_ln213_1_reg_766_reg[7]_0 [2]),
        .I1(\add_ln213_1_reg_766_reg[7] [2]),
        .I2(\^q1_reg [2]),
        .O(\add_ln213_1_reg_766[3]_i_2_n_3 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln213_1_reg_766[3]_i_3 
       (.I0(\add_ln213_1_reg_766_reg[7]_0 [1]),
        .I1(\add_ln213_1_reg_766_reg[7] [1]),
        .I2(\^q1_reg [1]),
        .O(\add_ln213_1_reg_766[3]_i_3_n_3 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln213_1_reg_766[3]_i_4 
       (.I0(\add_ln213_1_reg_766_reg[7]_0 [0]),
        .I1(\add_ln213_1_reg_766_reg[7] [0]),
        .I2(\^q1_reg [0]),
        .O(\add_ln213_1_reg_766[3]_i_4_n_3 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln213_1_reg_766[3]_i_5 
       (.I0(\add_ln213_1_reg_766_reg[7]_0 [3]),
        .I1(\add_ln213_1_reg_766_reg[7] [3]),
        .I2(\^q1_reg [3]),
        .I3(\add_ln213_1_reg_766[3]_i_2_n_3 ),
        .O(\add_ln213_1_reg_766[3]_i_5_n_3 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln213_1_reg_766[3]_i_6 
       (.I0(\add_ln213_1_reg_766_reg[7]_0 [2]),
        .I1(\add_ln213_1_reg_766_reg[7] [2]),
        .I2(\^q1_reg [2]),
        .I3(\add_ln213_1_reg_766[3]_i_3_n_3 ),
        .O(\add_ln213_1_reg_766[3]_i_6_n_3 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln213_1_reg_766[3]_i_7 
       (.I0(\add_ln213_1_reg_766_reg[7]_0 [1]),
        .I1(\add_ln213_1_reg_766_reg[7] [1]),
        .I2(\^q1_reg [1]),
        .I3(\add_ln213_1_reg_766[3]_i_4_n_3 ),
        .O(\add_ln213_1_reg_766[3]_i_7_n_3 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \add_ln213_1_reg_766[3]_i_8 
       (.I0(\add_ln213_1_reg_766_reg[7]_0 [0]),
        .I1(\add_ln213_1_reg_766_reg[7] [0]),
        .I2(\^q1_reg [0]),
        .O(\add_ln213_1_reg_766[3]_i_8_n_3 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln213_1_reg_766[7]_i_3 
       (.I0(\add_ln213_1_reg_766_reg[7]_0 [5]),
        .I1(\add_ln213_1_reg_766_reg[7] [5]),
        .I2(\^q1_reg [5]),
        .O(\add_ln213_1_reg_766[7]_i_3_n_3 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln213_1_reg_766[7]_i_4 
       (.I0(\add_ln213_1_reg_766_reg[7]_0 [4]),
        .I1(\add_ln213_1_reg_766_reg[7] [4]),
        .I2(\^q1_reg [4]),
        .O(\add_ln213_1_reg_766[7]_i_4_n_3 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln213_1_reg_766[7]_i_5 
       (.I0(\add_ln213_1_reg_766_reg[7]_0 [3]),
        .I1(\add_ln213_1_reg_766_reg[7] [3]),
        .I2(\^q1_reg [3]),
        .O(\add_ln213_1_reg_766[7]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \add_ln213_1_reg_766[7]_i_6 
       (.I0(\^q1_reg [6]),
        .I1(\add_ln213_1_reg_766_reg[7] [6]),
        .I2(\add_ln213_1_reg_766_reg[7]_0 [6]),
        .I3(\add_ln213_1_reg_766_reg[7] [7]),
        .I4(\add_ln213_1_reg_766_reg[7]_0 [7]),
        .I5(\^q1_reg [7]),
        .O(\add_ln213_1_reg_766[7]_i_6_n_3 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln213_1_reg_766[7]_i_7 
       (.I0(\add_ln213_1_reg_766[7]_i_3_n_3 ),
        .I1(\add_ln213_1_reg_766_reg[7] [6]),
        .I2(\add_ln213_1_reg_766_reg[7]_0 [6]),
        .I3(\^q1_reg [6]),
        .O(\add_ln213_1_reg_766[7]_i_7_n_3 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln213_1_reg_766[7]_i_8 
       (.I0(\add_ln213_1_reg_766_reg[7]_0 [5]),
        .I1(\add_ln213_1_reg_766_reg[7] [5]),
        .I2(\^q1_reg [5]),
        .I3(\add_ln213_1_reg_766[7]_i_4_n_3 ),
        .O(\add_ln213_1_reg_766[7]_i_8_n_3 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln213_1_reg_766[7]_i_9 
       (.I0(\add_ln213_1_reg_766_reg[7]_0 [4]),
        .I1(\add_ln213_1_reg_766_reg[7] [4]),
        .I2(\^q1_reg [4]),
        .I3(\add_ln213_1_reg_766[7]_i_5_n_3 ),
        .O(\add_ln213_1_reg_766[7]_i_9_n_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln213_1_reg_766_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\add_ln213_1_reg_766_reg[3]_i_1_n_3 ,\add_ln213_1_reg_766_reg[3]_i_1_n_4 ,\add_ln213_1_reg_766_reg[3]_i_1_n_5 ,\add_ln213_1_reg_766_reg[3]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln213_1_reg_766[3]_i_2_n_3 ,\add_ln213_1_reg_766[3]_i_3_n_3 ,\add_ln213_1_reg_766[3]_i_4_n_3 ,1'b0}),
        .O(\b_V_reg_677_pp0_iter4_reg_reg[5] [3:0]),
        .S({\add_ln213_1_reg_766[3]_i_5_n_3 ,\add_ln213_1_reg_766[3]_i_6_n_3 ,\add_ln213_1_reg_766[3]_i_7_n_3 ,\add_ln213_1_reg_766[3]_i_8_n_3 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln213_1_reg_766_reg[7]_i_2 
       (.CI(\add_ln213_1_reg_766_reg[3]_i_1_n_3 ),
        .CO({\NLW_add_ln213_1_reg_766_reg[7]_i_2_CO_UNCONNECTED [3],\add_ln213_1_reg_766_reg[7]_i_2_n_4 ,\add_ln213_1_reg_766_reg[7]_i_2_n_5 ,\add_ln213_1_reg_766_reg[7]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln213_1_reg_766[7]_i_3_n_3 ,\add_ln213_1_reg_766[7]_i_4_n_3 ,\add_ln213_1_reg_766[7]_i_5_n_3 }),
        .O(\b_V_reg_677_pp0_iter4_reg_reg[5] [7:4]),
        .S({\add_ln213_1_reg_766[7]_i_6_n_3 ,\add_ln213_1_reg_766[7]_i_7_n_3 ,\add_ln213_1_reg_766[7]_i_8_n_3 ,\add_ln213_1_reg_766[7]_i_9_n_3 }));
  LUT3 #(
    .INIT(8'hD4)) 
    p_reg_reg_i_10__0
       (.I0(p_reg_reg[2]),
        .I1(Q[2]),
        .I2(xf_cv_icvSaturate8u_cv_load_3_reg_761[2]),
        .O(p_reg_reg_i_10__0_n_3));
  LUT3 #(
    .INIT(8'hD4)) 
    p_reg_reg_i_11__0
       (.I0(p_reg_reg[1]),
        .I1(Q[1]),
        .I2(xf_cv_icvSaturate8u_cv_load_3_reg_761[1]),
        .O(p_reg_reg_i_11__0_n_3));
  LUT4 #(
    .INIT(16'h9669)) 
    p_reg_reg_i_13__0
       (.I0(p_reg_reg[3]),
        .I1(Q[3]),
        .I2(xf_cv_icvSaturate8u_cv_load_3_reg_761[3]),
        .I3(p_reg_reg_i_10__0_n_3),
        .O(p_reg_reg_i_13__0_n_3));
  LUT4 #(
    .INIT(16'h9669)) 
    p_reg_reg_i_14__0
       (.I0(p_reg_reg[2]),
        .I1(Q[2]),
        .I2(xf_cv_icvSaturate8u_cv_load_3_reg_761[2]),
        .I3(p_reg_reg_i_11__0_n_3),
        .O(p_reg_reg_i_14__0_n_3));
  LUT4 #(
    .INIT(16'h9669)) 
    p_reg_reg_i_15__0
       (.I0(p_reg_reg[1]),
        .I1(Q[1]),
        .I2(xf_cv_icvSaturate8u_cv_load_3_reg_761[1]),
        .I3(DI),
        .O(p_reg_reg_i_15__0_n_3));
  LUT3 #(
    .INIT(8'h96)) 
    p_reg_reg_i_16__0
       (.I0(Q[0]),
        .I1(p_reg_reg[0]),
        .I2(xf_cv_icvSaturate8u_cv_load_3_reg_761[0]),
        .O(p_reg_reg_i_16__0_n_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_reg_reg_i_1__0
       (.CI(p_reg_reg_i_2__0_n_3),
        .CO({NLW_p_reg_reg_i_1__0_CO_UNCONNECTED[3],p_reg_reg_i_1__0_n_4,p_reg_reg_i_1__0_n_5,p_reg_reg_i_1__0_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,p_reg_reg_i_3_n_3,p_reg_reg_i_4__0_n_3,p_reg_reg_i_5__0_n_3}),
        .O(q1_reg_0),
        .S({p_reg_reg_i_6__0_n_3,p_reg_reg_i_7__0_n_3,p_reg_reg_i_8__0_n_3,p_reg_reg_i_9__0_n_3}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_reg_reg_i_2__0
       (.CI(1'b0),
        .CO({p_reg_reg_i_2__0_n_3,p_reg_reg_i_2__0_n_4,p_reg_reg_i_2__0_n_5,p_reg_reg_i_2__0_n_6}),
        .CYINIT(1'b0),
        .DI({p_reg_reg_i_10__0_n_3,p_reg_reg_i_11__0_n_3,DI,xf_cv_icvSaturate8u_cv_load_3_reg_761[0]}),
        .O(O),
        .S({p_reg_reg_i_13__0_n_3,p_reg_reg_i_14__0_n_3,p_reg_reg_i_15__0_n_3,p_reg_reg_i_16__0_n_3}));
  LUT3 #(
    .INIT(8'hD4)) 
    p_reg_reg_i_3
       (.I0(p_reg_reg[5]),
        .I1(Q[5]),
        .I2(xf_cv_icvSaturate8u_cv_load_3_reg_761[5]),
        .O(p_reg_reg_i_3_n_3));
  LUT3 #(
    .INIT(8'hD4)) 
    p_reg_reg_i_4__0
       (.I0(p_reg_reg[4]),
        .I1(Q[4]),
        .I2(xf_cv_icvSaturate8u_cv_load_3_reg_761[4]),
        .O(p_reg_reg_i_4__0_n_3));
  LUT3 #(
    .INIT(8'hD4)) 
    p_reg_reg_i_5__0
       (.I0(p_reg_reg[3]),
        .I1(Q[3]),
        .I2(xf_cv_icvSaturate8u_cv_load_3_reg_761[3]),
        .O(p_reg_reg_i_5__0_n_3));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    p_reg_reg_i_6__0
       (.I0(xf_cv_icvSaturate8u_cv_load_3_reg_761[6]),
        .I1(Q[6]),
        .I2(p_reg_reg[6]),
        .I3(Q[7]),
        .I4(p_reg_reg[7]),
        .I5(xf_cv_icvSaturate8u_cv_load_3_reg_761[7]),
        .O(p_reg_reg_i_6__0_n_3));
  LUT4 #(
    .INIT(16'h9669)) 
    p_reg_reg_i_7__0
       (.I0(p_reg_reg_i_3_n_3),
        .I1(Q[6]),
        .I2(p_reg_reg[6]),
        .I3(xf_cv_icvSaturate8u_cv_load_3_reg_761[6]),
        .O(p_reg_reg_i_7__0_n_3));
  LUT4 #(
    .INIT(16'h9669)) 
    p_reg_reg_i_8__0
       (.I0(p_reg_reg[5]),
        .I1(Q[5]),
        .I2(xf_cv_icvSaturate8u_cv_load_3_reg_761[5]),
        .I3(p_reg_reg_i_4__0_n_3),
        .O(p_reg_reg_i_8__0_n_3));
  LUT4 #(
    .INIT(16'h9669)) 
    p_reg_reg_i_9__0
       (.I0(p_reg_reg[4]),
        .I1(Q[4]),
        .I2(xf_cv_icvSaturate8u_cv_load_3_reg_761[4]),
        .I3(p_reg_reg_i_5__0_n_3),
        .O(p_reg_reg_i_9__0_n_3));
  LUT6 #(
    .INIT(64'hE994FE7200244280)) 
    \q0[0]_i_4 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[0]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h0634DE84666A7000)) 
    \q0[0]_i_4__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[0]),
        .I4(O[2]),
        .I5(O[1]),
        .O(\q0[0]_i_4__0_n_3 ));
  LUT6 #(
    .INIT(64'h52B152BD7D51F720)) 
    \q0[0]_i_5 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [2]),
        .I3(\zext_ln123_1_reg_730_reg[3] [3]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[0]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'h7EF9B3FF85F1AE48)) 
    \q0[0]_i_5__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[1]),
        .I3(O[0]),
        .I4(O[3]),
        .I5(O[2]),
        .O(\q0[0]_i_5__0_n_3 ));
  LUT6 #(
    .INIT(64'h4659C4DFF7DF9A2C)) 
    \q0[0]_i_6 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [1]),
        .I3(\zext_ln123_1_reg_730_reg[3] [3]),
        .I4(\zext_ln123_1_reg_730_reg[3] [2]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[0]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'hD8E05E779DA30B24)) 
    \q0[0]_i_6__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[1]),
        .I5(O[0]),
        .O(\q0[0]_i_6__0_n_3 ));
  LUT6 #(
    .INIT(64'h09F267503AE08F02)) 
    \q0[0]_i_7 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [0]),
        .I5(\zext_ln123_1_reg_730_reg[3] [1]),
        .O(\q0[0]_i_7_n_3 ));
  LUT6 #(
    .INIT(64'h497216B1112563C6)) 
    \q0[0]_i_7__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[1]),
        .I5(O[0]),
        .O(\q0[0]_i_7__0_n_3 ));
  LUT6 #(
    .INIT(64'hC702961686020276)) 
    \q0[10]_i_2 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[1]),
        .I5(O[0]),
        .O(\q0[10]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h21E64A9000C0BD3E)) 
    \q0[10]_i_4 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[10]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h2630347171797169)) 
    \q0[10]_i_5 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [1]),
        .I4(\zext_ln123_1_reg_730_reg[3] [0]),
        .I5(\zext_ln123_1_reg_730_reg[3] [2]),
        .O(\q0[10]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'hCCCCCCCFF3B3F333)) 
    \q0[10]_i_6 
       (.I0(\zext_ln123_1_reg_730_reg[3] [0]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .O(\q0[10]_i_6_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q0[11]_i_10 
       (.I0(\vg_reg_778_reg[0] [5]),
        .I1(\^q1_reg [5]),
        .O(\q0[11]_i_10_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q0[11]_i_11 
       (.I0(\vg_reg_778_reg[0] [4]),
        .I1(\^q1_reg [4]),
        .O(\q0[11]_i_11_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q0[11]_i_1__0 
       (.I0(\q0[11]_i_2__0_n_3 ),
        .I1(q1_reg_0[2]),
        .O(p_reg_reg_i_1__0_0));
  LUT6 #(
    .INIT(64'h0F00DFDF0F00D0D0)) 
    \q0[11]_i_2 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\q0_reg[11] ),
        .I2(\zext_ln123_1_reg_730_reg[7]_0 [3]),
        .I3(\q0[11]_i_6_n_3 ),
        .I4(\zext_ln123_1_reg_730_reg[7]_0 [2]),
        .I5(\q0[11]_i_7_n_3 ),
        .O(\zext_ln123_1_reg_730_reg[7]_15 ));
  LUT6 #(
    .INIT(64'h6ABE2AAE2AAEBFBE)) 
    \q0[11]_i_2__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[1]),
        .I5(O[0]),
        .O(\q0[11]_i_2__0_n_3 ));
  LUT6 #(
    .INIT(64'h0202020202FF0202)) 
    \q0[11]_i_3 
       (.I0(q1_reg_4),
        .I1(imgInput_data_empty_n),
        .I2(q1_reg_5),
        .I3(rgb2hsv_data_full_n),
        .I4(q1_reg_6),
        .I5(icmp_ln128_reg_673_pp0_iter9_reg),
        .O(ap_enable_reg_pp0_iter1_reg));
  LUT6 #(
    .INIT(64'h4444444553733333)) 
    \q0[11]_i_6 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [2]),
        .I3(\zext_ln123_1_reg_730_reg[3] [0]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [3]),
        .O(\q0[11]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'h0A207A026F532DD6)) 
    \q0[11]_i_7 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[11]_i_7_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q0[11]_i_8 
       (.I0(\vg_reg_778_reg[0] [7]),
        .I1(\^q1_reg [7]),
        .O(\q0[11]_i_8_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q0[11]_i_9 
       (.I0(\vg_reg_778_reg[0] [6]),
        .I1(\^q1_reg [6]),
        .O(\q0[11]_i_9_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFAAAAFC0CAAAA)) 
    \q0[12]_i_1 
       (.I0(A),
        .I1(\q0[12]_i_2_n_3 ),
        .I2(\zext_ln123_1_reg_730_reg[7]_0 [2]),
        .I3(\q0_reg[12]_0 ),
        .I4(void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_ce0),
        .I5(\zext_ln123_1_reg_730_reg[7]_0 [3]),
        .O(\q0_reg[12] ));
  LUT6 #(
    .INIT(64'h347F310F245B731E)) 
    \q0[12]_i_2 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[12]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \q0[13]_i_1 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [2]),
        .I1(\q0[13]_i_2_n_3 ),
        .O(\zext_ln123_1_reg_730_reg[7]_16 ));
  LUT5 #(
    .INIT(32'h00000054)) 
    \q0[13]_i_1__0 
       (.I0(q1_reg_0[1]),
        .I1(\q0[13]_i_2__0_n_3 ),
        .I2(O[3]),
        .I3(q1_reg_0[0]),
        .I4(q1_reg_0[2]),
        .O(q1_reg_1));
  LUT6 #(
    .INIT(64'h0612136717270376)) 
    \q0[13]_i_2 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[13]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h76)) 
    \q0[13]_i_2__0 
       (.I0(O[2]),
        .I1(O[1]),
        .I2(O[0]),
        .O(\q0[13]_i_2__0_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q0[14]_i_1 
       (.I0(\q0[14]_i_2_n_3 ),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [2]),
        .O(\zext_ln123_1_reg_730_reg[7] ));
  LUT6 #(
    .INIT(64'h0000000000001110)) 
    \q0[14]_i_1__0 
       (.I0(q1_reg_0[1]),
        .I1(O[3]),
        .I2(O[2]),
        .I3(\q0[14]_i_2__0_n_3 ),
        .I4(q1_reg_0[0]),
        .I5(q1_reg_0[2]),
        .O(q1_reg_3));
  LUT6 #(
    .INIT(64'hAAAAAFFFABEFEBFE)) 
    \q0[14]_i_2 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[3] [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [1]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [3]),
        .I5(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .O(\q0[14]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q0[14]_i_2__0 
       (.I0(O[1]),
        .I1(O[0]),
        .O(\q0[14]_i_2__0_n_3 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \q0[15]_i_1__0 
       (.I0(q1_reg_0[1]),
        .I1(O[3]),
        .I2(\q0[15]_i_2_n_3 ),
        .I3(O[2]),
        .I4(q1_reg_0[0]),
        .I5(q1_reg_0[2]),
        .O(q1_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \q0[15]_i_2 
       (.I0(O[1]),
        .I1(O[0]),
        .O(\q0[15]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \q0[16]_i_1 
       (.I0(q1_reg_0[3]),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(ap_enable_reg_pp0_iter6),
        .O(ap_enable_reg_pp0_iter6_reg));
  LUT5 #(
    .INIT(32'h00000054)) 
    \q0[16]_i_1__0 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\q0[16]_i_2_n_3 ),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I4(\zext_ln123_1_reg_730_reg[7]_0 [2]),
        .O(\zext_ln123_1_reg_730_reg[7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h76)) 
    \q0[16]_i_2 
       (.I0(\zext_ln123_1_reg_730_reg[3] [2]),
        .I1(\zext_ln123_1_reg_730_reg[3] [1]),
        .I2(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[16]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h0000000000001110)) 
    \q0[17]_i_1 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[3] [3]),
        .I2(\zext_ln123_1_reg_730_reg[3] [2]),
        .I3(\q0[17]_i_2_n_3 ),
        .I4(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I5(\zext_ln123_1_reg_730_reg[7]_0 [2]),
        .O(\zext_ln123_1_reg_730_reg[7]_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q0[17]_i_2 
       (.I0(\zext_ln123_1_reg_730_reg[3] [1]),
        .I1(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[17]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \q0[18]_i_1 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[3] [3]),
        .I2(\q0[18]_i_2_n_3 ),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I5(\zext_ln123_1_reg_730_reg[7]_0 [2]),
        .O(\zext_ln123_1_reg_730_reg[7]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \q0[18]_i_2 
       (.I0(\zext_ln123_1_reg_730_reg[3] [1]),
        .I1(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[18]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \q0[19]_i_1 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [3]),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(ap_enable_reg_pp0_iter5),
        .O(ap_enable_reg_pp0_iter5_reg));
  LUT2 #(
    .INIT(4'h6)) 
    \q0[19]_i_5 
       (.I0(\vg_reg_778_reg[0] [3]),
        .I1(\^q1_reg [3]),
        .O(\q0[19]_i_5_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q0[19]_i_6 
       (.I0(\vg_reg_778_reg[0] [2]),
        .I1(\^q1_reg [2]),
        .O(\q0[19]_i_6_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q0[19]_i_7 
       (.I0(\vg_reg_778_reg[0] [1]),
        .I1(\^q1_reg [1]),
        .O(\q0[19]_i_7_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q0[19]_i_8 
       (.I0(\vg_reg_778_reg[0] [0]),
        .I1(\^q1_reg [0]),
        .O(\q0[19]_i_8_n_3 ));
  LUT6 #(
    .INIT(64'hABA2A862BA0C6880)) 
    \q0[1]_i_4 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[1]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'hAFF6AC40A2EE0880)) 
    \q0[1]_i_4__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[1]),
        .I5(O[0]),
        .O(\q0[1]_i_4__0_n_3 ));
  LUT6 #(
    .INIT(64'h655A682CF03EB438)) 
    \q0[1]_i_5 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[1]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'h31D1AC3BD1AFAD30)) 
    \q0[1]_i_5__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[1]),
        .I5(O[0]),
        .O(\q0[1]_i_5__0_n_3 ));
  LUT6 #(
    .INIT(64'h05288CE67CD74088)) 
    \q0[1]_i_6 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [2]),
        .I3(\zext_ln123_1_reg_730_reg[3] [3]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[1]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'hBD2BEC7EF86EBD28)) 
    \q0[1]_i_6__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[0]),
        .I5(O[1]),
        .O(\q0[1]_i_6__0_n_3 ));
  LUT6 #(
    .INIT(64'h360C19D679AE2436)) 
    \q0[1]_i_7 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [0]),
        .I5(\zext_ln123_1_reg_730_reg[3] [1]),
        .O(\q0[1]_i_7_n_3 ));
  LUT6 #(
    .INIT(64'hF0AD4600B87A53B4)) 
    \q0[1]_i_7__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[0]),
        .I5(O[1]),
        .O(\q0[1]_i_7__0_n_3 ));
  LUT6 #(
    .INIT(64'h6E029E4AC4986000)) 
    \q0[2]_i_4 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [1]),
        .I4(\zext_ln123_1_reg_730_reg[3] [0]),
        .I5(\zext_ln123_1_reg_730_reg[3] [2]),
        .O(\q0[2]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'hD84AE7B2BA824008)) 
    \q0[2]_i_4__0 
       (.I0(q1_reg_0[1]),
        .I1(O[2]),
        .I2(q1_reg_0[0]),
        .I3(O[3]),
        .I4(O[1]),
        .I5(O[0]),
        .O(\q0[2]_i_4__0_n_3 ));
  LUT6 #(
    .INIT(64'h17FAD31578BA6048)) 
    \q0[2]_i_5 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [1]),
        .I4(\zext_ln123_1_reg_730_reg[3] [2]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[2]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'h44F8B54CB6FB8760)) 
    \q0[2]_i_5__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[1]),
        .I5(O[0]),
        .O(\q0[2]_i_5__0_n_3 ));
  LUT6 #(
    .INIT(64'h8E2102CAE1AAD08C)) 
    \q0[2]_i_6 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [0]),
        .I5(\zext_ln123_1_reg_730_reg[3] [1]),
        .O(\q0[2]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'h6D3C83C2792CD684)) 
    \q0[2]_i_6__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[0]),
        .I5(O[1]),
        .O(\q0[2]_i_6__0_n_3 ));
  LUT6 #(
    .INIT(64'h5879255D3A464EF6)) 
    \q0[2]_i_7 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [1]),
        .I4(\zext_ln123_1_reg_730_reg[3] [2]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[2]_i_7_n_3 ));
  LUT6 #(
    .INIT(64'h46F817EDBF44E896)) 
    \q0[2]_i_7__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[1]),
        .I4(O[2]),
        .I5(O[0]),
        .O(\q0[2]_i_7__0_n_3 ));
  LUT6 #(
    .INIT(64'h6B543C009ACC2080)) 
    \q0[3]_i_4 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[3]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'hCEFEB028288E2E00)) 
    \q0[3]_i_4__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[1]),
        .I4(O[0]),
        .I5(O[2]),
        .O(\q0[3]_i_4__0_n_3 ));
  LUT6 #(
    .INIT(64'h0A8C112878EC5A78)) 
    \q0[3]_i_5 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [0]),
        .I5(\zext_ln123_1_reg_730_reg[3] [1]),
        .O(\q0[3]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'hCA2FE194588CC338)) 
    \q0[3]_i_5__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[0]),
        .I5(O[1]),
        .O(\q0[3]_i_5__0_n_3 ));
  LUT6 #(
    .INIT(64'hDB3A4BD898CA29E8)) 
    \q0[3]_i_6 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[3]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'h3C68D7974B5F0E48)) 
    \q0[3]_i_6__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[1]),
        .I3(O[2]),
        .I4(O[3]),
        .I5(O[0]),
        .O(\q0[3]_i_6__0_n_3 ));
  LUT6 #(
    .INIT(64'h46133B0F046C5804)) 
    \q0[3]_i_7 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [0]),
        .I4(\zext_ln123_1_reg_730_reg[3] [2]),
        .I5(\zext_ln123_1_reg_730_reg[3] [1]),
        .O(\q0[3]_i_7_n_3 ));
  LUT6 #(
    .INIT(64'h05BA42AD45ADFAC4)) 
    \q0[3]_i_7__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[1]),
        .I5(O[0]),
        .O(\q0[3]_i_7__0_n_3 ));
  LUT6 #(
    .INIT(64'h434658D026886A80)) 
    \q0[4]_i_4 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[4]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'hED028674844A0A80)) 
    \q0[4]_i_4__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[1]),
        .I5(O[0]),
        .O(\q0[4]_i_4__0_n_3 ));
  LUT6 #(
    .INIT(64'h434A58EE2CE14460)) 
    \q0[4]_i_5 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[4]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'h30226F5C99BAF460)) 
    \q0[4]_i_5__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[0]),
        .I5(O[1]),
        .O(\q0[4]_i_5__0_n_3 ));
  LUT6 #(
    .INIT(64'hAF17FA24F5040424)) 
    \q0[4]_i_6 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [0]),
        .I3(\zext_ln123_1_reg_730_reg[3] [3]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [2]),
        .O(\q0[4]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'h3D820A5B0F5B4A4C)) 
    \q0[4]_i_6__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[2]),
        .I3(O[3]),
        .I4(O[1]),
        .I5(O[0]),
        .O(\q0[4]_i_6__0_n_3 ));
  LUT6 #(
    .INIT(64'h34368FF863008DA6)) 
    \q0[4]_i_7 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [0]),
        .I5(\zext_ln123_1_reg_730_reg[3] [1]),
        .O(\q0[4]_i_7_n_3 ));
  LUT6 #(
    .INIT(64'h1E5B1B491E491B60)) 
    \q0[4]_i_7__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[1]),
        .I5(O[0]),
        .O(\q0[4]_i_7__0_n_3 ));
  LUT6 #(
    .INIT(64'h0CE83468B4426400)) 
    \q0[5]_i_4 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [1]),
        .I4(\zext_ln123_1_reg_730_reg[3] [0]),
        .I5(\zext_ln123_1_reg_730_reg[3] [2]),
        .O(\q0[5]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h6832AA68BAE46400)) 
    \q0[5]_i_4__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[1]),
        .I4(O[0]),
        .I5(O[2]),
        .O(\q0[5]_i_4__0_n_3 ));
  LUT6 #(
    .INIT(64'hD5BFC4B2B3909838)) 
    \q0[5]_i_5 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [0]),
        .I5(\zext_ln123_1_reg_730_reg[3] [1]),
        .O(\q0[5]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'h0275B9CF126C9A50)) 
    \q0[5]_i_5__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[1]),
        .I4(O[2]),
        .I5(O[0]),
        .O(\q0[5]_i_5__0_n_3 ));
  LUT6 #(
    .INIT(64'h45BF06C837DB15F9)) 
    \q0[5]_i_6 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [1]),
        .I3(\zext_ln123_1_reg_730_reg[3] [0]),
        .I4(\zext_ln123_1_reg_730_reg[3] [2]),
        .I5(\zext_ln123_1_reg_730_reg[3] [3]),
        .O(\q0[5]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'h261B1E1B1E4B1F48)) 
    \q0[5]_i_6__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[0]),
        .I5(O[1]),
        .O(\q0[5]_i_6__0_n_3 ));
  LUT6 #(
    .INIT(64'h16FD438B628E74D2)) 
    \q0[5]_i_7 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [1]),
        .I4(\zext_ln123_1_reg_730_reg[3] [2]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[5]_i_7_n_3 ));
  LUT6 #(
    .INIT(64'hCDC9CDDBC9DBC9D2)) 
    \q0[5]_i_7__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[0]),
        .I5(O[1]),
        .O(\q0[5]_i_7__0_n_3 ));
  LUT6 #(
    .INIT(64'hA5309E1896C00A80)) 
    \q0[6]_i_4 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[6]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h46963C224C98E000)) 
    \q0[6]_i_4__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[1]),
        .I4(O[0]),
        .I5(O[2]),
        .O(\q0[6]_i_4__0_n_3 ));
  LUT6 #(
    .INIT(64'h6DD57EA25E9D7459)) 
    \q0[6]_i_5 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [0]),
        .I3(\zext_ln123_1_reg_730_reg[3] [3]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [2]),
        .O(\q0[6]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'hA1F6A3C7A1D7B248)) 
    \q0[6]_i_5__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[1]),
        .I5(O[0]),
        .O(\q0[6]_i_5__0_n_3 ));
  LUT6 #(
    .INIT(64'hA5F1A4C2E0C693D5)) 
    \q0[6]_i_6 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [1]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [3]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[6]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'h1232323236263625)) 
    \q0[6]_i_6__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[1]),
        .I4(O[0]),
        .I5(O[2]),
        .O(\q0[6]_i_6__0_n_3 ));
  LUT6 #(
    .INIT(64'h44AF50AC52D823D1)) 
    \q0[6]_i_7 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [0]),
        .I5(\zext_ln123_1_reg_730_reg[3] [1]),
        .O(\q0[6]_i_7_n_3 ));
  LUT6 #(
    .INIT(64'h999D999D9D9D9D94)) 
    \q0[6]_i_7__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[1]),
        .I4(O[0]),
        .I5(O[2]),
        .O(\q0[6]_i_7__0_n_3 ));
  LUT6 #(
    .INIT(64'hE336F8A2A84C6082)) 
    \q0[7]_i_4 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[7]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h8D52F62A8E0C2080)) 
    \q0[7]_i_4__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[1]),
        .I5(O[0]),
        .O(\q0[7]_i_4__0_n_3 ));
  LUT6 #(
    .INIT(64'h70DB688640F11F13)) 
    \q0[7]_i_5 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [0]),
        .I3(\zext_ln123_1_reg_730_reg[3] [1]),
        .I4(\zext_ln123_1_reg_730_reg[3] [3]),
        .I5(\zext_ln123_1_reg_730_reg[3] [2]),
        .O(\q0[7]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'h878687B687A68631)) 
    \q0[7]_i_5__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[1]),
        .I5(O[0]),
        .O(\q0[7]_i_5__0_n_3 ));
  LUT6 #(
    .INIT(64'h5A590C2CF5A4B1F3)) 
    \q0[7]_i_6 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [2]),
        .I3(\zext_ln123_1_reg_730_reg[3] [0]),
        .I4(\zext_ln123_1_reg_730_reg[3] [3]),
        .I5(\zext_ln123_1_reg_730_reg[3] [1]),
        .O(\q0[7]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCFCFCFFB)) 
    \q0[7]_i_6__0 
       (.I0(O[0]),
        .I1(q1_reg_0[1]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O[1]),
        .I5(q1_reg_0[0]),
        .O(\q0[7]_i_6__0_n_3 ));
  LUT6 #(
    .INIT(64'h1F4B1B6C1B484B64)) 
    \q0[7]_i_7 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[7]_i_7_n_3 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000001)) 
    \q0[7]_i_7__0 
       (.I0(q1_reg_0[1]),
        .I1(O[3]),
        .I2(O[1]),
        .I3(O[0]),
        .I4(O[2]),
        .I5(q1_reg_0[0]),
        .O(\q0[7]_i_7__0_n_3 ));
  LUT6 #(
    .INIT(64'h44109E42C0FA280E)) 
    \q0[8]_i_4 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [1]),
        .I4(\zext_ln123_1_reg_730_reg[3] [0]),
        .I5(\zext_ln123_1_reg_730_reg[3] [2]),
        .O(\q0[8]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'hE0205FE890620882)) 
    \q0[8]_i_4__0 
       (.I0(q1_reg_0[1]),
        .I1(O[1]),
        .I2(q1_reg_0[0]),
        .I3(O[3]),
        .I4(O[2]),
        .I5(O[0]),
        .O(\q0[8]_i_4__0_n_3 ));
  LUT6 #(
    .INIT(64'h16318DE06348D2F5)) 
    \q0[8]_i_5 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [1]),
        .I3(\zext_ln123_1_reg_730_reg[3] [3]),
        .I4(\zext_ln123_1_reg_730_reg[3] [2]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[8]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'hCCCCCCC445454553)) 
    \q0[8]_i_5__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[2]),
        .I3(O[0]),
        .I4(O[1]),
        .I5(O[3]),
        .O(\q0[8]_i_5__0_n_3 ));
  LUT6 #(
    .INIT(64'hEEEB4444B91077BB)) 
    \q0[8]_i_6 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [0]),
        .I3(\zext_ln123_1_reg_730_reg[3] [1]),
        .I4(\zext_ln123_1_reg_730_reg[3] [3]),
        .I5(\zext_ln123_1_reg_730_reg[3] [2]),
        .O(\q0[8]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'h323636262625252D)) 
    \q0[8]_i_7 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [0]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [2]),
        .O(\q0[8]_i_7_n_3 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \q0[8]_i_7__0 
       (.I0(q1_reg_0[1]),
        .I1(O[3]),
        .I2(O[1]),
        .I3(O[0]),
        .I4(O[2]),
        .I5(q1_reg_0[0]),
        .O(\q0[8]_i_7__0_n_3 ));
  LUT6 #(
    .INIT(64'hDFD0FFFFDFD0F0F0)) 
    \q0[9]_i_2 
       (.I0(q1_reg_0[1]),
        .I1(\q0_reg[9] ),
        .I2(q1_reg_0[3]),
        .I3(\q0[9]_i_4__0_n_3 ),
        .I4(q1_reg_0[2]),
        .I5(\q0[9]_i_5__0_n_3 ),
        .O(\q0[9]_i_5__0_0 ));
  LUT6 #(
    .INIT(64'h6974A6EA1A840876)) 
    \q0[9]_i_4 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [2]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [0]),
        .O(\q0[9]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h8888888155555555)) 
    \q0[9]_i_4__0 
       (.I0(q1_reg_0[1]),
        .I1(O[3]),
        .I2(O[1]),
        .I3(O[0]),
        .I4(O[2]),
        .I5(q1_reg_0[0]),
        .O(\q0[9]_i_4__0_n_3 ));
  LUT6 #(
    .INIT(64'h5E4D3838490837E7)) 
    \q0[9]_i_5 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [3]),
        .I3(\zext_ln123_1_reg_730_reg[3] [0]),
        .I4(\zext_ln123_1_reg_730_reg[3] [2]),
        .I5(\zext_ln123_1_reg_730_reg[3] [1]),
        .O(\q0[9]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'hE0A4B0203062660E)) 
    \q0[9]_i_5__0 
       (.I0(q1_reg_0[1]),
        .I1(q1_reg_0[0]),
        .I2(O[3]),
        .I3(O[1]),
        .I4(O[0]),
        .I5(O[2]),
        .O(\q0[9]_i_5__0_n_3 ));
  LUT6 #(
    .INIT(64'h26242C6DDDDDD9D9)) 
    \q0[9]_i_6 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [2]),
        .I3(\zext_ln123_1_reg_730_reg[3] [0]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [3]),
        .O(\q0[9]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'h5454544444464646)) 
    \q0[9]_i_7 
       (.I0(\zext_ln123_1_reg_730_reg[7]_0 [1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_0 [0]),
        .I2(\zext_ln123_1_reg_730_reg[3] [2]),
        .I3(\zext_ln123_1_reg_730_reg[3] [0]),
        .I4(\zext_ln123_1_reg_730_reg[3] [1]),
        .I5(\zext_ln123_1_reg_730_reg[3] [3]),
        .O(\q0[9]_i_7_n_3 ));
  MUXF8 \q0_reg[0]_i_1 
       (.I0(\q0_reg[0]_i_2_n_3 ),
        .I1(\q0_reg[0]_i_3_n_3 ),
        .O(\zext_ln123_1_reg_730_reg[7]_4 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [3]));
  MUXF8 \q0_reg[0]_i_1__0 
       (.I0(\q0_reg[0]_i_2__0_n_3 ),
        .I1(\q0_reg[0]_i_3__0_n_3 ),
        .O(\q0_reg[0]_i_3__0_0 ),
        .S(q1_reg_0[3]));
  MUXF7 \q0_reg[0]_i_2 
       (.I0(\q0[0]_i_4_n_3 ),
        .I1(\q0[0]_i_5_n_3 ),
        .O(\q0_reg[0]_i_2_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[0]_i_2__0 
       (.I0(\q0[0]_i_4__0_n_3 ),
        .I1(\q0[0]_i_5__0_n_3 ),
        .O(\q0_reg[0]_i_2__0_n_3 ),
        .S(q1_reg_0[2]));
  MUXF7 \q0_reg[0]_i_3 
       (.I0(\q0[0]_i_6_n_3 ),
        .I1(\q0[0]_i_7_n_3 ),
        .O(\q0_reg[0]_i_3_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[0]_i_3__0 
       (.I0(\q0[0]_i_6__0_n_3 ),
        .I1(\q0[0]_i_7__0_n_3 ),
        .O(\q0_reg[0]_i_3__0_n_3 ),
        .S(q1_reg_0[2]));
  MUXF8 \q0_reg[10]_i_1 
       (.I0(\q0_reg[10]_i_2_n_3 ),
        .I1(\q0_reg[10]_i_3_n_3 ),
        .O(\zext_ln123_1_reg_730_reg[7]_14 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [3]));
  MUXF7 \q0_reg[10]_i_1__0 
       (.I0(\q0[10]_i_2_n_3 ),
        .I1(\q0_reg[10]_0 ),
        .O(\q0[10]_i_3 ),
        .S(q1_reg_0[2]));
  MUXF7 \q0_reg[10]_i_2 
       (.I0(\q0[10]_i_4_n_3 ),
        .I1(\q0[10]_i_5_n_3 ),
        .O(\q0_reg[10]_i_2_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[10]_i_3 
       (.I0(\q0[10]_i_6_n_3 ),
        .I1(\q0_reg[10] ),
        .O(\q0_reg[10]_i_3_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  CARRY4 \q0_reg[11]_i_4 
       (.CI(\q0_reg[19]_i_3_n_3 ),
        .CO({\q0_reg[11]_i_4_n_3 ,\q0_reg[11]_i_4_n_4 ,\q0_reg[11]_i_4_n_5 ,\q0_reg[11]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI(\vg_reg_778_reg[0] [7:4]),
        .O(\zext_ln123_1_reg_730_reg[7]_0 ),
        .S({\q0[11]_i_8_n_3 ,\q0[11]_i_9_n_3 ,\q0[11]_i_10_n_3 ,\q0[11]_i_11_n_3 }));
  CARRY4 \q0_reg[19]_i_3 
       (.CI(1'b0),
        .CO({\q0_reg[19]_i_3_n_3 ,\q0_reg[19]_i_3_n_4 ,\q0_reg[19]_i_3_n_5 ,\q0_reg[19]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI(\vg_reg_778_reg[0] [3:0]),
        .O(\zext_ln123_1_reg_730_reg[3] ),
        .S({\q0[19]_i_5_n_3 ,\q0[19]_i_6_n_3 ,\q0[19]_i_7_n_3 ,\q0[19]_i_8_n_3 }));
  MUXF8 \q0_reg[1]_i_1 
       (.I0(\q0_reg[1]_i_2_n_3 ),
        .I1(\q0_reg[1]_i_3_n_3 ),
        .O(\zext_ln123_1_reg_730_reg[7]_5 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [3]));
  MUXF8 \q0_reg[1]_i_1__0 
       (.I0(\q0_reg[1]_i_2__0_n_3 ),
        .I1(\q0_reg[1]_i_3__0_n_3 ),
        .O(\q0_reg[1]_i_3__0_0 ),
        .S(q1_reg_0[3]));
  MUXF7 \q0_reg[1]_i_2 
       (.I0(\q0[1]_i_4_n_3 ),
        .I1(\q0[1]_i_5_n_3 ),
        .O(\q0_reg[1]_i_2_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[1]_i_2__0 
       (.I0(\q0[1]_i_4__0_n_3 ),
        .I1(\q0[1]_i_5__0_n_3 ),
        .O(\q0_reg[1]_i_2__0_n_3 ),
        .S(q1_reg_0[2]));
  MUXF7 \q0_reg[1]_i_3 
       (.I0(\q0[1]_i_6_n_3 ),
        .I1(\q0[1]_i_7_n_3 ),
        .O(\q0_reg[1]_i_3_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[1]_i_3__0 
       (.I0(\q0[1]_i_6__0_n_3 ),
        .I1(\q0[1]_i_7__0_n_3 ),
        .O(\q0_reg[1]_i_3__0_n_3 ),
        .S(q1_reg_0[2]));
  MUXF8 \q0_reg[2]_i_1 
       (.I0(\q0_reg[2]_i_2_n_3 ),
        .I1(\q0_reg[2]_i_3_n_3 ),
        .O(\zext_ln123_1_reg_730_reg[7]_6 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [3]));
  MUXF8 \q0_reg[2]_i_1__0 
       (.I0(\q0_reg[2]_i_2__0_n_3 ),
        .I1(\q0_reg[2]_i_3__0_n_3 ),
        .O(\q0_reg[2]_i_3__0_0 ),
        .S(q1_reg_0[3]));
  MUXF7 \q0_reg[2]_i_2 
       (.I0(\q0[2]_i_4_n_3 ),
        .I1(\q0[2]_i_5_n_3 ),
        .O(\q0_reg[2]_i_2_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[2]_i_2__0 
       (.I0(\q0[2]_i_4__0_n_3 ),
        .I1(\q0[2]_i_5__0_n_3 ),
        .O(\q0_reg[2]_i_2__0_n_3 ),
        .S(q1_reg_0[2]));
  MUXF7 \q0_reg[2]_i_3 
       (.I0(\q0[2]_i_6_n_3 ),
        .I1(\q0[2]_i_7_n_3 ),
        .O(\q0_reg[2]_i_3_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[2]_i_3__0 
       (.I0(\q0[2]_i_6__0_n_3 ),
        .I1(\q0[2]_i_7__0_n_3 ),
        .O(\q0_reg[2]_i_3__0_n_3 ),
        .S(q1_reg_0[2]));
  MUXF8 \q0_reg[3]_i_1 
       (.I0(\q0_reg[3]_i_2_n_3 ),
        .I1(\q0_reg[3]_i_3_n_3 ),
        .O(\zext_ln123_1_reg_730_reg[7]_7 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [3]));
  MUXF8 \q0_reg[3]_i_1__0 
       (.I0(\q0_reg[3]_i_2__0_n_3 ),
        .I1(\q0_reg[3]_i_3__0_n_3 ),
        .O(\q0_reg[3]_i_3__0_0 ),
        .S(q1_reg_0[3]));
  MUXF7 \q0_reg[3]_i_2 
       (.I0(\q0[3]_i_4_n_3 ),
        .I1(\q0[3]_i_5_n_3 ),
        .O(\q0_reg[3]_i_2_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[3]_i_2__0 
       (.I0(\q0[3]_i_4__0_n_3 ),
        .I1(\q0[3]_i_5__0_n_3 ),
        .O(\q0_reg[3]_i_2__0_n_3 ),
        .S(q1_reg_0[2]));
  MUXF7 \q0_reg[3]_i_3 
       (.I0(\q0[3]_i_6_n_3 ),
        .I1(\q0[3]_i_7_n_3 ),
        .O(\q0_reg[3]_i_3_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[3]_i_3__0 
       (.I0(\q0[3]_i_6__0_n_3 ),
        .I1(\q0[3]_i_7__0_n_3 ),
        .O(\q0_reg[3]_i_3__0_n_3 ),
        .S(q1_reg_0[2]));
  MUXF8 \q0_reg[4]_i_1 
       (.I0(\q0_reg[4]_i_2_n_3 ),
        .I1(\q0_reg[4]_i_3_n_3 ),
        .O(\zext_ln123_1_reg_730_reg[7]_8 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [3]));
  MUXF8 \q0_reg[4]_i_1__0 
       (.I0(\q0_reg[4]_i_2__0_n_3 ),
        .I1(\q0_reg[4]_i_3__0_n_3 ),
        .O(\q0_reg[4]_i_3__0_0 ),
        .S(q1_reg_0[3]));
  MUXF7 \q0_reg[4]_i_2 
       (.I0(\q0[4]_i_4_n_3 ),
        .I1(\q0[4]_i_5_n_3 ),
        .O(\q0_reg[4]_i_2_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[4]_i_2__0 
       (.I0(\q0[4]_i_4__0_n_3 ),
        .I1(\q0[4]_i_5__0_n_3 ),
        .O(\q0_reg[4]_i_2__0_n_3 ),
        .S(q1_reg_0[2]));
  MUXF7 \q0_reg[4]_i_3 
       (.I0(\q0[4]_i_6_n_3 ),
        .I1(\q0[4]_i_7_n_3 ),
        .O(\q0_reg[4]_i_3_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[4]_i_3__0 
       (.I0(\q0[4]_i_6__0_n_3 ),
        .I1(\q0[4]_i_7__0_n_3 ),
        .O(\q0_reg[4]_i_3__0_n_3 ),
        .S(q1_reg_0[2]));
  MUXF8 \q0_reg[5]_i_1 
       (.I0(\q0_reg[5]_i_2_n_3 ),
        .I1(\q0_reg[5]_i_3_n_3 ),
        .O(\zext_ln123_1_reg_730_reg[7]_9 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [3]));
  MUXF8 \q0_reg[5]_i_1__0 
       (.I0(\q0_reg[5]_i_2__0_n_3 ),
        .I1(\q0_reg[5]_i_3__0_n_3 ),
        .O(\q0_reg[5]_i_3__0_0 ),
        .S(q1_reg_0[3]));
  MUXF7 \q0_reg[5]_i_2 
       (.I0(\q0[5]_i_4_n_3 ),
        .I1(\q0[5]_i_5_n_3 ),
        .O(\q0_reg[5]_i_2_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[5]_i_2__0 
       (.I0(\q0[5]_i_4__0_n_3 ),
        .I1(\q0[5]_i_5__0_n_3 ),
        .O(\q0_reg[5]_i_2__0_n_3 ),
        .S(q1_reg_0[2]));
  MUXF7 \q0_reg[5]_i_3 
       (.I0(\q0[5]_i_6_n_3 ),
        .I1(\q0[5]_i_7_n_3 ),
        .O(\q0_reg[5]_i_3_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[5]_i_3__0 
       (.I0(\q0[5]_i_6__0_n_3 ),
        .I1(\q0[5]_i_7__0_n_3 ),
        .O(\q0_reg[5]_i_3__0_n_3 ),
        .S(q1_reg_0[2]));
  MUXF8 \q0_reg[6]_i_1 
       (.I0(\q0_reg[6]_i_2_n_3 ),
        .I1(\q0_reg[6]_i_3_n_3 ),
        .O(\zext_ln123_1_reg_730_reg[7]_10 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [3]));
  MUXF8 \q0_reg[6]_i_1__0 
       (.I0(\q0_reg[6]_i_2__0_n_3 ),
        .I1(\q0_reg[6]_i_3__0_n_3 ),
        .O(\q0_reg[6]_i_3__0_0 ),
        .S(q1_reg_0[3]));
  MUXF7 \q0_reg[6]_i_2 
       (.I0(\q0[6]_i_4_n_3 ),
        .I1(\q0[6]_i_5_n_3 ),
        .O(\q0_reg[6]_i_2_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[6]_i_2__0 
       (.I0(\q0[6]_i_4__0_n_3 ),
        .I1(\q0[6]_i_5__0_n_3 ),
        .O(\q0_reg[6]_i_2__0_n_3 ),
        .S(q1_reg_0[2]));
  MUXF7 \q0_reg[6]_i_3 
       (.I0(\q0[6]_i_6_n_3 ),
        .I1(\q0[6]_i_7_n_3 ),
        .O(\q0_reg[6]_i_3_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[6]_i_3__0 
       (.I0(\q0[6]_i_6__0_n_3 ),
        .I1(\q0[6]_i_7__0_n_3 ),
        .O(\q0_reg[6]_i_3__0_n_3 ),
        .S(q1_reg_0[2]));
  MUXF8 \q0_reg[7]_i_1 
       (.I0(\q0_reg[7]_i_2_n_3 ),
        .I1(\q0_reg[7]_i_3_n_3 ),
        .O(\zext_ln123_1_reg_730_reg[7]_11 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [3]));
  MUXF8 \q0_reg[7]_i_1__0 
       (.I0(\q0_reg[7]_i_2__0_n_3 ),
        .I1(\q0_reg[7]_i_3__0_n_3 ),
        .O(\q0_reg[7]_i_3__0_0 ),
        .S(q1_reg_0[3]));
  MUXF7 \q0_reg[7]_i_2 
       (.I0(\q0[7]_i_4_n_3 ),
        .I1(\q0[7]_i_5_n_3 ),
        .O(\q0_reg[7]_i_2_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[7]_i_2__0 
       (.I0(\q0[7]_i_4__0_n_3 ),
        .I1(\q0[7]_i_5__0_n_3 ),
        .O(\q0_reg[7]_i_2__0_n_3 ),
        .S(q1_reg_0[2]));
  MUXF7 \q0_reg[7]_i_3 
       (.I0(\q0[7]_i_6_n_3 ),
        .I1(\q0[7]_i_7_n_3 ),
        .O(\q0_reg[7]_i_3_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[7]_i_3__0 
       (.I0(\q0[7]_i_6__0_n_3 ),
        .I1(\q0[7]_i_7__0_n_3 ),
        .O(\q0_reg[7]_i_3__0_n_3 ),
        .S(q1_reg_0[2]));
  MUXF8 \q0_reg[8]_i_1 
       (.I0(\q0_reg[8]_i_2_n_3 ),
        .I1(\q0_reg[8]_i_3_n_3 ),
        .O(\zext_ln123_1_reg_730_reg[7]_12 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [3]));
  MUXF8 \q0_reg[8]_i_1__0 
       (.I0(\q0_reg[8]_i_2__0_n_3 ),
        .I1(\q0_reg[8]_i_3__0_n_3 ),
        .O(\q0_reg[8]_i_3__0_0 ),
        .S(q1_reg_0[3]));
  MUXF7 \q0_reg[8]_i_2 
       (.I0(\q0[8]_i_4_n_3 ),
        .I1(\q0[8]_i_5_n_3 ),
        .O(\q0_reg[8]_i_2_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[8]_i_2__0 
       (.I0(\q0[8]_i_4__0_n_3 ),
        .I1(\q0[8]_i_5__0_n_3 ),
        .O(\q0_reg[8]_i_2__0_n_3 ),
        .S(q1_reg_0[2]));
  MUXF7 \q0_reg[8]_i_3 
       (.I0(\q0[8]_i_6_n_3 ),
        .I1(\q0[8]_i_7_n_3 ),
        .O(\q0_reg[8]_i_3_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[8]_i_3__0 
       (.I0(\q0_reg[8] ),
        .I1(\q0[8]_i_7__0_n_3 ),
        .O(\q0_reg[8]_i_3__0_n_3 ),
        .S(q1_reg_0[2]));
  MUXF8 \q0_reg[9]_i_1 
       (.I0(\q0_reg[9]_i_2_n_3 ),
        .I1(\q0_reg[9]_i_3_n_3 ),
        .O(\zext_ln123_1_reg_730_reg[7]_13 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [3]));
  MUXF7 \q0_reg[9]_i_2 
       (.I0(\q0[9]_i_4_n_3 ),
        .I1(\q0[9]_i_5_n_3 ),
        .O(\q0_reg[9]_i_2_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  MUXF7 \q0_reg[9]_i_3 
       (.I0(\q0[9]_i_6_n_3 ),
        .I1(\q0[9]_i_7_n_3 ),
        .O(\q0_reg[9]_i_3_n_3 ),
        .S(\zext_ln123_1_reg_730_reg[7]_0 [2]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "xf_cv_icvSaturate8u_cv_U/colordetect_accel_bgr2hsv_9_2160_3840_1_s_xf_cv_icvSaturate8u_cv_rom_U/q1" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h000F000E000D000C000B000A0009000800070006000500040003000200010000),
    .INIT_11(256'h001F001E001D001C001B001A0019001800170016001500140013001200110010),
    .INIT_12(256'h002F002E002D002C002B002A0029002800270026002500240023002200210020),
    .INIT_13(256'h003F003E003D003C003B003A0039003800370036003500340033003200310030),
    .INIT_14(256'h004F004E004D004C004B004A0049004800470046004500440043004200410040),
    .INIT_15(256'h005F005E005D005C005B005A0059005800570056005500540053005200510050),
    .INIT_16(256'h006F006E006D006C006B006A0069006800670066006500640063006200610060),
    .INIT_17(256'h007F007E007D007C007B007A0079007800770076007500740073007200710070),
    .INIT_18(256'h008F008E008D008C008B008A0089008800870086008500840083008200810080),
    .INIT_19(256'h009F009E009D009C009B009A0099009800970096009500940093009200910090),
    .INIT_1A(256'h00AF00AE00AD00AC00AB00AA00A900A800A700A600A500A400A300A200A100A0),
    .INIT_1B(256'h00BF00BE00BD00BC00BB00BA00B900B800B700B600B500B400B300B200B100B0),
    .INIT_1C(256'h00CF00CE00CD00CC00CB00CA00C900C800C700C600C500C400C300C200C100C0),
    .INIT_1D(256'h00DF00DE00DD00DC00DB00DA00D900D800D700D600D500D400D300D200D100D0),
    .INIT_1E(256'h00EF00EE00ED00EC00EB00EA00E900E800E700E600E500E400E300E200E100E0),
    .INIT_1F(256'h00FF00FE00FD00FC00FB00FA00F900F800F700F600F500F400F300F200F100F0),
    .INIT_20(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_21(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_22(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_23(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_24(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_25(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_26(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_27(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_28(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_29(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_2A(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_2B(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_2C(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_2D(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_2E(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_2F(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_30(256'h00000000000000000000000000000000000000000000000000000000000000FF),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    q1_reg
       (.ADDRARDADDR({sel,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,q1_reg_i_6_n_6,ret_13_fu_359_p2,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_q1_reg_DOADO_UNCONNECTED[15:8],\^q1_reg }),
        .DOBDO({NLW_q1_reg_DOBDO_UNCONNECTED[15:8],xf_cv_icvSaturate8u_cv_load_3_reg_761}),
        .DOPADOP(NLW_q1_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_q1_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(xf_cv_icvSaturate8u_cv_ce0),
        .ENBWREN(xf_cv_icvSaturate8u_cv_ce0),
        .REGCEAREGCE(1'b0),
        .REGCEB(xf_cv_icvSaturate8u_cv_load_3_reg_7610),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    q1_reg_i_1
       (.I0(ap_enable_reg_pp0_iter4),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .O(xf_cv_icvSaturate8u_cv_ce0));
  LUT2 #(
    .INIT(4'h9)) 
    q1_reg_i_10
       (.I0(q1_reg_7[7]),
        .I1(O184[7]),
        .O(q1_reg_i_10_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q1_reg_i_11
       (.I0(q1_reg_7[6]),
        .I1(O184[6]),
        .O(q1_reg_i_11_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q1_reg_i_12
       (.I0(q1_reg_7[5]),
        .I1(O184[5]),
        .O(q1_reg_i_12_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q1_reg_i_13
       (.I0(q1_reg_7[4]),
        .I1(O184[4]),
        .O(q1_reg_i_13_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q1_reg_i_14
       (.I0(q1_reg_7[3]),
        .I1(O184[3]),
        .O(q1_reg_i_14_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q1_reg_i_15
       (.I0(q1_reg_7[2]),
        .I1(O184[2]),
        .O(q1_reg_i_15_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q1_reg_i_16
       (.I0(q1_reg_7[1]),
        .I1(O184[1]),
        .O(q1_reg_i_16_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q1_reg_i_17
       (.I0(q1_reg_7[0]),
        .I1(O184[0]),
        .O(q1_reg_i_17_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q1_reg_i_18
       (.I0(D[7]),
        .I1(q1_reg_7[7]),
        .O(q1_reg_i_18_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q1_reg_i_19
       (.I0(D[6]),
        .I1(q1_reg_7[6]),
        .O(q1_reg_i_19_n_3));
  LUT3 #(
    .INIT(8'h04)) 
    q1_reg_i_2
       (.I0(icmp_ln128_reg_673_pp0_iter4_reg),
        .I1(ap_enable_reg_pp0_iter5),
        .I2(ap_enable_reg_pp0_iter1_reg),
        .O(xf_cv_icvSaturate8u_cv_load_3_reg_7610));
  LUT2 #(
    .INIT(4'h9)) 
    q1_reg_i_20
       (.I0(D[5]),
        .I1(q1_reg_7[5]),
        .O(q1_reg_i_20_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q1_reg_i_21
       (.I0(D[4]),
        .I1(q1_reg_7[4]),
        .O(q1_reg_i_21_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q1_reg_i_22
       (.I0(D[3]),
        .I1(q1_reg_7[3]),
        .O(q1_reg_i_22_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q1_reg_i_23
       (.I0(D[2]),
        .I1(q1_reg_7[2]),
        .O(q1_reg_i_23_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q1_reg_i_24
       (.I0(D[1]),
        .I1(q1_reg_7[1]),
        .O(q1_reg_i_24_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q1_reg_i_25
       (.I0(D[0]),
        .I1(q1_reg_7[0]),
        .O(q1_reg_i_25_n_3));
  CARRY4 q1_reg_i_3
       (.CI(q1_reg_i_4_n_3),
        .CO({NLW_q1_reg_i_3_CO_UNCONNECTED[3:1],q1_reg_i_3_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,q1_reg_i_9_n_3}),
        .O({NLW_q1_reg_i_3_O_UNCONNECTED[3:2],sel[9:8]}),
        .S({1'b0,1'b0,1'b1,O184[8]}));
  CARRY4 q1_reg_i_4
       (.CI(q1_reg_i_5_n_3),
        .CO({q1_reg_i_4_n_3,q1_reg_i_4_n_4,q1_reg_i_4_n_5,q1_reg_i_4_n_6}),
        .CYINIT(1'b0),
        .DI(q1_reg_7[7:4]),
        .O(sel[7:4]),
        .S({q1_reg_i_10_n_3,q1_reg_i_11_n_3,q1_reg_i_12_n_3,q1_reg_i_13_n_3}));
  CARRY4 q1_reg_i_5
       (.CI(1'b0),
        .CO({q1_reg_i_5_n_3,q1_reg_i_5_n_4,q1_reg_i_5_n_5,q1_reg_i_5_n_6}),
        .CYINIT(1'b1),
        .DI(q1_reg_7[3:0]),
        .O(sel[3:0]),
        .S({q1_reg_i_14_n_3,q1_reg_i_15_n_3,q1_reg_i_16_n_3,q1_reg_i_17_n_3}));
  CARRY4 q1_reg_i_6
       (.CI(q1_reg_i_7_n_3),
        .CO({NLW_q1_reg_i_6_CO_UNCONNECTED[3:1],q1_reg_i_6_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_q1_reg_i_6_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 q1_reg_i_7
       (.CI(q1_reg_i_8_n_3),
        .CO({q1_reg_i_7_n_3,q1_reg_i_7_n_4,q1_reg_i_7_n_5,q1_reg_i_7_n_6}),
        .CYINIT(1'b0),
        .DI(D[7:4]),
        .O(ret_13_fu_359_p2[7:4]),
        .S({q1_reg_i_18_n_3,q1_reg_i_19_n_3,q1_reg_i_20_n_3,q1_reg_i_21_n_3}));
  CARRY4 q1_reg_i_8
       (.CI(1'b0),
        .CO({q1_reg_i_8_n_3,q1_reg_i_8_n_4,q1_reg_i_8_n_5,q1_reg_i_8_n_6}),
        .CYINIT(1'b1),
        .DI(D[3:0]),
        .O(ret_13_fu_359_p2[3:0]),
        .S({q1_reg_i_22_n_3,q1_reg_i_23_n_3,q1_reg_i_24_n_3,q1_reg_i_25_n_3}));
  LUT1 #(
    .INIT(2'h1)) 
    q1_reg_i_9
       (.I0(O184[8]),
        .O(q1_reg_i_9_n_3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "xf_cv_icvSaturate8u_cv_U/colordetect_accel_bgr2hsv_9_2160_3840_1_s_xf_cv_icvSaturate8u_cv_rom_U/q2" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h000F000E000D000C000B000A0009000800070006000500040003000200010000),
    .INIT_11(256'h001F001E001D001C001B001A0019001800170016001500140013001200110010),
    .INIT_12(256'h002F002E002D002C002B002A0029002800270026002500240023002200210020),
    .INIT_13(256'h003F003E003D003C003B003A0039003800370036003500340033003200310030),
    .INIT_14(256'h004F004E004D004C004B004A0049004800470046004500440043004200410040),
    .INIT_15(256'h005F005E005D005C005B005A0059005800570056005500540053005200510050),
    .INIT_16(256'h006F006E006D006C006B006A0069006800670066006500640063006200610060),
    .INIT_17(256'h007F007E007D007C007B007A0079007800770076007500740073007200710070),
    .INIT_18(256'h008F008E008D008C008B008A0089008800870086008500840083008200810080),
    .INIT_19(256'h009F009E009D009C009B009A0099009800970096009500940093009200910090),
    .INIT_1A(256'h00AF00AE00AD00AC00AB00AA00A900A800A700A600A500A400A300A200A100A0),
    .INIT_1B(256'h00BF00BE00BD00BC00BB00BA00B900B800B700B600B500B400B300B200B100B0),
    .INIT_1C(256'h00CF00CE00CD00CC00CB00CA00C900C800C700C600C500C400C300C200C100C0),
    .INIT_1D(256'h00DF00DE00DD00DC00DB00DA00D900D800D700D600D500D400D300D200D100D0),
    .INIT_1E(256'h00EF00EE00ED00EC00EB00EA00E900E800E700E600E500E400E300E200E100E0),
    .INIT_1F(256'h00FF00FE00FD00FC00FB00FA00F900F800F700F600F500F400F300F200F100F0),
    .INIT_20(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_21(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_22(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_23(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_24(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_25(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_26(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_27(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_28(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_29(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_2A(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_2B(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_2C(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_2D(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_2E(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_2F(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_30(256'h00000000000000000000000000000000000000000000000000000000000000FF),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    q2_reg
       (.ADDRARDADDR({1'b0,q2_reg_i_3_n_6,ret_12_fu_299_p2,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,q2_reg_i_6_n_6,q2_reg_i_7_n_7,q2_reg_i_7_n_8,q2_reg_i_7_n_9,q2_reg_i_7_n_10,q2_reg_i_8_n_7,q2_reg_i_8_n_8,q2_reg_i_8_n_9,q2_reg_i_8_n_10,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_q2_reg_DOADO_UNCONNECTED[15:8],xf_cv_icvSaturate8u_cv_load_2_reg_725}),
        .DOBDO({NLW_q2_reg_DOBDO_UNCONNECTED[15:8],I238}),
        .DOPADOP(NLW_q2_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_q2_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(xf_cv_icvSaturate8u_cv_ce2),
        .ENBWREN(xf_cv_icvSaturate8u_cv_ce2),
        .REGCEAREGCE(xf_cv_icvSaturate8u_cv_load_2_reg_7250),
        .REGCEB(xf_cv_icvSaturate8u_cv_load_2_reg_7250),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    q2_reg_i_1
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .O(xf_cv_icvSaturate8u_cv_ce2));
  LUT2 #(
    .INIT(4'h9)) 
    q2_reg_i_10
       (.I0(q2_reg_0[6]),
        .I1(q2_reg_1[6]),
        .O(q2_reg_i_10_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q2_reg_i_11
       (.I0(q2_reg_0[5]),
        .I1(q2_reg_1[5]),
        .O(q2_reg_i_11_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q2_reg_i_12
       (.I0(q2_reg_0[4]),
        .I1(q2_reg_1[4]),
        .O(q2_reg_i_12_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q2_reg_i_13
       (.I0(q2_reg_0[3]),
        .I1(q2_reg_1[3]),
        .O(q2_reg_i_13_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q2_reg_i_14
       (.I0(q2_reg_0[2]),
        .I1(q2_reg_1[2]),
        .O(q2_reg_i_14_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q2_reg_i_15
       (.I0(q2_reg_0[1]),
        .I1(q2_reg_1[1]),
        .O(q2_reg_i_15_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q2_reg_i_16
       (.I0(q2_reg_0[0]),
        .I1(q2_reg_1[0]),
        .O(q2_reg_i_16_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q2_reg_i_17
       (.I0(q2_reg_0[7]),
        .I1(q2_reg_1[7]),
        .O(q2_reg_i_17_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q2_reg_i_18
       (.I0(q2_reg_0[6]),
        .I1(q2_reg_1[6]),
        .O(q2_reg_i_18_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q2_reg_i_19
       (.I0(q2_reg_0[5]),
        .I1(q2_reg_1[5]),
        .O(q2_reg_i_19_n_3));
  LUT3 #(
    .INIT(8'h04)) 
    q2_reg_i_2
       (.I0(icmp_ln128_reg_673_pp0_iter2_reg),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(ap_enable_reg_pp0_iter1_reg),
        .O(xf_cv_icvSaturate8u_cv_load_2_reg_7250));
  LUT2 #(
    .INIT(4'h9)) 
    q2_reg_i_20
       (.I0(q2_reg_0[4]),
        .I1(q2_reg_1[4]),
        .O(q2_reg_i_20_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q2_reg_i_21
       (.I0(q2_reg_0[3]),
        .I1(q2_reg_1[3]),
        .O(q2_reg_i_21_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q2_reg_i_22
       (.I0(q2_reg_0[2]),
        .I1(q2_reg_1[2]),
        .O(q2_reg_i_22_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q2_reg_i_23
       (.I0(q2_reg_0[1]),
        .I1(q2_reg_1[1]),
        .O(q2_reg_i_23_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    q2_reg_i_24
       (.I0(q2_reg_0[0]),
        .I1(q2_reg_1[0]),
        .O(q2_reg_i_24_n_3));
  CARRY4 q2_reg_i_3
       (.CI(q2_reg_i_4_n_3),
        .CO({NLW_q2_reg_i_3_CO_UNCONNECTED[3:1],q2_reg_i_3_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_q2_reg_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 q2_reg_i_4
       (.CI(q2_reg_i_5_n_3),
        .CO({q2_reg_i_4_n_3,q2_reg_i_4_n_4,q2_reg_i_4_n_5,q2_reg_i_4_n_6}),
        .CYINIT(1'b0),
        .DI(q2_reg_0[7:4]),
        .O(ret_12_fu_299_p2[7:4]),
        .S({q2_reg_i_9_n_3,q2_reg_i_10_n_3,q2_reg_i_11_n_3,q2_reg_i_12_n_3}));
  CARRY4 q2_reg_i_5
       (.CI(1'b0),
        .CO({q2_reg_i_5_n_3,q2_reg_i_5_n_4,q2_reg_i_5_n_5,q2_reg_i_5_n_6}),
        .CYINIT(1'b1),
        .DI(q2_reg_0[3:0]),
        .O(ret_12_fu_299_p2[3:0]),
        .S({q2_reg_i_13_n_3,q2_reg_i_14_n_3,q2_reg_i_15_n_3,q2_reg_i_16_n_3}));
  CARRY4 q2_reg_i_6
       (.CI(q2_reg_i_7_n_3),
        .CO({NLW_q2_reg_i_6_CO_UNCONNECTED[3:1],q2_reg_i_6_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_q2_reg_i_6_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 q2_reg_i_7
       (.CI(q2_reg_i_8_n_3),
        .CO({q2_reg_i_7_n_3,q2_reg_i_7_n_4,q2_reg_i_7_n_5,q2_reg_i_7_n_6}),
        .CYINIT(1'b0),
        .DI(q2_reg_1[7:4]),
        .O({q2_reg_i_7_n_7,q2_reg_i_7_n_8,q2_reg_i_7_n_9,q2_reg_i_7_n_10}),
        .S({q2_reg_i_17_n_3,q2_reg_i_18_n_3,q2_reg_i_19_n_3,q2_reg_i_20_n_3}));
  CARRY4 q2_reg_i_8
       (.CI(1'b0),
        .CO({q2_reg_i_8_n_3,q2_reg_i_8_n_4,q2_reg_i_8_n_5,q2_reg_i_8_n_6}),
        .CYINIT(1'b1),
        .DI(q2_reg_1[3:0]),
        .O({q2_reg_i_8_n_7,q2_reg_i_8_n_8,q2_reg_i_8_n_9,q2_reg_i_8_n_10}),
        .S({q2_reg_i_21_n_3,q2_reg_i_22_n_3,q2_reg_i_23_n_3,q2_reg_i_24_n_3}));
  LUT2 #(
    .INIT(4'h9)) 
    q2_reg_i_9
       (.I0(q2_reg_0[7]),
        .I1(q2_reg_1[7]),
        .O(q2_reg_i_9_n_3));
  LUT2 #(
    .INIT(4'h9)) 
    \vmin_V_reg_745[3]_i_2 
       (.I0(\vmin_V_reg_745_reg[7] [3]),
        .I1(xf_cv_icvSaturate8u_cv_load_2_reg_725[3]),
        .O(\vmin_V_reg_745[3]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vmin_V_reg_745[3]_i_3 
       (.I0(\vmin_V_reg_745_reg[7] [2]),
        .I1(xf_cv_icvSaturate8u_cv_load_2_reg_725[2]),
        .O(\vmin_V_reg_745[3]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vmin_V_reg_745[3]_i_4 
       (.I0(\vmin_V_reg_745_reg[7] [1]),
        .I1(xf_cv_icvSaturate8u_cv_load_2_reg_725[1]),
        .O(\vmin_V_reg_745[3]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vmin_V_reg_745[3]_i_5 
       (.I0(\vmin_V_reg_745_reg[7] [0]),
        .I1(xf_cv_icvSaturate8u_cv_load_2_reg_725[0]),
        .O(\vmin_V_reg_745[3]_i_5_n_3 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vmin_V_reg_745[7]_i_3 
       (.I0(\vmin_V_reg_745_reg[7] [7]),
        .I1(xf_cv_icvSaturate8u_cv_load_2_reg_725[7]),
        .O(\vmin_V_reg_745[7]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vmin_V_reg_745[7]_i_4 
       (.I0(\vmin_V_reg_745_reg[7] [6]),
        .I1(xf_cv_icvSaturate8u_cv_load_2_reg_725[6]),
        .O(\vmin_V_reg_745[7]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vmin_V_reg_745[7]_i_5 
       (.I0(\vmin_V_reg_745_reg[7] [5]),
        .I1(xf_cv_icvSaturate8u_cv_load_2_reg_725[5]),
        .O(\vmin_V_reg_745[7]_i_5_n_3 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vmin_V_reg_745[7]_i_6 
       (.I0(\vmin_V_reg_745_reg[7] [4]),
        .I1(xf_cv_icvSaturate8u_cv_load_2_reg_725[4]),
        .O(\vmin_V_reg_745[7]_i_6_n_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \vmin_V_reg_745_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\vmin_V_reg_745_reg[3]_i_1_n_3 ,\vmin_V_reg_745_reg[3]_i_1_n_4 ,\vmin_V_reg_745_reg[3]_i_1_n_5 ,\vmin_V_reg_745_reg[3]_i_1_n_6 }),
        .CYINIT(1'b1),
        .DI(\vmin_V_reg_745_reg[7] [3:0]),
        .O(D[3:0]),
        .S({\vmin_V_reg_745[3]_i_2_n_3 ,\vmin_V_reg_745[3]_i_3_n_3 ,\vmin_V_reg_745[3]_i_4_n_3 ,\vmin_V_reg_745[3]_i_5_n_3 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \vmin_V_reg_745_reg[7]_i_2 
       (.CI(\vmin_V_reg_745_reg[3]_i_1_n_3 ),
        .CO({\NLW_vmin_V_reg_745_reg[7]_i_2_CO_UNCONNECTED [3],\vmin_V_reg_745_reg[7]_i_2_n_4 ,\vmin_V_reg_745_reg[7]_i_2_n_5 ,\vmin_V_reg_745_reg[7]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\vmin_V_reg_745_reg[7] [6:4]}),
        .O(D[7:4]),
        .S({\vmin_V_reg_745[7]_i_3_n_3 ,\vmin_V_reg_745[7]_i_4_n_3 ,\vmin_V_reg_745[7]_i_5_n_3 ,\vmin_V_reg_745[7]_i_6_n_3 }));
  CARRY4 \vr_reg_772_reg[0]_i_2 
       (.CI(\q0_reg[11]_i_4_n_3 ),
        .CO({\NLW_vr_reg_772_reg[0]_i_2_CO_UNCONNECTED [3:1],void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_address0__0}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_vr_reg_772_reg[0]_i_2_O_UNCONNECTED [3:2],\zext_ln123_1_reg_730_reg[8] }),
        .S({1'b0,1'b0,1'b1,\vg_reg_778_reg[0] [8]}));
  LUT2 #(
    .INIT(4'h6)) 
    \zext_ln123_1_reg_730[3]_i_2 
       (.I0(I238[3]),
        .I1(\zext_ln123_1_reg_730_reg[7]_17 [3]),
        .O(\zext_ln123_1_reg_730[3]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \zext_ln123_1_reg_730[3]_i_3 
       (.I0(I238[2]),
        .I1(\zext_ln123_1_reg_730_reg[7]_17 [2]),
        .O(\zext_ln123_1_reg_730[3]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \zext_ln123_1_reg_730[3]_i_4 
       (.I0(I238[1]),
        .I1(\zext_ln123_1_reg_730_reg[7]_17 [1]),
        .O(\zext_ln123_1_reg_730[3]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \zext_ln123_1_reg_730[3]_i_5 
       (.I0(I238[0]),
        .I1(\zext_ln123_1_reg_730_reg[7]_17 [0]),
        .O(\zext_ln123_1_reg_730[3]_i_5_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \zext_ln123_1_reg_730[7]_i_2 
       (.I0(I238[7]),
        .I1(\zext_ln123_1_reg_730_reg[7]_17 [7]),
        .O(\zext_ln123_1_reg_730[7]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \zext_ln123_1_reg_730[7]_i_3 
       (.I0(I238[6]),
        .I1(\zext_ln123_1_reg_730_reg[7]_17 [6]),
        .O(\zext_ln123_1_reg_730[7]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \zext_ln123_1_reg_730[7]_i_4 
       (.I0(I238[5]),
        .I1(\zext_ln123_1_reg_730_reg[7]_17 [5]),
        .O(\zext_ln123_1_reg_730[7]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \zext_ln123_1_reg_730[7]_i_5 
       (.I0(I238[4]),
        .I1(\zext_ln123_1_reg_730_reg[7]_17 [4]),
        .O(\zext_ln123_1_reg_730[7]_i_5_n_3 ));
  CARRY4 \zext_ln123_1_reg_730_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\zext_ln123_1_reg_730_reg[3]_i_1_n_3 ,\zext_ln123_1_reg_730_reg[3]_i_1_n_4 ,\zext_ln123_1_reg_730_reg[3]_i_1_n_5 ,\zext_ln123_1_reg_730_reg[3]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(I238[3:0]),
        .O(O184[3:0]),
        .S({\zext_ln123_1_reg_730[3]_i_2_n_3 ,\zext_ln123_1_reg_730[3]_i_3_n_3 ,\zext_ln123_1_reg_730[3]_i_4_n_3 ,\zext_ln123_1_reg_730[3]_i_5_n_3 }));
  CARRY4 \zext_ln123_1_reg_730_reg[7]_i_1 
       (.CI(\zext_ln123_1_reg_730_reg[3]_i_1_n_3 ),
        .CO({\zext_ln123_1_reg_730_reg[7]_i_1_n_3 ,\zext_ln123_1_reg_730_reg[7]_i_1_n_4 ,\zext_ln123_1_reg_730_reg[7]_i_1_n_5 ,\zext_ln123_1_reg_730_reg[7]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(I238[7:4]),
        .O(O184[7:4]),
        .S({\zext_ln123_1_reg_730[7]_i_2_n_3 ,\zext_ln123_1_reg_730[7]_i_3_n_3 ,\zext_ln123_1_reg_730[7]_i_4_n_3 ,\zext_ln123_1_reg_730[7]_i_5_n_3 }));
  CARRY4 \zext_ln123_1_reg_730_reg[8]_i_1 
       (.CI(\zext_ln123_1_reg_730_reg[7]_i_1_n_3 ),
        .CO({\NLW_zext_ln123_1_reg_730_reg[8]_i_1_CO_UNCONNECTED [3:1],O184[8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_zext_ln123_1_reg_730_reg[8]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_control_s_axi
   (ap_rst_n_inv,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_control_RVALID,
    \FSM_onehot_wstate_reg[1]_0 ,
    \FSM_onehot_wstate_reg[2]_0 ,
    s_axi_control_BVALID,
    Q,
    \int_cols_reg[31]_0 ,
    interrupt,
    Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start,
    int_ap_start_reg_0,
    s_axi_control_RDATA,
    ap_clk,
    ap_idle,
    shiftReg_ce,
    s_axi_control_ARVALID,
    s_axi_control_RREADY,
    s_axi_control_AWVALID,
    s_axi_control_WVALID,
    s_axi_control_BREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARADDR,
    ap_rst_n,
    \int_isr_reg[0]_0 ,
    start_once_reg,
    start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n,
    start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n,
    s_axi_control_AWADDR);
  output ap_rst_n_inv;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_control_RVALID;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output s_axi_control_BVALID;
  output [31:0]Q;
  output [31:0]\int_cols_reg[31]_0 ;
  output interrupt;
  output Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start;
  output int_ap_start_reg_0;
  output [31:0]s_axi_control_RDATA;
  input ap_clk;
  input ap_idle;
  input shiftReg_ce;
  input s_axi_control_ARVALID;
  input s_axi_control_RREADY;
  input s_axi_control_AWVALID;
  input s_axi_control_WVALID;
  input s_axi_control_BREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input [4:0]s_axi_control_ARADDR;
  input ap_rst_n;
  input \int_isr_reg[0]_0 ;
  input start_once_reg;
  input start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n;
  input start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n;
  input [4:0]s_axi_control_AWADDR;

  wire Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start;
  wire \FSM_onehot_rstate[1]_i_1_n_3 ;
  wire \FSM_onehot_rstate[2]_i_1_n_3 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_2_n_3 ;
  wire \FSM_onehot_wstate[2]_i_1_n_3 ;
  wire \FSM_onehot_wstate[3]_i_1_n_3 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [31:0]Q;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ar_hs;
  wire [7:1]data0;
  wire int_ap_done_i_1_n_3;
  wire int_ap_done_i_2_n_3;
  wire int_ap_start3_out;
  wire int_ap_start_i_1_n_3;
  wire int_ap_start_reg_0;
  wire int_auto_restart_i_1_n_3;
  wire [31:0]int_cols0;
  wire \int_cols[31]_i_1_n_3 ;
  wire [31:0]\int_cols_reg[31]_0 ;
  wire int_gie_i_1_n_3;
  wire int_gie_i_2_n_3;
  wire int_gie_reg_n_3;
  wire \int_ier[0]_i_1_n_3 ;
  wire \int_ier[1]_i_1_n_3 ;
  wire \int_ier[1]_i_2_n_3 ;
  wire \int_ier_reg_n_3_[0] ;
  wire int_isr6_out;
  wire \int_isr[0]_i_1_n_3 ;
  wire \int_isr[1]_i_1_n_3 ;
  wire \int_isr_reg[0]_0 ;
  wire \int_isr_reg_n_3_[0] ;
  wire [31:0]int_rows0;
  wire \int_rows[31]_i_1_n_3 ;
  wire \int_rows[31]_i_3_n_3 ;
  wire interrupt;
  wire p_0_in;
  wire p_1_in;
  wire [31:0]rdata;
  wire \rdata[0]_i_2_n_3 ;
  wire \rdata[0]_i_3_n_3 ;
  wire \rdata[1]_i_2_n_3 ;
  wire \rdata[1]_i_3_n_3 ;
  wire \rdata[1]_i_4_n_3 ;
  wire \rdata[2]_i_2_n_3 ;
  wire \rdata[31]_i_3_n_3 ;
  wire \rdata[3]_i_2_n_3 ;
  wire \rdata[7]_i_2_n_3 ;
  wire \rdata[7]_i_3_n_3 ;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [4:0]s_axi_control_AWADDR;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire shiftReg_ce;
  wire start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n;
  wire start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n;
  wire start_once_reg;
  wire waddr;
  wire \waddr_reg_n_3_[0] ;
  wire \waddr_reg_n_3_[1] ;
  wire \waddr_reg_n_3_[2] ;
  wire \waddr_reg_n_3_[3] ;
  wire \waddr_reg_n_3_[4] ;

  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8BFB)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_control_RREADY),
        .I1(s_axi_control_RVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_control_ARVALID),
        .O(\FSM_onehot_rstate[1]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .I2(s_axi_control_RREADY),
        .I3(s_axi_control_RVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_3 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_3 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_3 ),
        .Q(s_axi_control_RVALID),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hAE0CAE3F)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(s_axi_control_BREADY),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_control_AWVALID),
        .I3(s_axi_control_BVALID),
        .I4(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[1]_i_2_n_3 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_3 ));
  LUT4 #(
    .INIT(16'h88F8)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_BVALID),
        .I3(s_axi_control_BREADY),
        .O(\FSM_onehot_wstate[3]_i_1_n_3 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_3 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_3 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_3 ),
        .Q(s_axi_control_BVALID),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFF7F5555)) 
    int_ap_done_i_1
       (.I0(\int_isr_reg[0]_0 ),
        .I1(s_axi_control_ARVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(int_ap_done_i_2_n_3),
        .I4(data0[1]),
        .O(int_ap_done_i_1_n_3));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    int_ap_done_i_2
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[4]),
        .O(int_ap_done_i_2_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_done_i_1_n_3),
        .Q(data0[1]),
        .R(ap_rst_n_inv));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(data0[2]),
        .R(ap_rst_n_inv));
  FDRE int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(shiftReg_ce),
        .Q(data0[3]),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(data0[7]),
        .I1(shiftReg_ce),
        .I2(int_ap_start3_out),
        .I3(Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start),
        .O(int_ap_start_i_1_n_3));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    int_ap_start_i_2
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_3_[3] ),
        .I3(\int_ier[1]_i_2_n_3 ),
        .O(int_ap_start3_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_3),
        .Q(Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(\int_ier[1]_i_2_n_3 ),
        .I2(\waddr_reg_n_3_[3] ),
        .I3(s_axi_control_WSTRB[0]),
        .I4(data0[7]),
        .O(int_auto_restart_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_3),
        .Q(data0[7]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_cols_reg[31]_0 [0]),
        .O(int_cols0[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_cols_reg[31]_0 [10]),
        .O(int_cols0[10]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_cols_reg[31]_0 [11]),
        .O(int_cols0[11]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_cols_reg[31]_0 [12]),
        .O(int_cols0[12]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_cols_reg[31]_0 [13]),
        .O(int_cols0[13]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_cols_reg[31]_0 [14]),
        .O(int_cols0[14]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_cols_reg[31]_0 [15]),
        .O(int_cols0[15]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_cols_reg[31]_0 [16]),
        .O(int_cols0[16]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_cols_reg[31]_0 [17]),
        .O(int_cols0[17]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_cols_reg[31]_0 [18]),
        .O(int_cols0[18]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_cols_reg[31]_0 [19]),
        .O(int_cols0[19]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_cols_reg[31]_0 [1]),
        .O(int_cols0[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_cols_reg[31]_0 [20]),
        .O(int_cols0[20]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_cols_reg[31]_0 [21]),
        .O(int_cols0[21]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_cols_reg[31]_0 [22]),
        .O(int_cols0[22]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_cols_reg[31]_0 [23]),
        .O(int_cols0[23]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_cols_reg[31]_0 [24]),
        .O(int_cols0[24]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_cols_reg[31]_0 [25]),
        .O(int_cols0[25]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_cols_reg[31]_0 [26]),
        .O(int_cols0[26]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_cols_reg[31]_0 [27]),
        .O(int_cols0[27]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_cols_reg[31]_0 [28]),
        .O(int_cols0[28]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_cols_reg[31]_0 [29]),
        .O(int_cols0[29]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_cols_reg[31]_0 [2]),
        .O(int_cols0[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_cols_reg[31]_0 [30]),
        .O(int_cols0[30]));
  LUT2 #(
    .INIT(4'h2)) 
    \int_cols[31]_i_1 
       (.I0(\waddr_reg_n_3_[3] ),
        .I1(\int_rows[31]_i_3_n_3 ),
        .O(\int_cols[31]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_cols_reg[31]_0 [31]),
        .O(int_cols0[31]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_cols_reg[31]_0 [3]),
        .O(int_cols0[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_cols_reg[31]_0 [4]),
        .O(int_cols0[4]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_cols_reg[31]_0 [5]),
        .O(int_cols0[5]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_cols_reg[31]_0 [6]),
        .O(int_cols0[6]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_cols_reg[31]_0 [7]),
        .O(int_cols0[7]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_cols_reg[31]_0 [8]),
        .O(int_cols0[8]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_cols_reg[31]_0 [9]),
        .O(int_cols0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[0] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[0]),
        .Q(\int_cols_reg[31]_0 [0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[10] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[10]),
        .Q(\int_cols_reg[31]_0 [10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[11] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[11]),
        .Q(\int_cols_reg[31]_0 [11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[12] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[12]),
        .Q(\int_cols_reg[31]_0 [12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[13] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[13]),
        .Q(\int_cols_reg[31]_0 [13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[14] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[14]),
        .Q(\int_cols_reg[31]_0 [14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[15] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[15]),
        .Q(\int_cols_reg[31]_0 [15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[16] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[16]),
        .Q(\int_cols_reg[31]_0 [16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[17] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[17]),
        .Q(\int_cols_reg[31]_0 [17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[18] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[18]),
        .Q(\int_cols_reg[31]_0 [18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[19] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[19]),
        .Q(\int_cols_reg[31]_0 [19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[1] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[1]),
        .Q(\int_cols_reg[31]_0 [1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[20] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[20]),
        .Q(\int_cols_reg[31]_0 [20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[21] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[21]),
        .Q(\int_cols_reg[31]_0 [21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[22] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[22]),
        .Q(\int_cols_reg[31]_0 [22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[23] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[23]),
        .Q(\int_cols_reg[31]_0 [23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[24] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[24]),
        .Q(\int_cols_reg[31]_0 [24]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[25] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[25]),
        .Q(\int_cols_reg[31]_0 [25]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[26] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[26]),
        .Q(\int_cols_reg[31]_0 [26]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[27] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[27]),
        .Q(\int_cols_reg[31]_0 [27]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[28] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[28]),
        .Q(\int_cols_reg[31]_0 [28]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[29] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[29]),
        .Q(\int_cols_reg[31]_0 [29]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[2] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[2]),
        .Q(\int_cols_reg[31]_0 [2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[30] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[30]),
        .Q(\int_cols_reg[31]_0 [30]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[31] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[31]),
        .Q(\int_cols_reg[31]_0 [31]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[3] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[3]),
        .Q(\int_cols_reg[31]_0 [3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[4] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[4]),
        .Q(\int_cols_reg[31]_0 [4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[5] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[5]),
        .Q(\int_cols_reg[31]_0 [5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[6] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[6]),
        .Q(\int_cols_reg[31]_0 [6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[7] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[7]),
        .Q(\int_cols_reg[31]_0 [7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[8] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[8]),
        .Q(\int_cols_reg[31]_0 [8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_reg[9] 
       (.C(ap_clk),
        .CE(\int_cols[31]_i_1_n_3 ),
        .D(int_cols0[9]),
        .Q(\int_cols_reg[31]_0 [9]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(\waddr_reg_n_3_[3] ),
        .I2(s_axi_control_WSTRB[0]),
        .I3(int_gie_i_2_n_3),
        .I4(int_gie_reg_n_3),
        .O(int_gie_i_1_n_3));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    int_gie_i_2
       (.I0(\waddr_reg_n_3_[2] ),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_WVALID),
        .I3(\waddr_reg_n_3_[1] ),
        .I4(\waddr_reg_n_3_[0] ),
        .I5(\waddr_reg_n_3_[4] ),
        .O(int_gie_i_2_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_3),
        .Q(int_gie_reg_n_3),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(\int_ier[1]_i_2_n_3 ),
        .I2(\waddr_reg_n_3_[3] ),
        .I3(s_axi_control_WSTRB[0]),
        .I4(\int_ier_reg_n_3_[0] ),
        .O(\int_ier[0]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(\int_ier[1]_i_2_n_3 ),
        .I2(\waddr_reg_n_3_[3] ),
        .I3(s_axi_control_WSTRB[0]),
        .I4(p_0_in),
        .O(\int_ier[1]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \int_ier[1]_i_2 
       (.I0(\waddr_reg_n_3_[2] ),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_WVALID),
        .I3(\waddr_reg_n_3_[1] ),
        .I4(\waddr_reg_n_3_[0] ),
        .I5(\waddr_reg_n_3_[4] ),
        .O(\int_ier[1]_i_2_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_3 ),
        .Q(\int_ier_reg_n_3_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_3 ),
        .Q(p_0_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7F778F88)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_isr6_out),
        .I2(\int_isr_reg[0]_0 ),
        .I3(\int_ier_reg_n_3_[0] ),
        .I4(\int_isr_reg_n_3_[0] ),
        .O(\int_isr[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \int_isr[0]_i_2 
       (.I0(int_gie_i_2_n_3),
        .I1(\waddr_reg_n_3_[3] ),
        .I2(s_axi_control_WSTRB[0]),
        .O(int_isr6_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(int_isr6_out),
        .I2(shiftReg_ce),
        .I3(p_0_in),
        .I4(p_1_in),
        .O(\int_isr[1]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_3 ),
        .Q(\int_isr_reg_n_3_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_3 ),
        .Q(p_1_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[0]),
        .O(int_rows0[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[10]),
        .O(int_rows0[10]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[11]),
        .O(int_rows0[11]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[12]),
        .O(int_rows0[12]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[13]),
        .O(int_rows0[13]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[14]),
        .O(int_rows0[14]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[15]),
        .O(int_rows0[15]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[16]),
        .O(int_rows0[16]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[17]),
        .O(int_rows0[17]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[18]),
        .O(int_rows0[18]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[19]),
        .O(int_rows0[19]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[1]),
        .O(int_rows0[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[20]),
        .O(int_rows0[20]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[21]),
        .O(int_rows0[21]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[22]),
        .O(int_rows0[22]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[23]),
        .O(int_rows0[23]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[24]),
        .O(int_rows0[24]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[25]),
        .O(int_rows0[25]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[26]),
        .O(int_rows0[26]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[27]),
        .O(int_rows0[27]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[28]),
        .O(int_rows0[28]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[29]),
        .O(int_rows0[29]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[2]),
        .O(int_rows0[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[30]),
        .O(int_rows0[30]));
  LUT2 #(
    .INIT(4'h1)) 
    \int_rows[31]_i_1 
       (.I0(\waddr_reg_n_3_[3] ),
        .I1(\int_rows[31]_i_3_n_3 ),
        .O(\int_rows[31]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[31]),
        .O(int_rows0[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    \int_rows[31]_i_3 
       (.I0(\waddr_reg_n_3_[0] ),
        .I1(\waddr_reg_n_3_[1] ),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .I4(\waddr_reg_n_3_[4] ),
        .I5(\waddr_reg_n_3_[2] ),
        .O(\int_rows[31]_i_3_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[3]),
        .O(int_rows0[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[4]),
        .O(int_rows0[4]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[5]),
        .O(int_rows0[5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[6]),
        .O(int_rows0[6]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[7]),
        .O(int_rows0[7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[8]),
        .O(int_rows0[8]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[9]),
        .O(int_rows0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[0] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[0]),
        .Q(Q[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[10] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[10]),
        .Q(Q[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[11] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[11]),
        .Q(Q[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[12] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[12]),
        .Q(Q[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[13] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[13]),
        .Q(Q[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[14] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[14]),
        .Q(Q[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[15] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[15]),
        .Q(Q[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[16] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[16]),
        .Q(Q[16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[17] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[17]),
        .Q(Q[17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[18] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[18]),
        .Q(Q[18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[19] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[19]),
        .Q(Q[19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[1] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[1]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[20] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[20]),
        .Q(Q[20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[21] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[21]),
        .Q(Q[21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[22] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[22]),
        .Q(Q[22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[23] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[23]),
        .Q(Q[23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[24] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[24]),
        .Q(Q[24]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[25] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[25]),
        .Q(Q[25]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[26] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[26]),
        .Q(Q[26]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[27] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[27]),
        .Q(Q[27]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[28] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[28]),
        .Q(Q[28]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[29] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[29]),
        .Q(Q[29]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[2] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[2]),
        .Q(Q[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[30] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[30]),
        .Q(Q[30]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[31] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[31]),
        .Q(Q[31]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[3] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[3]),
        .Q(Q[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[4] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[4]),
        .Q(Q[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[5] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[5]),
        .Q(Q[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[6] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[6]),
        .Q(Q[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[7] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[7]),
        .Q(Q[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[8] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[8]),
        .Q(Q[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_reg[9] 
       (.C(ap_clk),
        .CE(\int_rows[31]_i_1_n_3 ),
        .D(int_rows0[9]),
        .Q(Q[9]),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hA8)) 
    interrupt_INST_0
       (.I0(int_gie_reg_n_3),
        .I1(p_1_in),
        .I2(\int_isr_reg_n_3_[0] ),
        .O(interrupt));
  LUT4 #(
    .INIT(16'h2000)) 
    \mOutPtr[1]_i_2__1 
       (.I0(Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start),
        .I1(start_once_reg),
        .I2(start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n),
        .I3(start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n),
        .O(int_ap_start_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \rdata[0]_i_1 
       (.I0(\rdata[0]_i_2_n_3 ),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[0]),
        .I4(\rdata[0]_i_3_n_3 ),
        .O(rdata[0]));
  LUT6 #(
    .INIT(64'h000000000C000808)) 
    \rdata[0]_i_2 
       (.I0(Q[0]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(\int_cols_reg[31]_0 [0]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(\rdata[1]_i_4_n_3 ),
        .O(\rdata[0]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[0]_i_3 
       (.I0(\int_isr_reg_n_3_[0] ),
        .I1(int_gie_reg_n_3),
        .I2(s_axi_control_ARADDR[2]),
        .I3(\int_ier_reg_n_3_[0] ),
        .I4(s_axi_control_ARADDR[3]),
        .I5(Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start),
        .O(\rdata[0]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[10]_i_1 
       (.I0(\int_cols_reg[31]_0 [10]),
        .I1(Q[10]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[10]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[11]_i_1 
       (.I0(\int_cols_reg[31]_0 [11]),
        .I1(Q[11]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[11]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[12]_i_1 
       (.I0(\int_cols_reg[31]_0 [12]),
        .I1(Q[12]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[12]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[13]_i_1 
       (.I0(\int_cols_reg[31]_0 [13]),
        .I1(Q[13]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[13]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[14]_i_1 
       (.I0(\int_cols_reg[31]_0 [14]),
        .I1(Q[14]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[14]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[15]_i_1 
       (.I0(\int_cols_reg[31]_0 [15]),
        .I1(Q[15]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[15]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[16]_i_1 
       (.I0(\int_cols_reg[31]_0 [16]),
        .I1(Q[16]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[16]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[17]_i_1 
       (.I0(\int_cols_reg[31]_0 [17]),
        .I1(Q[17]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[17]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[18]_i_1 
       (.I0(\int_cols_reg[31]_0 [18]),
        .I1(Q[18]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[18]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[19]_i_1 
       (.I0(\int_cols_reg[31]_0 [19]),
        .I1(Q[19]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[19]));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \rdata[1]_i_1 
       (.I0(\rdata[1]_i_2_n_3 ),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[0]),
        .I4(\rdata[1]_i_3_n_3 ),
        .O(rdata[1]));
  LUT6 #(
    .INIT(64'h000000000C000808)) 
    \rdata[1]_i_2 
       (.I0(Q[1]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(\int_cols_reg[31]_0 [1]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(\rdata[1]_i_4_n_3 ),
        .O(\rdata[1]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \rdata[1]_i_3 
       (.I0(p_1_in),
        .I1(s_axi_control_ARADDR[2]),
        .I2(p_0_in),
        .I3(s_axi_control_ARADDR[3]),
        .I4(data0[1]),
        .O(\rdata[1]_i_3_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[1]_i_4 
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARADDR[1]),
        .O(\rdata[1]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[20]_i_1 
       (.I0(\int_cols_reg[31]_0 [20]),
        .I1(Q[20]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[20]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[21]_i_1 
       (.I0(\int_cols_reg[31]_0 [21]),
        .I1(Q[21]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[21]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[22]_i_1 
       (.I0(\int_cols_reg[31]_0 [22]),
        .I1(Q[22]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[22]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[23]_i_1 
       (.I0(\int_cols_reg[31]_0 [23]),
        .I1(Q[23]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[23]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[24]_i_1 
       (.I0(\int_cols_reg[31]_0 [24]),
        .I1(Q[24]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[24]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[25]_i_1 
       (.I0(\int_cols_reg[31]_0 [25]),
        .I1(Q[25]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[25]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[26]_i_1 
       (.I0(\int_cols_reg[31]_0 [26]),
        .I1(Q[26]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[26]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[27]_i_1 
       (.I0(\int_cols_reg[31]_0 [27]),
        .I1(Q[27]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[27]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[28]_i_1 
       (.I0(\int_cols_reg[31]_0 [28]),
        .I1(Q[28]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[28]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[29]_i_1 
       (.I0(\int_cols_reg[31]_0 [29]),
        .I1(Q[29]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[29]));
  LUT6 #(
    .INIT(64'hBABBBABBBABBAAAA)) 
    \rdata[2]_i_1 
       (.I0(\rdata[2]_i_2_n_3 ),
        .I1(\rdata[31]_i_3_n_3 ),
        .I2(\int_cols_reg[31]_0 [2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(Q[2]),
        .I5(\rdata[7]_i_3_n_3 ),
        .O(rdata[2]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \rdata[2]_i_2 
       (.I0(data0[2]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[2]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[30]_i_1 
       (.I0(\int_cols_reg[31]_0 [30]),
        .I1(Q[30]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[31]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[31]_i_2 
       (.I0(\int_cols_reg[31]_0 [31]),
        .I1(Q[31]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[31]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \rdata[31]_i_3 
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[2]),
        .O(\rdata[31]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'hBABBBABBBABBAAAA)) 
    \rdata[3]_i_1 
       (.I0(\rdata[3]_i_2_n_3 ),
        .I1(\rdata[31]_i_3_n_3 ),
        .I2(\int_cols_reg[31]_0 [3]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(Q[3]),
        .I5(\rdata[7]_i_3_n_3 ),
        .O(rdata[3]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \rdata[3]_i_2 
       (.I0(data0[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[3]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[4]_i_1 
       (.I0(\int_cols_reg[31]_0 [4]),
        .I1(Q[4]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[4]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[5]_i_1 
       (.I0(\int_cols_reg[31]_0 [5]),
        .I1(Q[5]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[5]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[6]_i_1 
       (.I0(\int_cols_reg[31]_0 [6]),
        .I1(Q[6]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[6]));
  LUT6 #(
    .INIT(64'hBABBBABBBABBAAAA)) 
    \rdata[7]_i_1 
       (.I0(\rdata[7]_i_2_n_3 ),
        .I1(\rdata[31]_i_3_n_3 ),
        .I2(\int_cols_reg[31]_0 [7]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(Q[7]),
        .I5(\rdata[7]_i_3_n_3 ),
        .O(rdata[7]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \rdata[7]_i_2 
       (.I0(data0[7]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[7]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \rdata[7]_i_3 
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[4]),
        .O(\rdata[7]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[8]_i_1 
       (.I0(\int_cols_reg[31]_0 [8]),
        .I1(Q[8]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[8]));
  LUT6 #(
    .INIT(64'h00000000CACAAACA)) 
    \rdata[9]_i_1 
       (.I0(\int_cols_reg[31]_0 [9]),
        .I1(Q[9]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_3_n_3 ),
        .O(rdata[9]));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[10]),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[11]),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[12]),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[13]),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[14]),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[15]),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[16]),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[17]),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[18]),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[19]),
        .Q(s_axi_control_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[1]),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[20]),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[21]),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[22]),
        .Q(s_axi_control_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[23]),
        .Q(s_axi_control_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[24]),
        .Q(s_axi_control_RDATA[24]),
        .R(1'b0));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[25]),
        .Q(s_axi_control_RDATA[25]),
        .R(1'b0));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[26]),
        .Q(s_axi_control_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[27]),
        .Q(s_axi_control_RDATA[27]),
        .R(1'b0));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[28]),
        .Q(s_axi_control_RDATA[28]),
        .R(1'b0));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[29]),
        .Q(s_axi_control_RDATA[29]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[2]),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[30]),
        .Q(s_axi_control_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[31]),
        .Q(s_axi_control_RDATA[31]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[3]),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[4]),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[5]),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[6]),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[7]),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[8]),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[9]),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[4]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_control_AWVALID),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[3]),
        .Q(\waddr_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[4]),
        .Q(\waddr_reg_n_3_[4] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w24_d2_S
   (\mOutPtr_reg[0]_0 ,
    imgInput_data_full_n,
    imgInput_data_empty_n,
    imgInput_data_dout,
    ap_rst_n_inv,
    ap_clk,
    \mOutPtr_reg[0]_1 ,
    shiftReg_ce,
    \mOutPtr_reg[1]_0 ,
    ap_rst_n,
    D);
  output \mOutPtr_reg[0]_0 ;
  output imgInput_data_full_n;
  output imgInput_data_empty_n;
  output [23:0]imgInput_data_dout;
  input ap_rst_n_inv;
  input ap_clk;
  input \mOutPtr_reg[0]_1 ;
  input shiftReg_ce;
  input \mOutPtr_reg[1]_0 ;
  input ap_rst_n;
  input [23:0]D;

  wire [23:0]D;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [23:0]imgInput_data_dout;
  wire imgInput_data_empty_n;
  wire imgInput_data_full_n;
  wire internal_empty_n_i_1__0_n_3;
  wire internal_full_n_i_1__0_n_3;
  wire \mOutPtr[1]_i_1_n_3 ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[0]_1 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg_n_3_[1] ;
  wire shiftReg_ce;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w24_d2_S_shiftReg_7 U_colordetect_accel_fifo_w24_d2_S_ram
       (.D(D),
        .ap_clk(ap_clk),
        .\b_V_reg_677_reg[0] (\mOutPtr_reg_n_3_[1] ),
        .imgInput_data_dout(imgInput_data_dout),
        .\r_V_reg_690_reg[7] (\mOutPtr_reg[0]_0 ),
        .shiftReg_ce(shiftReg_ce));
  LUT6 #(
    .INIT(64'hF0F0E0F000F00000)) 
    internal_empty_n_i_1__0
       (.I0(\mOutPtr_reg_n_3_[1] ),
        .I1(\mOutPtr_reg[0]_0 ),
        .I2(ap_rst_n),
        .I3(\mOutPtr_reg[1]_0 ),
        .I4(shiftReg_ce),
        .I5(imgInput_data_empty_n),
        .O(internal_empty_n_i_1__0_n_3));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__0_n_3),
        .Q(imgInput_data_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAFFA8AAFFFFFFFF)) 
    internal_full_n_i_1__0
       (.I0(imgInput_data_full_n),
        .I1(\mOutPtr_reg_n_3_[1] ),
        .I2(\mOutPtr_reg[0]_0 ),
        .I3(shiftReg_ce),
        .I4(\mOutPtr_reg[1]_0 ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__0_n_3));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__0_n_3),
        .Q(imgInput_data_full_n),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hE718)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg[0]_0 ),
        .I1(shiftReg_ce),
        .I2(\mOutPtr_reg[1]_0 ),
        .I3(\mOutPtr_reg_n_3_[1] ),
        .O(\mOutPtr[1]_i_1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr_reg[0]_1 ),
        .Q(\mOutPtr_reg[0]_0 ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_3 ),
        .Q(\mOutPtr_reg_n_3_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "colordetect_accel_fifo_w24_d2_S" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w24_d2_S_3
   (\mOutPtr_reg[0]_0 ,
    rgb2hsv_data_full_n,
    rgb2hsv_data_empty_n,
    D,
    ap_rst_n_inv,
    ap_clk,
    \mOutPtr_reg[0]_1 ,
    \mOutPtr_reg[1]_0 ,
    shiftReg_ce,
    ap_rst_n,
    \SRL_SIG_reg[0][23] );
  output \mOutPtr_reg[0]_0 ;
  output rgb2hsv_data_full_n;
  output rgb2hsv_data_empty_n;
  output [23:0]D;
  input ap_rst_n_inv;
  input ap_clk;
  input \mOutPtr_reg[0]_1 ;
  input \mOutPtr_reg[1]_0 ;
  input shiftReg_ce;
  input ap_rst_n;
  input [23:0]\SRL_SIG_reg[0][23] ;

  wire [23:0]D;
  wire [23:0]\SRL_SIG_reg[0][23] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire internal_empty_n_i_1_n_3;
  wire internal_full_n_i_1_n_3;
  wire \mOutPtr[1]_i_1__2_n_3 ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[0]_1 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg_n_3_[1] ;
  wire rgb2hsv_data_empty_n;
  wire rgb2hsv_data_full_n;
  wire shiftReg_ce;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w24_d2_S_shiftReg U_colordetect_accel_fifo_w24_d2_S_ram
       (.\B_V_data_1_payload_B_reg[0] (\mOutPtr_reg_n_3_[1] ),
        .\B_V_data_1_payload_B_reg[23] (\mOutPtr_reg[0]_0 ),
        .D(D),
        .\SRL_SIG_reg[0][23]_0 (\SRL_SIG_reg[0][23] ),
        .ap_clk(ap_clk),
        .shiftReg_ce(shiftReg_ce));
  LUT6 #(
    .INIT(64'hF0F0F0E0F0000000)) 
    internal_empty_n_i_1
       (.I0(\mOutPtr_reg_n_3_[1] ),
        .I1(\mOutPtr_reg[0]_0 ),
        .I2(ap_rst_n),
        .I3(shiftReg_ce),
        .I4(\mOutPtr_reg[1]_0 ),
        .I5(rgb2hsv_data_empty_n),
        .O(internal_empty_n_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1_n_3),
        .Q(rgb2hsv_data_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA8AAAAFFFFFFFFFF)) 
    internal_full_n_i_1
       (.I0(rgb2hsv_data_full_n),
        .I1(\mOutPtr_reg_n_3_[1] ),
        .I2(\mOutPtr_reg[0]_0 ),
        .I3(\mOutPtr_reg[1]_0 ),
        .I4(shiftReg_ce),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1_n_3));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1_n_3),
        .Q(rgb2hsv_data_full_n),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7E81)) 
    \mOutPtr[1]_i_1__2 
       (.I0(\mOutPtr_reg[0]_0 ),
        .I1(\mOutPtr_reg[1]_0 ),
        .I2(shiftReg_ce),
        .I3(\mOutPtr_reg_n_3_[1] ),
        .O(\mOutPtr[1]_i_1__2_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr_reg[0]_1 ),
        .Q(\mOutPtr_reg[0]_0 ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__2_n_3 ),
        .Q(\mOutPtr_reg_n_3_[1] ),
        .S(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w24_d2_S_shiftReg
   (D,
    \B_V_data_1_payload_B_reg[0] ,
    \B_V_data_1_payload_B_reg[23] ,
    shiftReg_ce,
    \SRL_SIG_reg[0][23]_0 ,
    ap_clk);
  output [23:0]D;
  input \B_V_data_1_payload_B_reg[0] ;
  input \B_V_data_1_payload_B_reg[23] ;
  input shiftReg_ce;
  input [23:0]\SRL_SIG_reg[0][23]_0 ;
  input ap_clk;

  wire \B_V_data_1_payload_B_reg[0] ;
  wire \B_V_data_1_payload_B_reg[23] ;
  wire [23:0]D;
  wire [23:0]\SRL_SIG_reg[0][23]_0 ;
  wire [23:0]\SRL_SIG_reg[0]_0 ;
  wire [23:0]\SRL_SIG_reg[1]_1 ;
  wire ap_clk;
  wire shiftReg_ce;

  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[0]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [0]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[10]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [10]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[11]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [11]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [11]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[12]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [12]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [12]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[13]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [13]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [13]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[14]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [14]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [14]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[15]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [15]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [15]),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[16]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [16]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [16]),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[17]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [17]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [17]),
        .O(D[17]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[18]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [18]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [18]),
        .O(D[18]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[19]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [19]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [19]),
        .O(D[19]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[1]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [1]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[20]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [20]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [20]),
        .O(D[20]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[21]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [21]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [21]),
        .O(D[21]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[22]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [22]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [22]),
        .O(D[22]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[23]_i_2 
       (.I0(\SRL_SIG_reg[0]_0 [23]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [23]),
        .O(D[23]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[2]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [2]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[3]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [3]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[4]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [4]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[5]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [5]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[6]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [6]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[7]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [7]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[8]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [8]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [8]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \B_V_data_1_payload_A[9]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [9]),
        .I1(\B_V_data_1_payload_B_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg[23] ),
        .I3(\SRL_SIG_reg[1]_1 [9]),
        .O(D[9]));
  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [0]),
        .Q(\SRL_SIG_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][10] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [10]),
        .Q(\SRL_SIG_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][11] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [11]),
        .Q(\SRL_SIG_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][12] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [12]),
        .Q(\SRL_SIG_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][13] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [13]),
        .Q(\SRL_SIG_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][14] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [14]),
        .Q(\SRL_SIG_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][15] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [15]),
        .Q(\SRL_SIG_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][16] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [16]),
        .Q(\SRL_SIG_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][17] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [17]),
        .Q(\SRL_SIG_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][18] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [18]),
        .Q(\SRL_SIG_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][19] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [19]),
        .Q(\SRL_SIG_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [1]),
        .Q(\SRL_SIG_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][20] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [20]),
        .Q(\SRL_SIG_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][21] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [21]),
        .Q(\SRL_SIG_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][22] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [22]),
        .Q(\SRL_SIG_reg[0]_0 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][23] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [23]),
        .Q(\SRL_SIG_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [2]),
        .Q(\SRL_SIG_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [3]),
        .Q(\SRL_SIG_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [4]),
        .Q(\SRL_SIG_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [5]),
        .Q(\SRL_SIG_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [6]),
        .Q(\SRL_SIG_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [7]),
        .Q(\SRL_SIG_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][8] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [8]),
        .Q(\SRL_SIG_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][9] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][23]_0 [9]),
        .Q(\SRL_SIG_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [0]),
        .Q(\SRL_SIG_reg[1]_1 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][10] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [10]),
        .Q(\SRL_SIG_reg[1]_1 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][11] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [11]),
        .Q(\SRL_SIG_reg[1]_1 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][12] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [12]),
        .Q(\SRL_SIG_reg[1]_1 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][13] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [13]),
        .Q(\SRL_SIG_reg[1]_1 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][14] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [14]),
        .Q(\SRL_SIG_reg[1]_1 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][15] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [15]),
        .Q(\SRL_SIG_reg[1]_1 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][16] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [16]),
        .Q(\SRL_SIG_reg[1]_1 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][17] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [17]),
        .Q(\SRL_SIG_reg[1]_1 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][18] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [18]),
        .Q(\SRL_SIG_reg[1]_1 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][19] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [19]),
        .Q(\SRL_SIG_reg[1]_1 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [1]),
        .Q(\SRL_SIG_reg[1]_1 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][20] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [20]),
        .Q(\SRL_SIG_reg[1]_1 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][21] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [21]),
        .Q(\SRL_SIG_reg[1]_1 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][22] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [22]),
        .Q(\SRL_SIG_reg[1]_1 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][23] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [23]),
        .Q(\SRL_SIG_reg[1]_1 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [2]),
        .Q(\SRL_SIG_reg[1]_1 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [3]),
        .Q(\SRL_SIG_reg[1]_1 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [4]),
        .Q(\SRL_SIG_reg[1]_1 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [5]),
        .Q(\SRL_SIG_reg[1]_1 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [6]),
        .Q(\SRL_SIG_reg[1]_1 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [7]),
        .Q(\SRL_SIG_reg[1]_1 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][8] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [8]),
        .Q(\SRL_SIG_reg[1]_1 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][9] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [9]),
        .Q(\SRL_SIG_reg[1]_1 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "colordetect_accel_fifo_w24_d2_S_shiftReg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w24_d2_S_shiftReg_7
   (imgInput_data_dout,
    \b_V_reg_677_reg[0] ,
    \r_V_reg_690_reg[7] ,
    shiftReg_ce,
    D,
    ap_clk);
  output [23:0]imgInput_data_dout;
  input \b_V_reg_677_reg[0] ;
  input \r_V_reg_690_reg[7] ;
  input shiftReg_ce;
  input [23:0]D;
  input ap_clk;

  wire [23:0]D;
  wire [23:0]\SRL_SIG_reg[0]_0 ;
  wire [23:0]\SRL_SIG_reg[1]_1 ;
  wire ap_clk;
  wire \b_V_reg_677_reg[0] ;
  wire [23:0]imgInput_data_dout;
  wire \r_V_reg_690_reg[7] ;
  wire shiftReg_ce;

  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[0]),
        .Q(\SRL_SIG_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][10] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[10]),
        .Q(\SRL_SIG_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][11] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[11]),
        .Q(\SRL_SIG_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][12] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[12]),
        .Q(\SRL_SIG_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][13] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[13]),
        .Q(\SRL_SIG_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][14] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[14]),
        .Q(\SRL_SIG_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][15] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[15]),
        .Q(\SRL_SIG_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][16] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[16]),
        .Q(\SRL_SIG_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][17] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[17]),
        .Q(\SRL_SIG_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][18] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[18]),
        .Q(\SRL_SIG_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][19] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[19]),
        .Q(\SRL_SIG_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[1]),
        .Q(\SRL_SIG_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][20] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[20]),
        .Q(\SRL_SIG_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][21] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[21]),
        .Q(\SRL_SIG_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][22] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[22]),
        .Q(\SRL_SIG_reg[0]_0 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][23] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[23]),
        .Q(\SRL_SIG_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[2]),
        .Q(\SRL_SIG_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[3]),
        .Q(\SRL_SIG_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[4]),
        .Q(\SRL_SIG_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[5]),
        .Q(\SRL_SIG_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[6]),
        .Q(\SRL_SIG_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[7]),
        .Q(\SRL_SIG_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][8] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[8]),
        .Q(\SRL_SIG_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][9] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[9]),
        .Q(\SRL_SIG_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [0]),
        .Q(\SRL_SIG_reg[1]_1 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][10] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [10]),
        .Q(\SRL_SIG_reg[1]_1 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][11] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [11]),
        .Q(\SRL_SIG_reg[1]_1 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][12] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [12]),
        .Q(\SRL_SIG_reg[1]_1 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][13] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [13]),
        .Q(\SRL_SIG_reg[1]_1 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][14] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [14]),
        .Q(\SRL_SIG_reg[1]_1 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][15] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [15]),
        .Q(\SRL_SIG_reg[1]_1 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][16] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [16]),
        .Q(\SRL_SIG_reg[1]_1 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][17] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [17]),
        .Q(\SRL_SIG_reg[1]_1 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][18] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [18]),
        .Q(\SRL_SIG_reg[1]_1 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][19] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [19]),
        .Q(\SRL_SIG_reg[1]_1 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [1]),
        .Q(\SRL_SIG_reg[1]_1 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][20] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [20]),
        .Q(\SRL_SIG_reg[1]_1 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][21] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [21]),
        .Q(\SRL_SIG_reg[1]_1 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][22] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [22]),
        .Q(\SRL_SIG_reg[1]_1 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][23] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [23]),
        .Q(\SRL_SIG_reg[1]_1 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [2]),
        .Q(\SRL_SIG_reg[1]_1 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [3]),
        .Q(\SRL_SIG_reg[1]_1 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [4]),
        .Q(\SRL_SIG_reg[1]_1 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [5]),
        .Q(\SRL_SIG_reg[1]_1 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [6]),
        .Q(\SRL_SIG_reg[1]_1 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [7]),
        .Q(\SRL_SIG_reg[1]_1 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][8] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [8]),
        .Q(\SRL_SIG_reg[1]_1 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][9] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [9]),
        .Q(\SRL_SIG_reg[1]_1 [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \b_V_reg_677[0]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [0]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [0]),
        .O(imgInput_data_dout[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \b_V_reg_677[1]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [1]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [1]),
        .O(imgInput_data_dout[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \b_V_reg_677[2]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [2]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [2]),
        .O(imgInput_data_dout[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \b_V_reg_677[3]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [3]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [3]),
        .O(imgInput_data_dout[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \b_V_reg_677[4]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [4]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [4]),
        .O(imgInput_data_dout[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \b_V_reg_677[5]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [5]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [5]),
        .O(imgInput_data_dout[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \b_V_reg_677[6]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [6]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [6]),
        .O(imgInput_data_dout[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \b_V_reg_677[7]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [7]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [7]),
        .O(imgInput_data_dout[7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \g_V_reg_684[0]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [8]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [8]),
        .O(imgInput_data_dout[8]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \g_V_reg_684[1]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [9]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [9]),
        .O(imgInput_data_dout[9]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \g_V_reg_684[2]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [10]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [10]),
        .O(imgInput_data_dout[10]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \g_V_reg_684[3]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [11]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [11]),
        .O(imgInput_data_dout[11]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \g_V_reg_684[4]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [12]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [12]),
        .O(imgInput_data_dout[12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \g_V_reg_684[5]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [13]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [13]),
        .O(imgInput_data_dout[13]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \g_V_reg_684[6]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [14]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [14]),
        .O(imgInput_data_dout[14]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \g_V_reg_684[7]_i_2 
       (.I0(\SRL_SIG_reg[0]_0 [15]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [15]),
        .O(imgInput_data_dout[15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \r_V_reg_690[0]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [16]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [16]),
        .O(imgInput_data_dout[16]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \r_V_reg_690[1]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [17]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [17]),
        .O(imgInput_data_dout[17]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \r_V_reg_690[2]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [18]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [18]),
        .O(imgInput_data_dout[18]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \r_V_reg_690[3]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [19]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [19]),
        .O(imgInput_data_dout[19]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \r_V_reg_690[4]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [20]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [20]),
        .O(imgInput_data_dout[20]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \r_V_reg_690[5]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [21]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [21]),
        .O(imgInput_data_dout[21]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \r_V_reg_690[6]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [22]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [22]),
        .O(imgInput_data_dout[22]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \r_V_reg_690[7]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [23]),
        .I1(\b_V_reg_677_reg[0] ),
        .I2(\r_V_reg_690_reg[7] ),
        .I3(\SRL_SIG_reg[1]_1 [23]),
        .O(imgInput_data_dout[23]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d2_S
   (imgInput_cols_c10_full_n,
    imgInput_cols_c10_empty_n,
    bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read,
    imgInput_cols_c10_dout,
    ap_clk,
    imgInput_rows_c9_empty_n,
    Q,
    bgr2hsv_9_2160_3840_1_U0_ap_start,
    ap_rst_n,
    shiftReg_ce,
    internal_full_n_reg_0,
    ap_rst_n_inv,
    D);
  output imgInput_cols_c10_full_n;
  output imgInput_cols_c10_empty_n;
  output bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read;
  output [31:0]imgInput_cols_c10_dout;
  input ap_clk;
  input imgInput_rows_c9_empty_n;
  input [0:0]Q;
  input bgr2hsv_9_2160_3840_1_U0_ap_start;
  input ap_rst_n;
  input shiftReg_ce;
  input internal_full_n_reg_0;
  input ap_rst_n_inv;
  input [31:0]D;

  wire [31:0]D;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire bgr2hsv_9_2160_3840_1_U0_ap_start;
  wire bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read;
  wire [31:0]imgInput_cols_c10_dout;
  wire imgInput_cols_c10_empty_n;
  wire imgInput_cols_c10_full_n;
  wire imgInput_rows_c9_empty_n;
  wire internal_empty_n_i_1__2_n_3;
  wire internal_full_n_i_1__2_n_3;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__1_n_3 ;
  wire \mOutPtr[1]_i_1__1_n_3 ;
  wire \mOutPtr_reg_n_3_[0] ;
  wire \mOutPtr_reg_n_3_[1] ;
  wire shiftReg_ce;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d2_S_shiftReg_9 U_colordetect_accel_fifo_w32_d2_S_ram
       (.D(D),
        .ap_clk(ap_clk),
        .imgInput_cols_c10_dout(imgInput_cols_c10_dout),
        .p(\mOutPtr_reg_n_3_[1] ),
        .p_0(\mOutPtr_reg_n_3_[0] ),
        .shiftReg_ce(shiftReg_ce));
  LUT4 #(
    .INIT(16'h8000)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(imgInput_cols_c10_empty_n),
        .I1(imgInput_rows_c9_empty_n),
        .I2(Q),
        .I3(bgr2hsv_9_2160_3840_1_U0_ap_start),
        .O(bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read));
  LUT6 #(
    .INIT(64'hF0F0E0F0F0F00000)) 
    internal_empty_n_i_1__2
       (.I0(\mOutPtr_reg_n_3_[1] ),
        .I1(\mOutPtr_reg_n_3_[0] ),
        .I2(ap_rst_n),
        .I3(bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read),
        .I4(shiftReg_ce),
        .I5(imgInput_cols_c10_empty_n),
        .O(internal_empty_n_i_1__2_n_3));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__2_n_3),
        .Q(imgInput_cols_c10_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAFFA8AAFFFFFFFF)) 
    internal_full_n_i_1__2
       (.I0(imgInput_cols_c10_full_n),
        .I1(\mOutPtr_reg_n_3_[1] ),
        .I2(\mOutPtr_reg_n_3_[0] ),
        .I3(shiftReg_ce),
        .I4(internal_full_n_reg_0),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__2_n_3));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__2_n_3),
        .Q(imgInput_cols_c10_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h80007FFF7FFF8000)) 
    \mOutPtr[0]_i_1__1 
       (.I0(bgr2hsv_9_2160_3840_1_U0_ap_start),
        .I1(Q),
        .I2(imgInput_rows_c9_empty_n),
        .I3(imgInput_cols_c10_empty_n),
        .I4(shiftReg_ce),
        .I5(\mOutPtr_reg_n_3_[0] ),
        .O(\mOutPtr[0]_i_1__1_n_3 ));
  LUT5 #(
    .INIT(32'hE7771888)) 
    \mOutPtr[1]_i_1__1 
       (.I0(\mOutPtr_reg_n_3_[0] ),
        .I1(shiftReg_ce),
        .I2(imgInput_cols_c10_empty_n),
        .I3(bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read),
        .I4(\mOutPtr_reg_n_3_[1] ),
        .O(\mOutPtr[1]_i_1__1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1__1_n_3 ),
        .Q(\mOutPtr_reg_n_3_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__1_n_3 ),
        .Q(\mOutPtr_reg_n_3_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "colordetect_accel_fifo_w32_d2_S" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d2_S_0
   (imgInput_cols_c_full_n,
    imgInput_cols_c_empty_n,
    internal_empty_n_reg_0,
    D,
    ap_clk,
    shiftReg_ce,
    shiftReg_ce_0,
    ap_rst_n,
    imgInput_cols_c10_full_n,
    imgInput_rows_c9_full_n,
    imgInput_rows_c_empty_n,
    \ap_CS_fsm_reg[0] ,
    ap_rst_n_inv,
    E,
    in);
  output imgInput_cols_c_full_n;
  output imgInput_cols_c_empty_n;
  output internal_empty_n_reg_0;
  output [31:0]D;
  input ap_clk;
  input shiftReg_ce;
  input shiftReg_ce_0;
  input ap_rst_n;
  input imgInput_cols_c10_full_n;
  input imgInput_rows_c9_full_n;
  input imgInput_rows_c_empty_n;
  input \ap_CS_fsm_reg[0] ;
  input ap_rst_n_inv;
  input [0:0]E;
  input [31:0]in;

  wire [31:0]D;
  wire [0:0]E;
  wire \ap_CS_fsm_reg[0] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire imgInput_cols_c10_full_n;
  wire imgInput_cols_c_empty_n;
  wire imgInput_cols_c_full_n;
  wire imgInput_rows_c9_full_n;
  wire imgInput_rows_c_empty_n;
  wire [31:0]in;
  wire internal_empty_n_i_1__5_n_3;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_1__5_n_3;
  wire \mOutPtr[0]_i_1__6_n_3 ;
  wire \mOutPtr[1]_i_1__4_n_3 ;
  wire \mOutPtr_reg_n_3_[0] ;
  wire \mOutPtr_reg_n_3_[1] ;
  wire shiftReg_ce;
  wire shiftReg_ce_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d2_S_shiftReg_8 U_colordetect_accel_fifo_w32_d2_S_ram
       (.D(D),
        .Q({\mOutPtr_reg_n_3_[1] ,\mOutPtr_reg_n_3_[0] }),
        .ap_clk(ap_clk),
        .in(in),
        .shiftReg_ce(shiftReg_ce));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(imgInput_cols_c_empty_n),
        .I1(imgInput_cols_c10_full_n),
        .I2(imgInput_rows_c9_full_n),
        .I3(imgInput_rows_c_empty_n),
        .I4(\ap_CS_fsm_reg[0] ),
        .O(internal_empty_n_reg_0));
  LUT6 #(
    .INIT(64'hF0F0E0F000F00000)) 
    internal_empty_n_i_1__5
       (.I0(\mOutPtr_reg_n_3_[1] ),
        .I1(\mOutPtr_reg_n_3_[0] ),
        .I2(ap_rst_n),
        .I3(shiftReg_ce_0),
        .I4(shiftReg_ce),
        .I5(imgInput_cols_c_empty_n),
        .O(internal_empty_n_i_1__5_n_3));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__5_n_3),
        .Q(imgInput_cols_c_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFE0F0FFFFFFFF)) 
    internal_full_n_i_1__5
       (.I0(\mOutPtr_reg_n_3_[0] ),
        .I1(\mOutPtr_reg_n_3_[1] ),
        .I2(imgInput_cols_c_full_n),
        .I3(shiftReg_ce),
        .I4(shiftReg_ce_0),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__5_n_3));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__5_n_3),
        .Q(imgInput_cols_c_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__6 
       (.I0(\mOutPtr_reg_n_3_[0] ),
        .O(\mOutPtr[0]_i_1__6_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[1]_i_1__4 
       (.I0(shiftReg_ce_0),
        .I1(shiftReg_ce),
        .I2(\mOutPtr_reg_n_3_[0] ),
        .I3(\mOutPtr_reg_n_3_[1] ),
        .O(\mOutPtr[1]_i_1__4_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__6_n_3 ),
        .Q(\mOutPtr_reg_n_3_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1__4_n_3 ),
        .Q(\mOutPtr_reg_n_3_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "colordetect_accel_fifo_w32_d2_S" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d2_S_1
   (imgInput_rows_c9_full_n,
    imgInput_rows_c9_empty_n,
    imgInput_rows_c9_dout,
    ap_clk,
    ap_rst_n,
    bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read,
    shiftReg_ce,
    internal_full_n_reg_0,
    bgr2hsv_9_2160_3840_1_U0_ap_start,
    Q,
    imgInput_cols_c10_empty_n,
    ap_rst_n_inv,
    D);
  output imgInput_rows_c9_full_n;
  output imgInput_rows_c9_empty_n;
  output [31:0]imgInput_rows_c9_dout;
  input ap_clk;
  input ap_rst_n;
  input bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read;
  input shiftReg_ce;
  input internal_full_n_reg_0;
  input bgr2hsv_9_2160_3840_1_U0_ap_start;
  input [0:0]Q;
  input imgInput_cols_c10_empty_n;
  input ap_rst_n_inv;
  input [31:0]D;

  wire [31:0]D;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire bgr2hsv_9_2160_3840_1_U0_ap_start;
  wire bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read;
  wire imgInput_cols_c10_empty_n;
  wire [31:0]imgInput_rows_c9_dout;
  wire imgInput_rows_c9_empty_n;
  wire imgInput_rows_c9_full_n;
  wire internal_empty_n_i_1__1_n_3;
  wire internal_full_n_i_1__1_n_3;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__0_n_3 ;
  wire \mOutPtr[1]_i_1__0_n_3 ;
  wire \mOutPtr_reg_n_3_[0] ;
  wire \mOutPtr_reg_n_3_[1] ;
  wire shiftReg_ce;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d2_S_shiftReg_6 U_colordetect_accel_fifo_w32_d2_S_ram
       (.D(D),
        .ap_clk(ap_clk),
        .imgInput_rows_c9_dout(imgInput_rows_c9_dout),
        .p__0(\mOutPtr_reg_n_3_[1] ),
        .p__0_0(\mOutPtr_reg_n_3_[0] ),
        .shiftReg_ce(shiftReg_ce));
  LUT6 #(
    .INIT(64'hF0F0E0F0F0F00000)) 
    internal_empty_n_i_1__1
       (.I0(\mOutPtr_reg_n_3_[1] ),
        .I1(\mOutPtr_reg_n_3_[0] ),
        .I2(ap_rst_n),
        .I3(bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read),
        .I4(shiftReg_ce),
        .I5(imgInput_rows_c9_empty_n),
        .O(internal_empty_n_i_1__1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__1_n_3),
        .Q(imgInput_rows_c9_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAFFA8AAFFFFFFFF)) 
    internal_full_n_i_1__1
       (.I0(imgInput_rows_c9_full_n),
        .I1(\mOutPtr_reg_n_3_[1] ),
        .I2(\mOutPtr_reg_n_3_[0] ),
        .I3(shiftReg_ce),
        .I4(internal_full_n_reg_0),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__1_n_3));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__1_n_3),
        .Q(imgInput_rows_c9_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h80007FFF7FFF8000)) 
    \mOutPtr[0]_i_1__0 
       (.I0(bgr2hsv_9_2160_3840_1_U0_ap_start),
        .I1(Q),
        .I2(imgInput_rows_c9_empty_n),
        .I3(imgInput_cols_c10_empty_n),
        .I4(shiftReg_ce),
        .I5(\mOutPtr_reg_n_3_[0] ),
        .O(\mOutPtr[0]_i_1__0_n_3 ));
  LUT5 #(
    .INIT(32'hE7771888)) 
    \mOutPtr[1]_i_1__0 
       (.I0(\mOutPtr_reg_n_3_[0] ),
        .I1(shiftReg_ce),
        .I2(bgr2hsv_9_2160_3840_1_U0_p_src_mat_rows_read),
        .I3(imgInput_rows_c9_empty_n),
        .I4(\mOutPtr_reg_n_3_[1] ),
        .O(\mOutPtr[1]_i_1__0_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1__0_n_3 ),
        .Q(\mOutPtr_reg_n_3_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__0_n_3 ),
        .Q(\mOutPtr_reg_n_3_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "colordetect_accel_fifo_w32_d2_S" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d2_S_2
   (imgInput_rows_c_full_n,
    imgInput_rows_c_empty_n,
    D,
    ap_clk,
    ap_rst_n,
    shiftReg_ce,
    shiftReg_ce_0,
    ap_rst_n_inv,
    E,
    in);
  output imgInput_rows_c_full_n;
  output imgInput_rows_c_empty_n;
  output [31:0]D;
  input ap_clk;
  input ap_rst_n;
  input shiftReg_ce;
  input shiftReg_ce_0;
  input ap_rst_n_inv;
  input [0:0]E;
  input [31:0]in;

  wire [31:0]D;
  wire [0:0]E;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire imgInput_rows_c_empty_n;
  wire imgInput_rows_c_full_n;
  wire [31:0]in;
  wire internal_empty_n_i_1__4_n_3;
  wire internal_full_n_i_1__4_n_3;
  wire \mOutPtr[0]_i_1__5_n_3 ;
  wire \mOutPtr[1]_i_2__0_n_3 ;
  wire \mOutPtr_reg_n_3_[0] ;
  wire \mOutPtr_reg_n_3_[1] ;
  wire shiftReg_ce;
  wire shiftReg_ce_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d2_S_shiftReg U_colordetect_accel_fifo_w32_d2_S_ram
       (.D(D),
        .Q({\mOutPtr_reg_n_3_[1] ,\mOutPtr_reg_n_3_[0] }),
        .ap_clk(ap_clk),
        .in(in),
        .shiftReg_ce_0(shiftReg_ce_0));
  LUT6 #(
    .INIT(64'hF0F0E0F000F00000)) 
    internal_empty_n_i_1__4
       (.I0(\mOutPtr_reg_n_3_[1] ),
        .I1(\mOutPtr_reg_n_3_[0] ),
        .I2(ap_rst_n),
        .I3(shiftReg_ce),
        .I4(shiftReg_ce_0),
        .I5(imgInput_rows_c_empty_n),
        .O(internal_empty_n_i_1__4_n_3));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__4_n_3),
        .Q(imgInput_rows_c_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFE0F0FFFFFFFF)) 
    internal_full_n_i_1__4
       (.I0(\mOutPtr_reg_n_3_[0] ),
        .I1(\mOutPtr_reg_n_3_[1] ),
        .I2(imgInput_rows_c_full_n),
        .I3(shiftReg_ce_0),
        .I4(shiftReg_ce),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__4_n_3));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__4_n_3),
        .Q(imgInput_rows_c_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__5 
       (.I0(\mOutPtr_reg_n_3_[0] ),
        .O(\mOutPtr[0]_i_1__5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[1]_i_2__0 
       (.I0(shiftReg_ce),
        .I1(shiftReg_ce_0),
        .I2(\mOutPtr_reg_n_3_[0] ),
        .I3(\mOutPtr_reg_n_3_[1] ),
        .O(\mOutPtr[1]_i_2__0_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__5_n_3 ),
        .Q(\mOutPtr_reg_n_3_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_2__0_n_3 ),
        .Q(\mOutPtr_reg_n_3_[1] ),
        .S(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d2_S_shiftReg
   (D,
    Q,
    shiftReg_ce_0,
    in,
    ap_clk);
  output [31:0]D;
  input [1:0]Q;
  input shiftReg_ce_0;
  input [31:0]in;
  input ap_clk;

  wire [31:0]D;
  wire [1:0]Q;
  wire [31:0]\SRL_SIG_reg[0]_0 ;
  wire [31:0]\SRL_SIG_reg[1]_1 ;
  wire ap_clk;
  wire [31:0]in;
  wire shiftReg_ce_0;

  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[0]),
        .Q(\SRL_SIG_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][10] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[10]),
        .Q(\SRL_SIG_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][11] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[11]),
        .Q(\SRL_SIG_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][12] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[12]),
        .Q(\SRL_SIG_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][13] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[13]),
        .Q(\SRL_SIG_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][14] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[14]),
        .Q(\SRL_SIG_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][15] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[15]),
        .Q(\SRL_SIG_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][16] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[16]),
        .Q(\SRL_SIG_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][17] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[17]),
        .Q(\SRL_SIG_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][18] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[18]),
        .Q(\SRL_SIG_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][19] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[19]),
        .Q(\SRL_SIG_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[1]),
        .Q(\SRL_SIG_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][20] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[20]),
        .Q(\SRL_SIG_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][21] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[21]),
        .Q(\SRL_SIG_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][22] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[22]),
        .Q(\SRL_SIG_reg[0]_0 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][23] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[23]),
        .Q(\SRL_SIG_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][24] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[24]),
        .Q(\SRL_SIG_reg[0]_0 [24]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][25] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[25]),
        .Q(\SRL_SIG_reg[0]_0 [25]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][26] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[26]),
        .Q(\SRL_SIG_reg[0]_0 [26]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][27] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[27]),
        .Q(\SRL_SIG_reg[0]_0 [27]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][28] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[28]),
        .Q(\SRL_SIG_reg[0]_0 [28]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][29] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[29]),
        .Q(\SRL_SIG_reg[0]_0 [29]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[2]),
        .Q(\SRL_SIG_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][30] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[30]),
        .Q(\SRL_SIG_reg[0]_0 [30]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][31] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[31]),
        .Q(\SRL_SIG_reg[0]_0 [31]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[3]),
        .Q(\SRL_SIG_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[4]),
        .Q(\SRL_SIG_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[5]),
        .Q(\SRL_SIG_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[6]),
        .Q(\SRL_SIG_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[7]),
        .Q(\SRL_SIG_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][8] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[8]),
        .Q(\SRL_SIG_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][9] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(in[9]),
        .Q(\SRL_SIG_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [0]),
        .Q(\SRL_SIG_reg[1]_1 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][10] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [10]),
        .Q(\SRL_SIG_reg[1]_1 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][11] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [11]),
        .Q(\SRL_SIG_reg[1]_1 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][12] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [12]),
        .Q(\SRL_SIG_reg[1]_1 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][13] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [13]),
        .Q(\SRL_SIG_reg[1]_1 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][14] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [14]),
        .Q(\SRL_SIG_reg[1]_1 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][15] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [15]),
        .Q(\SRL_SIG_reg[1]_1 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][16] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [16]),
        .Q(\SRL_SIG_reg[1]_1 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][17] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [17]),
        .Q(\SRL_SIG_reg[1]_1 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][18] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [18]),
        .Q(\SRL_SIG_reg[1]_1 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][19] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [19]),
        .Q(\SRL_SIG_reg[1]_1 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [1]),
        .Q(\SRL_SIG_reg[1]_1 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][20] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [20]),
        .Q(\SRL_SIG_reg[1]_1 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][21] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [21]),
        .Q(\SRL_SIG_reg[1]_1 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][22] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [22]),
        .Q(\SRL_SIG_reg[1]_1 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][23] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [23]),
        .Q(\SRL_SIG_reg[1]_1 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][24] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [24]),
        .Q(\SRL_SIG_reg[1]_1 [24]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][25] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [25]),
        .Q(\SRL_SIG_reg[1]_1 [25]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][26] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [26]),
        .Q(\SRL_SIG_reg[1]_1 [26]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][27] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [27]),
        .Q(\SRL_SIG_reg[1]_1 [27]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][28] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [28]),
        .Q(\SRL_SIG_reg[1]_1 [28]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][29] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [29]),
        .Q(\SRL_SIG_reg[1]_1 [29]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [2]),
        .Q(\SRL_SIG_reg[1]_1 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][30] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [30]),
        .Q(\SRL_SIG_reg[1]_1 [30]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][31] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [31]),
        .Q(\SRL_SIG_reg[1]_1 [31]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [3]),
        .Q(\SRL_SIG_reg[1]_1 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [4]),
        .Q(\SRL_SIG_reg[1]_1 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [5]),
        .Q(\SRL_SIG_reg[1]_1 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [6]),
        .Q(\SRL_SIG_reg[1]_1 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [7]),
        .Q(\SRL_SIG_reg[1]_1 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][8] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [8]),
        .Q(\SRL_SIG_reg[1]_1 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][9] 
       (.C(ap_clk),
        .CE(shiftReg_ce_0),
        .D(\SRL_SIG_reg[0]_0 [9]),
        .Q(\SRL_SIG_reg[1]_1 [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[0]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[10]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [10]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[11]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [11]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [11]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[12]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [12]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [12]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[13]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [13]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [13]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[14]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [14]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [14]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[15]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [15]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [15]),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[16]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [16]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [16]),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[17]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [17]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [17]),
        .O(D[17]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[18]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [18]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [18]),
        .O(D[18]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[19]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [19]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [19]),
        .O(D[19]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[1]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[20]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [20]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [20]),
        .O(D[20]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[21]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [21]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [21]),
        .O(D[21]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[22]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [22]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [22]),
        .O(D[22]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[23]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [23]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [23]),
        .O(D[23]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[24]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [24]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [24]),
        .O(D[24]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[25]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [25]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [25]),
        .O(D[25]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[26]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [26]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [26]),
        .O(D[26]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[27]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [27]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [27]),
        .O(D[27]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[28]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [28]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [28]),
        .O(D[28]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[29]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [29]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [29]),
        .O(D[29]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[2]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[30]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [30]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [30]),
        .O(D[30]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[31]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [31]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [31]),
        .O(D[31]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[3]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[4]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[5]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[6]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[7]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [7]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[8]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [8]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [8]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rows_reg_185[9]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [9]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [9]),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "colordetect_accel_fifo_w32_d2_S_shiftReg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d2_S_shiftReg_6
   (imgInput_rows_c9_dout,
    p__0,
    p__0_0,
    shiftReg_ce,
    D,
    ap_clk);
  output [31:0]imgInput_rows_c9_dout;
  input p__0;
  input p__0_0;
  input shiftReg_ce;
  input [31:0]D;
  input ap_clk;

  wire [31:0]D;
  wire [31:0]\SRL_SIG_reg[0]_0 ;
  wire [31:0]\SRL_SIG_reg[1]_1 ;
  wire ap_clk;
  wire [31:0]imgInput_rows_c9_dout;
  wire p__0;
  wire p__0_0;
  wire shiftReg_ce;

  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[0]),
        .Q(\SRL_SIG_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][10] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[10]),
        .Q(\SRL_SIG_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][11] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[11]),
        .Q(\SRL_SIG_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][12] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[12]),
        .Q(\SRL_SIG_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][13] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[13]),
        .Q(\SRL_SIG_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][14] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[14]),
        .Q(\SRL_SIG_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][15] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[15]),
        .Q(\SRL_SIG_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][16] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[16]),
        .Q(\SRL_SIG_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][17] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[17]),
        .Q(\SRL_SIG_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][18] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[18]),
        .Q(\SRL_SIG_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][19] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[19]),
        .Q(\SRL_SIG_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[1]),
        .Q(\SRL_SIG_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][20] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[20]),
        .Q(\SRL_SIG_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][21] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[21]),
        .Q(\SRL_SIG_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][22] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[22]),
        .Q(\SRL_SIG_reg[0]_0 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][23] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[23]),
        .Q(\SRL_SIG_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][24] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[24]),
        .Q(\SRL_SIG_reg[0]_0 [24]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][25] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[25]),
        .Q(\SRL_SIG_reg[0]_0 [25]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][26] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[26]),
        .Q(\SRL_SIG_reg[0]_0 [26]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][27] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[27]),
        .Q(\SRL_SIG_reg[0]_0 [27]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][28] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[28]),
        .Q(\SRL_SIG_reg[0]_0 [28]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][29] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[29]),
        .Q(\SRL_SIG_reg[0]_0 [29]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[2]),
        .Q(\SRL_SIG_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][30] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[30]),
        .Q(\SRL_SIG_reg[0]_0 [30]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][31] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[31]),
        .Q(\SRL_SIG_reg[0]_0 [31]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[3]),
        .Q(\SRL_SIG_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[4]),
        .Q(\SRL_SIG_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[5]),
        .Q(\SRL_SIG_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[6]),
        .Q(\SRL_SIG_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[7]),
        .Q(\SRL_SIG_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][8] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[8]),
        .Q(\SRL_SIG_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][9] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[9]),
        .Q(\SRL_SIG_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [0]),
        .Q(\SRL_SIG_reg[1]_1 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][10] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [10]),
        .Q(\SRL_SIG_reg[1]_1 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][11] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [11]),
        .Q(\SRL_SIG_reg[1]_1 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][12] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [12]),
        .Q(\SRL_SIG_reg[1]_1 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][13] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [13]),
        .Q(\SRL_SIG_reg[1]_1 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][14] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [14]),
        .Q(\SRL_SIG_reg[1]_1 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][15] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [15]),
        .Q(\SRL_SIG_reg[1]_1 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][16] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [16]),
        .Q(\SRL_SIG_reg[1]_1 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][17] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [17]),
        .Q(\SRL_SIG_reg[1]_1 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][18] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [18]),
        .Q(\SRL_SIG_reg[1]_1 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][19] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [19]),
        .Q(\SRL_SIG_reg[1]_1 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [1]),
        .Q(\SRL_SIG_reg[1]_1 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][20] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [20]),
        .Q(\SRL_SIG_reg[1]_1 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][21] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [21]),
        .Q(\SRL_SIG_reg[1]_1 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][22] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [22]),
        .Q(\SRL_SIG_reg[1]_1 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][23] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [23]),
        .Q(\SRL_SIG_reg[1]_1 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][24] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [24]),
        .Q(\SRL_SIG_reg[1]_1 [24]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][25] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [25]),
        .Q(\SRL_SIG_reg[1]_1 [25]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][26] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [26]),
        .Q(\SRL_SIG_reg[1]_1 [26]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][27] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [27]),
        .Q(\SRL_SIG_reg[1]_1 [27]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][28] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [28]),
        .Q(\SRL_SIG_reg[1]_1 [28]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][29] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [29]),
        .Q(\SRL_SIG_reg[1]_1 [29]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [2]),
        .Q(\SRL_SIG_reg[1]_1 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][30] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [30]),
        .Q(\SRL_SIG_reg[1]_1 [30]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][31] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [31]),
        .Q(\SRL_SIG_reg[1]_1 [31]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [3]),
        .Q(\SRL_SIG_reg[1]_1 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [4]),
        .Q(\SRL_SIG_reg[1]_1 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [5]),
        .Q(\SRL_SIG_reg[1]_1 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [6]),
        .Q(\SRL_SIG_reg[1]_1 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [7]),
        .Q(\SRL_SIG_reg[1]_1 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][8] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [8]),
        .Q(\SRL_SIG_reg[1]_1 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][9] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [9]),
        .Q(\SRL_SIG_reg[1]_1 [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p__0_i_1
       (.I0(\SRL_SIG_reg[0]_0 [16]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [16]),
        .O(imgInput_rows_c9_dout[16]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p__0_i_10
       (.I0(\SRL_SIG_reg[0]_0 [7]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [7]),
        .O(imgInput_rows_c9_dout[7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p__0_i_11
       (.I0(\SRL_SIG_reg[0]_0 [6]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [6]),
        .O(imgInput_rows_c9_dout[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p__0_i_12
       (.I0(\SRL_SIG_reg[0]_0 [5]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [5]),
        .O(imgInput_rows_c9_dout[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p__0_i_13
       (.I0(\SRL_SIG_reg[0]_0 [4]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [4]),
        .O(imgInput_rows_c9_dout[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p__0_i_14
       (.I0(\SRL_SIG_reg[0]_0 [3]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [3]),
        .O(imgInput_rows_c9_dout[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p__0_i_15
       (.I0(\SRL_SIG_reg[0]_0 [2]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [2]),
        .O(imgInput_rows_c9_dout[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p__0_i_16
       (.I0(\SRL_SIG_reg[0]_0 [1]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [1]),
        .O(imgInput_rows_c9_dout[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p__0_i_17
       (.I0(\SRL_SIG_reg[0]_0 [0]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [0]),
        .O(imgInput_rows_c9_dout[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p__0_i_2
       (.I0(\SRL_SIG_reg[0]_0 [15]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [15]),
        .O(imgInput_rows_c9_dout[15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p__0_i_3
       (.I0(\SRL_SIG_reg[0]_0 [14]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [14]),
        .O(imgInput_rows_c9_dout[14]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p__0_i_4
       (.I0(\SRL_SIG_reg[0]_0 [13]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [13]),
        .O(imgInput_rows_c9_dout[13]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p__0_i_5
       (.I0(\SRL_SIG_reg[0]_0 [12]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [12]),
        .O(imgInput_rows_c9_dout[12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p__0_i_6
       (.I0(\SRL_SIG_reg[0]_0 [11]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [11]),
        .O(imgInput_rows_c9_dout[11]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p__0_i_7
       (.I0(\SRL_SIG_reg[0]_0 [10]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [10]),
        .O(imgInput_rows_c9_dout[10]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p__0_i_8
       (.I0(\SRL_SIG_reg[0]_0 [9]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [9]),
        .O(imgInput_rows_c9_dout[9]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p__0_i_9
       (.I0(\SRL_SIG_reg[0]_0 [8]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [8]),
        .O(imgInput_rows_c9_dout[8]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_1
       (.I0(\SRL_SIG_reg[0]_0 [31]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [31]),
        .O(imgInput_rows_c9_dout[31]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_10
       (.I0(\SRL_SIG_reg[0]_0 [22]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [22]),
        .O(imgInput_rows_c9_dout[22]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_11
       (.I0(\SRL_SIG_reg[0]_0 [21]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [21]),
        .O(imgInput_rows_c9_dout[21]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_12
       (.I0(\SRL_SIG_reg[0]_0 [20]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [20]),
        .O(imgInput_rows_c9_dout[20]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_13
       (.I0(\SRL_SIG_reg[0]_0 [19]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [19]),
        .O(imgInput_rows_c9_dout[19]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_14
       (.I0(\SRL_SIG_reg[0]_0 [18]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [18]),
        .O(imgInput_rows_c9_dout[18]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_15
       (.I0(\SRL_SIG_reg[0]_0 [17]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [17]),
        .O(imgInput_rows_c9_dout[17]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_2
       (.I0(\SRL_SIG_reg[0]_0 [30]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [30]),
        .O(imgInput_rows_c9_dout[30]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_3
       (.I0(\SRL_SIG_reg[0]_0 [29]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [29]),
        .O(imgInput_rows_c9_dout[29]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_4
       (.I0(\SRL_SIG_reg[0]_0 [28]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [28]),
        .O(imgInput_rows_c9_dout[28]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_5
       (.I0(\SRL_SIG_reg[0]_0 [27]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [27]),
        .O(imgInput_rows_c9_dout[27]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_6
       (.I0(\SRL_SIG_reg[0]_0 [26]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [26]),
        .O(imgInput_rows_c9_dout[26]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_7
       (.I0(\SRL_SIG_reg[0]_0 [25]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [25]),
        .O(imgInput_rows_c9_dout[25]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_8
       (.I0(\SRL_SIG_reg[0]_0 [24]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [24]),
        .O(imgInput_rows_c9_dout[24]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_9
       (.I0(\SRL_SIG_reg[0]_0 [23]),
        .I1(p__0),
        .I2(p__0_0),
        .I3(\SRL_SIG_reg[1]_1 [23]),
        .O(imgInput_rows_c9_dout[23]));
endmodule

(* ORIG_REF_NAME = "colordetect_accel_fifo_w32_d2_S_shiftReg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d2_S_shiftReg_8
   (D,
    Q,
    shiftReg_ce,
    in,
    ap_clk);
  output [31:0]D;
  input [1:0]Q;
  input shiftReg_ce;
  input [31:0]in;
  input ap_clk;

  wire [31:0]D;
  wire [1:0]Q;
  wire [31:0]\SRL_SIG_reg[0]_0 ;
  wire [31:0]\SRL_SIG_reg[1]_1 ;
  wire ap_clk;
  wire [31:0]in;
  wire shiftReg_ce;

  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[0]),
        .Q(\SRL_SIG_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][10] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[10]),
        .Q(\SRL_SIG_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][11] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[11]),
        .Q(\SRL_SIG_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][12] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[12]),
        .Q(\SRL_SIG_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][13] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[13]),
        .Q(\SRL_SIG_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][14] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[14]),
        .Q(\SRL_SIG_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][15] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[15]),
        .Q(\SRL_SIG_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][16] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[16]),
        .Q(\SRL_SIG_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][17] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[17]),
        .Q(\SRL_SIG_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][18] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[18]),
        .Q(\SRL_SIG_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][19] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[19]),
        .Q(\SRL_SIG_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[1]),
        .Q(\SRL_SIG_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][20] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[20]),
        .Q(\SRL_SIG_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][21] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[21]),
        .Q(\SRL_SIG_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][22] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[22]),
        .Q(\SRL_SIG_reg[0]_0 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][23] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[23]),
        .Q(\SRL_SIG_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][24] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[24]),
        .Q(\SRL_SIG_reg[0]_0 [24]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][25] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[25]),
        .Q(\SRL_SIG_reg[0]_0 [25]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][26] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[26]),
        .Q(\SRL_SIG_reg[0]_0 [26]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][27] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[27]),
        .Q(\SRL_SIG_reg[0]_0 [27]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][28] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[28]),
        .Q(\SRL_SIG_reg[0]_0 [28]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][29] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[29]),
        .Q(\SRL_SIG_reg[0]_0 [29]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[2]),
        .Q(\SRL_SIG_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][30] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[30]),
        .Q(\SRL_SIG_reg[0]_0 [30]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][31] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[31]),
        .Q(\SRL_SIG_reg[0]_0 [31]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[3]),
        .Q(\SRL_SIG_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[4]),
        .Q(\SRL_SIG_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[5]),
        .Q(\SRL_SIG_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[6]),
        .Q(\SRL_SIG_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[7]),
        .Q(\SRL_SIG_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][8] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[8]),
        .Q(\SRL_SIG_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][9] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(in[9]),
        .Q(\SRL_SIG_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [0]),
        .Q(\SRL_SIG_reg[1]_1 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][10] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [10]),
        .Q(\SRL_SIG_reg[1]_1 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][11] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [11]),
        .Q(\SRL_SIG_reg[1]_1 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][12] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [12]),
        .Q(\SRL_SIG_reg[1]_1 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][13] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [13]),
        .Q(\SRL_SIG_reg[1]_1 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][14] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [14]),
        .Q(\SRL_SIG_reg[1]_1 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][15] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [15]),
        .Q(\SRL_SIG_reg[1]_1 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][16] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [16]),
        .Q(\SRL_SIG_reg[1]_1 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][17] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [17]),
        .Q(\SRL_SIG_reg[1]_1 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][18] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [18]),
        .Q(\SRL_SIG_reg[1]_1 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][19] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [19]),
        .Q(\SRL_SIG_reg[1]_1 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [1]),
        .Q(\SRL_SIG_reg[1]_1 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][20] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [20]),
        .Q(\SRL_SIG_reg[1]_1 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][21] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [21]),
        .Q(\SRL_SIG_reg[1]_1 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][22] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [22]),
        .Q(\SRL_SIG_reg[1]_1 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][23] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [23]),
        .Q(\SRL_SIG_reg[1]_1 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][24] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [24]),
        .Q(\SRL_SIG_reg[1]_1 [24]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][25] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [25]),
        .Q(\SRL_SIG_reg[1]_1 [25]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][26] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [26]),
        .Q(\SRL_SIG_reg[1]_1 [26]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][27] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [27]),
        .Q(\SRL_SIG_reg[1]_1 [27]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][28] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [28]),
        .Q(\SRL_SIG_reg[1]_1 [28]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][29] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [29]),
        .Q(\SRL_SIG_reg[1]_1 [29]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [2]),
        .Q(\SRL_SIG_reg[1]_1 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][30] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [30]),
        .Q(\SRL_SIG_reg[1]_1 [30]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][31] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [31]),
        .Q(\SRL_SIG_reg[1]_1 [31]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [3]),
        .Q(\SRL_SIG_reg[1]_1 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [4]),
        .Q(\SRL_SIG_reg[1]_1 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [5]),
        .Q(\SRL_SIG_reg[1]_1 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [6]),
        .Q(\SRL_SIG_reg[1]_1 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [7]),
        .Q(\SRL_SIG_reg[1]_1 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][8] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [8]),
        .Q(\SRL_SIG_reg[1]_1 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][9] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [9]),
        .Q(\SRL_SIG_reg[1]_1 [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[0]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[10]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [10]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[11]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [11]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [11]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[12]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [12]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [12]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[13]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [13]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [13]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[14]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [14]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [14]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[15]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [15]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [15]),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[16]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [16]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [16]),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[17]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [17]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [17]),
        .O(D[17]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[18]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [18]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [18]),
        .O(D[18]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[19]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [19]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [19]),
        .O(D[19]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[1]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[20]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [20]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [20]),
        .O(D[20]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[21]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [21]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [21]),
        .O(D[21]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[22]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [22]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [22]),
        .O(D[22]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[23]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [23]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [23]),
        .O(D[23]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[24]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [24]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [24]),
        .O(D[24]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[25]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [25]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [25]),
        .O(D[25]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[26]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [26]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [26]),
        .O(D[26]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[27]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [27]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [27]),
        .O(D[27]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[28]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [28]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [28]),
        .O(D[28]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[29]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [29]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [29]),
        .O(D[29]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[2]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[30]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [30]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [30]),
        .O(D[30]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[31]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [31]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [31]),
        .O(D[31]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[3]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[4]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[5]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[6]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[7]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [7]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[8]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [8]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [8]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \cols_reg_190[9]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [9]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1]_1 [9]),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "colordetect_accel_fifo_w32_d2_S_shiftReg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d2_S_shiftReg_9
   (imgInput_cols_c10_dout,
    p,
    p_0,
    shiftReg_ce,
    D,
    ap_clk);
  output [31:0]imgInput_cols_c10_dout;
  input p;
  input p_0;
  input shiftReg_ce;
  input [31:0]D;
  input ap_clk;

  wire [31:0]D;
  wire [31:0]\SRL_SIG_reg[0]_0 ;
  wire [31:0]\SRL_SIG_reg[1]_1 ;
  wire ap_clk;
  wire [31:0]imgInput_cols_c10_dout;
  wire p;
  wire p_0;
  wire shiftReg_ce;

  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[0]),
        .Q(\SRL_SIG_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][10] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[10]),
        .Q(\SRL_SIG_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][11] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[11]),
        .Q(\SRL_SIG_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][12] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[12]),
        .Q(\SRL_SIG_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][13] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[13]),
        .Q(\SRL_SIG_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][14] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[14]),
        .Q(\SRL_SIG_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][15] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[15]),
        .Q(\SRL_SIG_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][16] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[16]),
        .Q(\SRL_SIG_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][17] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[17]),
        .Q(\SRL_SIG_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][18] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[18]),
        .Q(\SRL_SIG_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][19] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[19]),
        .Q(\SRL_SIG_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[1]),
        .Q(\SRL_SIG_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][20] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[20]),
        .Q(\SRL_SIG_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][21] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[21]),
        .Q(\SRL_SIG_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][22] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[22]),
        .Q(\SRL_SIG_reg[0]_0 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][23] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[23]),
        .Q(\SRL_SIG_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][24] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[24]),
        .Q(\SRL_SIG_reg[0]_0 [24]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][25] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[25]),
        .Q(\SRL_SIG_reg[0]_0 [25]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][26] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[26]),
        .Q(\SRL_SIG_reg[0]_0 [26]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][27] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[27]),
        .Q(\SRL_SIG_reg[0]_0 [27]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][28] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[28]),
        .Q(\SRL_SIG_reg[0]_0 [28]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][29] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[29]),
        .Q(\SRL_SIG_reg[0]_0 [29]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[2]),
        .Q(\SRL_SIG_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][30] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[30]),
        .Q(\SRL_SIG_reg[0]_0 [30]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][31] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[31]),
        .Q(\SRL_SIG_reg[0]_0 [31]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[3]),
        .Q(\SRL_SIG_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[4]),
        .Q(\SRL_SIG_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[5]),
        .Q(\SRL_SIG_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[6]),
        .Q(\SRL_SIG_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[7]),
        .Q(\SRL_SIG_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][8] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[8]),
        .Q(\SRL_SIG_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][9] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[9]),
        .Q(\SRL_SIG_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [0]),
        .Q(\SRL_SIG_reg[1]_1 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][10] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [10]),
        .Q(\SRL_SIG_reg[1]_1 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][11] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [11]),
        .Q(\SRL_SIG_reg[1]_1 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][12] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [12]),
        .Q(\SRL_SIG_reg[1]_1 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][13] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [13]),
        .Q(\SRL_SIG_reg[1]_1 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][14] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [14]),
        .Q(\SRL_SIG_reg[1]_1 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][15] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [15]),
        .Q(\SRL_SIG_reg[1]_1 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][16] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [16]),
        .Q(\SRL_SIG_reg[1]_1 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][17] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [17]),
        .Q(\SRL_SIG_reg[1]_1 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][18] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [18]),
        .Q(\SRL_SIG_reg[1]_1 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][19] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [19]),
        .Q(\SRL_SIG_reg[1]_1 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [1]),
        .Q(\SRL_SIG_reg[1]_1 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][20] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [20]),
        .Q(\SRL_SIG_reg[1]_1 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][21] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [21]),
        .Q(\SRL_SIG_reg[1]_1 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][22] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [22]),
        .Q(\SRL_SIG_reg[1]_1 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][23] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [23]),
        .Q(\SRL_SIG_reg[1]_1 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][24] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [24]),
        .Q(\SRL_SIG_reg[1]_1 [24]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][25] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [25]),
        .Q(\SRL_SIG_reg[1]_1 [25]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][26] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [26]),
        .Q(\SRL_SIG_reg[1]_1 [26]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][27] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [27]),
        .Q(\SRL_SIG_reg[1]_1 [27]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][28] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [28]),
        .Q(\SRL_SIG_reg[1]_1 [28]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][29] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [29]),
        .Q(\SRL_SIG_reg[1]_1 [29]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [2]),
        .Q(\SRL_SIG_reg[1]_1 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][30] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [30]),
        .Q(\SRL_SIG_reg[1]_1 [30]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][31] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [31]),
        .Q(\SRL_SIG_reg[1]_1 [31]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [3]),
        .Q(\SRL_SIG_reg[1]_1 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [4]),
        .Q(\SRL_SIG_reg[1]_1 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [5]),
        .Q(\SRL_SIG_reg[1]_1 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [6]),
        .Q(\SRL_SIG_reg[1]_1 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [7]),
        .Q(\SRL_SIG_reg[1]_1 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][8] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [8]),
        .Q(\SRL_SIG_reg[1]_1 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][9] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [9]),
        .Q(\SRL_SIG_reg[1]_1 [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    mul_ln73_reg_663_reg_i_1
       (.I0(\SRL_SIG_reg[0]_0 [31]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [31]),
        .O(imgInput_cols_c10_dout[31]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    mul_ln73_reg_663_reg_i_10
       (.I0(\SRL_SIG_reg[0]_0 [22]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [22]),
        .O(imgInput_cols_c10_dout[22]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    mul_ln73_reg_663_reg_i_11
       (.I0(\SRL_SIG_reg[0]_0 [21]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [21]),
        .O(imgInput_cols_c10_dout[21]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    mul_ln73_reg_663_reg_i_12
       (.I0(\SRL_SIG_reg[0]_0 [20]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [20]),
        .O(imgInput_cols_c10_dout[20]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    mul_ln73_reg_663_reg_i_13
       (.I0(\SRL_SIG_reg[0]_0 [19]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [19]),
        .O(imgInput_cols_c10_dout[19]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    mul_ln73_reg_663_reg_i_14
       (.I0(\SRL_SIG_reg[0]_0 [18]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [18]),
        .O(imgInput_cols_c10_dout[18]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    mul_ln73_reg_663_reg_i_15
       (.I0(\SRL_SIG_reg[0]_0 [17]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [17]),
        .O(imgInput_cols_c10_dout[17]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    mul_ln73_reg_663_reg_i_2
       (.I0(\SRL_SIG_reg[0]_0 [30]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [30]),
        .O(imgInput_cols_c10_dout[30]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    mul_ln73_reg_663_reg_i_3
       (.I0(\SRL_SIG_reg[0]_0 [29]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [29]),
        .O(imgInput_cols_c10_dout[29]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    mul_ln73_reg_663_reg_i_4
       (.I0(\SRL_SIG_reg[0]_0 [28]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [28]),
        .O(imgInput_cols_c10_dout[28]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    mul_ln73_reg_663_reg_i_5
       (.I0(\SRL_SIG_reg[0]_0 [27]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [27]),
        .O(imgInput_cols_c10_dout[27]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    mul_ln73_reg_663_reg_i_6
       (.I0(\SRL_SIG_reg[0]_0 [26]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [26]),
        .O(imgInput_cols_c10_dout[26]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    mul_ln73_reg_663_reg_i_7
       (.I0(\SRL_SIG_reg[0]_0 [25]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [25]),
        .O(imgInput_cols_c10_dout[25]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    mul_ln73_reg_663_reg_i_8
       (.I0(\SRL_SIG_reg[0]_0 [24]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [24]),
        .O(imgInput_cols_c10_dout[24]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    mul_ln73_reg_663_reg_i_9
       (.I0(\SRL_SIG_reg[0]_0 [23]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [23]),
        .O(imgInput_cols_c10_dout[23]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_16
       (.I0(\SRL_SIG_reg[0]_0 [16]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [16]),
        .O(imgInput_cols_c10_dout[16]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_17
       (.I0(\SRL_SIG_reg[0]_0 [15]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [15]),
        .O(imgInput_cols_c10_dout[15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_18
       (.I0(\SRL_SIG_reg[0]_0 [14]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [14]),
        .O(imgInput_cols_c10_dout[14]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_19
       (.I0(\SRL_SIG_reg[0]_0 [13]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [13]),
        .O(imgInput_cols_c10_dout[13]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_20
       (.I0(\SRL_SIG_reg[0]_0 [12]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [12]),
        .O(imgInput_cols_c10_dout[12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_21
       (.I0(\SRL_SIG_reg[0]_0 [11]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [11]),
        .O(imgInput_cols_c10_dout[11]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_22
       (.I0(\SRL_SIG_reg[0]_0 [10]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [10]),
        .O(imgInput_cols_c10_dout[10]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_23
       (.I0(\SRL_SIG_reg[0]_0 [9]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [9]),
        .O(imgInput_cols_c10_dout[9]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_24
       (.I0(\SRL_SIG_reg[0]_0 [8]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [8]),
        .O(imgInput_cols_c10_dout[8]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_25
       (.I0(\SRL_SIG_reg[0]_0 [7]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [7]),
        .O(imgInput_cols_c10_dout[7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_26
       (.I0(\SRL_SIG_reg[0]_0 [6]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [6]),
        .O(imgInput_cols_c10_dout[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_27
       (.I0(\SRL_SIG_reg[0]_0 [5]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [5]),
        .O(imgInput_cols_c10_dout[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_28
       (.I0(\SRL_SIG_reg[0]_0 [4]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [4]),
        .O(imgInput_cols_c10_dout[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_29
       (.I0(\SRL_SIG_reg[0]_0 [3]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [3]),
        .O(imgInput_cols_c10_dout[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_30
       (.I0(\SRL_SIG_reg[0]_0 [2]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [2]),
        .O(imgInput_cols_c10_dout[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_31
       (.I0(\SRL_SIG_reg[0]_0 [1]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [1]),
        .O(imgInput_cols_c10_dout[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_32
       (.I0(\SRL_SIG_reg[0]_0 [0]),
        .I1(p),
        .I2(p_0),
        .I3(\SRL_SIG_reg[1]_1 [0]),
        .O(imgInput_cols_c10_dout[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d4_S
   (rgb2hsv_cols_c_full_n,
    rgb2hsv_cols_c_empty_n,
    out,
    ap_clk,
    ap_rst_n,
    xfMat2axis_24_9_2160_3840_1_U0_img_cols_read,
    shiftReg_ce,
    in,
    ap_rst_n_inv,
    E);
  output rgb2hsv_cols_c_full_n;
  output rgb2hsv_cols_c_empty_n;
  output [31:0]out;
  input ap_clk;
  input ap_rst_n;
  input xfMat2axis_24_9_2160_3840_1_U0_img_cols_read;
  input shiftReg_ce;
  input [31:0]in;
  input ap_rst_n_inv;
  input [0:0]E;

  wire [0:0]E;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [31:0]in;
  wire internal_empty_n_i_1__7_n_3;
  wire internal_empty_n_i_2__0_n_3;
  wire internal_full_n_i_1__7_n_3;
  wire [2:0]mOutPtr;
  wire \mOutPtr[0]_i_1__4_n_3 ;
  wire \mOutPtr[1]_i_1__5_n_3 ;
  wire \mOutPtr[2]_i_1__0_n_3 ;
  wire [31:0]out;
  wire rgb2hsv_cols_c_empty_n;
  wire rgb2hsv_cols_c_full_n;
  wire [1:1]shiftReg_addr;
  wire shiftReg_ce;
  wire xfMat2axis_24_9_2160_3840_1_U0_img_cols_read;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d4_S_shiftReg_5 U_colordetect_accel_fifo_w32_d4_S_ram
       (.Q(mOutPtr),
        .ap_clk(ap_clk),
        .in(in),
        .\mOutPtr_reg[1] (shiftReg_addr),
        .out(out),
        .shiftReg_ce(shiftReg_ce));
  LUT6 #(
    .INIT(64'hEEEE0E0000000000)) 
    internal_empty_n_i_1__7
       (.I0(internal_empty_n_i_2__0_n_3),
        .I1(mOutPtr[2]),
        .I2(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read),
        .I3(shiftReg_ce),
        .I4(rgb2hsv_cols_c_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__7_n_3));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    internal_empty_n_i_2__0
       (.I0(mOutPtr[1]),
        .I1(mOutPtr[0]),
        .I2(shiftReg_ce),
        .I3(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read),
        .O(internal_empty_n_i_2__0_n_3));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__7_n_3),
        .Q(rgb2hsv_cols_c_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFD0FFFFFFF0FF)) 
    internal_full_n_i_1__7
       (.I0(shiftReg_addr),
        .I1(mOutPtr[0]),
        .I2(rgb2hsv_cols_c_full_n),
        .I3(ap_rst_n),
        .I4(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read),
        .I5(shiftReg_ce),
        .O(internal_full_n_i_1__7_n_3));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__7_n_3),
        .Q(rgb2hsv_cols_c_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__4 
       (.I0(mOutPtr[0]),
        .O(\mOutPtr[0]_i_1__4_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \mOutPtr[1]_i_1__5 
       (.I0(shiftReg_ce),
        .I1(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read),
        .I2(mOutPtr[1]),
        .I3(mOutPtr[0]),
        .O(\mOutPtr[1]_i_1__5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h65AAAA9A)) 
    \mOutPtr[2]_i_1__0 
       (.I0(mOutPtr[2]),
        .I1(shiftReg_ce),
        .I2(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .O(\mOutPtr[2]_i_1__0_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__4_n_3 ),
        .Q(mOutPtr[0]),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1__5_n_3 ),
        .Q(mOutPtr[1]),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[2]_i_1__0_n_3 ),
        .Q(mOutPtr[2]),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "colordetect_accel_fifo_w32_d4_S" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d4_S_4
   (rgb2hsv_rows_c_full_n,
    rgb2hsv_rows_c_empty_n,
    out,
    ap_clk,
    xfMat2axis_24_9_2160_3840_1_U0_img_cols_read,
    shiftReg_ce,
    ap_rst_n,
    in,
    ap_rst_n_inv,
    E);
  output rgb2hsv_rows_c_full_n;
  output rgb2hsv_rows_c_empty_n;
  output [31:0]out;
  input ap_clk;
  input xfMat2axis_24_9_2160_3840_1_U0_img_cols_read;
  input shiftReg_ce;
  input ap_rst_n;
  input [31:0]in;
  input ap_rst_n_inv;
  input [0:0]E;

  wire [0:0]E;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [31:0]in;
  wire internal_empty_n_i_1__6_n_3;
  wire internal_empty_n_i_2__1_n_3;
  wire internal_full_n_i_1__6_n_3;
  wire [2:0]mOutPtr;
  wire \mOutPtr[0]_i_1__3_n_3 ;
  wire \mOutPtr[1]_i_1__6_n_3 ;
  wire \mOutPtr[2]_i_2_n_3 ;
  wire [31:0]out;
  wire rgb2hsv_rows_c_empty_n;
  wire rgb2hsv_rows_c_full_n;
  wire [1:1]shiftReg_addr;
  wire shiftReg_ce;
  wire xfMat2axis_24_9_2160_3840_1_U0_img_cols_read;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d4_S_shiftReg U_colordetect_accel_fifo_w32_d4_S_ram
       (.Q(mOutPtr),
        .ap_clk(ap_clk),
        .in(in),
        .\mOutPtr_reg[1] (shiftReg_addr),
        .out(out),
        .shiftReg_ce(shiftReg_ce));
  LUT6 #(
    .INIT(64'hEEEE0E0000000000)) 
    internal_empty_n_i_1__6
       (.I0(internal_empty_n_i_2__1_n_3),
        .I1(mOutPtr[2]),
        .I2(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read),
        .I3(shiftReg_ce),
        .I4(rgb2hsv_rows_c_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__6_n_3));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    internal_empty_n_i_2__1
       (.I0(mOutPtr[1]),
        .I1(mOutPtr[0]),
        .I2(shiftReg_ce),
        .I3(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read),
        .O(internal_empty_n_i_2__1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__6_n_3),
        .Q(rgb2hsv_rows_c_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFD0FFFFFFF0FF)) 
    internal_full_n_i_1__6
       (.I0(shiftReg_addr),
        .I1(mOutPtr[0]),
        .I2(rgb2hsv_rows_c_full_n),
        .I3(ap_rst_n),
        .I4(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read),
        .I5(shiftReg_ce),
        .O(internal_full_n_i_1__6_n_3));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__6_n_3),
        .Q(rgb2hsv_rows_c_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__3 
       (.I0(mOutPtr[0]),
        .O(\mOutPtr[0]_i_1__3_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \mOutPtr[1]_i_1__6 
       (.I0(shiftReg_ce),
        .I1(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read),
        .I2(mOutPtr[1]),
        .I3(mOutPtr[0]),
        .O(\mOutPtr[1]_i_1__6_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h65AAAA9A)) 
    \mOutPtr[2]_i_2 
       (.I0(mOutPtr[2]),
        .I1(shiftReg_ce),
        .I2(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .O(\mOutPtr[2]_i_2_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__3_n_3 ),
        .Q(mOutPtr[0]),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1__6_n_3 ),
        .Q(mOutPtr[1]),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[2]_i_2_n_3 ),
        .Q(mOutPtr[2]),
        .S(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d4_S_shiftReg
   (\mOutPtr_reg[1] ,
    out,
    Q,
    shiftReg_ce,
    in,
    ap_clk);
  output [0:0]\mOutPtr_reg[1] ;
  output [31:0]out;
  input [2:0]Q;
  input shiftReg_ce;
  input [31:0]in;
  input ap_clk;

  wire [2:0]Q;
  wire ap_clk;
  wire [31:0]in;
  wire [0:0]\mOutPtr_reg[1] ;
  wire [31:0]out;
  wire [0:0]shiftReg_addr;
  wire shiftReg_ce;

  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][0]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[0]),
        .Q(out[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[3][0]_srl4_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(shiftReg_addr));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[3][0]_srl4_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\mOutPtr_reg[1] ));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][10]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][10]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[10]),
        .Q(out[10]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][11]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][11]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[11]),
        .Q(out[11]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][12]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][12]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[12]),
        .Q(out[12]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][13]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][13]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[13]),
        .Q(out[13]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][14]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][14]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[14]),
        .Q(out[14]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][15]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][15]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[15]),
        .Q(out[15]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][16]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][16]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[16]),
        .Q(out[16]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][17]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][17]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[17]),
        .Q(out[17]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][18]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][18]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[18]),
        .Q(out[18]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][19]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][19]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[19]),
        .Q(out[19]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][1]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][1]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][20]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][20]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[20]),
        .Q(out[20]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][21]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][21]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[21]),
        .Q(out[21]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][22]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][22]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[22]),
        .Q(out[22]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][23]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][23]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[23]),
        .Q(out[23]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][24]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][24]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[24]),
        .Q(out[24]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][25]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][25]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[25]),
        .Q(out[25]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][26]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][26]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[26]),
        .Q(out[26]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][27]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][27]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[27]),
        .Q(out[27]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][28]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][28]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[28]),
        .Q(out[28]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][29]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][29]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[29]),
        .Q(out[29]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][2]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][2]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][30]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][30]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[30]),
        .Q(out[30]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][31]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][31]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[31]),
        .Q(out[31]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][3]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][3]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[3]),
        .Q(out[3]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][4]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[4]),
        .Q(out[4]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][5]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][5]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[5]),
        .Q(out[5]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][6]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[6]),
        .Q(out[6]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][7]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[7]),
        .Q(out[7]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][8]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[8]),
        .Q(out[8]));
  (* srl_bus_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_rows_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][9]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][9]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[9]),
        .Q(out[9]));
endmodule

(* ORIG_REF_NAME = "colordetect_accel_fifo_w32_d4_S_shiftReg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_fifo_w32_d4_S_shiftReg_5
   (\mOutPtr_reg[1] ,
    out,
    Q,
    shiftReg_ce,
    in,
    ap_clk);
  output [0:0]\mOutPtr_reg[1] ;
  output [31:0]out;
  input [2:0]Q;
  input shiftReg_ce;
  input [31:0]in;
  input ap_clk;

  wire [2:0]Q;
  wire ap_clk;
  wire [31:0]in;
  wire [0:0]\mOutPtr_reg[1] ;
  wire [31:0]out;
  wire [0:0]shiftReg_addr;
  wire shiftReg_ce;

  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][0]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[0]),
        .Q(out[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[3][0]_srl4_i_1__0 
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(shiftReg_addr));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[3][0]_srl4_i_2__0 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\mOutPtr_reg[1] ));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][10]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][10]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[10]),
        .Q(out[10]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][11]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][11]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[11]),
        .Q(out[11]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][12]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][12]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[12]),
        .Q(out[12]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][13]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][13]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[13]),
        .Q(out[13]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][14]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][14]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[14]),
        .Q(out[14]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][15]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][15]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[15]),
        .Q(out[15]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][16]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][16]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[16]),
        .Q(out[16]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][17]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][17]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[17]),
        .Q(out[17]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][18]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][18]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[18]),
        .Q(out[18]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][19]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][19]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[19]),
        .Q(out[19]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][1]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][1]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][20]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][20]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[20]),
        .Q(out[20]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][21]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][21]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[21]),
        .Q(out[21]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][22]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][22]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[22]),
        .Q(out[22]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][23]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][23]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[23]),
        .Q(out[23]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][24]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][24]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[24]),
        .Q(out[24]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][25]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][25]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[25]),
        .Q(out[25]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][26]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][26]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[26]),
        .Q(out[26]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][27]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][27]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[27]),
        .Q(out[27]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][28]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][28]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[28]),
        .Q(out[28]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][29]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][29]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[29]),
        .Q(out[29]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][2]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][2]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][30]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][30]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[30]),
        .Q(out[30]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][31]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][31]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[31]),
        .Q(out[31]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][3]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][3]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[3]),
        .Q(out[3]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][4]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[4]),
        .Q(out[4]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][5]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][5]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[5]),
        .Q(out[5]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][6]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[6]),
        .Q(out[6]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][7]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[7]),
        .Q(out[7]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][8]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[8]),
        .Q(out[8]));
  (* srl_bus_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\rgb2hsv_cols_c_U/U_colordetect_accel_fifo_w32_d4_S_ram/SRL_SIG_reg[3][9]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][9]_srl4 
       (.A0(shiftReg_addr),
        .A1(\mOutPtr_reg[1] ),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[9]),
        .Q(out[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_mac_muladd_20s_8ns_13ns_20_4_1
   (D,
    grp_fu_632_ce,
    ap_clk,
    B,
    A,
    Q,
    ap_block_pp0_stage0_11001);
  output [7:0]D;
  output grp_fu_632_ce;
  input ap_clk;
  input [7:0]B;
  input [19:0]A;
  input [0:0]Q;
  input ap_block_pp0_stage0_11001;

  wire [19:0]A;
  wire [7:0]B;
  wire [7:0]D;
  wire [0:0]Q;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire grp_fu_632_ce;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_mac_muladd_20s_8ns_13ns_20_4_1_DSP48_0 colordetect_accel_mac_muladd_20s_8ns_13ns_20_4_1_DSP48_0_U
       (.A(A),
        .B(B),
        .D(D),
        .Q(Q),
        .\ap_CS_fsm_reg[2] (grp_fu_632_ce),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_mac_muladd_20s_8ns_13ns_20_4_1_DSP48_0
   (D,
    \ap_CS_fsm_reg[2] ,
    ap_clk,
    B,
    A,
    Q,
    ap_block_pp0_stage0_11001);
  output [7:0]D;
  output \ap_CS_fsm_reg[2] ;
  input ap_clk;
  input [7:0]B;
  input [19:0]A;
  input [0:0]Q;
  input ap_block_pp0_stage0_11001;

  wire [19:0]A;
  wire [7:0]B;
  wire [7:0]D;
  wire [0:0]Q;
  wire \ap_CS_fsm_reg[2] ;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_106;
  wire p_reg_reg_n_107;
  wire p_reg_reg_n_108;
  wire p_reg_reg_n_97;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:20]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({A[19],A[19],A[19],A[19],A[19],A[19],A[19],A[19],A[19],A[19],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(\ap_CS_fsm_reg[2] ),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\ap_CS_fsm_reg[2] ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(\ap_CS_fsm_reg[2] ),
        .CEP(\ap_CS_fsm_reg[2] ),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:20],D,p_reg_reg_n_97,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105,p_reg_reg_n_106,p_reg_reg_n_107,p_reg_reg_n_108}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h2)) 
    p_reg_reg_i_2
       (.I0(Q),
        .I1(ap_block_pp0_stage0_11001),
        .O(\ap_CS_fsm_reg[2] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_mul_32ns_32ns_64_1_1
   (D,
    PCOUT,
    ACOUT,
    p__0,
    p__0_0,
    ap_enable_reg_pp0_iter0_reg,
    \ap_CS_fsm_reg[2] ,
    indvar_flatten_reg_2180,
    ap_enable_reg_pp0_iter0_reg_0,
    \ap_CS_fsm_reg[2]_0 ,
    indvar_flatten_reg_218,
    Q,
    ap_clk,
    imgInput_rows_c9_dout,
    imgInput_cols_c10_dout,
    P,
    \indvar_flatten_reg_218[0]_i_27 ,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    ap_rst_n,
    ap_block_pp0_stage0_11001,
    \ap_CS_fsm_reg[3] ,
    ap_enable_reg_pp0_iter9,
    p_carry__10,
    indvar_flatten_reg_218_reg,
    CO,
    S,
    p_carry__3,
    \icmp_ln128_reg_673_reg[0] );
  output [16:0]D;
  output [47:0]PCOUT;
  output [29:0]ACOUT;
  output [16:0]p__0;
  output [47:0]p__0_0;
  output ap_enable_reg_pp0_iter0_reg;
  output [1:0]\ap_CS_fsm_reg[2] ;
  output indvar_flatten_reg_2180;
  output ap_enable_reg_pp0_iter0_reg_0;
  output \ap_CS_fsm_reg[2]_0 ;
  output indvar_flatten_reg_218;
  input [2:0]Q;
  input ap_clk;
  input [31:0]imgInput_rows_c9_dout;
  input [16:0]imgInput_cols_c10_dout;
  input [46:0]P;
  input [1:0]\indvar_flatten_reg_218[0]_i_27 ;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input ap_rst_n;
  input ap_block_pp0_stage0_11001;
  input \ap_CS_fsm_reg[3] ;
  input ap_enable_reg_pp0_iter9;
  input [29:0]p_carry__10;
  input [48:0]indvar_flatten_reg_218_reg;
  input [0:0]CO;
  input [0:0]S;
  input [16:0]p_carry__3;
  input \icmp_ln128_reg_673_reg[0] ;

  wire [29:0]ACOUT;
  wire [0:0]CO;
  wire [16:0]D;
  wire [46:0]P;
  wire [47:0]PCOUT;
  wire [2:0]Q;
  wire [0:0]S;
  wire [1:0]\ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[2]_0 ;
  wire \ap_CS_fsm_reg[3] ;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter0_reg_0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter9;
  wire ap_rst_n;
  wire \icmp_ln128_reg_673_reg[0] ;
  wire [16:0]imgInput_cols_c10_dout;
  wire [31:0]imgInput_rows_c9_dout;
  wire indvar_flatten_reg_218;
  wire indvar_flatten_reg_2180;
  wire [1:0]\indvar_flatten_reg_218[0]_i_27 ;
  wire [48:0]indvar_flatten_reg_218_reg;
  wire [16:0]p__0;
  wire [47:0]p__0_0;
  wire [29:0]p_carry__10;
  wire [16:0]p_carry__3;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_mul_32ns_32ns_64_1_1_Multiplier_0 colordetect_accel_mul_32ns_32ns_64_1_1_Multiplier_0_U
       (.ACOUT(ACOUT),
        .CO(CO),
        .D(D),
        .P(P),
        .PCOUT(PCOUT),
        .Q(Q),
        .S(S),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .\ap_CS_fsm_reg[2]_0 (\ap_CS_fsm_reg[2]_0 ),
        .\ap_CS_fsm_reg[3] (\ap_CS_fsm_reg[3] ),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter0_reg_0(ap_enable_reg_pp0_iter0_reg_0),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .ap_enable_reg_pp0_iter9(ap_enable_reg_pp0_iter9),
        .ap_rst_n(ap_rst_n),
        .\icmp_ln128_reg_673_reg[0] (\icmp_ln128_reg_673_reg[0] ),
        .imgInput_cols_c10_dout(imgInput_cols_c10_dout),
        .imgInput_rows_c9_dout(imgInput_rows_c9_dout),
        .indvar_flatten_reg_218(indvar_flatten_reg_218),
        .indvar_flatten_reg_2180(indvar_flatten_reg_2180),
        .\indvar_flatten_reg_218[0]_i_27_0 (\indvar_flatten_reg_218[0]_i_27 ),
        .indvar_flatten_reg_218_reg(indvar_flatten_reg_218_reg),
        .p__0_0(p__0),
        .p__0_1(p__0_0),
        .p_carry__10_0(p_carry__10),
        .p_carry__3_0(p_carry__3));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_mul_32ns_32ns_64_1_1_Multiplier_0
   (D,
    PCOUT,
    ACOUT,
    p__0_0,
    p__0_1,
    ap_enable_reg_pp0_iter0_reg,
    \ap_CS_fsm_reg[2] ,
    indvar_flatten_reg_2180,
    ap_enable_reg_pp0_iter0_reg_0,
    \ap_CS_fsm_reg[2]_0 ,
    indvar_flatten_reg_218,
    Q,
    ap_clk,
    imgInput_rows_c9_dout,
    imgInput_cols_c10_dout,
    P,
    \indvar_flatten_reg_218[0]_i_27_0 ,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    ap_rst_n,
    ap_block_pp0_stage0_11001,
    \ap_CS_fsm_reg[3] ,
    ap_enable_reg_pp0_iter9,
    p_carry__10_0,
    indvar_flatten_reg_218_reg,
    CO,
    S,
    p_carry__3_0,
    \icmp_ln128_reg_673_reg[0] );
  output [16:0]D;
  output [47:0]PCOUT;
  output [29:0]ACOUT;
  output [16:0]p__0_0;
  output [47:0]p__0_1;
  output ap_enable_reg_pp0_iter0_reg;
  output [1:0]\ap_CS_fsm_reg[2] ;
  output indvar_flatten_reg_2180;
  output ap_enable_reg_pp0_iter0_reg_0;
  output \ap_CS_fsm_reg[2]_0 ;
  output indvar_flatten_reg_218;
  input [2:0]Q;
  input ap_clk;
  input [31:0]imgInput_rows_c9_dout;
  input [16:0]imgInput_cols_c10_dout;
  input [46:0]P;
  input [1:0]\indvar_flatten_reg_218[0]_i_27_0 ;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input ap_rst_n;
  input ap_block_pp0_stage0_11001;
  input \ap_CS_fsm_reg[3] ;
  input ap_enable_reg_pp0_iter9;
  input [29:0]p_carry__10_0;
  input [48:0]indvar_flatten_reg_218_reg;
  input [0:0]CO;
  input [0:0]S;
  input [16:0]p_carry__3_0;
  input \icmp_ln128_reg_673_reg[0] ;

  wire [29:0]ACOUT;
  wire [0:0]CO;
  wire [16:0]D;
  wire [46:0]P;
  wire [47:0]PCOUT;
  wire [2:0]Q;
  wire [0:0]S;
  wire \ap_CS_fsm[3]_i_2_n_3 ;
  wire [1:0]\ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[2]_0 ;
  wire \ap_CS_fsm_reg[3] ;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter0_reg_0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter9;
  wire ap_rst_n;
  wire \icmp_ln128_reg_673_reg[0] ;
  wire [16:0]imgInput_cols_c10_dout;
  wire [31:0]imgInput_rows_c9_dout;
  wire indvar_flatten_reg_218;
  wire indvar_flatten_reg_2180;
  wire \indvar_flatten_reg_218[0]_i_10_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_11_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_12_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_13_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_15_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_16_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_17_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_18_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_20_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_21_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_22_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_23_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_25_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_26_n_3 ;
  wire [1:0]\indvar_flatten_reg_218[0]_i_27_0 ;
  wire \indvar_flatten_reg_218[0]_i_27_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_7_n_3 ;
  wire \indvar_flatten_reg_218[0]_i_8_n_3 ;
  wire [48:0]indvar_flatten_reg_218_reg;
  wire \indvar_flatten_reg_218_reg[0]_i_14_n_3 ;
  wire \indvar_flatten_reg_218_reg[0]_i_14_n_4 ;
  wire \indvar_flatten_reg_218_reg[0]_i_14_n_5 ;
  wire \indvar_flatten_reg_218_reg[0]_i_14_n_6 ;
  wire \indvar_flatten_reg_218_reg[0]_i_19_n_3 ;
  wire \indvar_flatten_reg_218_reg[0]_i_19_n_4 ;
  wire \indvar_flatten_reg_218_reg[0]_i_19_n_5 ;
  wire \indvar_flatten_reg_218_reg[0]_i_19_n_6 ;
  wire \indvar_flatten_reg_218_reg[0]_i_4_n_6 ;
  wire \indvar_flatten_reg_218_reg[0]_i_6_n_3 ;
  wire \indvar_flatten_reg_218_reg[0]_i_6_n_4 ;
  wire \indvar_flatten_reg_218_reg[0]_i_6_n_5 ;
  wire \indvar_flatten_reg_218_reg[0]_i_6_n_6 ;
  wire \indvar_flatten_reg_218_reg[0]_i_9_n_3 ;
  wire \indvar_flatten_reg_218_reg[0]_i_9_n_4 ;
  wire \indvar_flatten_reg_218_reg[0]_i_9_n_5 ;
  wire \indvar_flatten_reg_218_reg[0]_i_9_n_6 ;
  wire [63:16]mul_ln73_reg_663_reg__1;
  wire [16:0]p__0_0;
  wire [47:0]p__0_1;
  wire p__0_n_61;
  wire p__0_n_62;
  wire p__0_n_63;
  wire p__0_n_64;
  wire p__0_n_65;
  wire p__0_n_66;
  wire p__0_n_67;
  wire p__0_n_68;
  wire p__0_n_69;
  wire p__0_n_70;
  wire p__0_n_71;
  wire p__0_n_72;
  wire p__0_n_73;
  wire p__0_n_74;
  wire p__0_n_75;
  wire p__0_n_76;
  wire p__0_n_77;
  wire p__0_n_78;
  wire p__0_n_79;
  wire p__0_n_80;
  wire p__0_n_81;
  wire p__0_n_82;
  wire p__0_n_83;
  wire p__0_n_84;
  wire p__0_n_85;
  wire p__0_n_86;
  wire p__0_n_87;
  wire p__0_n_88;
  wire p__0_n_89;
  wire p__0_n_90;
  wire p__0_n_91;
  wire p_carry__0_i_1_n_3;
  wire p_carry__0_i_2_n_3;
  wire p_carry__0_i_3_n_3;
  wire p_carry__0_i_4_n_3;
  wire p_carry__0_n_3;
  wire p_carry__0_n_4;
  wire p_carry__0_n_5;
  wire p_carry__0_n_6;
  wire [29:0]p_carry__10_0;
  wire p_carry__10_i_1_n_3;
  wire p_carry__10_i_2_n_3;
  wire p_carry__10_i_3_n_3;
  wire p_carry__10_i_4_n_3;
  wire p_carry__10_n_4;
  wire p_carry__10_n_5;
  wire p_carry__10_n_6;
  wire p_carry__1_i_1_n_3;
  wire p_carry__1_i_2_n_3;
  wire p_carry__1_i_3_n_3;
  wire p_carry__1_i_4_n_3;
  wire p_carry__1_n_3;
  wire p_carry__1_n_4;
  wire p_carry__1_n_5;
  wire p_carry__1_n_6;
  wire p_carry__2_i_1_n_3;
  wire p_carry__2_i_2_n_3;
  wire p_carry__2_i_3_n_3;
  wire p_carry__2_i_4_n_3;
  wire p_carry__2_n_3;
  wire p_carry__2_n_4;
  wire p_carry__2_n_5;
  wire p_carry__2_n_6;
  wire [16:0]p_carry__3_0;
  wire p_carry__3_i_1_n_3;
  wire p_carry__3_i_2_n_3;
  wire p_carry__3_i_3_n_3;
  wire p_carry__3_i_4_n_3;
  wire p_carry__3_n_3;
  wire p_carry__3_n_4;
  wire p_carry__3_n_5;
  wire p_carry__3_n_6;
  wire p_carry__4_i_1_n_3;
  wire p_carry__4_i_2_n_3;
  wire p_carry__4_i_3_n_3;
  wire p_carry__4_i_4_n_3;
  wire p_carry__4_n_3;
  wire p_carry__4_n_4;
  wire p_carry__4_n_5;
  wire p_carry__4_n_6;
  wire p_carry__5_i_1_n_3;
  wire p_carry__5_i_2_n_3;
  wire p_carry__5_i_3_n_3;
  wire p_carry__5_i_4_n_3;
  wire p_carry__5_n_3;
  wire p_carry__5_n_4;
  wire p_carry__5_n_5;
  wire p_carry__5_n_6;
  wire p_carry__6_i_1_n_3;
  wire p_carry__6_i_2_n_3;
  wire p_carry__6_i_3_n_3;
  wire p_carry__6_i_4_n_3;
  wire p_carry__6_n_3;
  wire p_carry__6_n_4;
  wire p_carry__6_n_5;
  wire p_carry__6_n_6;
  wire p_carry__7_i_1_n_3;
  wire p_carry__7_i_2_n_3;
  wire p_carry__7_i_3_n_3;
  wire p_carry__7_i_4_n_3;
  wire p_carry__7_n_3;
  wire p_carry__7_n_4;
  wire p_carry__7_n_5;
  wire p_carry__7_n_6;
  wire p_carry__8_i_1_n_3;
  wire p_carry__8_i_2_n_3;
  wire p_carry__8_i_3_n_3;
  wire p_carry__8_i_4_n_3;
  wire p_carry__8_n_3;
  wire p_carry__8_n_4;
  wire p_carry__8_n_5;
  wire p_carry__8_n_6;
  wire p_carry__9_i_1_n_3;
  wire p_carry__9_i_2_n_3;
  wire p_carry__9_i_3_n_3;
  wire p_carry__9_i_4_n_3;
  wire p_carry__9_n_3;
  wire p_carry__9_n_4;
  wire p_carry__9_n_5;
  wire p_carry__9_n_6;
  wire p_carry_i_1_n_3;
  wire p_carry_i_2_n_3;
  wire p_carry_i_3_n_3;
  wire p_carry_n_3;
  wire p_carry_n_4;
  wire p_carry_n_5;
  wire p_carry_n_6;
  wire p_n_61;
  wire p_n_62;
  wire p_n_63;
  wire p_n_64;
  wire p_n_65;
  wire p_n_66;
  wire p_n_67;
  wire p_n_68;
  wire p_n_69;
  wire p_n_70;
  wire p_n_71;
  wire p_n_72;
  wire p_n_73;
  wire p_n_74;
  wire p_n_75;
  wire p_n_76;
  wire p_n_77;
  wire p_n_78;
  wire p_n_79;
  wire p_n_80;
  wire p_n_81;
  wire p_n_82;
  wire p_n_83;
  wire p_n_84;
  wire p_n_85;
  wire p_n_86;
  wire p_n_87;
  wire p_n_88;
  wire p_n_89;
  wire p_n_90;
  wire p_n_91;
  wire [3:0]\NLW_indvar_flatten_reg_218_reg[0]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_indvar_flatten_reg_218_reg[0]_i_19_O_UNCONNECTED ;
  wire [3:2]\NLW_indvar_flatten_reg_218_reg[0]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_indvar_flatten_reg_218_reg[0]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_indvar_flatten_reg_218_reg[0]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_indvar_flatten_reg_218_reg[0]_i_9_O_UNCONNECTED ;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire NLW_p__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p__0_OVERFLOW_UNCONNECTED;
  wire NLW_p__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_p__0_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_p__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p__0_CARRYOUT_UNCONNECTED;
  wire [3:3]NLW_p_carry__10_CO_UNCONNECTED;

  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm[3]_i_2_n_3 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\ap_CS_fsm_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(Q[2]),
        .I1(\ap_CS_fsm[3]_i_2_n_3 ),
        .O(\ap_CS_fsm_reg[2] [1]));
  LUT6 #(
    .INIT(64'h0040004000FF0040)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(ap_enable_reg_pp0_iter1_reg),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(ap_block_pp0_stage0_11001),
        .I4(\ap_CS_fsm_reg[3] ),
        .I5(ap_enable_reg_pp0_iter9),
        .O(\ap_CS_fsm[3]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hE000E0E0E0E0E0E0)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(Q[1]),
        .I2(ap_rst_n),
        .I3(ap_block_pp0_stage0_11001),
        .I4(Q[2]),
        .I5(ap_condition_pp0_exit_iter0_state3),
        .O(ap_enable_reg_pp0_iter0_reg_0));
  LUT5 #(
    .INIT(32'hC0C000A0)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(ap_rst_n),
        .I3(ap_condition_pp0_exit_iter0_state3),
        .I4(ap_block_pp0_stage0_11001),
        .O(ap_enable_reg_pp0_iter0_reg));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \icmp_ln128_reg_673[0]_i_1 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q[2]),
        .I2(ap_block_pp0_stage0_11001),
        .I3(\icmp_ln128_reg_673_reg[0] ),
        .O(\ap_CS_fsm_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFBFF0000)) 
    \indvar_flatten_reg_218[0]_i_1 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_block_pp0_stage0_11001),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(indvar_flatten_reg_218));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_10 
       (.I0(indvar_flatten_reg_218_reg[43]),
        .I1(mul_ln73_reg_663_reg__1[58]),
        .I2(indvar_flatten_reg_218_reg[42]),
        .I3(mul_ln73_reg_663_reg__1[57]),
        .I4(mul_ln73_reg_663_reg__1[59]),
        .I5(indvar_flatten_reg_218_reg[44]),
        .O(\indvar_flatten_reg_218[0]_i_10_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_11 
       (.I0(indvar_flatten_reg_218_reg[40]),
        .I1(mul_ln73_reg_663_reg__1[55]),
        .I2(indvar_flatten_reg_218_reg[39]),
        .I3(mul_ln73_reg_663_reg__1[54]),
        .I4(mul_ln73_reg_663_reg__1[56]),
        .I5(indvar_flatten_reg_218_reg[41]),
        .O(\indvar_flatten_reg_218[0]_i_11_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_12 
       (.I0(indvar_flatten_reg_218_reg[37]),
        .I1(mul_ln73_reg_663_reg__1[52]),
        .I2(indvar_flatten_reg_218_reg[36]),
        .I3(mul_ln73_reg_663_reg__1[51]),
        .I4(mul_ln73_reg_663_reg__1[53]),
        .I5(indvar_flatten_reg_218_reg[38]),
        .O(\indvar_flatten_reg_218[0]_i_12_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_13 
       (.I0(indvar_flatten_reg_218_reg[34]),
        .I1(mul_ln73_reg_663_reg__1[49]),
        .I2(indvar_flatten_reg_218_reg[33]),
        .I3(mul_ln73_reg_663_reg__1[48]),
        .I4(mul_ln73_reg_663_reg__1[50]),
        .I5(indvar_flatten_reg_218_reg[35]),
        .O(\indvar_flatten_reg_218[0]_i_13_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_15 
       (.I0(indvar_flatten_reg_218_reg[31]),
        .I1(mul_ln73_reg_663_reg__1[46]),
        .I2(indvar_flatten_reg_218_reg[30]),
        .I3(mul_ln73_reg_663_reg__1[45]),
        .I4(mul_ln73_reg_663_reg__1[47]),
        .I5(indvar_flatten_reg_218_reg[32]),
        .O(\indvar_flatten_reg_218[0]_i_15_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_16 
       (.I0(indvar_flatten_reg_218_reg[28]),
        .I1(mul_ln73_reg_663_reg__1[43]),
        .I2(indvar_flatten_reg_218_reg[27]),
        .I3(mul_ln73_reg_663_reg__1[42]),
        .I4(mul_ln73_reg_663_reg__1[44]),
        .I5(indvar_flatten_reg_218_reg[29]),
        .O(\indvar_flatten_reg_218[0]_i_16_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_17 
       (.I0(indvar_flatten_reg_218_reg[25]),
        .I1(mul_ln73_reg_663_reg__1[40]),
        .I2(indvar_flatten_reg_218_reg[24]),
        .I3(mul_ln73_reg_663_reg__1[39]),
        .I4(mul_ln73_reg_663_reg__1[41]),
        .I5(indvar_flatten_reg_218_reg[26]),
        .O(\indvar_flatten_reg_218[0]_i_17_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_18 
       (.I0(indvar_flatten_reg_218_reg[22]),
        .I1(mul_ln73_reg_663_reg__1[37]),
        .I2(indvar_flatten_reg_218_reg[21]),
        .I3(mul_ln73_reg_663_reg__1[36]),
        .I4(mul_ln73_reg_663_reg__1[38]),
        .I5(indvar_flatten_reg_218_reg[23]),
        .O(\indvar_flatten_reg_218[0]_i_18_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \indvar_flatten_reg_218[0]_i_2 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_block_pp0_stage0_11001),
        .I3(Q[2]),
        .O(indvar_flatten_reg_2180));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_20 
       (.I0(indvar_flatten_reg_218_reg[19]),
        .I1(mul_ln73_reg_663_reg__1[34]),
        .I2(indvar_flatten_reg_218_reg[18]),
        .I3(mul_ln73_reg_663_reg__1[33]),
        .I4(mul_ln73_reg_663_reg__1[35]),
        .I5(indvar_flatten_reg_218_reg[20]),
        .O(\indvar_flatten_reg_218[0]_i_20_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_21 
       (.I0(indvar_flatten_reg_218_reg[16]),
        .I1(mul_ln73_reg_663_reg__1[31]),
        .I2(indvar_flatten_reg_218_reg[15]),
        .I3(mul_ln73_reg_663_reg__1[30]),
        .I4(mul_ln73_reg_663_reg__1[32]),
        .I5(indvar_flatten_reg_218_reg[17]),
        .O(\indvar_flatten_reg_218[0]_i_21_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_22 
       (.I0(indvar_flatten_reg_218_reg[13]),
        .I1(mul_ln73_reg_663_reg__1[28]),
        .I2(indvar_flatten_reg_218_reg[12]),
        .I3(mul_ln73_reg_663_reg__1[27]),
        .I4(mul_ln73_reg_663_reg__1[29]),
        .I5(indvar_flatten_reg_218_reg[14]),
        .O(\indvar_flatten_reg_218[0]_i_22_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_23 
       (.I0(indvar_flatten_reg_218_reg[10]),
        .I1(mul_ln73_reg_663_reg__1[25]),
        .I2(indvar_flatten_reg_218_reg[9]),
        .I3(mul_ln73_reg_663_reg__1[24]),
        .I4(mul_ln73_reg_663_reg__1[26]),
        .I5(indvar_flatten_reg_218_reg[11]),
        .O(\indvar_flatten_reg_218[0]_i_23_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_25 
       (.I0(indvar_flatten_reg_218_reg[7]),
        .I1(mul_ln73_reg_663_reg__1[22]),
        .I2(indvar_flatten_reg_218_reg[6]),
        .I3(mul_ln73_reg_663_reg__1[21]),
        .I4(mul_ln73_reg_663_reg__1[23]),
        .I5(indvar_flatten_reg_218_reg[8]),
        .O(\indvar_flatten_reg_218[0]_i_25_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_26 
       (.I0(indvar_flatten_reg_218_reg[4]),
        .I1(mul_ln73_reg_663_reg__1[19]),
        .I2(indvar_flatten_reg_218_reg[3]),
        .I3(mul_ln73_reg_663_reg__1[18]),
        .I4(mul_ln73_reg_663_reg__1[20]),
        .I5(indvar_flatten_reg_218_reg[5]),
        .O(\indvar_flatten_reg_218[0]_i_26_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_27 
       (.I0(indvar_flatten_reg_218_reg[1]),
        .I1(mul_ln73_reg_663_reg__1[16]),
        .I2(indvar_flatten_reg_218_reg[0]),
        .I3(\indvar_flatten_reg_218[0]_i_27_0 [0]),
        .I4(mul_ln73_reg_663_reg__1[17]),
        .I5(indvar_flatten_reg_218_reg[2]),
        .O(\indvar_flatten_reg_218[0]_i_27_n_3 ));
  LUT2 #(
    .INIT(4'h9)) 
    \indvar_flatten_reg_218[0]_i_7 
       (.I0(mul_ln73_reg_663_reg__1[63]),
        .I1(indvar_flatten_reg_218_reg[48]),
        .O(\indvar_flatten_reg_218[0]_i_7_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_218[0]_i_8 
       (.I0(indvar_flatten_reg_218_reg[46]),
        .I1(mul_ln73_reg_663_reg__1[61]),
        .I2(indvar_flatten_reg_218_reg[45]),
        .I3(mul_ln73_reg_663_reg__1[60]),
        .I4(mul_ln73_reg_663_reg__1[62]),
        .I5(indvar_flatten_reg_218_reg[47]),
        .O(\indvar_flatten_reg_218[0]_i_8_n_3 ));
  CARRY4 \indvar_flatten_reg_218_reg[0]_i_14 
       (.CI(\indvar_flatten_reg_218_reg[0]_i_19_n_3 ),
        .CO({\indvar_flatten_reg_218_reg[0]_i_14_n_3 ,\indvar_flatten_reg_218_reg[0]_i_14_n_4 ,\indvar_flatten_reg_218_reg[0]_i_14_n_5 ,\indvar_flatten_reg_218_reg[0]_i_14_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_indvar_flatten_reg_218_reg[0]_i_14_O_UNCONNECTED [3:0]),
        .S({\indvar_flatten_reg_218[0]_i_20_n_3 ,\indvar_flatten_reg_218[0]_i_21_n_3 ,\indvar_flatten_reg_218[0]_i_22_n_3 ,\indvar_flatten_reg_218[0]_i_23_n_3 }));
  CARRY4 \indvar_flatten_reg_218_reg[0]_i_19 
       (.CI(CO),
        .CO({\indvar_flatten_reg_218_reg[0]_i_19_n_3 ,\indvar_flatten_reg_218_reg[0]_i_19_n_4 ,\indvar_flatten_reg_218_reg[0]_i_19_n_5 ,\indvar_flatten_reg_218_reg[0]_i_19_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_indvar_flatten_reg_218_reg[0]_i_19_O_UNCONNECTED [3:0]),
        .S({\indvar_flatten_reg_218[0]_i_25_n_3 ,\indvar_flatten_reg_218[0]_i_26_n_3 ,\indvar_flatten_reg_218[0]_i_27_n_3 ,S}));
  CARRY4 \indvar_flatten_reg_218_reg[0]_i_4 
       (.CI(\indvar_flatten_reg_218_reg[0]_i_6_n_3 ),
        .CO({\NLW_indvar_flatten_reg_218_reg[0]_i_4_CO_UNCONNECTED [3:2],ap_condition_pp0_exit_iter0_state3,\indvar_flatten_reg_218_reg[0]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_indvar_flatten_reg_218_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\indvar_flatten_reg_218[0]_i_7_n_3 ,\indvar_flatten_reg_218[0]_i_8_n_3 }));
  CARRY4 \indvar_flatten_reg_218_reg[0]_i_6 
       (.CI(\indvar_flatten_reg_218_reg[0]_i_9_n_3 ),
        .CO({\indvar_flatten_reg_218_reg[0]_i_6_n_3 ,\indvar_flatten_reg_218_reg[0]_i_6_n_4 ,\indvar_flatten_reg_218_reg[0]_i_6_n_5 ,\indvar_flatten_reg_218_reg[0]_i_6_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_indvar_flatten_reg_218_reg[0]_i_6_O_UNCONNECTED [3:0]),
        .S({\indvar_flatten_reg_218[0]_i_10_n_3 ,\indvar_flatten_reg_218[0]_i_11_n_3 ,\indvar_flatten_reg_218[0]_i_12_n_3 ,\indvar_flatten_reg_218[0]_i_13_n_3 }));
  CARRY4 \indvar_flatten_reg_218_reg[0]_i_9 
       (.CI(\indvar_flatten_reg_218_reg[0]_i_14_n_3 ),
        .CO({\indvar_flatten_reg_218_reg[0]_i_9_n_3 ,\indvar_flatten_reg_218_reg[0]_i_9_n_4 ,\indvar_flatten_reg_218_reg[0]_i_9_n_5 ,\indvar_flatten_reg_218_reg[0]_i_9_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_indvar_flatten_reg_218_reg[0]_i_9_O_UNCONNECTED [3:0]),
        .S({\indvar_flatten_reg_218[0]_i_15_n_3 ,\indvar_flatten_reg_218[0]_i_16_n_3 ,\indvar_flatten_reg_218[0]_i_17_n_3 ,\indvar_flatten_reg_218[0]_i_18_n_3 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,imgInput_cols_c10_dout}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,imgInput_rows_c9_dout[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q[0]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[0]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({p_n_61,p_n_62,p_n_63,p_n_64,p_n_65,p_n_66,p_n_67,p_n_68,p_n_69,p_n_70,p_n_71,p_n_72,p_n_73,p_n_74,p_n_75,p_n_76,p_n_77,p_n_78,p_n_79,p_n_80,p_n_81,p_n_82,p_n_83,p_n_84,p_n_85,p_n_86,p_n_87,p_n_88,p_n_89,p_n_90,p_n_91,D}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,imgInput_rows_c9_dout[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,imgInput_cols_c10_dout}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q[0]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[0]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p__0_OVERFLOW_UNCONNECTED),
        .P({p__0_n_61,p__0_n_62,p__0_n_63,p__0_n_64,p__0_n_65,p__0_n_66,p__0_n_67,p__0_n_68,p__0_n_69,p__0_n_70,p__0_n_71,p__0_n_72,p__0_n_73,p__0_n_74,p__0_n_75,p__0_n_76,p__0_n_77,p__0_n_78,p__0_n_79,p__0_n_80,p__0_n_81,p__0_n_82,p__0_n_83,p__0_n_84,p__0_n_85,p__0_n_86,p__0_n_87,p__0_n_88,p__0_n_89,p__0_n_90,p__0_n_91,p__0_0}),
        .PATTERNBDETECT(NLW_p__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(p__0_1),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p__0_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_carry
       (.CI(1'b0),
        .CO({p_carry_n_3,p_carry_n_4,p_carry_n_5,p_carry_n_6}),
        .CYINIT(1'b0),
        .DI({P[2:0],1'b0}),
        .O(mul_ln73_reg_663_reg__1[19:16]),
        .S({p_carry_i_1_n_3,p_carry_i_2_n_3,p_carry_i_3_n_3,\indvar_flatten_reg_218[0]_i_27_0 [1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_carry__0
       (.CI(p_carry_n_3),
        .CO({p_carry__0_n_3,p_carry__0_n_4,p_carry__0_n_5,p_carry__0_n_6}),
        .CYINIT(1'b0),
        .DI(P[6:3]),
        .O(mul_ln73_reg_663_reg__1[23:20]),
        .S({p_carry__0_i_1_n_3,p_carry__0_i_2_n_3,p_carry__0_i_3_n_3,p_carry__0_i_4_n_3}));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__0_i_1
       (.I0(P[6]),
        .I1(p_carry__3_0[6]),
        .O(p_carry__0_i_1_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__0_i_2
       (.I0(P[5]),
        .I1(p_carry__3_0[5]),
        .O(p_carry__0_i_2_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__0_i_3
       (.I0(P[4]),
        .I1(p_carry__3_0[4]),
        .O(p_carry__0_i_3_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__0_i_4
       (.I0(P[3]),
        .I1(p_carry__3_0[3]),
        .O(p_carry__0_i_4_n_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_carry__1
       (.CI(p_carry__0_n_3),
        .CO({p_carry__1_n_3,p_carry__1_n_4,p_carry__1_n_5,p_carry__1_n_6}),
        .CYINIT(1'b0),
        .DI(P[10:7]),
        .O(mul_ln73_reg_663_reg__1[27:24]),
        .S({p_carry__1_i_1_n_3,p_carry__1_i_2_n_3,p_carry__1_i_3_n_3,p_carry__1_i_4_n_3}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_carry__10
       (.CI(p_carry__9_n_3),
        .CO({NLW_p_carry__10_CO_UNCONNECTED[3],p_carry__10_n_4,p_carry__10_n_5,p_carry__10_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,P[45:43]}),
        .O(mul_ln73_reg_663_reg__1[63:60]),
        .S({p_carry__10_i_1_n_3,p_carry__10_i_2_n_3,p_carry__10_i_3_n_3,p_carry__10_i_4_n_3}));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__10_i_1
       (.I0(P[46]),
        .I1(p_carry__10_0[29]),
        .O(p_carry__10_i_1_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__10_i_2
       (.I0(P[45]),
        .I1(p_carry__10_0[28]),
        .O(p_carry__10_i_2_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__10_i_3
       (.I0(P[44]),
        .I1(p_carry__10_0[27]),
        .O(p_carry__10_i_3_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__10_i_4
       (.I0(P[43]),
        .I1(p_carry__10_0[26]),
        .O(p_carry__10_i_4_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__1_i_1
       (.I0(P[10]),
        .I1(p_carry__3_0[10]),
        .O(p_carry__1_i_1_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__1_i_2
       (.I0(P[9]),
        .I1(p_carry__3_0[9]),
        .O(p_carry__1_i_2_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__1_i_3
       (.I0(P[8]),
        .I1(p_carry__3_0[8]),
        .O(p_carry__1_i_3_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__1_i_4
       (.I0(P[7]),
        .I1(p_carry__3_0[7]),
        .O(p_carry__1_i_4_n_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_carry__2
       (.CI(p_carry__1_n_3),
        .CO({p_carry__2_n_3,p_carry__2_n_4,p_carry__2_n_5,p_carry__2_n_6}),
        .CYINIT(1'b0),
        .DI(P[14:11]),
        .O(mul_ln73_reg_663_reg__1[31:28]),
        .S({p_carry__2_i_1_n_3,p_carry__2_i_2_n_3,p_carry__2_i_3_n_3,p_carry__2_i_4_n_3}));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__2_i_1
       (.I0(P[14]),
        .I1(p_carry__3_0[14]),
        .O(p_carry__2_i_1_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__2_i_2
       (.I0(P[13]),
        .I1(p_carry__3_0[13]),
        .O(p_carry__2_i_2_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__2_i_3
       (.I0(P[12]),
        .I1(p_carry__3_0[12]),
        .O(p_carry__2_i_3_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__2_i_4
       (.I0(P[11]),
        .I1(p_carry__3_0[11]),
        .O(p_carry__2_i_4_n_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_carry__3
       (.CI(p_carry__2_n_3),
        .CO({p_carry__3_n_3,p_carry__3_n_4,p_carry__3_n_5,p_carry__3_n_6}),
        .CYINIT(1'b0),
        .DI(P[18:15]),
        .O(mul_ln73_reg_663_reg__1[35:32]),
        .S({p_carry__3_i_1_n_3,p_carry__3_i_2_n_3,p_carry__3_i_3_n_3,p_carry__3_i_4_n_3}));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__3_i_1
       (.I0(P[18]),
        .I1(p_carry__10_0[1]),
        .O(p_carry__3_i_1_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__3_i_2
       (.I0(P[17]),
        .I1(p_carry__10_0[0]),
        .O(p_carry__3_i_2_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__3_i_3
       (.I0(P[16]),
        .I1(p_carry__3_0[16]),
        .O(p_carry__3_i_3_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__3_i_4
       (.I0(P[15]),
        .I1(p_carry__3_0[15]),
        .O(p_carry__3_i_4_n_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_carry__4
       (.CI(p_carry__3_n_3),
        .CO({p_carry__4_n_3,p_carry__4_n_4,p_carry__4_n_5,p_carry__4_n_6}),
        .CYINIT(1'b0),
        .DI(P[22:19]),
        .O(mul_ln73_reg_663_reg__1[39:36]),
        .S({p_carry__4_i_1_n_3,p_carry__4_i_2_n_3,p_carry__4_i_3_n_3,p_carry__4_i_4_n_3}));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__4_i_1
       (.I0(P[22]),
        .I1(p_carry__10_0[5]),
        .O(p_carry__4_i_1_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__4_i_2
       (.I0(P[21]),
        .I1(p_carry__10_0[4]),
        .O(p_carry__4_i_2_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__4_i_3
       (.I0(P[20]),
        .I1(p_carry__10_0[3]),
        .O(p_carry__4_i_3_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__4_i_4
       (.I0(P[19]),
        .I1(p_carry__10_0[2]),
        .O(p_carry__4_i_4_n_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_carry__5
       (.CI(p_carry__4_n_3),
        .CO({p_carry__5_n_3,p_carry__5_n_4,p_carry__5_n_5,p_carry__5_n_6}),
        .CYINIT(1'b0),
        .DI(P[26:23]),
        .O(mul_ln73_reg_663_reg__1[43:40]),
        .S({p_carry__5_i_1_n_3,p_carry__5_i_2_n_3,p_carry__5_i_3_n_3,p_carry__5_i_4_n_3}));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__5_i_1
       (.I0(P[26]),
        .I1(p_carry__10_0[9]),
        .O(p_carry__5_i_1_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__5_i_2
       (.I0(P[25]),
        .I1(p_carry__10_0[8]),
        .O(p_carry__5_i_2_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__5_i_3
       (.I0(P[24]),
        .I1(p_carry__10_0[7]),
        .O(p_carry__5_i_3_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__5_i_4
       (.I0(P[23]),
        .I1(p_carry__10_0[6]),
        .O(p_carry__5_i_4_n_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_carry__6
       (.CI(p_carry__5_n_3),
        .CO({p_carry__6_n_3,p_carry__6_n_4,p_carry__6_n_5,p_carry__6_n_6}),
        .CYINIT(1'b0),
        .DI(P[30:27]),
        .O(mul_ln73_reg_663_reg__1[47:44]),
        .S({p_carry__6_i_1_n_3,p_carry__6_i_2_n_3,p_carry__6_i_3_n_3,p_carry__6_i_4_n_3}));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__6_i_1
       (.I0(P[30]),
        .I1(p_carry__10_0[13]),
        .O(p_carry__6_i_1_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__6_i_2
       (.I0(P[29]),
        .I1(p_carry__10_0[12]),
        .O(p_carry__6_i_2_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__6_i_3
       (.I0(P[28]),
        .I1(p_carry__10_0[11]),
        .O(p_carry__6_i_3_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__6_i_4
       (.I0(P[27]),
        .I1(p_carry__10_0[10]),
        .O(p_carry__6_i_4_n_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_carry__7
       (.CI(p_carry__6_n_3),
        .CO({p_carry__7_n_3,p_carry__7_n_4,p_carry__7_n_5,p_carry__7_n_6}),
        .CYINIT(1'b0),
        .DI(P[34:31]),
        .O(mul_ln73_reg_663_reg__1[51:48]),
        .S({p_carry__7_i_1_n_3,p_carry__7_i_2_n_3,p_carry__7_i_3_n_3,p_carry__7_i_4_n_3}));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__7_i_1
       (.I0(P[34]),
        .I1(p_carry__10_0[17]),
        .O(p_carry__7_i_1_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__7_i_2
       (.I0(P[33]),
        .I1(p_carry__10_0[16]),
        .O(p_carry__7_i_2_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__7_i_3
       (.I0(P[32]),
        .I1(p_carry__10_0[15]),
        .O(p_carry__7_i_3_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__7_i_4
       (.I0(P[31]),
        .I1(p_carry__10_0[14]),
        .O(p_carry__7_i_4_n_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_carry__8
       (.CI(p_carry__7_n_3),
        .CO({p_carry__8_n_3,p_carry__8_n_4,p_carry__8_n_5,p_carry__8_n_6}),
        .CYINIT(1'b0),
        .DI(P[38:35]),
        .O(mul_ln73_reg_663_reg__1[55:52]),
        .S({p_carry__8_i_1_n_3,p_carry__8_i_2_n_3,p_carry__8_i_3_n_3,p_carry__8_i_4_n_3}));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__8_i_1
       (.I0(P[38]),
        .I1(p_carry__10_0[21]),
        .O(p_carry__8_i_1_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__8_i_2
       (.I0(P[37]),
        .I1(p_carry__10_0[20]),
        .O(p_carry__8_i_2_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__8_i_3
       (.I0(P[36]),
        .I1(p_carry__10_0[19]),
        .O(p_carry__8_i_3_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__8_i_4
       (.I0(P[35]),
        .I1(p_carry__10_0[18]),
        .O(p_carry__8_i_4_n_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_carry__9
       (.CI(p_carry__8_n_3),
        .CO({p_carry__9_n_3,p_carry__9_n_4,p_carry__9_n_5,p_carry__9_n_6}),
        .CYINIT(1'b0),
        .DI(P[42:39]),
        .O(mul_ln73_reg_663_reg__1[59:56]),
        .S({p_carry__9_i_1_n_3,p_carry__9_i_2_n_3,p_carry__9_i_3_n_3,p_carry__9_i_4_n_3}));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__9_i_1
       (.I0(P[42]),
        .I1(p_carry__10_0[25]),
        .O(p_carry__9_i_1_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__9_i_2
       (.I0(P[41]),
        .I1(p_carry__10_0[24]),
        .O(p_carry__9_i_2_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__9_i_3
       (.I0(P[40]),
        .I1(p_carry__10_0[23]),
        .O(p_carry__9_i_3_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry__9_i_4
       (.I0(P[39]),
        .I1(p_carry__10_0[22]),
        .O(p_carry__9_i_4_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry_i_1
       (.I0(P[2]),
        .I1(p_carry__3_0[2]),
        .O(p_carry_i_1_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry_i_2
       (.I0(P[1]),
        .I1(p_carry__3_0[1]),
        .O(p_carry_i_2_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_carry_i_3
       (.I0(P[0]),
        .I1(p_carry__3_0[0]),
        .O(p_carry_i_3_n_3));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_regslice_both
   (\B_V_data_1_state_reg[0]_0 ,
    ap_rst_n_0,
    ap_rst_n_1,
    D,
    \ap_CS_fsm_reg[1] ,
    internal_empty_n_reg,
    E,
    \icmp_ln108_reg_245_reg[0] ,
    j_reg_138,
    j_reg_1380,
    \ap_CS_fsm_reg[2] ,
    \icmp_ln113_reg_235_reg[0] ,
    \icmp_ln108_reg_245_reg[0]_0 ,
    \ap_CS_fsm_reg[2]_0 ,
    dst_TDATA,
    ap_rst_n_inv,
    ap_clk,
    CO,
    ap_rst_n,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    ap_enable_reg_pp0_iter2_reg,
    Q,
    rgb2hsv_cols_c_empty_n,
    xfMat2axis_24_9_2160_3840_1_U0_ap_start,
    rgb2hsv_rows_c_empty_n,
    dst_TREADY,
    \j_reg_138_reg[0] ,
    SR,
    \ap_CS_fsm_reg[2]_1 ,
    icmp_ln108_reg_245,
    rgb2hsv_data_empty_n,
    icmp_ln108_reg_245_pp0_iter1_reg,
    icmp_ln113_reg_235,
    \axi_last_V_reg_249_reg[0] ,
    axi_last_V_reg_249,
    \B_V_data_1_payload_B_reg[23]_0 );
  output \B_V_data_1_state_reg[0]_0 ;
  output ap_rst_n_0;
  output ap_rst_n_1;
  output [3:0]D;
  output \ap_CS_fsm_reg[1] ;
  output internal_empty_n_reg;
  output [0:0]E;
  output \icmp_ln108_reg_245_reg[0] ;
  output j_reg_138;
  output j_reg_1380;
  output \ap_CS_fsm_reg[2] ;
  output \icmp_ln113_reg_235_reg[0] ;
  output \icmp_ln108_reg_245_reg[0]_0 ;
  output \ap_CS_fsm_reg[2]_0 ;
  output [23:0]dst_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input [0:0]CO;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input ap_enable_reg_pp0_iter2_reg;
  input [3:0]Q;
  input rgb2hsv_cols_c_empty_n;
  input xfMat2axis_24_9_2160_3840_1_U0_ap_start;
  input rgb2hsv_rows_c_empty_n;
  input dst_TREADY;
  input [0:0]\j_reg_138_reg[0] ;
  input [0:0]SR;
  input \ap_CS_fsm_reg[2]_1 ;
  input icmp_ln108_reg_245;
  input rgb2hsv_data_empty_n;
  input icmp_ln108_reg_245_pp0_iter1_reg;
  input icmp_ln113_reg_235;
  input [0:0]\axi_last_V_reg_249_reg[0] ;
  input axi_last_V_reg_249;
  input [23:0]\B_V_data_1_payload_B_reg[23]_0 ;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire \B_V_data_1_payload_A_reg_n_3_[0] ;
  wire \B_V_data_1_payload_A_reg_n_3_[10] ;
  wire \B_V_data_1_payload_A_reg_n_3_[11] ;
  wire \B_V_data_1_payload_A_reg_n_3_[12] ;
  wire \B_V_data_1_payload_A_reg_n_3_[13] ;
  wire \B_V_data_1_payload_A_reg_n_3_[14] ;
  wire \B_V_data_1_payload_A_reg_n_3_[15] ;
  wire \B_V_data_1_payload_A_reg_n_3_[16] ;
  wire \B_V_data_1_payload_A_reg_n_3_[17] ;
  wire \B_V_data_1_payload_A_reg_n_3_[18] ;
  wire \B_V_data_1_payload_A_reg_n_3_[19] ;
  wire \B_V_data_1_payload_A_reg_n_3_[1] ;
  wire \B_V_data_1_payload_A_reg_n_3_[20] ;
  wire \B_V_data_1_payload_A_reg_n_3_[21] ;
  wire \B_V_data_1_payload_A_reg_n_3_[22] ;
  wire \B_V_data_1_payload_A_reg_n_3_[23] ;
  wire \B_V_data_1_payload_A_reg_n_3_[2] ;
  wire \B_V_data_1_payload_A_reg_n_3_[3] ;
  wire \B_V_data_1_payload_A_reg_n_3_[4] ;
  wire \B_V_data_1_payload_A_reg_n_3_[5] ;
  wire \B_V_data_1_payload_A_reg_n_3_[6] ;
  wire \B_V_data_1_payload_A_reg_n_3_[7] ;
  wire \B_V_data_1_payload_A_reg_n_3_[8] ;
  wire \B_V_data_1_payload_A_reg_n_3_[9] ;
  wire [23:0]\B_V_data_1_payload_B_reg[23]_0 ;
  wire \B_V_data_1_payload_B_reg_n_3_[0] ;
  wire \B_V_data_1_payload_B_reg_n_3_[10] ;
  wire \B_V_data_1_payload_B_reg_n_3_[11] ;
  wire \B_V_data_1_payload_B_reg_n_3_[12] ;
  wire \B_V_data_1_payload_B_reg_n_3_[13] ;
  wire \B_V_data_1_payload_B_reg_n_3_[14] ;
  wire \B_V_data_1_payload_B_reg_n_3_[15] ;
  wire \B_V_data_1_payload_B_reg_n_3_[16] ;
  wire \B_V_data_1_payload_B_reg_n_3_[17] ;
  wire \B_V_data_1_payload_B_reg_n_3_[18] ;
  wire \B_V_data_1_payload_B_reg_n_3_[19] ;
  wire \B_V_data_1_payload_B_reg_n_3_[1] ;
  wire \B_V_data_1_payload_B_reg_n_3_[20] ;
  wire \B_V_data_1_payload_B_reg_n_3_[21] ;
  wire \B_V_data_1_payload_B_reg_n_3_[22] ;
  wire \B_V_data_1_payload_B_reg_n_3_[23] ;
  wire \B_V_data_1_payload_B_reg_n_3_[2] ;
  wire \B_V_data_1_payload_B_reg_n_3_[3] ;
  wire \B_V_data_1_payload_B_reg_n_3_[4] ;
  wire \B_V_data_1_payload_B_reg_n_3_[5] ;
  wire \B_V_data_1_payload_B_reg_n_3_[6] ;
  wire \B_V_data_1_payload_B_reg_n_3_[7] ;
  wire \B_V_data_1_payload_B_reg_n_3_[8] ;
  wire \B_V_data_1_payload_B_reg_n_3_[9] ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__0_n_3;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__0_n_3;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1_n_3 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire \B_V_data_1_state_reg_n_3_[1] ;
  wire [0:0]CO;
  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[2]_0 ;
  wire \ap_CS_fsm_reg[2]_1 ;
  wire ap_NS_fsm1;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter2_reg;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire ap_rst_n_inv;
  wire axi_last_V_reg_249;
  wire [0:0]\axi_last_V_reg_249_reg[0] ;
  wire [23:0]dst_TDATA;
  wire dst_TREADY;
  wire icmp_ln108_reg_245;
  wire icmp_ln108_reg_245_pp0_iter1_reg;
  wire \icmp_ln108_reg_245_reg[0] ;
  wire \icmp_ln108_reg_245_reg[0]_0 ;
  wire icmp_ln113_reg_235;
  wire \icmp_ln113_reg_235_reg[0] ;
  wire internal_empty_n_reg;
  wire j_reg_138;
  wire j_reg_1380;
  wire [0:0]\j_reg_138_reg[0] ;
  wire rgb2hsv_cols_c_empty_n;
  wire rgb2hsv_data_empty_n;
  wire rgb2hsv_rows_c_empty_n;
  wire xfMat2axis_24_9_2160_3840_1_U0_ap_start;

  LUT3 #(
    .INIT(8'h45)) 
    \B_V_data_1_payload_A[23]_i_1 
       (.I0(B_V_data_1_sel_wr),
        .I1(\B_V_data_1_state_reg_n_3_[1] ),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [0]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [10]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [11]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [12]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [13]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [14]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [15]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [16]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [17]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [18]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [19]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [1]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [20]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [21]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [22]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [23]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [2]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [3]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [4]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [5]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [6]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [7]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [8]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [9]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \B_V_data_1_payload_B[23]_i_1 
       (.I0(B_V_data_1_sel_wr),
        .I1(\B_V_data_1_state_reg_n_3_[1] ),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [0]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [10]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [11]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [12]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [13]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [14]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [15]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [16]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [17]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [18]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [19]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [1]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [20]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [21]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [22]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [23]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [2]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [3]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [4]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [5]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [6]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [7]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [8]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [9]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__0
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(dst_TREADY),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__0_n_3));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__0_n_3),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h9)) 
    B_V_data_1_sel_wr_i_1__0
       (.I0(\icmp_ln108_reg_245_reg[0] ),
        .I1(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__0_n_3));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__0_n_3),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h2A00AAAA)) 
    \B_V_data_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\B_V_data_1_state_reg_n_3_[1] ),
        .I2(dst_TREADY),
        .I3(\B_V_data_1_state_reg[0]_0 ),
        .I4(\icmp_ln108_reg_245_reg[0] ),
        .O(\B_V_data_1_state[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \B_V_data_1_state[0]_i_2 
       (.I0(icmp_ln108_reg_245),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(Q[2]),
        .O(\icmp_ln108_reg_245_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hEAFF)) 
    \B_V_data_1_state[1]_i_1__1 
       (.I0(dst_TREADY),
        .I1(\B_V_data_1_state_reg_n_3_[1] ),
        .I2(\icmp_ln108_reg_245_reg[0] ),
        .I3(\B_V_data_1_state_reg[0]_0 ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1_n_3 ),
        .Q(\B_V_data_1_state_reg[0]_0 ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_3_[1] ),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h5DDDDDDD)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(\ap_CS_fsm_reg[1] ),
        .I1(Q[0]),
        .I2(rgb2hsv_cols_c_empty_n),
        .I3(xfMat2axis_24_9_2160_3840_1_U0_ap_start),
        .I4(rgb2hsv_rows_c_empty_n),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF2A00)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(Q[1]),
        .I1(\B_V_data_1_state_reg_n_3_[1] ),
        .I2(dst_TREADY),
        .I3(\B_V_data_1_state_reg[0]_0 ),
        .I4(SR),
        .I5(Q[3]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \ap_CS_fsm[2]_i_1__0 
       (.I0(ap_NS_fsm1),
        .I1(ap_block_pp0_stage0_subdone),
        .I2(\ap_CS_fsm_reg[2]_1 ),
        .I3(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h88080808)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(Q[1]),
        .I1(\j_reg_138_reg[0] ),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .I3(dst_TREADY),
        .I4(\B_V_data_1_state_reg_n_3_[1] ),
        .O(ap_NS_fsm1));
  LUT6 #(
    .INIT(64'h0000000088880080)) 
    \ap_CS_fsm[3]_i_1__1 
       (.I0(ap_block_pp0_stage0_subdone),
        .I1(Q[2]),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(CO),
        .I4(ap_enable_reg_pp0_iter2_reg),
        .I5(ap_enable_reg_pp0_iter1_reg),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hBF00BF3FBF3FBF3F)) 
    \ap_CS_fsm[3]_i_2__1 
       (.I0(rgb2hsv_data_empty_n),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(icmp_ln108_reg_245),
        .I3(\B_V_data_1_state_reg_n_3_[1] ),
        .I4(ap_enable_reg_pp0_iter2_reg),
        .I5(icmp_ln108_reg_245_pp0_iter1_reg),
        .O(ap_block_pp0_stage0_subdone));
  LUT6 #(
    .INIT(64'hF700F700F7000000)) 
    ap_enable_reg_pp0_iter0_i_1__0
       (.I0(Q[2]),
        .I1(ap_block_pp0_stage0_subdone),
        .I2(CO),
        .I3(ap_rst_n),
        .I4(ap_NS_fsm1),
        .I5(ap_enable_reg_pp0_iter0),
        .O(\ap_CS_fsm_reg[2] ));
  LUT5 #(
    .INIT(32'h80CC8000)) 
    ap_enable_reg_pp0_iter1_i_1__1
       (.I0(CO),
        .I1(ap_rst_n),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(ap_enable_reg_pp0_iter1_reg),
        .O(ap_rst_n_0));
  LUT5 #(
    .INIT(32'hC044C000)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_NS_fsm1),
        .I1(ap_rst_n),
        .I2(ap_enable_reg_pp0_iter1_reg),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(ap_enable_reg_pp0_iter2_reg),
        .O(ap_rst_n_1));
  LUT6 #(
    .INIT(64'h8FFFFFFF80000000)) 
    \axi_last_V_reg_249[0]_i_1 
       (.I0(icmp_ln113_reg_235),
        .I1(\axi_last_V_reg_249_reg[0] ),
        .I2(CO),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(Q[2]),
        .I5(axi_last_V_reg_249),
        .O(\icmp_ln113_reg_235_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[0]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[0] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[0] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[10]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[10] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[10] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[11]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[11] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[11] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[12]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[12] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[12] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[13]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[13] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[13] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[14]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[14] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[14] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[15]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[15] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[15] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[16]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[16] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[16] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[17]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[17] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[17] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[18]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[18] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[18] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[19]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[19] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[19] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[1]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[1] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[1] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[20]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[20] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[20] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[21]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[21] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[21] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[22]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[22] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[22] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[23]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[23] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[23] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[2]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[2] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[2] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[3]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[3] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[3] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[4]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[4] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[4] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[5]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[5] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[5] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[6]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[6] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[6] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[7]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[7] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[7] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[8]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[8] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[8] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dst_TDATA[9]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[9] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[9] ),
        .I2(B_V_data_1_sel),
        .O(dst_TDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h80AA)) 
    \i_1_reg_226[11]_i_1 
       (.I0(Q[1]),
        .I1(\B_V_data_1_state_reg_n_3_[1] ),
        .I2(dst_TREADY),
        .I3(\B_V_data_1_state_reg[0]_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \icmp_ln108_reg_245[0]_i_1 
       (.I0(CO),
        .I1(ap_block_pp0_stage0_subdone),
        .I2(Q[2]),
        .I3(icmp_ln108_reg_245),
        .O(\ap_CS_fsm_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \icmp_ln108_reg_245_pp0_iter1_reg[0]_i_1 
       (.I0(icmp_ln108_reg_245),
        .I1(ap_block_pp0_stage0_subdone),
        .I2(Q[2]),
        .I3(icmp_ln108_reg_245_pp0_iter1_reg),
        .O(\icmp_ln108_reg_245_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hBFFFBBBB)) 
    \int_isr[0]_i_3 
       (.I0(\j_reg_138_reg[0] ),
        .I1(Q[1]),
        .I2(\B_V_data_1_state_reg_n_3_[1] ),
        .I3(dst_TREADY),
        .I4(\B_V_data_1_state_reg[0]_0 ),
        .O(\ap_CS_fsm_reg[1] ));
  LUT6 #(
    .INIT(64'h000000008F000000)) 
    \j_reg_138[0]_i_1 
       (.I0(\B_V_data_1_state_reg_n_3_[1] ),
        .I1(dst_TREADY),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .I3(\j_reg_138_reg[0] ),
        .I4(Q[1]),
        .I5(j_reg_1380),
        .O(j_reg_138));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \j_reg_138[0]_i_2 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(Q[2]),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(CO),
        .O(j_reg_1380));
  LUT6 #(
    .INIT(64'h00000000A2220000)) 
    \mOutPtr[0]_i_2 
       (.I0(xfMat2axis_24_9_2160_3840_1_U0_ap_start),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(dst_TREADY),
        .I3(\B_V_data_1_state_reg_n_3_[1] ),
        .I4(Q[1]),
        .I5(\j_reg_138_reg[0] ),
        .O(internal_empty_n_reg));
endmodule

(* ORIG_REF_NAME = "colordetect_accel_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_regslice_both_10
   (\B_V_data_1_state_reg[1]_0 ,
    ap_rst_n_0,
    D,
    shiftReg_ce,
    ap_rst_n_1,
    E,
    B_V_data_1_sel0,
    j_reg_140,
    DI,
    S,
    \icmp_ln83_reg_209_reg[0] ,
    \B_V_data_1_payload_B_reg[23]_0 ,
    ap_rst_n_inv,
    ap_clk,
    ap_enable_reg_pp0_iter00,
    ap_rst_n,
    ap_enable_reg_pp0_iter1_reg,
    ap_enable_reg_pp0_iter0,
    CO,
    Q,
    \j_reg_140_reg[0] ,
    imgInput_data_full_n,
    src_TVALID,
    icmp_ln83_reg_209,
    icmp_ln83_fu_176_p2_carry__2,
    src_TDATA);
  output \B_V_data_1_state_reg[1]_0 ;
  output ap_rst_n_0;
  output [1:0]D;
  output shiftReg_ce;
  output ap_rst_n_1;
  output [0:0]E;
  output B_V_data_1_sel0;
  output j_reg_140;
  output [3:0]DI;
  output [3:0]S;
  output \icmp_ln83_reg_209_reg[0] ;
  output [23:0]\B_V_data_1_payload_B_reg[23]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_enable_reg_pp0_iter00;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter1_reg;
  input ap_enable_reg_pp0_iter0;
  input [0:0]CO;
  input [1:0]Q;
  input [0:0]\j_reg_140_reg[0] ;
  input imgInput_data_full_n;
  input src_TVALID;
  input icmp_ln83_reg_209;
  input [7:0]icmp_ln83_fu_176_p2_carry__2;
  input [23:0]src_TDATA;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire \B_V_data_1_payload_A_reg_n_3_[0] ;
  wire \B_V_data_1_payload_A_reg_n_3_[10] ;
  wire \B_V_data_1_payload_A_reg_n_3_[11] ;
  wire \B_V_data_1_payload_A_reg_n_3_[12] ;
  wire \B_V_data_1_payload_A_reg_n_3_[13] ;
  wire \B_V_data_1_payload_A_reg_n_3_[14] ;
  wire \B_V_data_1_payload_A_reg_n_3_[15] ;
  wire \B_V_data_1_payload_A_reg_n_3_[16] ;
  wire \B_V_data_1_payload_A_reg_n_3_[17] ;
  wire \B_V_data_1_payload_A_reg_n_3_[18] ;
  wire \B_V_data_1_payload_A_reg_n_3_[19] ;
  wire \B_V_data_1_payload_A_reg_n_3_[1] ;
  wire \B_V_data_1_payload_A_reg_n_3_[20] ;
  wire \B_V_data_1_payload_A_reg_n_3_[21] ;
  wire \B_V_data_1_payload_A_reg_n_3_[22] ;
  wire \B_V_data_1_payload_A_reg_n_3_[23] ;
  wire \B_V_data_1_payload_A_reg_n_3_[2] ;
  wire \B_V_data_1_payload_A_reg_n_3_[3] ;
  wire \B_V_data_1_payload_A_reg_n_3_[4] ;
  wire \B_V_data_1_payload_A_reg_n_3_[5] ;
  wire \B_V_data_1_payload_A_reg_n_3_[6] ;
  wire \B_V_data_1_payload_A_reg_n_3_[7] ;
  wire \B_V_data_1_payload_A_reg_n_3_[8] ;
  wire \B_V_data_1_payload_A_reg_n_3_[9] ;
  wire [23:0]\B_V_data_1_payload_B_reg[23]_0 ;
  wire \B_V_data_1_payload_B_reg_n_3_[0] ;
  wire \B_V_data_1_payload_B_reg_n_3_[10] ;
  wire \B_V_data_1_payload_B_reg_n_3_[11] ;
  wire \B_V_data_1_payload_B_reg_n_3_[12] ;
  wire \B_V_data_1_payload_B_reg_n_3_[13] ;
  wire \B_V_data_1_payload_B_reg_n_3_[14] ;
  wire \B_V_data_1_payload_B_reg_n_3_[15] ;
  wire \B_V_data_1_payload_B_reg_n_3_[16] ;
  wire \B_V_data_1_payload_B_reg_n_3_[17] ;
  wire \B_V_data_1_payload_B_reg_n_3_[18] ;
  wire \B_V_data_1_payload_B_reg_n_3_[19] ;
  wire \B_V_data_1_payload_B_reg_n_3_[1] ;
  wire \B_V_data_1_payload_B_reg_n_3_[20] ;
  wire \B_V_data_1_payload_B_reg_n_3_[21] ;
  wire \B_V_data_1_payload_B_reg_n_3_[22] ;
  wire \B_V_data_1_payload_B_reg_n_3_[23] ;
  wire \B_V_data_1_payload_B_reg_n_3_[2] ;
  wire \B_V_data_1_payload_B_reg_n_3_[3] ;
  wire \B_V_data_1_payload_B_reg_n_3_[4] ;
  wire \B_V_data_1_payload_B_reg_n_3_[5] ;
  wire \B_V_data_1_payload_B_reg_n_3_[6] ;
  wire \B_V_data_1_payload_B_reg_n_3_[7] ;
  wire \B_V_data_1_payload_B_reg_n_3_[8] ;
  wire \B_V_data_1_payload_B_reg_n_3_[9] ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel0;
  wire B_V_data_1_sel_rd_i_1_n_3;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1_n_3;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__0_n_3 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire [0:0]CO;
  wire [1:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [1:0]Q;
  wire [3:0]S;
  wire \SRL_SIG[0][23]_i_2_n_3 ;
  wire \ap_CS_fsm[3]_i_2__0_n_3 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter00;
  wire ap_enable_reg_pp0_iter0_i_2_n_3;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire ap_rst_n_inv;
  wire [7:0]icmp_ln83_fu_176_p2_carry__2;
  wire icmp_ln83_reg_209;
  wire \icmp_ln83_reg_209_reg[0] ;
  wire imgInput_data_full_n;
  wire j_reg_140;
  wire [0:0]\j_reg_140_reg[0] ;
  wire shiftReg_ce;
  wire [23:0]src_TDATA;
  wire src_TVALID;
  wire src_TVALID_int_regslice;

  LUT3 #(
    .INIT(8'h45)) 
    \B_V_data_1_payload_A[23]_i_1__0 
       (.I0(B_V_data_1_sel_wr),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(src_TVALID_int_regslice),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[0]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[10]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[11]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[12]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[13]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[14]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[15]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[16]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[17]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[18]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[19]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[1]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[20]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[21]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[22]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[23]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[2]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[3]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[4]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[5]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[6]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[7]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[8]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(src_TDATA[9]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \B_V_data_1_payload_B[23]_i_1__0 
       (.I0(B_V_data_1_sel_wr),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(src_TVALID_int_regslice),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[0]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[10]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[11]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[12]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[13]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[14]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[15]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[16]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[17]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[18]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[19]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[1]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[20]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[21]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[22]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[23]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[2]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[3]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[4]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[5]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[6]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[7]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[8]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(src_TDATA[9]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    B_V_data_1_sel_rd_i_1
       (.I0(B_V_data_1_sel0),
        .I1(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1_n_3));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1_n_3),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1
       (.I0(\B_V_data_1_state_reg[1]_0 ),
        .I1(src_TVALID),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1_n_3));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1_n_3),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h8A80AA80)) 
    \B_V_data_1_state[0]_i_1__0 
       (.I0(ap_rst_n),
        .I1(src_TVALID),
        .I2(\B_V_data_1_state_reg[1]_0 ),
        .I3(src_TVALID_int_regslice),
        .I4(B_V_data_1_sel0),
        .O(\B_V_data_1_state[0]_i_1__0_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \B_V_data_1_state[1]_i_1 
       (.I0(src_TVALID_int_regslice),
        .I1(B_V_data_1_sel0),
        .I2(src_TVALID),
        .I3(\B_V_data_1_state_reg[1]_0 ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__0_n_3 ),
        .Q(src_TVALID_int_regslice),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg[1]_0 ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h2020202000202020)) 
    \SRL_SIG[0][23]_i_1__0 
       (.I0(Q[1]),
        .I1(\SRL_SIG[0][23]_i_2_n_3 ),
        .I2(imgInput_data_full_n),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(CO),
        .I5(src_TVALID_int_regslice),
        .O(shiftReg_ce));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \SRL_SIG[0][23]_i_2 
       (.I0(ap_enable_reg_pp0_iter1_reg),
        .I1(icmp_ln83_reg_209),
        .O(\SRL_SIG[0][23]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFF8F88888888)) 
    \ap_CS_fsm[2]_i_1__1 
       (.I0(Q[0]),
        .I1(\j_reg_140_reg[0] ),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(\ap_CS_fsm[3]_i_2__0_n_3 ),
        .I4(CO),
        .I5(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \ap_CS_fsm[3]_i_1__0 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(\ap_CS_fsm[3]_i_2__0_n_3 ),
        .I2(Q[1]),
        .I3(CO),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \ap_CS_fsm[3]_i_2__0 
       (.I0(ap_enable_reg_pp0_iter1_reg),
        .I1(icmp_ln83_reg_209),
        .I2(imgInput_data_full_n),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(CO),
        .I5(src_TVALID_int_regslice),
        .O(\ap_CS_fsm[3]_i_2__0_n_3 ));
  LUT6 #(
    .INIT(64'hE0E0E0E0E0000000)) 
    ap_enable_reg_pp0_iter0_i_1__1
       (.I0(ap_enable_reg_pp0_iter0_i_2_n_3),
        .I1(CO),
        .I2(ap_rst_n),
        .I3(Q[0]),
        .I4(\j_reg_140_reg[0] ),
        .I5(ap_enable_reg_pp0_iter0),
        .O(ap_rst_n_1));
  LUT6 #(
    .INIT(64'h404040FFFFFFFFFF)) 
    ap_enable_reg_pp0_iter0_i_2
       (.I0(src_TVALID_int_regslice),
        .I1(CO),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(imgInput_data_full_n),
        .I4(\SRL_SIG[0][23]_i_2_n_3 ),
        .I5(Q[1]),
        .O(ap_enable_reg_pp0_iter0_i_2_n_3));
  LUT6 #(
    .INIT(64'h40CC400040004000)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(ap_enable_reg_pp0_iter00),
        .I1(ap_rst_n),
        .I2(ap_enable_reg_pp0_iter1_reg),
        .I3(\ap_CS_fsm[3]_i_2__0_n_3 ),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(CO),
        .O(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[0]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[0] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[0] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[10]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[10] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[10] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[11]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[11] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[11] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[12]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[12] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[12] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[13]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[13] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[13] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[14]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[14] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[14] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[15]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[15] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[15] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[16]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[16] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[16] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[17]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[17] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[17] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[18]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[18] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[18] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[19]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[19] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[19] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[1]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[1] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[1] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[20]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[20] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[20] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[21]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[21] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[21] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[22]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[22] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[22] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_data_V_reg_213[23]_i_1 
       (.I0(CO),
        .I1(Q[1]),
        .I2(\ap_CS_fsm[3]_i_2__0_n_3 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[23]_i_2 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[23] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[23] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[2]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[2] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[2] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[3]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[3] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[3] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[4]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[4] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[4] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[5]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[5] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[5] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[6]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[6] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[6] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[7]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[7] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[7] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[8]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[8] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[8] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_data_V_reg_213[9]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[9] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[9] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[23]_0 [9]));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln83_fu_176_p2_carry__2_i_1
       (.I0(icmp_ln83_fu_176_p2_carry__2[6]),
        .I1(icmp_ln83_fu_176_p2_carry__2[7]),
        .O(DI[3]));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln83_fu_176_p2_carry__2_i_2
       (.I0(icmp_ln83_fu_176_p2_carry__2[5]),
        .I1(icmp_ln83_fu_176_p2_carry__2[4]),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln83_fu_176_p2_carry__2_i_3
       (.I0(icmp_ln83_fu_176_p2_carry__2[3]),
        .I1(icmp_ln83_fu_176_p2_carry__2[2]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln83_fu_176_p2_carry__2_i_4
       (.I0(icmp_ln83_fu_176_p2_carry__2[1]),
        .I1(icmp_ln83_fu_176_p2_carry__2[0]),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln83_fu_176_p2_carry__2_i_5
       (.I0(icmp_ln83_fu_176_p2_carry__2[6]),
        .I1(icmp_ln83_fu_176_p2_carry__2[7]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln83_fu_176_p2_carry__2_i_6
       (.I0(icmp_ln83_fu_176_p2_carry__2[4]),
        .I1(icmp_ln83_fu_176_p2_carry__2[5]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln83_fu_176_p2_carry__2_i_7
       (.I0(icmp_ln83_fu_176_p2_carry__2[2]),
        .I1(icmp_ln83_fu_176_p2_carry__2[3]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln83_fu_176_p2_carry__2_i_8
       (.I0(icmp_ln83_fu_176_p2_carry__2[0]),
        .I1(icmp_ln83_fu_176_p2_carry__2[1]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \icmp_ln83_reg_209[0]_i_1 
       (.I0(icmp_ln83_reg_209),
        .I1(\ap_CS_fsm[3]_i_2__0_n_3 ),
        .I2(Q[1]),
        .I3(CO),
        .O(\icmp_ln83_reg_209_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \j_reg_140[0]_i_1 
       (.I0(Q[0]),
        .I1(\j_reg_140_reg[0] ),
        .I2(B_V_data_1_sel0),
        .O(j_reg_140));
  LUT6 #(
    .INIT(64'hA800000000000000)) 
    \j_reg_140[0]_i_2 
       (.I0(Q[1]),
        .I1(\SRL_SIG[0][23]_i_2_n_3 ),
        .I2(imgInput_data_full_n),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(CO),
        .I5(src_TVALID_int_regslice),
        .O(B_V_data_1_sel0));
endmodule

(* ORIG_REF_NAME = "colordetect_accel_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_regslice_both__parameterized1
   (dst_TLAST,
    ap_rst_n_inv,
    ap_clk,
    dst_TREADY,
    B_V_data_1_sel_wr_reg_0,
    ap_rst_n,
    axi_last_V_reg_249);
  output [0:0]dst_TLAST;
  input ap_rst_n_inv;
  input ap_clk;
  input dst_TREADY;
  input B_V_data_1_sel_wr_reg_0;
  input ap_rst_n;
  input axi_last_V_reg_249;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1__0_n_3 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1_n_3 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__1_n_3;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__1_n_3;
  wire B_V_data_1_sel_wr_reg_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__1_n_3 ;
  wire \B_V_data_1_state_reg_n_3_[0] ;
  wire \B_V_data_1_state_reg_n_3_[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axi_last_V_reg_249;
  wire [0:0]dst_TLAST;
  wire dst_TREADY;

  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \B_V_data_1_payload_A[0]_i_1__0 
       (.I0(axi_last_V_reg_249),
        .I1(B_V_data_1_sel_wr),
        .I2(\B_V_data_1_state_reg_n_3_[1] ),
        .I3(\B_V_data_1_state_reg_n_3_[0] ),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1__0_n_3 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1__0_n_3 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \B_V_data_1_payload_B[0]_i_1 
       (.I0(axi_last_V_reg_249),
        .I1(B_V_data_1_sel_wr),
        .I2(\B_V_data_1_state_reg_n_3_[1] ),
        .I3(\B_V_data_1_state_reg_n_3_[0] ),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1_n_3 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1_n_3 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__1
       (.I0(\B_V_data_1_state_reg_n_3_[0] ),
        .I1(dst_TREADY),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__1_n_3));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__1_n_3),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    B_V_data_1_sel_wr_i_1__1
       (.I0(B_V_data_1_sel_wr_reg_0),
        .I1(\B_V_data_1_state_reg_n_3_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__1_n_3));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__1_n_3),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h0888A8A8)) 
    \B_V_data_1_state[0]_i_1__1 
       (.I0(ap_rst_n),
        .I1(\B_V_data_1_state_reg_n_3_[0] ),
        .I2(\B_V_data_1_state_reg_n_3_[1] ),
        .I3(dst_TREADY),
        .I4(B_V_data_1_sel_wr_reg_0),
        .O(\B_V_data_1_state[0]_i_1__1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hEAFF)) 
    \B_V_data_1_state[1]_i_1__0 
       (.I0(dst_TREADY),
        .I1(\B_V_data_1_state_reg_n_3_[1] ),
        .I2(B_V_data_1_sel_wr_reg_0),
        .I3(\B_V_data_1_state_reg_n_3_[0] ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__1_n_3 ),
        .Q(\B_V_data_1_state_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_3_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_TLAST[0]_INST_0 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(dst_TLAST));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_start_for_axis2xfMat_24_9_2160_3840_1_U0
   (start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n,
    axis2xfMat_24_9_2160_3840_1_U0_ap_start,
    ap_idle,
    internal_full_n_reg_0,
    E,
    shiftReg_ce,
    internal_empty_n_reg_0,
    internal_empty_n_reg_1,
    ap_clk,
    int_ap_idle_reg,
    start_for_bgr2hsv_9_2160_3840_1_U0_full_n,
    start_once_reg_0,
    shiftReg_ce_1,
    rgb2hsv_rows_c_empty_n,
    xfMat2axis_24_9_2160_3840_1_U0_ap_start,
    rgb2hsv_cols_c_empty_n,
    Q,
    rgb2hsv_cols_c_full_n,
    imgInput_rows_c_full_n,
    rgb2hsv_rows_c_full_n,
    imgInput_cols_c_full_n,
    internal_empty_n_reg_2,
    \mOutPtr_reg[1]_0 ,
    ap_rst_n,
    internal_full_n_reg_1,
    start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n,
    start_once_reg,
    Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start,
    CO,
    \mOutPtr_reg[1]_1 ,
    ap_rst_n_inv);
  output start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n;
  output axis2xfMat_24_9_2160_3840_1_U0_ap_start;
  output ap_idle;
  output internal_full_n_reg_0;
  output [0:0]E;
  output shiftReg_ce;
  output [0:0]internal_empty_n_reg_0;
  output internal_empty_n_reg_1;
  input ap_clk;
  input int_ap_idle_reg;
  input start_for_bgr2hsv_9_2160_3840_1_U0_full_n;
  input start_once_reg_0;
  input shiftReg_ce_1;
  input rgb2hsv_rows_c_empty_n;
  input xfMat2axis_24_9_2160_3840_1_U0_ap_start;
  input rgb2hsv_cols_c_empty_n;
  input [0:0]Q;
  input rgb2hsv_cols_c_full_n;
  input imgInput_rows_c_full_n;
  input rgb2hsv_rows_c_full_n;
  input imgInput_cols_c_full_n;
  input internal_empty_n_reg_2;
  input \mOutPtr_reg[1]_0 ;
  input ap_rst_n;
  input internal_full_n_reg_1;
  input start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n;
  input start_once_reg;
  input Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start;
  input [0:0]CO;
  input [0:0]\mOutPtr_reg[1]_1 ;
  input ap_rst_n_inv;

  wire Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start;
  wire [0:0]CO;
  wire [0:0]E;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axis2xfMat_24_9_2160_3840_1_U0_ap_start;
  wire imgInput_cols_c_full_n;
  wire imgInput_rows_c_full_n;
  wire int_ap_idle_reg;
  wire internal_empty_n_i_1__8_n_3;
  wire [0:0]internal_empty_n_reg_0;
  wire internal_empty_n_reg_1;
  wire internal_empty_n_reg_2;
  wire internal_full_n_i_1__8_n_3;
  wire internal_full_n_reg_0;
  wire internal_full_n_reg_1;
  wire \mOutPtr[0]_i_1_n_3 ;
  wire \mOutPtr[1]_i_1_n_3 ;
  wire \mOutPtr_reg[1]_0 ;
  wire [0:0]\mOutPtr_reg[1]_1 ;
  wire \mOutPtr_reg_n_3_[0] ;
  wire \mOutPtr_reg_n_3_[1] ;
  wire rgb2hsv_cols_c_empty_n;
  wire rgb2hsv_cols_c_full_n;
  wire rgb2hsv_rows_c_empty_n;
  wire rgb2hsv_rows_c_full_n;
  wire shiftReg_ce;
  wire shiftReg_ce_1;
  wire start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n;
  wire start_for_bgr2hsv_9_2160_3840_1_U0_full_n;
  wire start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_0;
  wire xfMat2axis_24_9_2160_3840_1_U0_ap_start;

  LUT5 #(
    .INIT(32'h40000000)) 
    \SRL_SIG[0][31]_i_1 
       (.I0(internal_full_n_reg_0),
        .I1(rgb2hsv_cols_c_full_n),
        .I2(imgInput_rows_c_full_n),
        .I3(rgb2hsv_rows_c_full_n),
        .I4(imgInput_cols_c_full_n),
        .O(shiftReg_ce));
  LUT4 #(
    .INIT(16'h07FF)) 
    \SRL_SIG[0][31]_i_2 
       (.I0(start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n),
        .I1(start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n),
        .I2(start_once_reg),
        .I3(Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start),
        .O(internal_full_n_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i_reg_129[11]_i_2 
       (.I0(axis2xfMat_24_9_2160_3840_1_U0_ap_start),
        .I1(start_for_bgr2hsv_9_2160_3840_1_U0_full_n),
        .I2(start_once_reg_0),
        .O(internal_empty_n_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h02020222)) 
    int_ap_idle_i_1
       (.I0(internal_full_n_reg_0),
        .I1(int_ap_idle_reg),
        .I2(axis2xfMat_24_9_2160_3840_1_U0_ap_start),
        .I3(start_for_bgr2hsv_9_2160_3840_1_U0_full_n),
        .I4(start_once_reg_0),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'hFFFEFF0000000000)) 
    internal_empty_n_i_1__8
       (.I0(\mOutPtr_reg_n_3_[1] ),
        .I1(\mOutPtr_reg_n_3_[0] ),
        .I2(internal_empty_n_reg_2),
        .I3(\mOutPtr_reg[1]_0 ),
        .I4(axis2xfMat_24_9_2160_3840_1_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__8_n_3));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__8_n_3),
        .Q(axis2xfMat_24_9_2160_3840_1_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDD5DDDDDDDDFFFF)) 
    internal_full_n_i_1__8
       (.I0(ap_rst_n),
        .I1(start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n),
        .I2(\mOutPtr_reg_n_3_[1] ),
        .I3(\mOutPtr_reg_n_3_[0] ),
        .I4(\mOutPtr_reg[1]_0 ),
        .I5(internal_full_n_reg_1),
        .O(internal_full_n_i_1__8_n_3));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__8_n_3),
        .Q(start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h20DFDF20)) 
    \mOutPtr[0]_i_1 
       (.I0(\mOutPtr_reg[1]_1 ),
        .I1(CO),
        .I2(axis2xfMat_24_9_2160_3840_1_U0_ap_start),
        .I3(\mOutPtr_reg[1]_0 ),
        .I4(\mOutPtr_reg_n_3_[0] ),
        .O(\mOutPtr[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h77E7777788188888)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_3_[0] ),
        .I1(\mOutPtr_reg[1]_0 ),
        .I2(axis2xfMat_24_9_2160_3840_1_U0_ap_start),
        .I3(CO),
        .I4(\mOutPtr_reg[1]_1 ),
        .I5(\mOutPtr_reg_n_3_[1] ),
        .O(\mOutPtr[1]_i_1_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mOutPtr[1]_i_1__3 
       (.I0(shiftReg_ce),
        .I1(shiftReg_ce_1),
        .O(E));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mOutPtr[2]_i_1 
       (.I0(shiftReg_ce),
        .I1(rgb2hsv_rows_c_empty_n),
        .I2(xfMat2axis_24_9_2160_3840_1_U0_ap_start),
        .I3(rgb2hsv_cols_c_empty_n),
        .I4(Q),
        .O(internal_empty_n_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_3 ),
        .Q(\mOutPtr_reg_n_3_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_3 ),
        .Q(\mOutPtr_reg_n_3_[1] ),
        .S(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_start_for_bgr2hsv_9_2160_3840_1_U0
   (start_for_bgr2hsv_9_2160_3840_1_U0_full_n,
    bgr2hsv_9_2160_3840_1_U0_ap_start,
    internal_empty_n_reg_0,
    ap_clk,
    Q,
    imgInput_rows_c9_empty_n,
    imgInput_cols_c10_empty_n,
    ap_rst_n,
    axis2xfMat_24_9_2160_3840_1_U0_ap_start,
    start_once_reg,
    \mOutPtr_reg[1]_0 ,
    ap_rst_n_inv);
  output start_for_bgr2hsv_9_2160_3840_1_U0_full_n;
  output bgr2hsv_9_2160_3840_1_U0_ap_start;
  output internal_empty_n_reg_0;
  input ap_clk;
  input [1:0]Q;
  input imgInput_rows_c9_empty_n;
  input imgInput_cols_c10_empty_n;
  input ap_rst_n;
  input axis2xfMat_24_9_2160_3840_1_U0_ap_start;
  input start_once_reg;
  input \mOutPtr_reg[1]_0 ;
  input ap_rst_n_inv;

  wire [1:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axis2xfMat_24_9_2160_3840_1_U0_ap_start;
  wire bgr2hsv_9_2160_3840_1_U0_ap_start;
  wire imgInput_cols_c10_empty_n;
  wire imgInput_rows_c9_empty_n;
  wire internal_empty_n_i_1__9_n_3;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_1__9_n_3;
  wire internal_full_n_i_2__1_n_3;
  wire internal_full_n_i_3_n_3;
  wire \mOutPtr[0]_i_1_n_3 ;
  wire \mOutPtr[1]_i_1_n_3 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg_n_3_[0] ;
  wire \mOutPtr_reg_n_3_[1] ;
  wire start_for_bgr2hsv_9_2160_3840_1_U0_full_n;
  wire start_once_reg;

  LUT6 #(
    .INIT(64'hFFEFFF0000000000)) 
    internal_empty_n_i_1__9
       (.I0(\mOutPtr_reg_n_3_[1] ),
        .I1(\mOutPtr_reg_n_3_[0] ),
        .I2(Q[1]),
        .I3(internal_full_n_i_2__1_n_3),
        .I4(bgr2hsv_9_2160_3840_1_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__9_n_3));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__9_n_3),
        .Q(bgr2hsv_9_2160_3840_1_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__9
       (.I0(ap_rst_n),
        .I1(start_for_bgr2hsv_9_2160_3840_1_U0_full_n),
        .I2(\mOutPtr_reg_n_3_[1] ),
        .I3(\mOutPtr_reg_n_3_[0] ),
        .I4(internal_full_n_i_2__1_n_3),
        .I5(internal_full_n_i_3_n_3),
        .O(internal_full_n_i_1__9_n_3));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    internal_full_n_i_2
       (.I0(bgr2hsv_9_2160_3840_1_U0_ap_start),
        .I1(Q[0]),
        .I2(imgInput_rows_c9_empty_n),
        .I3(imgInput_cols_c10_empty_n),
        .O(internal_empty_n_reg_0));
  LUT3 #(
    .INIT(8'h08)) 
    internal_full_n_i_2__1
       (.I0(start_for_bgr2hsv_9_2160_3840_1_U0_full_n),
        .I1(axis2xfMat_24_9_2160_3840_1_U0_ap_start),
        .I2(start_once_reg),
        .O(internal_full_n_i_2__1_n_3));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    internal_full_n_i_3
       (.I0(bgr2hsv_9_2160_3840_1_U0_ap_start),
        .I1(Q[1]),
        .O(internal_full_n_i_3_n_3));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__9_n_3),
        .Q(start_for_bgr2hsv_9_2160_3840_1_U0_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7777877788887888)) 
    \mOutPtr[0]_i_1 
       (.I0(bgr2hsv_9_2160_3840_1_U0_ap_start),
        .I1(Q[1]),
        .I2(start_for_bgr2hsv_9_2160_3840_1_U0_full_n),
        .I3(axis2xfMat_24_9_2160_3840_1_U0_ap_start),
        .I4(start_once_reg),
        .I5(\mOutPtr_reg_n_3_[0] ),
        .O(\mOutPtr[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBADFDFDF45202020)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_3_[0] ),
        .I1(start_once_reg),
        .I2(\mOutPtr_reg[1]_0 ),
        .I3(Q[1]),
        .I4(bgr2hsv_9_2160_3840_1_U0_ap_start),
        .I5(\mOutPtr_reg_n_3_[1] ),
        .O(\mOutPtr[1]_i_1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_3 ),
        .Q(\mOutPtr_reg_n_3_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_3 ),
        .Q(\mOutPtr_reg_n_3_[1] ),
        .S(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_start_for_xfMat2axis_24_9_2160_3840_1_U0
   (start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n,
    xfMat2axis_24_9_2160_3840_1_U0_ap_start,
    ap_clk,
    \mOutPtr_reg[2]_0 ,
    \mOutPtr_reg[2]_1 ,
    ap_rst_n,
    \mOutPtr_reg[0]_0 ,
    Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start,
    start_once_reg,
    start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n,
    ap_rst_n_inv);
  output start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n;
  output xfMat2axis_24_9_2160_3840_1_U0_ap_start;
  input ap_clk;
  input \mOutPtr_reg[2]_0 ;
  input \mOutPtr_reg[2]_1 ;
  input ap_rst_n;
  input \mOutPtr_reg[0]_0 ;
  input Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start;
  input start_once_reg;
  input start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n;
  input ap_rst_n_inv;

  wire Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire internal_empty_n_i_1__3_n_3;
  wire internal_full_n_i_1__3_n_3;
  wire internal_full_n_i_2__2_n_3;
  wire [2:0]mOutPtr;
  wire \mOutPtr[0]_i_1_n_3 ;
  wire \mOutPtr[1]_i_1_n_3 ;
  wire \mOutPtr[2]_i_1_n_3 ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[2]_0 ;
  wire \mOutPtr_reg[2]_1 ;
  wire start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n;
  wire start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n;
  wire start_once_reg;
  wire xfMat2axis_24_9_2160_3840_1_U0_ap_start;

  LUT6 #(
    .INIT(64'hFFFEFF0000000000)) 
    internal_empty_n_i_1__3
       (.I0(mOutPtr[1]),
        .I1(internal_full_n_i_2__2_n_3),
        .I2(\mOutPtr_reg[2]_0 ),
        .I3(\mOutPtr_reg[2]_1 ),
        .I4(xfMat2axis_24_9_2160_3840_1_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__3_n_3));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__3_n_3),
        .Q(xfMat2axis_24_9_2160_3840_1_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFD5DDDDDD)) 
    internal_full_n_i_1__3
       (.I0(ap_rst_n),
        .I1(start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n),
        .I2(internal_full_n_i_2__2_n_3),
        .I3(mOutPtr[1]),
        .I4(\mOutPtr_reg[2]_1 ),
        .I5(\mOutPtr_reg[0]_0 ),
        .O(internal_full_n_i_1__3_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    internal_full_n_i_2__2
       (.I0(mOutPtr[2]),
        .I1(mOutPtr[0]),
        .O(internal_full_n_i_2__2_n_3));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__3_n_3),
        .Q(start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h59555555A6AAAAAA)) 
    \mOutPtr[0]_i_1 
       (.I0(\mOutPtr_reg[0]_0 ),
        .I1(Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start),
        .I2(start_once_reg),
        .I3(start_for_xfMat2axis_24_9_2160_3840_1_U0_full_n),
        .I4(start_for_axis2xfMat_24_9_2160_3840_1_U0_full_n),
        .I5(mOutPtr[0]),
        .O(\mOutPtr[0]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'h7E778188)) 
    \mOutPtr[1]_i_1 
       (.I0(mOutPtr[0]),
        .I1(\mOutPtr_reg[2]_1 ),
        .I2(\mOutPtr_reg[2]_0 ),
        .I3(xfMat2axis_24_9_2160_3840_1_U0_ap_start),
        .I4(mOutPtr[1]),
        .O(\mOutPtr[1]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h7FFE7F7F80018080)) 
    \mOutPtr[2]_i_1 
       (.I0(mOutPtr[1]),
        .I1(mOutPtr[0]),
        .I2(\mOutPtr_reg[2]_1 ),
        .I3(\mOutPtr_reg[2]_0 ),
        .I4(xfMat2axis_24_9_2160_3840_1_U0_ap_start),
        .I5(mOutPtr[2]),
        .O(\mOutPtr[2]_i_1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_3 ),
        .Q(mOutPtr[0]),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_3 ),
        .Q(mOutPtr[1]),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[2]_i_1_n_3 ),
        .Q(mOutPtr[2]),
        .S(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_xfMat2axis_24_9_2160_3840_1_s
   (\B_V_data_1_state_reg[0] ,
    \ap_CS_fsm_reg[1]_0 ,
    Q,
    internal_empty_n_reg,
    xfMat2axis_24_9_2160_3840_1_U0_img_cols_read,
    \icmp_ln108_reg_245_reg[0]_0 ,
    dst_TLAST,
    dst_TDATA,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    rgb2hsv_cols_c_empty_n,
    xfMat2axis_24_9_2160_3840_1_U0_ap_start,
    rgb2hsv_rows_c_empty_n,
    dst_TREADY,
    rgb2hsv_data_empty_n,
    D,
    \cols_reg_211_reg[31]_0 ,
    \rows_reg_206_reg[31]_0 );
  output \B_V_data_1_state_reg[0] ;
  output \ap_CS_fsm_reg[1]_0 ;
  output [0:0]Q;
  output internal_empty_n_reg;
  output xfMat2axis_24_9_2160_3840_1_U0_img_cols_read;
  output \icmp_ln108_reg_245_reg[0]_0 ;
  output [0:0]dst_TLAST;
  output [23:0]dst_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input rgb2hsv_cols_c_empty_n;
  input xfMat2axis_24_9_2160_3840_1_U0_ap_start;
  input rgb2hsv_rows_c_empty_n;
  input dst_TREADY;
  input rgb2hsv_data_empty_n;
  input [23:0]D;
  input [31:0]\cols_reg_211_reg[31]_0 ;
  input [31:0]\rows_reg_206_reg[31]_0 ;

  wire \B_V_data_1_state_reg[0] ;
  wire [23:0]D;
  wire [0:0]Q;
  wire \ap_CS_fsm[2]_i_3_n_3 ;
  wire ap_CS_fsm_pp0_stage0;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state6;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg_n_3;
  wire ap_enable_reg_pp0_iter2_reg_n_3;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axi_last_V_reg_249;
  wire [31:0]cols_reg_211;
  wire [31:0]\cols_reg_211_reg[31]_0 ;
  wire [23:0]dst_TDATA;
  wire [0:0]dst_TLAST;
  wire dst_TREADY;
  wire [11:0]i_1_fu_161_p2;
  wire [11:0]i_1_reg_226;
  wire \i_1_reg_226_reg[11]_i_2_n_5 ;
  wire \i_1_reg_226_reg[11]_i_2_n_6 ;
  wire \i_1_reg_226_reg[4]_i_1_n_3 ;
  wire \i_1_reg_226_reg[4]_i_1_n_4 ;
  wire \i_1_reg_226_reg[4]_i_1_n_5 ;
  wire \i_1_reg_226_reg[4]_i_1_n_6 ;
  wire \i_1_reg_226_reg[8]_i_1_n_3 ;
  wire \i_1_reg_226_reg[8]_i_1_n_4 ;
  wire \i_1_reg_226_reg[8]_i_1_n_5 ;
  wire \i_1_reg_226_reg[8]_i_1_n_6 ;
  wire [11:0]i_reg_127;
  wire icmp_ln106_fu_171_p2;
  wire icmp_ln106_fu_171_p2_carry__0_i_1_n_3;
  wire icmp_ln106_fu_171_p2_carry__0_i_2_n_3;
  wire icmp_ln106_fu_171_p2_carry__0_i_3_n_3;
  wire icmp_ln106_fu_171_p2_carry__0_i_4_n_3;
  wire icmp_ln106_fu_171_p2_carry__0_i_5_n_3;
  wire icmp_ln106_fu_171_p2_carry__0_i_6_n_3;
  wire icmp_ln106_fu_171_p2_carry__0_i_7_n_3;
  wire icmp_ln106_fu_171_p2_carry__0_i_8_n_3;
  wire icmp_ln106_fu_171_p2_carry__0_n_3;
  wire icmp_ln106_fu_171_p2_carry__0_n_4;
  wire icmp_ln106_fu_171_p2_carry__0_n_5;
  wire icmp_ln106_fu_171_p2_carry__0_n_6;
  wire icmp_ln106_fu_171_p2_carry__1_i_1_n_3;
  wire icmp_ln106_fu_171_p2_carry__1_i_2_n_3;
  wire icmp_ln106_fu_171_p2_carry__1_i_3_n_3;
  wire icmp_ln106_fu_171_p2_carry__1_i_4_n_3;
  wire icmp_ln106_fu_171_p2_carry__1_i_5_n_3;
  wire icmp_ln106_fu_171_p2_carry__1_i_6_n_3;
  wire icmp_ln106_fu_171_p2_carry__1_i_7_n_3;
  wire icmp_ln106_fu_171_p2_carry__1_i_8_n_3;
  wire icmp_ln106_fu_171_p2_carry__1_n_3;
  wire icmp_ln106_fu_171_p2_carry__1_n_4;
  wire icmp_ln106_fu_171_p2_carry__1_n_5;
  wire icmp_ln106_fu_171_p2_carry__1_n_6;
  wire icmp_ln106_fu_171_p2_carry__2_i_1_n_3;
  wire icmp_ln106_fu_171_p2_carry__2_i_2_n_3;
  wire icmp_ln106_fu_171_p2_carry__2_i_3_n_3;
  wire icmp_ln106_fu_171_p2_carry__2_i_4_n_3;
  wire icmp_ln106_fu_171_p2_carry__2_i_5_n_3;
  wire icmp_ln106_fu_171_p2_carry__2_i_6_n_3;
  wire icmp_ln106_fu_171_p2_carry__2_i_7_n_3;
  wire icmp_ln106_fu_171_p2_carry__2_i_8_n_3;
  wire icmp_ln106_fu_171_p2_carry__2_n_4;
  wire icmp_ln106_fu_171_p2_carry__2_n_5;
  wire icmp_ln106_fu_171_p2_carry__2_n_6;
  wire icmp_ln106_fu_171_p2_carry_i_1_n_3;
  wire icmp_ln106_fu_171_p2_carry_i_2_n_3;
  wire icmp_ln106_fu_171_p2_carry_i_3_n_3;
  wire icmp_ln106_fu_171_p2_carry_i_4_n_3;
  wire icmp_ln106_fu_171_p2_carry_i_5_n_3;
  wire icmp_ln106_fu_171_p2_carry_i_6_n_3;
  wire icmp_ln106_fu_171_p2_carry_i_7_n_3;
  wire icmp_ln106_fu_171_p2_carry_i_8_n_3;
  wire icmp_ln106_fu_171_p2_carry_n_3;
  wire icmp_ln106_fu_171_p2_carry_n_4;
  wire icmp_ln106_fu_171_p2_carry_n_5;
  wire icmp_ln106_fu_171_p2_carry_n_6;
  wire icmp_ln108_fu_191_p2;
  wire icmp_ln108_fu_191_p2_carry__0_i_1_n_3;
  wire icmp_ln108_fu_191_p2_carry__0_i_2_n_3;
  wire icmp_ln108_fu_191_p2_carry__0_i_3_n_3;
  wire icmp_ln108_fu_191_p2_carry__0_i_4_n_3;
  wire icmp_ln108_fu_191_p2_carry__0_i_5_n_3;
  wire icmp_ln108_fu_191_p2_carry__0_i_6_n_3;
  wire icmp_ln108_fu_191_p2_carry__0_i_7_n_3;
  wire icmp_ln108_fu_191_p2_carry__0_i_8_n_3;
  wire icmp_ln108_fu_191_p2_carry__0_n_3;
  wire icmp_ln108_fu_191_p2_carry__0_n_4;
  wire icmp_ln108_fu_191_p2_carry__0_n_5;
  wire icmp_ln108_fu_191_p2_carry__0_n_6;
  wire icmp_ln108_fu_191_p2_carry__1_i_1_n_3;
  wire icmp_ln108_fu_191_p2_carry__1_i_2_n_3;
  wire icmp_ln108_fu_191_p2_carry__1_i_3_n_3;
  wire icmp_ln108_fu_191_p2_carry__1_i_4_n_3;
  wire icmp_ln108_fu_191_p2_carry__1_i_5_n_3;
  wire icmp_ln108_fu_191_p2_carry__1_i_6_n_3;
  wire icmp_ln108_fu_191_p2_carry__1_i_7_n_3;
  wire icmp_ln108_fu_191_p2_carry__1_i_8_n_3;
  wire icmp_ln108_fu_191_p2_carry__1_n_3;
  wire icmp_ln108_fu_191_p2_carry__1_n_4;
  wire icmp_ln108_fu_191_p2_carry__1_n_5;
  wire icmp_ln108_fu_191_p2_carry__1_n_6;
  wire icmp_ln108_fu_191_p2_carry__2_i_1_n_3;
  wire icmp_ln108_fu_191_p2_carry__2_i_2_n_3;
  wire icmp_ln108_fu_191_p2_carry__2_i_3_n_3;
  wire icmp_ln108_fu_191_p2_carry__2_i_4_n_3;
  wire icmp_ln108_fu_191_p2_carry__2_i_5_n_3;
  wire icmp_ln108_fu_191_p2_carry__2_i_6_n_3;
  wire icmp_ln108_fu_191_p2_carry__2_i_7_n_3;
  wire icmp_ln108_fu_191_p2_carry__2_i_8_n_3;
  wire icmp_ln108_fu_191_p2_carry__2_n_4;
  wire icmp_ln108_fu_191_p2_carry__2_n_5;
  wire icmp_ln108_fu_191_p2_carry__2_n_6;
  wire icmp_ln108_fu_191_p2_carry_i_1_n_3;
  wire icmp_ln108_fu_191_p2_carry_i_2_n_3;
  wire icmp_ln108_fu_191_p2_carry_i_3_n_3;
  wire icmp_ln108_fu_191_p2_carry_i_4_n_3;
  wire icmp_ln108_fu_191_p2_carry_i_5_n_3;
  wire icmp_ln108_fu_191_p2_carry_i_6_n_3;
  wire icmp_ln108_fu_191_p2_carry_i_7_n_3;
  wire icmp_ln108_fu_191_p2_carry_i_8_n_3;
  wire icmp_ln108_fu_191_p2_carry_n_3;
  wire icmp_ln108_fu_191_p2_carry_n_4;
  wire icmp_ln108_fu_191_p2_carry_n_5;
  wire icmp_ln108_fu_191_p2_carry_n_6;
  wire icmp_ln108_reg_245;
  wire icmp_ln108_reg_245_pp0_iter1_reg;
  wire \icmp_ln108_reg_245_reg[0]_0 ;
  wire icmp_ln113_1_fu_196_p2;
  wire icmp_ln113_1_fu_196_p2_carry__0_i_1_n_3;
  wire icmp_ln113_1_fu_196_p2_carry__0_i_2_n_3;
  wire icmp_ln113_1_fu_196_p2_carry__0_i_3_n_3;
  wire icmp_ln113_1_fu_196_p2_carry__0_i_4_n_3;
  wire icmp_ln113_1_fu_196_p2_carry__0_n_3;
  wire icmp_ln113_1_fu_196_p2_carry__0_n_4;
  wire icmp_ln113_1_fu_196_p2_carry__0_n_5;
  wire icmp_ln113_1_fu_196_p2_carry__0_n_6;
  wire icmp_ln113_1_fu_196_p2_carry__1_i_1_n_3;
  wire icmp_ln113_1_fu_196_p2_carry__1_i_2_n_3;
  wire icmp_ln113_1_fu_196_p2_carry__1_i_3_n_3;
  wire icmp_ln113_1_fu_196_p2_carry__1_n_5;
  wire icmp_ln113_1_fu_196_p2_carry__1_n_6;
  wire icmp_ln113_1_fu_196_p2_carry_i_1_n_3;
  wire icmp_ln113_1_fu_196_p2_carry_i_2_n_3;
  wire icmp_ln113_1_fu_196_p2_carry_i_3_n_3;
  wire icmp_ln113_1_fu_196_p2_carry_i_4_n_3;
  wire icmp_ln113_1_fu_196_p2_carry_n_3;
  wire icmp_ln113_1_fu_196_p2_carry_n_4;
  wire icmp_ln113_1_fu_196_p2_carry_n_5;
  wire icmp_ln113_1_fu_196_p2_carry_n_6;
  wire icmp_ln113_fu_176_p2;
  wire icmp_ln113_fu_176_p2_carry__0_i_1_n_3;
  wire icmp_ln113_fu_176_p2_carry__0_i_2_n_3;
  wire icmp_ln113_fu_176_p2_carry__0_i_3_n_3;
  wire icmp_ln113_fu_176_p2_carry__0_i_4_n_3;
  wire icmp_ln113_fu_176_p2_carry__0_n_3;
  wire icmp_ln113_fu_176_p2_carry__0_n_4;
  wire icmp_ln113_fu_176_p2_carry__0_n_5;
  wire icmp_ln113_fu_176_p2_carry__0_n_6;
  wire icmp_ln113_fu_176_p2_carry__1_i_1_n_3;
  wire icmp_ln113_fu_176_p2_carry__1_i_2_n_3;
  wire icmp_ln113_fu_176_p2_carry__1_i_3_n_3;
  wire icmp_ln113_fu_176_p2_carry__1_n_5;
  wire icmp_ln113_fu_176_p2_carry__1_n_6;
  wire icmp_ln113_fu_176_p2_carry_i_1_n_3;
  wire icmp_ln113_fu_176_p2_carry_i_2_n_3;
  wire icmp_ln113_fu_176_p2_carry_i_3_n_3;
  wire icmp_ln113_fu_176_p2_carry_i_4_n_3;
  wire icmp_ln113_fu_176_p2_carry_n_3;
  wire icmp_ln113_fu_176_p2_carry_n_4;
  wire icmp_ln113_fu_176_p2_carry_n_5;
  wire icmp_ln113_fu_176_p2_carry_n_6;
  wire icmp_ln113_reg_235;
  wire \icmp_ln113_reg_235[0]_i_1_n_3 ;
  wire internal_empty_n_reg;
  wire j_reg_138;
  wire j_reg_1380;
  wire \j_reg_138[0]_i_4_n_3 ;
  wire [11:0]j_reg_138_reg;
  wire \j_reg_138_reg[0]_i_3_n_10 ;
  wire \j_reg_138_reg[0]_i_3_n_3 ;
  wire \j_reg_138_reg[0]_i_3_n_4 ;
  wire \j_reg_138_reg[0]_i_3_n_5 ;
  wire \j_reg_138_reg[0]_i_3_n_6 ;
  wire \j_reg_138_reg[0]_i_3_n_7 ;
  wire \j_reg_138_reg[0]_i_3_n_8 ;
  wire \j_reg_138_reg[0]_i_3_n_9 ;
  wire \j_reg_138_reg[4]_i_1_n_10 ;
  wire \j_reg_138_reg[4]_i_1_n_3 ;
  wire \j_reg_138_reg[4]_i_1_n_4 ;
  wire \j_reg_138_reg[4]_i_1_n_5 ;
  wire \j_reg_138_reg[4]_i_1_n_6 ;
  wire \j_reg_138_reg[4]_i_1_n_7 ;
  wire \j_reg_138_reg[4]_i_1_n_8 ;
  wire \j_reg_138_reg[4]_i_1_n_9 ;
  wire \j_reg_138_reg[8]_i_1_n_10 ;
  wire \j_reg_138_reg[8]_i_1_n_4 ;
  wire \j_reg_138_reg[8]_i_1_n_5 ;
  wire \j_reg_138_reg[8]_i_1_n_6 ;
  wire \j_reg_138_reg[8]_i_1_n_7 ;
  wire \j_reg_138_reg[8]_i_1_n_8 ;
  wire \j_reg_138_reg[8]_i_1_n_9 ;
  wire regslice_both_dst_V_data_V_U_apdone_blk;
  wire regslice_both_dst_V_data_V_U_n_16;
  wire regslice_both_dst_V_data_V_U_n_17;
  wire regslice_both_dst_V_data_V_U_n_18;
  wire regslice_both_dst_V_data_V_U_n_19;
  wire regslice_both_dst_V_data_V_U_n_4;
  wire regslice_both_dst_V_data_V_U_n_5;
  wire rgb2hsv_cols_c_empty_n;
  wire rgb2hsv_data_empty_n;
  wire rgb2hsv_rows_c_empty_n;
  wire [31:0]rows_reg_206;
  wire [31:0]\rows_reg_206_reg[31]_0 ;
  wire [31:0]sub9_i_fu_155_p2;
  wire [31:0]sub9_i_reg_221;
  wire \sub9_i_reg_221[12]_i_2_n_3 ;
  wire \sub9_i_reg_221[12]_i_3_n_3 ;
  wire \sub9_i_reg_221[12]_i_4_n_3 ;
  wire \sub9_i_reg_221[12]_i_5_n_3 ;
  wire \sub9_i_reg_221[16]_i_2_n_3 ;
  wire \sub9_i_reg_221[16]_i_3_n_3 ;
  wire \sub9_i_reg_221[16]_i_4_n_3 ;
  wire \sub9_i_reg_221[16]_i_5_n_3 ;
  wire \sub9_i_reg_221[20]_i_2_n_3 ;
  wire \sub9_i_reg_221[20]_i_3_n_3 ;
  wire \sub9_i_reg_221[20]_i_4_n_3 ;
  wire \sub9_i_reg_221[20]_i_5_n_3 ;
  wire \sub9_i_reg_221[24]_i_2_n_3 ;
  wire \sub9_i_reg_221[24]_i_3_n_3 ;
  wire \sub9_i_reg_221[24]_i_4_n_3 ;
  wire \sub9_i_reg_221[24]_i_5_n_3 ;
  wire \sub9_i_reg_221[28]_i_2_n_3 ;
  wire \sub9_i_reg_221[28]_i_3_n_3 ;
  wire \sub9_i_reg_221[28]_i_4_n_3 ;
  wire \sub9_i_reg_221[28]_i_5_n_3 ;
  wire \sub9_i_reg_221[31]_i_2_n_3 ;
  wire \sub9_i_reg_221[31]_i_3_n_3 ;
  wire \sub9_i_reg_221[31]_i_4_n_3 ;
  wire \sub9_i_reg_221[4]_i_2_n_3 ;
  wire \sub9_i_reg_221[4]_i_3_n_3 ;
  wire \sub9_i_reg_221[4]_i_4_n_3 ;
  wire \sub9_i_reg_221[4]_i_5_n_3 ;
  wire \sub9_i_reg_221[8]_i_2_n_3 ;
  wire \sub9_i_reg_221[8]_i_3_n_3 ;
  wire \sub9_i_reg_221[8]_i_4_n_3 ;
  wire \sub9_i_reg_221[8]_i_5_n_3 ;
  wire \sub9_i_reg_221_reg[12]_i_1_n_3 ;
  wire \sub9_i_reg_221_reg[12]_i_1_n_4 ;
  wire \sub9_i_reg_221_reg[12]_i_1_n_5 ;
  wire \sub9_i_reg_221_reg[12]_i_1_n_6 ;
  wire \sub9_i_reg_221_reg[16]_i_1_n_3 ;
  wire \sub9_i_reg_221_reg[16]_i_1_n_4 ;
  wire \sub9_i_reg_221_reg[16]_i_1_n_5 ;
  wire \sub9_i_reg_221_reg[16]_i_1_n_6 ;
  wire \sub9_i_reg_221_reg[20]_i_1_n_3 ;
  wire \sub9_i_reg_221_reg[20]_i_1_n_4 ;
  wire \sub9_i_reg_221_reg[20]_i_1_n_5 ;
  wire \sub9_i_reg_221_reg[20]_i_1_n_6 ;
  wire \sub9_i_reg_221_reg[24]_i_1_n_3 ;
  wire \sub9_i_reg_221_reg[24]_i_1_n_4 ;
  wire \sub9_i_reg_221_reg[24]_i_1_n_5 ;
  wire \sub9_i_reg_221_reg[24]_i_1_n_6 ;
  wire \sub9_i_reg_221_reg[28]_i_1_n_3 ;
  wire \sub9_i_reg_221_reg[28]_i_1_n_4 ;
  wire \sub9_i_reg_221_reg[28]_i_1_n_5 ;
  wire \sub9_i_reg_221_reg[28]_i_1_n_6 ;
  wire \sub9_i_reg_221_reg[31]_i_1_n_5 ;
  wire \sub9_i_reg_221_reg[31]_i_1_n_6 ;
  wire \sub9_i_reg_221_reg[4]_i_1_n_3 ;
  wire \sub9_i_reg_221_reg[4]_i_1_n_4 ;
  wire \sub9_i_reg_221_reg[4]_i_1_n_5 ;
  wire \sub9_i_reg_221_reg[4]_i_1_n_6 ;
  wire \sub9_i_reg_221_reg[8]_i_1_n_3 ;
  wire \sub9_i_reg_221_reg[8]_i_1_n_4 ;
  wire \sub9_i_reg_221_reg[8]_i_1_n_5 ;
  wire \sub9_i_reg_221_reg[8]_i_1_n_6 ;
  wire [31:0]sub_i_fu_149_p2;
  wire [31:0]sub_i_reg_216;
  wire \sub_i_reg_216[12]_i_2_n_3 ;
  wire \sub_i_reg_216[12]_i_3_n_3 ;
  wire \sub_i_reg_216[12]_i_4_n_3 ;
  wire \sub_i_reg_216[12]_i_5_n_3 ;
  wire \sub_i_reg_216[16]_i_2_n_3 ;
  wire \sub_i_reg_216[16]_i_3_n_3 ;
  wire \sub_i_reg_216[16]_i_4_n_3 ;
  wire \sub_i_reg_216[16]_i_5_n_3 ;
  wire \sub_i_reg_216[20]_i_2_n_3 ;
  wire \sub_i_reg_216[20]_i_3_n_3 ;
  wire \sub_i_reg_216[20]_i_4_n_3 ;
  wire \sub_i_reg_216[20]_i_5_n_3 ;
  wire \sub_i_reg_216[24]_i_2_n_3 ;
  wire \sub_i_reg_216[24]_i_3_n_3 ;
  wire \sub_i_reg_216[24]_i_4_n_3 ;
  wire \sub_i_reg_216[24]_i_5_n_3 ;
  wire \sub_i_reg_216[28]_i_2_n_3 ;
  wire \sub_i_reg_216[28]_i_3_n_3 ;
  wire \sub_i_reg_216[28]_i_4_n_3 ;
  wire \sub_i_reg_216[28]_i_5_n_3 ;
  wire \sub_i_reg_216[31]_i_2_n_3 ;
  wire \sub_i_reg_216[31]_i_3_n_3 ;
  wire \sub_i_reg_216[31]_i_4_n_3 ;
  wire \sub_i_reg_216[4]_i_2_n_3 ;
  wire \sub_i_reg_216[4]_i_3_n_3 ;
  wire \sub_i_reg_216[4]_i_4_n_3 ;
  wire \sub_i_reg_216[4]_i_5_n_3 ;
  wire \sub_i_reg_216[8]_i_2_n_3 ;
  wire \sub_i_reg_216[8]_i_3_n_3 ;
  wire \sub_i_reg_216[8]_i_4_n_3 ;
  wire \sub_i_reg_216[8]_i_5_n_3 ;
  wire \sub_i_reg_216_reg[12]_i_1_n_3 ;
  wire \sub_i_reg_216_reg[12]_i_1_n_4 ;
  wire \sub_i_reg_216_reg[12]_i_1_n_5 ;
  wire \sub_i_reg_216_reg[12]_i_1_n_6 ;
  wire \sub_i_reg_216_reg[16]_i_1_n_3 ;
  wire \sub_i_reg_216_reg[16]_i_1_n_4 ;
  wire \sub_i_reg_216_reg[16]_i_1_n_5 ;
  wire \sub_i_reg_216_reg[16]_i_1_n_6 ;
  wire \sub_i_reg_216_reg[20]_i_1_n_3 ;
  wire \sub_i_reg_216_reg[20]_i_1_n_4 ;
  wire \sub_i_reg_216_reg[20]_i_1_n_5 ;
  wire \sub_i_reg_216_reg[20]_i_1_n_6 ;
  wire \sub_i_reg_216_reg[24]_i_1_n_3 ;
  wire \sub_i_reg_216_reg[24]_i_1_n_4 ;
  wire \sub_i_reg_216_reg[24]_i_1_n_5 ;
  wire \sub_i_reg_216_reg[24]_i_1_n_6 ;
  wire \sub_i_reg_216_reg[28]_i_1_n_3 ;
  wire \sub_i_reg_216_reg[28]_i_1_n_4 ;
  wire \sub_i_reg_216_reg[28]_i_1_n_5 ;
  wire \sub_i_reg_216_reg[28]_i_1_n_6 ;
  wire \sub_i_reg_216_reg[31]_i_1_n_5 ;
  wire \sub_i_reg_216_reg[31]_i_1_n_6 ;
  wire \sub_i_reg_216_reg[4]_i_1_n_3 ;
  wire \sub_i_reg_216_reg[4]_i_1_n_4 ;
  wire \sub_i_reg_216_reg[4]_i_1_n_5 ;
  wire \sub_i_reg_216_reg[4]_i_1_n_6 ;
  wire \sub_i_reg_216_reg[8]_i_1_n_3 ;
  wire \sub_i_reg_216_reg[8]_i_1_n_4 ;
  wire \sub_i_reg_216_reg[8]_i_1_n_5 ;
  wire \sub_i_reg_216_reg[8]_i_1_n_6 ;
  wire xfMat2axis_24_9_2160_3840_1_U0_ap_start;
  wire xfMat2axis_24_9_2160_3840_1_U0_img_cols_read;
  wire [3:2]\NLW_i_1_reg_226_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_1_reg_226_reg[11]_i_2_O_UNCONNECTED ;
  wire [3:0]NLW_icmp_ln106_fu_171_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln106_fu_171_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln106_fu_171_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln106_fu_171_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln108_fu_191_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln108_fu_191_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln108_fu_191_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln108_fu_191_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln113_1_fu_196_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln113_1_fu_196_p2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_icmp_ln113_1_fu_196_p2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln113_1_fu_196_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln113_fu_176_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln113_fu_176_p2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_icmp_ln113_fu_176_p2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln113_fu_176_p2_carry__1_O_UNCONNECTED;
  wire [3:3]\NLW_j_reg_138_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_sub9_i_reg_221_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sub9_i_reg_221_reg[31]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_sub_i_reg_216_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sub_i_reg_216_reg[31]_i_1_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hBABB)) 
    \ap_CS_fsm[2]_i_3 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_3),
        .I1(ap_enable_reg_pp0_iter2_reg_n_3),
        .I2(icmp_ln108_fu_191_p2),
        .I3(ap_enable_reg_pp0_iter0),
        .O(\ap_CS_fsm[2]_i_3_n_3 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_dst_V_data_V_U_n_16),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_dst_V_data_V_U_n_4),
        .Q(ap_enable_reg_pp0_iter1_reg_n_3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_dst_V_data_V_U_n_5),
        .Q(ap_enable_reg_pp0_iter2_reg_n_3),
        .R(1'b0));
  FDRE \axi_last_V_reg_249_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_dst_V_data_V_U_n_17),
        .Q(axi_last_V_reg_249),
        .R(1'b0));
  FDRE \cols_reg_211_reg[0] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [0]),
        .Q(cols_reg_211[0]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[10] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [10]),
        .Q(cols_reg_211[10]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[11] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [11]),
        .Q(cols_reg_211[11]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[12] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [12]),
        .Q(cols_reg_211[12]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[13] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [13]),
        .Q(cols_reg_211[13]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[14] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [14]),
        .Q(cols_reg_211[14]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[15] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [15]),
        .Q(cols_reg_211[15]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[16] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [16]),
        .Q(cols_reg_211[16]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[17] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [17]),
        .Q(cols_reg_211[17]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[18] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [18]),
        .Q(cols_reg_211[18]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[19] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [19]),
        .Q(cols_reg_211[19]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[1] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [1]),
        .Q(cols_reg_211[1]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[20] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [20]),
        .Q(cols_reg_211[20]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[21] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [21]),
        .Q(cols_reg_211[21]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[22] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [22]),
        .Q(cols_reg_211[22]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[23] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [23]),
        .Q(cols_reg_211[23]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[24] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [24]),
        .Q(cols_reg_211[24]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[25] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [25]),
        .Q(cols_reg_211[25]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[26] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [26]),
        .Q(cols_reg_211[26]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[27] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [27]),
        .Q(cols_reg_211[27]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[28] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [28]),
        .Q(cols_reg_211[28]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[29] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [29]),
        .Q(cols_reg_211[29]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[2] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [2]),
        .Q(cols_reg_211[2]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[30] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [30]),
        .Q(cols_reg_211[30]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[31] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [31]),
        .Q(cols_reg_211[31]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[3] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [3]),
        .Q(cols_reg_211[3]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[4] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [4]),
        .Q(cols_reg_211[4]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[5] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [5]),
        .Q(cols_reg_211[5]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[6] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [6]),
        .Q(cols_reg_211[6]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[7] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [7]),
        .Q(cols_reg_211[7]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[8] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [8]),
        .Q(cols_reg_211[8]),
        .R(1'b0));
  FDRE \cols_reg_211_reg[9] 
       (.C(ap_clk),
        .CE(Q),
        .D(\cols_reg_211_reg[31]_0 [9]),
        .Q(cols_reg_211[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \i_1_reg_226[0]_i_1 
       (.I0(i_reg_127[0]),
        .O(i_1_fu_161_p2[0]));
  FDRE \i_1_reg_226_reg[0] 
       (.C(ap_clk),
        .CE(regslice_both_dst_V_data_V_U_apdone_blk),
        .D(i_1_fu_161_p2[0]),
        .Q(i_1_reg_226[0]),
        .R(1'b0));
  FDRE \i_1_reg_226_reg[10] 
       (.C(ap_clk),
        .CE(regslice_both_dst_V_data_V_U_apdone_blk),
        .D(i_1_fu_161_p2[10]),
        .Q(i_1_reg_226[10]),
        .R(1'b0));
  FDRE \i_1_reg_226_reg[11] 
       (.C(ap_clk),
        .CE(regslice_both_dst_V_data_V_U_apdone_blk),
        .D(i_1_fu_161_p2[11]),
        .Q(i_1_reg_226[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_1_reg_226_reg[11]_i_2 
       (.CI(\i_1_reg_226_reg[8]_i_1_n_3 ),
        .CO({\NLW_i_1_reg_226_reg[11]_i_2_CO_UNCONNECTED [3:2],\i_1_reg_226_reg[11]_i_2_n_5 ,\i_1_reg_226_reg[11]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_1_reg_226_reg[11]_i_2_O_UNCONNECTED [3],i_1_fu_161_p2[11:9]}),
        .S({1'b0,i_reg_127[11:9]}));
  FDRE \i_1_reg_226_reg[1] 
       (.C(ap_clk),
        .CE(regslice_both_dst_V_data_V_U_apdone_blk),
        .D(i_1_fu_161_p2[1]),
        .Q(i_1_reg_226[1]),
        .R(1'b0));
  FDRE \i_1_reg_226_reg[2] 
       (.C(ap_clk),
        .CE(regslice_both_dst_V_data_V_U_apdone_blk),
        .D(i_1_fu_161_p2[2]),
        .Q(i_1_reg_226[2]),
        .R(1'b0));
  FDRE \i_1_reg_226_reg[3] 
       (.C(ap_clk),
        .CE(regslice_both_dst_V_data_V_U_apdone_blk),
        .D(i_1_fu_161_p2[3]),
        .Q(i_1_reg_226[3]),
        .R(1'b0));
  FDRE \i_1_reg_226_reg[4] 
       (.C(ap_clk),
        .CE(regslice_both_dst_V_data_V_U_apdone_blk),
        .D(i_1_fu_161_p2[4]),
        .Q(i_1_reg_226[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_1_reg_226_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\i_1_reg_226_reg[4]_i_1_n_3 ,\i_1_reg_226_reg[4]_i_1_n_4 ,\i_1_reg_226_reg[4]_i_1_n_5 ,\i_1_reg_226_reg[4]_i_1_n_6 }),
        .CYINIT(i_reg_127[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_1_fu_161_p2[4:1]),
        .S(i_reg_127[4:1]));
  FDRE \i_1_reg_226_reg[5] 
       (.C(ap_clk),
        .CE(regslice_both_dst_V_data_V_U_apdone_blk),
        .D(i_1_fu_161_p2[5]),
        .Q(i_1_reg_226[5]),
        .R(1'b0));
  FDRE \i_1_reg_226_reg[6] 
       (.C(ap_clk),
        .CE(regslice_both_dst_V_data_V_U_apdone_blk),
        .D(i_1_fu_161_p2[6]),
        .Q(i_1_reg_226[6]),
        .R(1'b0));
  FDRE \i_1_reg_226_reg[7] 
       (.C(ap_clk),
        .CE(regslice_both_dst_V_data_V_U_apdone_blk),
        .D(i_1_fu_161_p2[7]),
        .Q(i_1_reg_226[7]),
        .R(1'b0));
  FDRE \i_1_reg_226_reg[8] 
       (.C(ap_clk),
        .CE(regslice_both_dst_V_data_V_U_apdone_blk),
        .D(i_1_fu_161_p2[8]),
        .Q(i_1_reg_226[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_1_reg_226_reg[8]_i_1 
       (.CI(\i_1_reg_226_reg[4]_i_1_n_3 ),
        .CO({\i_1_reg_226_reg[8]_i_1_n_3 ,\i_1_reg_226_reg[8]_i_1_n_4 ,\i_1_reg_226_reg[8]_i_1_n_5 ,\i_1_reg_226_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_1_fu_161_p2[8:5]),
        .S(i_reg_127[8:5]));
  FDRE \i_1_reg_226_reg[9] 
       (.C(ap_clk),
        .CE(regslice_both_dst_V_data_V_U_apdone_blk),
        .D(i_1_fu_161_p2[9]),
        .Q(i_1_reg_226[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \i_reg_127[11]_i_1 
       (.I0(Q),
        .I1(rgb2hsv_cols_c_empty_n),
        .I2(xfMat2axis_24_9_2160_3840_1_U0_ap_start),
        .I3(rgb2hsv_rows_c_empty_n),
        .O(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read));
  FDRE \i_reg_127_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_1_reg_226[0]),
        .Q(i_reg_127[0]),
        .R(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read));
  FDRE \i_reg_127_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_1_reg_226[10]),
        .Q(i_reg_127[10]),
        .R(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read));
  FDRE \i_reg_127_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_1_reg_226[11]),
        .Q(i_reg_127[11]),
        .R(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read));
  FDRE \i_reg_127_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_1_reg_226[1]),
        .Q(i_reg_127[1]),
        .R(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read));
  FDRE \i_reg_127_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_1_reg_226[2]),
        .Q(i_reg_127[2]),
        .R(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read));
  FDRE \i_reg_127_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_1_reg_226[3]),
        .Q(i_reg_127[3]),
        .R(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read));
  FDRE \i_reg_127_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_1_reg_226[4]),
        .Q(i_reg_127[4]),
        .R(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read));
  FDRE \i_reg_127_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_1_reg_226[5]),
        .Q(i_reg_127[5]),
        .R(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read));
  FDRE \i_reg_127_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_1_reg_226[6]),
        .Q(i_reg_127[6]),
        .R(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read));
  FDRE \i_reg_127_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_1_reg_226[7]),
        .Q(i_reg_127[7]),
        .R(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read));
  FDRE \i_reg_127_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_1_reg_226[8]),
        .Q(i_reg_127[8]),
        .R(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read));
  FDRE \i_reg_127_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_1_reg_226[9]),
        .Q(i_reg_127[9]),
        .R(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln106_fu_171_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln106_fu_171_p2_carry_n_3,icmp_ln106_fu_171_p2_carry_n_4,icmp_ln106_fu_171_p2_carry_n_5,icmp_ln106_fu_171_p2_carry_n_6}),
        .CYINIT(1'b0),
        .DI({icmp_ln106_fu_171_p2_carry_i_1_n_3,icmp_ln106_fu_171_p2_carry_i_2_n_3,icmp_ln106_fu_171_p2_carry_i_3_n_3,icmp_ln106_fu_171_p2_carry_i_4_n_3}),
        .O(NLW_icmp_ln106_fu_171_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln106_fu_171_p2_carry_i_5_n_3,icmp_ln106_fu_171_p2_carry_i_6_n_3,icmp_ln106_fu_171_p2_carry_i_7_n_3,icmp_ln106_fu_171_p2_carry_i_8_n_3}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln106_fu_171_p2_carry__0
       (.CI(icmp_ln106_fu_171_p2_carry_n_3),
        .CO({icmp_ln106_fu_171_p2_carry__0_n_3,icmp_ln106_fu_171_p2_carry__0_n_4,icmp_ln106_fu_171_p2_carry__0_n_5,icmp_ln106_fu_171_p2_carry__0_n_6}),
        .CYINIT(1'b0),
        .DI({icmp_ln106_fu_171_p2_carry__0_i_1_n_3,icmp_ln106_fu_171_p2_carry__0_i_2_n_3,icmp_ln106_fu_171_p2_carry__0_i_3_n_3,icmp_ln106_fu_171_p2_carry__0_i_4_n_3}),
        .O(NLW_icmp_ln106_fu_171_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln106_fu_171_p2_carry__0_i_5_n_3,icmp_ln106_fu_171_p2_carry__0_i_6_n_3,icmp_ln106_fu_171_p2_carry__0_i_7_n_3,icmp_ln106_fu_171_p2_carry__0_i_8_n_3}));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln106_fu_171_p2_carry__0_i_1
       (.I0(rows_reg_206[15]),
        .I1(rows_reg_206[14]),
        .O(icmp_ln106_fu_171_p2_carry__0_i_1_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln106_fu_171_p2_carry__0_i_2
       (.I0(rows_reg_206[13]),
        .I1(rows_reg_206[12]),
        .O(icmp_ln106_fu_171_p2_carry__0_i_2_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln106_fu_171_p2_carry__0_i_3
       (.I0(rows_reg_206[11]),
        .I1(i_reg_127[11]),
        .I2(rows_reg_206[10]),
        .I3(i_reg_127[10]),
        .O(icmp_ln106_fu_171_p2_carry__0_i_3_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln106_fu_171_p2_carry__0_i_4
       (.I0(rows_reg_206[9]),
        .I1(i_reg_127[9]),
        .I2(rows_reg_206[8]),
        .I3(i_reg_127[8]),
        .O(icmp_ln106_fu_171_p2_carry__0_i_4_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln106_fu_171_p2_carry__0_i_5
       (.I0(rows_reg_206[14]),
        .I1(rows_reg_206[15]),
        .O(icmp_ln106_fu_171_p2_carry__0_i_5_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln106_fu_171_p2_carry__0_i_6
       (.I0(rows_reg_206[12]),
        .I1(rows_reg_206[13]),
        .O(icmp_ln106_fu_171_p2_carry__0_i_6_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln106_fu_171_p2_carry__0_i_7
       (.I0(i_reg_127[11]),
        .I1(rows_reg_206[11]),
        .I2(i_reg_127[10]),
        .I3(rows_reg_206[10]),
        .O(icmp_ln106_fu_171_p2_carry__0_i_7_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln106_fu_171_p2_carry__0_i_8
       (.I0(i_reg_127[9]),
        .I1(rows_reg_206[9]),
        .I2(i_reg_127[8]),
        .I3(rows_reg_206[8]),
        .O(icmp_ln106_fu_171_p2_carry__0_i_8_n_3));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln106_fu_171_p2_carry__1
       (.CI(icmp_ln106_fu_171_p2_carry__0_n_3),
        .CO({icmp_ln106_fu_171_p2_carry__1_n_3,icmp_ln106_fu_171_p2_carry__1_n_4,icmp_ln106_fu_171_p2_carry__1_n_5,icmp_ln106_fu_171_p2_carry__1_n_6}),
        .CYINIT(1'b0),
        .DI({icmp_ln106_fu_171_p2_carry__1_i_1_n_3,icmp_ln106_fu_171_p2_carry__1_i_2_n_3,icmp_ln106_fu_171_p2_carry__1_i_3_n_3,icmp_ln106_fu_171_p2_carry__1_i_4_n_3}),
        .O(NLW_icmp_ln106_fu_171_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({icmp_ln106_fu_171_p2_carry__1_i_5_n_3,icmp_ln106_fu_171_p2_carry__1_i_6_n_3,icmp_ln106_fu_171_p2_carry__1_i_7_n_3,icmp_ln106_fu_171_p2_carry__1_i_8_n_3}));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln106_fu_171_p2_carry__1_i_1
       (.I0(rows_reg_206[23]),
        .I1(rows_reg_206[22]),
        .O(icmp_ln106_fu_171_p2_carry__1_i_1_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln106_fu_171_p2_carry__1_i_2
       (.I0(rows_reg_206[21]),
        .I1(rows_reg_206[20]),
        .O(icmp_ln106_fu_171_p2_carry__1_i_2_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln106_fu_171_p2_carry__1_i_3
       (.I0(rows_reg_206[19]),
        .I1(rows_reg_206[18]),
        .O(icmp_ln106_fu_171_p2_carry__1_i_3_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln106_fu_171_p2_carry__1_i_4
       (.I0(rows_reg_206[17]),
        .I1(rows_reg_206[16]),
        .O(icmp_ln106_fu_171_p2_carry__1_i_4_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln106_fu_171_p2_carry__1_i_5
       (.I0(rows_reg_206[22]),
        .I1(rows_reg_206[23]),
        .O(icmp_ln106_fu_171_p2_carry__1_i_5_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln106_fu_171_p2_carry__1_i_6
       (.I0(rows_reg_206[20]),
        .I1(rows_reg_206[21]),
        .O(icmp_ln106_fu_171_p2_carry__1_i_6_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln106_fu_171_p2_carry__1_i_7
       (.I0(rows_reg_206[18]),
        .I1(rows_reg_206[19]),
        .O(icmp_ln106_fu_171_p2_carry__1_i_7_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln106_fu_171_p2_carry__1_i_8
       (.I0(rows_reg_206[16]),
        .I1(rows_reg_206[17]),
        .O(icmp_ln106_fu_171_p2_carry__1_i_8_n_3));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln106_fu_171_p2_carry__2
       (.CI(icmp_ln106_fu_171_p2_carry__1_n_3),
        .CO({icmp_ln106_fu_171_p2,icmp_ln106_fu_171_p2_carry__2_n_4,icmp_ln106_fu_171_p2_carry__2_n_5,icmp_ln106_fu_171_p2_carry__2_n_6}),
        .CYINIT(1'b0),
        .DI({icmp_ln106_fu_171_p2_carry__2_i_1_n_3,icmp_ln106_fu_171_p2_carry__2_i_2_n_3,icmp_ln106_fu_171_p2_carry__2_i_3_n_3,icmp_ln106_fu_171_p2_carry__2_i_4_n_3}),
        .O(NLW_icmp_ln106_fu_171_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({icmp_ln106_fu_171_p2_carry__2_i_5_n_3,icmp_ln106_fu_171_p2_carry__2_i_6_n_3,icmp_ln106_fu_171_p2_carry__2_i_7_n_3,icmp_ln106_fu_171_p2_carry__2_i_8_n_3}));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln106_fu_171_p2_carry__2_i_1
       (.I0(rows_reg_206[30]),
        .I1(rows_reg_206[31]),
        .O(icmp_ln106_fu_171_p2_carry__2_i_1_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln106_fu_171_p2_carry__2_i_2
       (.I0(rows_reg_206[29]),
        .I1(rows_reg_206[28]),
        .O(icmp_ln106_fu_171_p2_carry__2_i_2_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln106_fu_171_p2_carry__2_i_3
       (.I0(rows_reg_206[27]),
        .I1(rows_reg_206[26]),
        .O(icmp_ln106_fu_171_p2_carry__2_i_3_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln106_fu_171_p2_carry__2_i_4
       (.I0(rows_reg_206[25]),
        .I1(rows_reg_206[24]),
        .O(icmp_ln106_fu_171_p2_carry__2_i_4_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln106_fu_171_p2_carry__2_i_5
       (.I0(rows_reg_206[30]),
        .I1(rows_reg_206[31]),
        .O(icmp_ln106_fu_171_p2_carry__2_i_5_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln106_fu_171_p2_carry__2_i_6
       (.I0(rows_reg_206[28]),
        .I1(rows_reg_206[29]),
        .O(icmp_ln106_fu_171_p2_carry__2_i_6_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln106_fu_171_p2_carry__2_i_7
       (.I0(rows_reg_206[26]),
        .I1(rows_reg_206[27]),
        .O(icmp_ln106_fu_171_p2_carry__2_i_7_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln106_fu_171_p2_carry__2_i_8
       (.I0(rows_reg_206[24]),
        .I1(rows_reg_206[25]),
        .O(icmp_ln106_fu_171_p2_carry__2_i_8_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln106_fu_171_p2_carry_i_1
       (.I0(rows_reg_206[7]),
        .I1(i_reg_127[7]),
        .I2(rows_reg_206[6]),
        .I3(i_reg_127[6]),
        .O(icmp_ln106_fu_171_p2_carry_i_1_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln106_fu_171_p2_carry_i_2
       (.I0(rows_reg_206[5]),
        .I1(i_reg_127[5]),
        .I2(rows_reg_206[4]),
        .I3(i_reg_127[4]),
        .O(icmp_ln106_fu_171_p2_carry_i_2_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln106_fu_171_p2_carry_i_3
       (.I0(rows_reg_206[3]),
        .I1(i_reg_127[3]),
        .I2(rows_reg_206[2]),
        .I3(i_reg_127[2]),
        .O(icmp_ln106_fu_171_p2_carry_i_3_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln106_fu_171_p2_carry_i_4
       (.I0(rows_reg_206[1]),
        .I1(i_reg_127[1]),
        .I2(rows_reg_206[0]),
        .I3(i_reg_127[0]),
        .O(icmp_ln106_fu_171_p2_carry_i_4_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln106_fu_171_p2_carry_i_5
       (.I0(i_reg_127[7]),
        .I1(rows_reg_206[7]),
        .I2(i_reg_127[6]),
        .I3(rows_reg_206[6]),
        .O(icmp_ln106_fu_171_p2_carry_i_5_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln106_fu_171_p2_carry_i_6
       (.I0(i_reg_127[5]),
        .I1(rows_reg_206[5]),
        .I2(i_reg_127[4]),
        .I3(rows_reg_206[4]),
        .O(icmp_ln106_fu_171_p2_carry_i_6_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln106_fu_171_p2_carry_i_7
       (.I0(i_reg_127[3]),
        .I1(rows_reg_206[3]),
        .I2(i_reg_127[2]),
        .I3(rows_reg_206[2]),
        .O(icmp_ln106_fu_171_p2_carry_i_7_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln106_fu_171_p2_carry_i_8
       (.I0(i_reg_127[1]),
        .I1(rows_reg_206[1]),
        .I2(i_reg_127[0]),
        .I3(rows_reg_206[0]),
        .O(icmp_ln106_fu_171_p2_carry_i_8_n_3));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln108_fu_191_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln108_fu_191_p2_carry_n_3,icmp_ln108_fu_191_p2_carry_n_4,icmp_ln108_fu_191_p2_carry_n_5,icmp_ln108_fu_191_p2_carry_n_6}),
        .CYINIT(1'b0),
        .DI({icmp_ln108_fu_191_p2_carry_i_1_n_3,icmp_ln108_fu_191_p2_carry_i_2_n_3,icmp_ln108_fu_191_p2_carry_i_3_n_3,icmp_ln108_fu_191_p2_carry_i_4_n_3}),
        .O(NLW_icmp_ln108_fu_191_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln108_fu_191_p2_carry_i_5_n_3,icmp_ln108_fu_191_p2_carry_i_6_n_3,icmp_ln108_fu_191_p2_carry_i_7_n_3,icmp_ln108_fu_191_p2_carry_i_8_n_3}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln108_fu_191_p2_carry__0
       (.CI(icmp_ln108_fu_191_p2_carry_n_3),
        .CO({icmp_ln108_fu_191_p2_carry__0_n_3,icmp_ln108_fu_191_p2_carry__0_n_4,icmp_ln108_fu_191_p2_carry__0_n_5,icmp_ln108_fu_191_p2_carry__0_n_6}),
        .CYINIT(1'b0),
        .DI({icmp_ln108_fu_191_p2_carry__0_i_1_n_3,icmp_ln108_fu_191_p2_carry__0_i_2_n_3,icmp_ln108_fu_191_p2_carry__0_i_3_n_3,icmp_ln108_fu_191_p2_carry__0_i_4_n_3}),
        .O(NLW_icmp_ln108_fu_191_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln108_fu_191_p2_carry__0_i_5_n_3,icmp_ln108_fu_191_p2_carry__0_i_6_n_3,icmp_ln108_fu_191_p2_carry__0_i_7_n_3,icmp_ln108_fu_191_p2_carry__0_i_8_n_3}));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln108_fu_191_p2_carry__0_i_1
       (.I0(cols_reg_211[15]),
        .I1(cols_reg_211[14]),
        .O(icmp_ln108_fu_191_p2_carry__0_i_1_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln108_fu_191_p2_carry__0_i_2
       (.I0(cols_reg_211[13]),
        .I1(cols_reg_211[12]),
        .O(icmp_ln108_fu_191_p2_carry__0_i_2_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln108_fu_191_p2_carry__0_i_3
       (.I0(cols_reg_211[11]),
        .I1(j_reg_138_reg[11]),
        .I2(cols_reg_211[10]),
        .I3(j_reg_138_reg[10]),
        .O(icmp_ln108_fu_191_p2_carry__0_i_3_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln108_fu_191_p2_carry__0_i_4
       (.I0(cols_reg_211[9]),
        .I1(j_reg_138_reg[9]),
        .I2(cols_reg_211[8]),
        .I3(j_reg_138_reg[8]),
        .O(icmp_ln108_fu_191_p2_carry__0_i_4_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln108_fu_191_p2_carry__0_i_5
       (.I0(cols_reg_211[14]),
        .I1(cols_reg_211[15]),
        .O(icmp_ln108_fu_191_p2_carry__0_i_5_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln108_fu_191_p2_carry__0_i_6
       (.I0(cols_reg_211[12]),
        .I1(cols_reg_211[13]),
        .O(icmp_ln108_fu_191_p2_carry__0_i_6_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln108_fu_191_p2_carry__0_i_7
       (.I0(j_reg_138_reg[11]),
        .I1(cols_reg_211[11]),
        .I2(j_reg_138_reg[10]),
        .I3(cols_reg_211[10]),
        .O(icmp_ln108_fu_191_p2_carry__0_i_7_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln108_fu_191_p2_carry__0_i_8
       (.I0(j_reg_138_reg[9]),
        .I1(cols_reg_211[9]),
        .I2(j_reg_138_reg[8]),
        .I3(cols_reg_211[8]),
        .O(icmp_ln108_fu_191_p2_carry__0_i_8_n_3));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln108_fu_191_p2_carry__1
       (.CI(icmp_ln108_fu_191_p2_carry__0_n_3),
        .CO({icmp_ln108_fu_191_p2_carry__1_n_3,icmp_ln108_fu_191_p2_carry__1_n_4,icmp_ln108_fu_191_p2_carry__1_n_5,icmp_ln108_fu_191_p2_carry__1_n_6}),
        .CYINIT(1'b0),
        .DI({icmp_ln108_fu_191_p2_carry__1_i_1_n_3,icmp_ln108_fu_191_p2_carry__1_i_2_n_3,icmp_ln108_fu_191_p2_carry__1_i_3_n_3,icmp_ln108_fu_191_p2_carry__1_i_4_n_3}),
        .O(NLW_icmp_ln108_fu_191_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({icmp_ln108_fu_191_p2_carry__1_i_5_n_3,icmp_ln108_fu_191_p2_carry__1_i_6_n_3,icmp_ln108_fu_191_p2_carry__1_i_7_n_3,icmp_ln108_fu_191_p2_carry__1_i_8_n_3}));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln108_fu_191_p2_carry__1_i_1
       (.I0(cols_reg_211[23]),
        .I1(cols_reg_211[22]),
        .O(icmp_ln108_fu_191_p2_carry__1_i_1_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln108_fu_191_p2_carry__1_i_2
       (.I0(cols_reg_211[21]),
        .I1(cols_reg_211[20]),
        .O(icmp_ln108_fu_191_p2_carry__1_i_2_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln108_fu_191_p2_carry__1_i_3
       (.I0(cols_reg_211[19]),
        .I1(cols_reg_211[18]),
        .O(icmp_ln108_fu_191_p2_carry__1_i_3_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln108_fu_191_p2_carry__1_i_4
       (.I0(cols_reg_211[17]),
        .I1(cols_reg_211[16]),
        .O(icmp_ln108_fu_191_p2_carry__1_i_4_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln108_fu_191_p2_carry__1_i_5
       (.I0(cols_reg_211[22]),
        .I1(cols_reg_211[23]),
        .O(icmp_ln108_fu_191_p2_carry__1_i_5_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln108_fu_191_p2_carry__1_i_6
       (.I0(cols_reg_211[20]),
        .I1(cols_reg_211[21]),
        .O(icmp_ln108_fu_191_p2_carry__1_i_6_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln108_fu_191_p2_carry__1_i_7
       (.I0(cols_reg_211[18]),
        .I1(cols_reg_211[19]),
        .O(icmp_ln108_fu_191_p2_carry__1_i_7_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln108_fu_191_p2_carry__1_i_8
       (.I0(cols_reg_211[16]),
        .I1(cols_reg_211[17]),
        .O(icmp_ln108_fu_191_p2_carry__1_i_8_n_3));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln108_fu_191_p2_carry__2
       (.CI(icmp_ln108_fu_191_p2_carry__1_n_3),
        .CO({icmp_ln108_fu_191_p2,icmp_ln108_fu_191_p2_carry__2_n_4,icmp_ln108_fu_191_p2_carry__2_n_5,icmp_ln108_fu_191_p2_carry__2_n_6}),
        .CYINIT(1'b0),
        .DI({icmp_ln108_fu_191_p2_carry__2_i_1_n_3,icmp_ln108_fu_191_p2_carry__2_i_2_n_3,icmp_ln108_fu_191_p2_carry__2_i_3_n_3,icmp_ln108_fu_191_p2_carry__2_i_4_n_3}),
        .O(NLW_icmp_ln108_fu_191_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({icmp_ln108_fu_191_p2_carry__2_i_5_n_3,icmp_ln108_fu_191_p2_carry__2_i_6_n_3,icmp_ln108_fu_191_p2_carry__2_i_7_n_3,icmp_ln108_fu_191_p2_carry__2_i_8_n_3}));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln108_fu_191_p2_carry__2_i_1
       (.I0(cols_reg_211[30]),
        .I1(cols_reg_211[31]),
        .O(icmp_ln108_fu_191_p2_carry__2_i_1_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln108_fu_191_p2_carry__2_i_2
       (.I0(cols_reg_211[29]),
        .I1(cols_reg_211[28]),
        .O(icmp_ln108_fu_191_p2_carry__2_i_2_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln108_fu_191_p2_carry__2_i_3
       (.I0(cols_reg_211[27]),
        .I1(cols_reg_211[26]),
        .O(icmp_ln108_fu_191_p2_carry__2_i_3_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln108_fu_191_p2_carry__2_i_4
       (.I0(cols_reg_211[25]),
        .I1(cols_reg_211[24]),
        .O(icmp_ln108_fu_191_p2_carry__2_i_4_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln108_fu_191_p2_carry__2_i_5
       (.I0(cols_reg_211[30]),
        .I1(cols_reg_211[31]),
        .O(icmp_ln108_fu_191_p2_carry__2_i_5_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln108_fu_191_p2_carry__2_i_6
       (.I0(cols_reg_211[28]),
        .I1(cols_reg_211[29]),
        .O(icmp_ln108_fu_191_p2_carry__2_i_6_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln108_fu_191_p2_carry__2_i_7
       (.I0(cols_reg_211[26]),
        .I1(cols_reg_211[27]),
        .O(icmp_ln108_fu_191_p2_carry__2_i_7_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln108_fu_191_p2_carry__2_i_8
       (.I0(cols_reg_211[24]),
        .I1(cols_reg_211[25]),
        .O(icmp_ln108_fu_191_p2_carry__2_i_8_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln108_fu_191_p2_carry_i_1
       (.I0(cols_reg_211[7]),
        .I1(j_reg_138_reg[7]),
        .I2(cols_reg_211[6]),
        .I3(j_reg_138_reg[6]),
        .O(icmp_ln108_fu_191_p2_carry_i_1_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln108_fu_191_p2_carry_i_2
       (.I0(cols_reg_211[5]),
        .I1(j_reg_138_reg[5]),
        .I2(cols_reg_211[4]),
        .I3(j_reg_138_reg[4]),
        .O(icmp_ln108_fu_191_p2_carry_i_2_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln108_fu_191_p2_carry_i_3
       (.I0(cols_reg_211[3]),
        .I1(j_reg_138_reg[3]),
        .I2(cols_reg_211[2]),
        .I3(j_reg_138_reg[2]),
        .O(icmp_ln108_fu_191_p2_carry_i_3_n_3));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln108_fu_191_p2_carry_i_4
       (.I0(cols_reg_211[1]),
        .I1(j_reg_138_reg[1]),
        .I2(cols_reg_211[0]),
        .I3(j_reg_138_reg[0]),
        .O(icmp_ln108_fu_191_p2_carry_i_4_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln108_fu_191_p2_carry_i_5
       (.I0(j_reg_138_reg[7]),
        .I1(cols_reg_211[7]),
        .I2(j_reg_138_reg[6]),
        .I3(cols_reg_211[6]),
        .O(icmp_ln108_fu_191_p2_carry_i_5_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln108_fu_191_p2_carry_i_6
       (.I0(j_reg_138_reg[5]),
        .I1(cols_reg_211[5]),
        .I2(j_reg_138_reg[4]),
        .I3(cols_reg_211[4]),
        .O(icmp_ln108_fu_191_p2_carry_i_6_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln108_fu_191_p2_carry_i_7
       (.I0(j_reg_138_reg[3]),
        .I1(cols_reg_211[3]),
        .I2(j_reg_138_reg[2]),
        .I3(cols_reg_211[2]),
        .O(icmp_ln108_fu_191_p2_carry_i_7_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln108_fu_191_p2_carry_i_8
       (.I0(j_reg_138_reg[1]),
        .I1(cols_reg_211[1]),
        .I2(j_reg_138_reg[0]),
        .I3(cols_reg_211[0]),
        .O(icmp_ln108_fu_191_p2_carry_i_8_n_3));
  FDRE \icmp_ln108_reg_245_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_dst_V_data_V_U_n_18),
        .Q(icmp_ln108_reg_245_pp0_iter1_reg),
        .R(1'b0));
  FDRE \icmp_ln108_reg_245_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_dst_V_data_V_U_n_19),
        .Q(icmp_ln108_reg_245),
        .R(1'b0));
  CARRY4 icmp_ln113_1_fu_196_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln113_1_fu_196_p2_carry_n_3,icmp_ln113_1_fu_196_p2_carry_n_4,icmp_ln113_1_fu_196_p2_carry_n_5,icmp_ln113_1_fu_196_p2_carry_n_6}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln113_1_fu_196_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln113_1_fu_196_p2_carry_i_1_n_3,icmp_ln113_1_fu_196_p2_carry_i_2_n_3,icmp_ln113_1_fu_196_p2_carry_i_3_n_3,icmp_ln113_1_fu_196_p2_carry_i_4_n_3}));
  CARRY4 icmp_ln113_1_fu_196_p2_carry__0
       (.CI(icmp_ln113_1_fu_196_p2_carry_n_3),
        .CO({icmp_ln113_1_fu_196_p2_carry__0_n_3,icmp_ln113_1_fu_196_p2_carry__0_n_4,icmp_ln113_1_fu_196_p2_carry__0_n_5,icmp_ln113_1_fu_196_p2_carry__0_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln113_1_fu_196_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln113_1_fu_196_p2_carry__0_i_1_n_3,icmp_ln113_1_fu_196_p2_carry__0_i_2_n_3,icmp_ln113_1_fu_196_p2_carry__0_i_3_n_3,icmp_ln113_1_fu_196_p2_carry__0_i_4_n_3}));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln113_1_fu_196_p2_carry__0_i_1
       (.I0(sub_i_reg_216[22]),
        .I1(sub_i_reg_216[21]),
        .I2(sub_i_reg_216[23]),
        .O(icmp_ln113_1_fu_196_p2_carry__0_i_1_n_3));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln113_1_fu_196_p2_carry__0_i_2
       (.I0(sub_i_reg_216[19]),
        .I1(sub_i_reg_216[18]),
        .I2(sub_i_reg_216[20]),
        .O(icmp_ln113_1_fu_196_p2_carry__0_i_2_n_3));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln113_1_fu_196_p2_carry__0_i_3
       (.I0(sub_i_reg_216[16]),
        .I1(sub_i_reg_216[15]),
        .I2(sub_i_reg_216[17]),
        .O(icmp_ln113_1_fu_196_p2_carry__0_i_3_n_3));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln113_1_fu_196_p2_carry__0_i_4
       (.I0(sub_i_reg_216[13]),
        .I1(sub_i_reg_216[12]),
        .I2(sub_i_reg_216[14]),
        .O(icmp_ln113_1_fu_196_p2_carry__0_i_4_n_3));
  CARRY4 icmp_ln113_1_fu_196_p2_carry__1
       (.CI(icmp_ln113_1_fu_196_p2_carry__0_n_3),
        .CO({NLW_icmp_ln113_1_fu_196_p2_carry__1_CO_UNCONNECTED[3],icmp_ln113_1_fu_196_p2,icmp_ln113_1_fu_196_p2_carry__1_n_5,icmp_ln113_1_fu_196_p2_carry__1_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln113_1_fu_196_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,icmp_ln113_1_fu_196_p2_carry__1_i_1_n_3,icmp_ln113_1_fu_196_p2_carry__1_i_2_n_3,icmp_ln113_1_fu_196_p2_carry__1_i_3_n_3}));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln113_1_fu_196_p2_carry__1_i_1
       (.I0(sub_i_reg_216[30]),
        .I1(sub_i_reg_216[31]),
        .O(icmp_ln113_1_fu_196_p2_carry__1_i_1_n_3));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln113_1_fu_196_p2_carry__1_i_2
       (.I0(sub_i_reg_216[28]),
        .I1(sub_i_reg_216[27]),
        .I2(sub_i_reg_216[29]),
        .O(icmp_ln113_1_fu_196_p2_carry__1_i_2_n_3));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln113_1_fu_196_p2_carry__1_i_3
       (.I0(sub_i_reg_216[25]),
        .I1(sub_i_reg_216[24]),
        .I2(sub_i_reg_216[26]),
        .O(icmp_ln113_1_fu_196_p2_carry__1_i_3_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln113_1_fu_196_p2_carry_i_1
       (.I0(j_reg_138_reg[10]),
        .I1(sub_i_reg_216[10]),
        .I2(j_reg_138_reg[9]),
        .I3(sub_i_reg_216[9]),
        .I4(sub_i_reg_216[11]),
        .I5(j_reg_138_reg[11]),
        .O(icmp_ln113_1_fu_196_p2_carry_i_1_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln113_1_fu_196_p2_carry_i_2
       (.I0(j_reg_138_reg[8]),
        .I1(sub_i_reg_216[8]),
        .I2(j_reg_138_reg[6]),
        .I3(sub_i_reg_216[6]),
        .I4(sub_i_reg_216[7]),
        .I5(j_reg_138_reg[7]),
        .O(icmp_ln113_1_fu_196_p2_carry_i_2_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln113_1_fu_196_p2_carry_i_3
       (.I0(j_reg_138_reg[5]),
        .I1(sub_i_reg_216[5]),
        .I2(j_reg_138_reg[3]),
        .I3(sub_i_reg_216[3]),
        .I4(sub_i_reg_216[4]),
        .I5(j_reg_138_reg[4]),
        .O(icmp_ln113_1_fu_196_p2_carry_i_3_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln113_1_fu_196_p2_carry_i_4
       (.I0(j_reg_138_reg[1]),
        .I1(sub_i_reg_216[1]),
        .I2(j_reg_138_reg[0]),
        .I3(sub_i_reg_216[0]),
        .I4(sub_i_reg_216[2]),
        .I5(j_reg_138_reg[2]),
        .O(icmp_ln113_1_fu_196_p2_carry_i_4_n_3));
  CARRY4 icmp_ln113_fu_176_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln113_fu_176_p2_carry_n_3,icmp_ln113_fu_176_p2_carry_n_4,icmp_ln113_fu_176_p2_carry_n_5,icmp_ln113_fu_176_p2_carry_n_6}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln113_fu_176_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln113_fu_176_p2_carry_i_1_n_3,icmp_ln113_fu_176_p2_carry_i_2_n_3,icmp_ln113_fu_176_p2_carry_i_3_n_3,icmp_ln113_fu_176_p2_carry_i_4_n_3}));
  CARRY4 icmp_ln113_fu_176_p2_carry__0
       (.CI(icmp_ln113_fu_176_p2_carry_n_3),
        .CO({icmp_ln113_fu_176_p2_carry__0_n_3,icmp_ln113_fu_176_p2_carry__0_n_4,icmp_ln113_fu_176_p2_carry__0_n_5,icmp_ln113_fu_176_p2_carry__0_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln113_fu_176_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln113_fu_176_p2_carry__0_i_1_n_3,icmp_ln113_fu_176_p2_carry__0_i_2_n_3,icmp_ln113_fu_176_p2_carry__0_i_3_n_3,icmp_ln113_fu_176_p2_carry__0_i_4_n_3}));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln113_fu_176_p2_carry__0_i_1
       (.I0(sub9_i_reg_221[22]),
        .I1(sub9_i_reg_221[21]),
        .I2(sub9_i_reg_221[23]),
        .O(icmp_ln113_fu_176_p2_carry__0_i_1_n_3));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln113_fu_176_p2_carry__0_i_2
       (.I0(sub9_i_reg_221[19]),
        .I1(sub9_i_reg_221[18]),
        .I2(sub9_i_reg_221[20]),
        .O(icmp_ln113_fu_176_p2_carry__0_i_2_n_3));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln113_fu_176_p2_carry__0_i_3
       (.I0(sub9_i_reg_221[16]),
        .I1(sub9_i_reg_221[15]),
        .I2(sub9_i_reg_221[17]),
        .O(icmp_ln113_fu_176_p2_carry__0_i_3_n_3));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln113_fu_176_p2_carry__0_i_4
       (.I0(sub9_i_reg_221[13]),
        .I1(sub9_i_reg_221[12]),
        .I2(sub9_i_reg_221[14]),
        .O(icmp_ln113_fu_176_p2_carry__0_i_4_n_3));
  CARRY4 icmp_ln113_fu_176_p2_carry__1
       (.CI(icmp_ln113_fu_176_p2_carry__0_n_3),
        .CO({NLW_icmp_ln113_fu_176_p2_carry__1_CO_UNCONNECTED[3],icmp_ln113_fu_176_p2,icmp_ln113_fu_176_p2_carry__1_n_5,icmp_ln113_fu_176_p2_carry__1_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln113_fu_176_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,icmp_ln113_fu_176_p2_carry__1_i_1_n_3,icmp_ln113_fu_176_p2_carry__1_i_2_n_3,icmp_ln113_fu_176_p2_carry__1_i_3_n_3}));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln113_fu_176_p2_carry__1_i_1
       (.I0(sub9_i_reg_221[30]),
        .I1(sub9_i_reg_221[31]),
        .O(icmp_ln113_fu_176_p2_carry__1_i_1_n_3));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln113_fu_176_p2_carry__1_i_2
       (.I0(sub9_i_reg_221[28]),
        .I1(sub9_i_reg_221[27]),
        .I2(sub9_i_reg_221[29]),
        .O(icmp_ln113_fu_176_p2_carry__1_i_2_n_3));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln113_fu_176_p2_carry__1_i_3
       (.I0(sub9_i_reg_221[25]),
        .I1(sub9_i_reg_221[24]),
        .I2(sub9_i_reg_221[26]),
        .O(icmp_ln113_fu_176_p2_carry__1_i_3_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln113_fu_176_p2_carry_i_1
       (.I0(i_reg_127[11]),
        .I1(sub9_i_reg_221[11]),
        .I2(i_reg_127[9]),
        .I3(sub9_i_reg_221[9]),
        .I4(sub9_i_reg_221[10]),
        .I5(i_reg_127[10]),
        .O(icmp_ln113_fu_176_p2_carry_i_1_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln113_fu_176_p2_carry_i_2
       (.I0(i_reg_127[6]),
        .I1(sub9_i_reg_221[6]),
        .I2(i_reg_127[7]),
        .I3(sub9_i_reg_221[7]),
        .I4(sub9_i_reg_221[8]),
        .I5(i_reg_127[8]),
        .O(icmp_ln113_fu_176_p2_carry_i_2_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln113_fu_176_p2_carry_i_3
       (.I0(i_reg_127[3]),
        .I1(sub9_i_reg_221[3]),
        .I2(i_reg_127[4]),
        .I3(sub9_i_reg_221[4]),
        .I4(sub9_i_reg_221[5]),
        .I5(i_reg_127[5]),
        .O(icmp_ln113_fu_176_p2_carry_i_3_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln113_fu_176_p2_carry_i_4
       (.I0(i_reg_127[2]),
        .I1(sub9_i_reg_221[2]),
        .I2(i_reg_127[0]),
        .I3(sub9_i_reg_221[0]),
        .I4(sub9_i_reg_221[1]),
        .I5(i_reg_127[1]),
        .O(icmp_ln113_fu_176_p2_carry_i_4_n_3));
  LUT4 #(
    .INIT(16'hBF80)) 
    \icmp_ln113_reg_235[0]_i_1 
       (.I0(icmp_ln113_fu_176_p2),
        .I1(icmp_ln106_fu_171_p2),
        .I2(ap_CS_fsm_state2),
        .I3(icmp_ln113_reg_235),
        .O(\icmp_ln113_reg_235[0]_i_1_n_3 ));
  FDRE \icmp_ln113_reg_235_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln113_reg_235[0]_i_1_n_3 ),
        .Q(icmp_ln113_reg_235),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \j_reg_138[0]_i_4 
       (.I0(j_reg_138_reg[0]),
        .O(\j_reg_138[0]_i_4_n_3 ));
  FDRE \j_reg_138_reg[0] 
       (.C(ap_clk),
        .CE(j_reg_1380),
        .D(\j_reg_138_reg[0]_i_3_n_10 ),
        .Q(j_reg_138_reg[0]),
        .R(j_reg_138));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \j_reg_138_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\j_reg_138_reg[0]_i_3_n_3 ,\j_reg_138_reg[0]_i_3_n_4 ,\j_reg_138_reg[0]_i_3_n_5 ,\j_reg_138_reg[0]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\j_reg_138_reg[0]_i_3_n_7 ,\j_reg_138_reg[0]_i_3_n_8 ,\j_reg_138_reg[0]_i_3_n_9 ,\j_reg_138_reg[0]_i_3_n_10 }),
        .S({j_reg_138_reg[3:1],\j_reg_138[0]_i_4_n_3 }));
  FDRE \j_reg_138_reg[10] 
       (.C(ap_clk),
        .CE(j_reg_1380),
        .D(\j_reg_138_reg[8]_i_1_n_8 ),
        .Q(j_reg_138_reg[10]),
        .R(j_reg_138));
  FDRE \j_reg_138_reg[11] 
       (.C(ap_clk),
        .CE(j_reg_1380),
        .D(\j_reg_138_reg[8]_i_1_n_7 ),
        .Q(j_reg_138_reg[11]),
        .R(j_reg_138));
  FDRE \j_reg_138_reg[1] 
       (.C(ap_clk),
        .CE(j_reg_1380),
        .D(\j_reg_138_reg[0]_i_3_n_9 ),
        .Q(j_reg_138_reg[1]),
        .R(j_reg_138));
  FDRE \j_reg_138_reg[2] 
       (.C(ap_clk),
        .CE(j_reg_1380),
        .D(\j_reg_138_reg[0]_i_3_n_8 ),
        .Q(j_reg_138_reg[2]),
        .R(j_reg_138));
  FDRE \j_reg_138_reg[3] 
       (.C(ap_clk),
        .CE(j_reg_1380),
        .D(\j_reg_138_reg[0]_i_3_n_7 ),
        .Q(j_reg_138_reg[3]),
        .R(j_reg_138));
  FDRE \j_reg_138_reg[4] 
       (.C(ap_clk),
        .CE(j_reg_1380),
        .D(\j_reg_138_reg[4]_i_1_n_10 ),
        .Q(j_reg_138_reg[4]),
        .R(j_reg_138));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \j_reg_138_reg[4]_i_1 
       (.CI(\j_reg_138_reg[0]_i_3_n_3 ),
        .CO({\j_reg_138_reg[4]_i_1_n_3 ,\j_reg_138_reg[4]_i_1_n_4 ,\j_reg_138_reg[4]_i_1_n_5 ,\j_reg_138_reg[4]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\j_reg_138_reg[4]_i_1_n_7 ,\j_reg_138_reg[4]_i_1_n_8 ,\j_reg_138_reg[4]_i_1_n_9 ,\j_reg_138_reg[4]_i_1_n_10 }),
        .S(j_reg_138_reg[7:4]));
  FDRE \j_reg_138_reg[5] 
       (.C(ap_clk),
        .CE(j_reg_1380),
        .D(\j_reg_138_reg[4]_i_1_n_9 ),
        .Q(j_reg_138_reg[5]),
        .R(j_reg_138));
  FDRE \j_reg_138_reg[6] 
       (.C(ap_clk),
        .CE(j_reg_1380),
        .D(\j_reg_138_reg[4]_i_1_n_8 ),
        .Q(j_reg_138_reg[6]),
        .R(j_reg_138));
  FDRE \j_reg_138_reg[7] 
       (.C(ap_clk),
        .CE(j_reg_1380),
        .D(\j_reg_138_reg[4]_i_1_n_7 ),
        .Q(j_reg_138_reg[7]),
        .R(j_reg_138));
  FDRE \j_reg_138_reg[8] 
       (.C(ap_clk),
        .CE(j_reg_1380),
        .D(\j_reg_138_reg[8]_i_1_n_10 ),
        .Q(j_reg_138_reg[8]),
        .R(j_reg_138));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \j_reg_138_reg[8]_i_1 
       (.CI(\j_reg_138_reg[4]_i_1_n_3 ),
        .CO({\NLW_j_reg_138_reg[8]_i_1_CO_UNCONNECTED [3],\j_reg_138_reg[8]_i_1_n_4 ,\j_reg_138_reg[8]_i_1_n_5 ,\j_reg_138_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\j_reg_138_reg[8]_i_1_n_7 ,\j_reg_138_reg[8]_i_1_n_8 ,\j_reg_138_reg[8]_i_1_n_9 ,\j_reg_138_reg[8]_i_1_n_10 }),
        .S(j_reg_138_reg[11:8]));
  FDRE \j_reg_138_reg[9] 
       (.C(ap_clk),
        .CE(j_reg_1380),
        .D(\j_reg_138_reg[8]_i_1_n_9 ),
        .Q(j_reg_138_reg[9]),
        .R(j_reg_138));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_regslice_both regslice_both_dst_V_data_V_U
       (.\B_V_data_1_payload_B_reg[23]_0 (D),
        .\B_V_data_1_state_reg[0]_0 (\B_V_data_1_state_reg[0] ),
        .CO(icmp_ln108_fu_191_p2),
        .D(ap_NS_fsm),
        .E(regslice_both_dst_V_data_V_U_apdone_blk),
        .Q({ap_CS_fsm_state6,ap_CS_fsm_pp0_stage0,ap_CS_fsm_state2,Q}),
        .SR(xfMat2axis_24_9_2160_3840_1_U0_img_cols_read),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1]_0 ),
        .\ap_CS_fsm_reg[2] (regslice_both_dst_V_data_V_U_n_16),
        .\ap_CS_fsm_reg[2]_0 (regslice_both_dst_V_data_V_U_n_19),
        .\ap_CS_fsm_reg[2]_1 (\ap_CS_fsm[2]_i_3_n_3 ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg_n_3),
        .ap_enable_reg_pp0_iter2_reg(ap_enable_reg_pp0_iter2_reg_n_3),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(regslice_both_dst_V_data_V_U_n_4),
        .ap_rst_n_1(regslice_both_dst_V_data_V_U_n_5),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_last_V_reg_249(axi_last_V_reg_249),
        .\axi_last_V_reg_249_reg[0] (icmp_ln113_1_fu_196_p2),
        .dst_TDATA(dst_TDATA),
        .dst_TREADY(dst_TREADY),
        .icmp_ln108_reg_245(icmp_ln108_reg_245),
        .icmp_ln108_reg_245_pp0_iter1_reg(icmp_ln108_reg_245_pp0_iter1_reg),
        .\icmp_ln108_reg_245_reg[0] (\icmp_ln108_reg_245_reg[0]_0 ),
        .\icmp_ln108_reg_245_reg[0]_0 (regslice_both_dst_V_data_V_U_n_18),
        .icmp_ln113_reg_235(icmp_ln113_reg_235),
        .\icmp_ln113_reg_235_reg[0] (regslice_both_dst_V_data_V_U_n_17),
        .internal_empty_n_reg(internal_empty_n_reg),
        .j_reg_138(j_reg_138),
        .j_reg_1380(j_reg_1380),
        .\j_reg_138_reg[0] (icmp_ln106_fu_171_p2),
        .rgb2hsv_cols_c_empty_n(rgb2hsv_cols_c_empty_n),
        .rgb2hsv_data_empty_n(rgb2hsv_data_empty_n),
        .rgb2hsv_rows_c_empty_n(rgb2hsv_rows_c_empty_n),
        .xfMat2axis_24_9_2160_3840_1_U0_ap_start(xfMat2axis_24_9_2160_3840_1_U0_ap_start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel_regslice_both__parameterized1 regslice_both_dst_V_last_V_U
       (.B_V_data_1_sel_wr_reg_0(\icmp_ln108_reg_245_reg[0]_0 ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_last_V_reg_249(axi_last_V_reg_249),
        .dst_TLAST(dst_TLAST),
        .dst_TREADY(dst_TREADY));
  FDRE \rows_reg_206_reg[0] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [0]),
        .Q(rows_reg_206[0]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[10] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [10]),
        .Q(rows_reg_206[10]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[11] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [11]),
        .Q(rows_reg_206[11]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[12] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [12]),
        .Q(rows_reg_206[12]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[13] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [13]),
        .Q(rows_reg_206[13]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[14] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [14]),
        .Q(rows_reg_206[14]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[15] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [15]),
        .Q(rows_reg_206[15]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[16] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [16]),
        .Q(rows_reg_206[16]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[17] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [17]),
        .Q(rows_reg_206[17]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[18] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [18]),
        .Q(rows_reg_206[18]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[19] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [19]),
        .Q(rows_reg_206[19]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[1] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [1]),
        .Q(rows_reg_206[1]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[20] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [20]),
        .Q(rows_reg_206[20]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[21] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [21]),
        .Q(rows_reg_206[21]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[22] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [22]),
        .Q(rows_reg_206[22]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[23] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [23]),
        .Q(rows_reg_206[23]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[24] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [24]),
        .Q(rows_reg_206[24]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[25] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [25]),
        .Q(rows_reg_206[25]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[26] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [26]),
        .Q(rows_reg_206[26]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[27] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [27]),
        .Q(rows_reg_206[27]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[28] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [28]),
        .Q(rows_reg_206[28]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[29] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [29]),
        .Q(rows_reg_206[29]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[2] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [2]),
        .Q(rows_reg_206[2]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[30] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [30]),
        .Q(rows_reg_206[30]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[31] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [31]),
        .Q(rows_reg_206[31]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[3] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [3]),
        .Q(rows_reg_206[3]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[4] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [4]),
        .Q(rows_reg_206[4]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[5] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [5]),
        .Q(rows_reg_206[5]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[6] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [6]),
        .Q(rows_reg_206[6]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[7] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [7]),
        .Q(rows_reg_206[7]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[8] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [8]),
        .Q(rows_reg_206[8]),
        .R(1'b0));
  FDRE \rows_reg_206_reg[9] 
       (.C(ap_clk),
        .CE(Q),
        .D(\rows_reg_206_reg[31]_0 [9]),
        .Q(rows_reg_206[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[0]_i_1 
       (.I0(\rows_reg_206_reg[31]_0 [0]),
        .O(sub9_i_fu_155_p2[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[12]_i_2 
       (.I0(\rows_reg_206_reg[31]_0 [12]),
        .O(\sub9_i_reg_221[12]_i_2_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[12]_i_3 
       (.I0(\rows_reg_206_reg[31]_0 [11]),
        .O(\sub9_i_reg_221[12]_i_3_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[12]_i_4 
       (.I0(\rows_reg_206_reg[31]_0 [10]),
        .O(\sub9_i_reg_221[12]_i_4_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[12]_i_5 
       (.I0(\rows_reg_206_reg[31]_0 [9]),
        .O(\sub9_i_reg_221[12]_i_5_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[16]_i_2 
       (.I0(\rows_reg_206_reg[31]_0 [16]),
        .O(\sub9_i_reg_221[16]_i_2_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[16]_i_3 
       (.I0(\rows_reg_206_reg[31]_0 [15]),
        .O(\sub9_i_reg_221[16]_i_3_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[16]_i_4 
       (.I0(\rows_reg_206_reg[31]_0 [14]),
        .O(\sub9_i_reg_221[16]_i_4_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[16]_i_5 
       (.I0(\rows_reg_206_reg[31]_0 [13]),
        .O(\sub9_i_reg_221[16]_i_5_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[20]_i_2 
       (.I0(\rows_reg_206_reg[31]_0 [20]),
        .O(\sub9_i_reg_221[20]_i_2_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[20]_i_3 
       (.I0(\rows_reg_206_reg[31]_0 [19]),
        .O(\sub9_i_reg_221[20]_i_3_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[20]_i_4 
       (.I0(\rows_reg_206_reg[31]_0 [18]),
        .O(\sub9_i_reg_221[20]_i_4_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[20]_i_5 
       (.I0(\rows_reg_206_reg[31]_0 [17]),
        .O(\sub9_i_reg_221[20]_i_5_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[24]_i_2 
       (.I0(\rows_reg_206_reg[31]_0 [24]),
        .O(\sub9_i_reg_221[24]_i_2_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[24]_i_3 
       (.I0(\rows_reg_206_reg[31]_0 [23]),
        .O(\sub9_i_reg_221[24]_i_3_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[24]_i_4 
       (.I0(\rows_reg_206_reg[31]_0 [22]),
        .O(\sub9_i_reg_221[24]_i_4_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[24]_i_5 
       (.I0(\rows_reg_206_reg[31]_0 [21]),
        .O(\sub9_i_reg_221[24]_i_5_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[28]_i_2 
       (.I0(\rows_reg_206_reg[31]_0 [28]),
        .O(\sub9_i_reg_221[28]_i_2_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[28]_i_3 
       (.I0(\rows_reg_206_reg[31]_0 [27]),
        .O(\sub9_i_reg_221[28]_i_3_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[28]_i_4 
       (.I0(\rows_reg_206_reg[31]_0 [26]),
        .O(\sub9_i_reg_221[28]_i_4_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[28]_i_5 
       (.I0(\rows_reg_206_reg[31]_0 [25]),
        .O(\sub9_i_reg_221[28]_i_5_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[31]_i_2 
       (.I0(\rows_reg_206_reg[31]_0 [31]),
        .O(\sub9_i_reg_221[31]_i_2_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[31]_i_3 
       (.I0(\rows_reg_206_reg[31]_0 [30]),
        .O(\sub9_i_reg_221[31]_i_3_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[31]_i_4 
       (.I0(\rows_reg_206_reg[31]_0 [29]),
        .O(\sub9_i_reg_221[31]_i_4_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[4]_i_2 
       (.I0(\rows_reg_206_reg[31]_0 [4]),
        .O(\sub9_i_reg_221[4]_i_2_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[4]_i_3 
       (.I0(\rows_reg_206_reg[31]_0 [3]),
        .O(\sub9_i_reg_221[4]_i_3_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[4]_i_4 
       (.I0(\rows_reg_206_reg[31]_0 [2]),
        .O(\sub9_i_reg_221[4]_i_4_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[4]_i_5 
       (.I0(\rows_reg_206_reg[31]_0 [1]),
        .O(\sub9_i_reg_221[4]_i_5_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[8]_i_2 
       (.I0(\rows_reg_206_reg[31]_0 [8]),
        .O(\sub9_i_reg_221[8]_i_2_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[8]_i_3 
       (.I0(\rows_reg_206_reg[31]_0 [7]),
        .O(\sub9_i_reg_221[8]_i_3_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[8]_i_4 
       (.I0(\rows_reg_206_reg[31]_0 [6]),
        .O(\sub9_i_reg_221[8]_i_4_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub9_i_reg_221[8]_i_5 
       (.I0(\rows_reg_206_reg[31]_0 [5]),
        .O(\sub9_i_reg_221[8]_i_5_n_3 ));
  FDRE \sub9_i_reg_221_reg[0] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[0]),
        .Q(sub9_i_reg_221[0]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[10] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[10]),
        .Q(sub9_i_reg_221[10]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[11] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[11]),
        .Q(sub9_i_reg_221[11]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[12] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[12]),
        .Q(sub9_i_reg_221[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub9_i_reg_221_reg[12]_i_1 
       (.CI(\sub9_i_reg_221_reg[8]_i_1_n_3 ),
        .CO({\sub9_i_reg_221_reg[12]_i_1_n_3 ,\sub9_i_reg_221_reg[12]_i_1_n_4 ,\sub9_i_reg_221_reg[12]_i_1_n_5 ,\sub9_i_reg_221_reg[12]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(\rows_reg_206_reg[31]_0 [12:9]),
        .O(sub9_i_fu_155_p2[12:9]),
        .S({\sub9_i_reg_221[12]_i_2_n_3 ,\sub9_i_reg_221[12]_i_3_n_3 ,\sub9_i_reg_221[12]_i_4_n_3 ,\sub9_i_reg_221[12]_i_5_n_3 }));
  FDRE \sub9_i_reg_221_reg[13] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[13]),
        .Q(sub9_i_reg_221[13]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[14] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[14]),
        .Q(sub9_i_reg_221[14]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[15] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[15]),
        .Q(sub9_i_reg_221[15]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[16] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[16]),
        .Q(sub9_i_reg_221[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub9_i_reg_221_reg[16]_i_1 
       (.CI(\sub9_i_reg_221_reg[12]_i_1_n_3 ),
        .CO({\sub9_i_reg_221_reg[16]_i_1_n_3 ,\sub9_i_reg_221_reg[16]_i_1_n_4 ,\sub9_i_reg_221_reg[16]_i_1_n_5 ,\sub9_i_reg_221_reg[16]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(\rows_reg_206_reg[31]_0 [16:13]),
        .O(sub9_i_fu_155_p2[16:13]),
        .S({\sub9_i_reg_221[16]_i_2_n_3 ,\sub9_i_reg_221[16]_i_3_n_3 ,\sub9_i_reg_221[16]_i_4_n_3 ,\sub9_i_reg_221[16]_i_5_n_3 }));
  FDRE \sub9_i_reg_221_reg[17] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[17]),
        .Q(sub9_i_reg_221[17]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[18] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[18]),
        .Q(sub9_i_reg_221[18]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[19] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[19]),
        .Q(sub9_i_reg_221[19]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[1] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[1]),
        .Q(sub9_i_reg_221[1]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[20] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[20]),
        .Q(sub9_i_reg_221[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub9_i_reg_221_reg[20]_i_1 
       (.CI(\sub9_i_reg_221_reg[16]_i_1_n_3 ),
        .CO({\sub9_i_reg_221_reg[20]_i_1_n_3 ,\sub9_i_reg_221_reg[20]_i_1_n_4 ,\sub9_i_reg_221_reg[20]_i_1_n_5 ,\sub9_i_reg_221_reg[20]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(\rows_reg_206_reg[31]_0 [20:17]),
        .O(sub9_i_fu_155_p2[20:17]),
        .S({\sub9_i_reg_221[20]_i_2_n_3 ,\sub9_i_reg_221[20]_i_3_n_3 ,\sub9_i_reg_221[20]_i_4_n_3 ,\sub9_i_reg_221[20]_i_5_n_3 }));
  FDRE \sub9_i_reg_221_reg[21] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[21]),
        .Q(sub9_i_reg_221[21]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[22] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[22]),
        .Q(sub9_i_reg_221[22]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[23] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[23]),
        .Q(sub9_i_reg_221[23]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[24] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[24]),
        .Q(sub9_i_reg_221[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub9_i_reg_221_reg[24]_i_1 
       (.CI(\sub9_i_reg_221_reg[20]_i_1_n_3 ),
        .CO({\sub9_i_reg_221_reg[24]_i_1_n_3 ,\sub9_i_reg_221_reg[24]_i_1_n_4 ,\sub9_i_reg_221_reg[24]_i_1_n_5 ,\sub9_i_reg_221_reg[24]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(\rows_reg_206_reg[31]_0 [24:21]),
        .O(sub9_i_fu_155_p2[24:21]),
        .S({\sub9_i_reg_221[24]_i_2_n_3 ,\sub9_i_reg_221[24]_i_3_n_3 ,\sub9_i_reg_221[24]_i_4_n_3 ,\sub9_i_reg_221[24]_i_5_n_3 }));
  FDRE \sub9_i_reg_221_reg[25] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[25]),
        .Q(sub9_i_reg_221[25]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[26] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[26]),
        .Q(sub9_i_reg_221[26]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[27] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[27]),
        .Q(sub9_i_reg_221[27]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[28] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[28]),
        .Q(sub9_i_reg_221[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub9_i_reg_221_reg[28]_i_1 
       (.CI(\sub9_i_reg_221_reg[24]_i_1_n_3 ),
        .CO({\sub9_i_reg_221_reg[28]_i_1_n_3 ,\sub9_i_reg_221_reg[28]_i_1_n_4 ,\sub9_i_reg_221_reg[28]_i_1_n_5 ,\sub9_i_reg_221_reg[28]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(\rows_reg_206_reg[31]_0 [28:25]),
        .O(sub9_i_fu_155_p2[28:25]),
        .S({\sub9_i_reg_221[28]_i_2_n_3 ,\sub9_i_reg_221[28]_i_3_n_3 ,\sub9_i_reg_221[28]_i_4_n_3 ,\sub9_i_reg_221[28]_i_5_n_3 }));
  FDRE \sub9_i_reg_221_reg[29] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[29]),
        .Q(sub9_i_reg_221[29]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[2] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[2]),
        .Q(sub9_i_reg_221[2]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[30] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[30]),
        .Q(sub9_i_reg_221[30]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[31] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[31]),
        .Q(sub9_i_reg_221[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub9_i_reg_221_reg[31]_i_1 
       (.CI(\sub9_i_reg_221_reg[28]_i_1_n_3 ),
        .CO({\NLW_sub9_i_reg_221_reg[31]_i_1_CO_UNCONNECTED [3:2],\sub9_i_reg_221_reg[31]_i_1_n_5 ,\sub9_i_reg_221_reg[31]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\rows_reg_206_reg[31]_0 [30:29]}),
        .O({\NLW_sub9_i_reg_221_reg[31]_i_1_O_UNCONNECTED [3],sub9_i_fu_155_p2[31:29]}),
        .S({1'b0,\sub9_i_reg_221[31]_i_2_n_3 ,\sub9_i_reg_221[31]_i_3_n_3 ,\sub9_i_reg_221[31]_i_4_n_3 }));
  FDRE \sub9_i_reg_221_reg[3] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[3]),
        .Q(sub9_i_reg_221[3]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[4] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[4]),
        .Q(sub9_i_reg_221[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub9_i_reg_221_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\sub9_i_reg_221_reg[4]_i_1_n_3 ,\sub9_i_reg_221_reg[4]_i_1_n_4 ,\sub9_i_reg_221_reg[4]_i_1_n_5 ,\sub9_i_reg_221_reg[4]_i_1_n_6 }),
        .CYINIT(\rows_reg_206_reg[31]_0 [0]),
        .DI(\rows_reg_206_reg[31]_0 [4:1]),
        .O(sub9_i_fu_155_p2[4:1]),
        .S({\sub9_i_reg_221[4]_i_2_n_3 ,\sub9_i_reg_221[4]_i_3_n_3 ,\sub9_i_reg_221[4]_i_4_n_3 ,\sub9_i_reg_221[4]_i_5_n_3 }));
  FDRE \sub9_i_reg_221_reg[5] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[5]),
        .Q(sub9_i_reg_221[5]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[6] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[6]),
        .Q(sub9_i_reg_221[6]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[7] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[7]),
        .Q(sub9_i_reg_221[7]),
        .R(1'b0));
  FDRE \sub9_i_reg_221_reg[8] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[8]),
        .Q(sub9_i_reg_221[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub9_i_reg_221_reg[8]_i_1 
       (.CI(\sub9_i_reg_221_reg[4]_i_1_n_3 ),
        .CO({\sub9_i_reg_221_reg[8]_i_1_n_3 ,\sub9_i_reg_221_reg[8]_i_1_n_4 ,\sub9_i_reg_221_reg[8]_i_1_n_5 ,\sub9_i_reg_221_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(\rows_reg_206_reg[31]_0 [8:5]),
        .O(sub9_i_fu_155_p2[8:5]),
        .S({\sub9_i_reg_221[8]_i_2_n_3 ,\sub9_i_reg_221[8]_i_3_n_3 ,\sub9_i_reg_221[8]_i_4_n_3 ,\sub9_i_reg_221[8]_i_5_n_3 }));
  FDRE \sub9_i_reg_221_reg[9] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub9_i_fu_155_p2[9]),
        .Q(sub9_i_reg_221[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[0]_i_1 
       (.I0(\cols_reg_211_reg[31]_0 [0]),
        .O(sub_i_fu_149_p2[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[12]_i_2 
       (.I0(\cols_reg_211_reg[31]_0 [12]),
        .O(\sub_i_reg_216[12]_i_2_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[12]_i_3 
       (.I0(\cols_reg_211_reg[31]_0 [11]),
        .O(\sub_i_reg_216[12]_i_3_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[12]_i_4 
       (.I0(\cols_reg_211_reg[31]_0 [10]),
        .O(\sub_i_reg_216[12]_i_4_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[12]_i_5 
       (.I0(\cols_reg_211_reg[31]_0 [9]),
        .O(\sub_i_reg_216[12]_i_5_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[16]_i_2 
       (.I0(\cols_reg_211_reg[31]_0 [16]),
        .O(\sub_i_reg_216[16]_i_2_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[16]_i_3 
       (.I0(\cols_reg_211_reg[31]_0 [15]),
        .O(\sub_i_reg_216[16]_i_3_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[16]_i_4 
       (.I0(\cols_reg_211_reg[31]_0 [14]),
        .O(\sub_i_reg_216[16]_i_4_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[16]_i_5 
       (.I0(\cols_reg_211_reg[31]_0 [13]),
        .O(\sub_i_reg_216[16]_i_5_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[20]_i_2 
       (.I0(\cols_reg_211_reg[31]_0 [20]),
        .O(\sub_i_reg_216[20]_i_2_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[20]_i_3 
       (.I0(\cols_reg_211_reg[31]_0 [19]),
        .O(\sub_i_reg_216[20]_i_3_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[20]_i_4 
       (.I0(\cols_reg_211_reg[31]_0 [18]),
        .O(\sub_i_reg_216[20]_i_4_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[20]_i_5 
       (.I0(\cols_reg_211_reg[31]_0 [17]),
        .O(\sub_i_reg_216[20]_i_5_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[24]_i_2 
       (.I0(\cols_reg_211_reg[31]_0 [24]),
        .O(\sub_i_reg_216[24]_i_2_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[24]_i_3 
       (.I0(\cols_reg_211_reg[31]_0 [23]),
        .O(\sub_i_reg_216[24]_i_3_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[24]_i_4 
       (.I0(\cols_reg_211_reg[31]_0 [22]),
        .O(\sub_i_reg_216[24]_i_4_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[24]_i_5 
       (.I0(\cols_reg_211_reg[31]_0 [21]),
        .O(\sub_i_reg_216[24]_i_5_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[28]_i_2 
       (.I0(\cols_reg_211_reg[31]_0 [28]),
        .O(\sub_i_reg_216[28]_i_2_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[28]_i_3 
       (.I0(\cols_reg_211_reg[31]_0 [27]),
        .O(\sub_i_reg_216[28]_i_3_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[28]_i_4 
       (.I0(\cols_reg_211_reg[31]_0 [26]),
        .O(\sub_i_reg_216[28]_i_4_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[28]_i_5 
       (.I0(\cols_reg_211_reg[31]_0 [25]),
        .O(\sub_i_reg_216[28]_i_5_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[31]_i_2 
       (.I0(\cols_reg_211_reg[31]_0 [31]),
        .O(\sub_i_reg_216[31]_i_2_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[31]_i_3 
       (.I0(\cols_reg_211_reg[31]_0 [30]),
        .O(\sub_i_reg_216[31]_i_3_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[31]_i_4 
       (.I0(\cols_reg_211_reg[31]_0 [29]),
        .O(\sub_i_reg_216[31]_i_4_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[4]_i_2 
       (.I0(\cols_reg_211_reg[31]_0 [4]),
        .O(\sub_i_reg_216[4]_i_2_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[4]_i_3 
       (.I0(\cols_reg_211_reg[31]_0 [3]),
        .O(\sub_i_reg_216[4]_i_3_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[4]_i_4 
       (.I0(\cols_reg_211_reg[31]_0 [2]),
        .O(\sub_i_reg_216[4]_i_4_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[4]_i_5 
       (.I0(\cols_reg_211_reg[31]_0 [1]),
        .O(\sub_i_reg_216[4]_i_5_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[8]_i_2 
       (.I0(\cols_reg_211_reg[31]_0 [8]),
        .O(\sub_i_reg_216[8]_i_2_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[8]_i_3 
       (.I0(\cols_reg_211_reg[31]_0 [7]),
        .O(\sub_i_reg_216[8]_i_3_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[8]_i_4 
       (.I0(\cols_reg_211_reg[31]_0 [6]),
        .O(\sub_i_reg_216[8]_i_4_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_i_reg_216[8]_i_5 
       (.I0(\cols_reg_211_reg[31]_0 [5]),
        .O(\sub_i_reg_216[8]_i_5_n_3 ));
  FDRE \sub_i_reg_216_reg[0] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[0]),
        .Q(sub_i_reg_216[0]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[10] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[10]),
        .Q(sub_i_reg_216[10]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[11] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[11]),
        .Q(sub_i_reg_216[11]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[12] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[12]),
        .Q(sub_i_reg_216[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_i_reg_216_reg[12]_i_1 
       (.CI(\sub_i_reg_216_reg[8]_i_1_n_3 ),
        .CO({\sub_i_reg_216_reg[12]_i_1_n_3 ,\sub_i_reg_216_reg[12]_i_1_n_4 ,\sub_i_reg_216_reg[12]_i_1_n_5 ,\sub_i_reg_216_reg[12]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(\cols_reg_211_reg[31]_0 [12:9]),
        .O(sub_i_fu_149_p2[12:9]),
        .S({\sub_i_reg_216[12]_i_2_n_3 ,\sub_i_reg_216[12]_i_3_n_3 ,\sub_i_reg_216[12]_i_4_n_3 ,\sub_i_reg_216[12]_i_5_n_3 }));
  FDRE \sub_i_reg_216_reg[13] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[13]),
        .Q(sub_i_reg_216[13]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[14] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[14]),
        .Q(sub_i_reg_216[14]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[15] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[15]),
        .Q(sub_i_reg_216[15]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[16] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[16]),
        .Q(sub_i_reg_216[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_i_reg_216_reg[16]_i_1 
       (.CI(\sub_i_reg_216_reg[12]_i_1_n_3 ),
        .CO({\sub_i_reg_216_reg[16]_i_1_n_3 ,\sub_i_reg_216_reg[16]_i_1_n_4 ,\sub_i_reg_216_reg[16]_i_1_n_5 ,\sub_i_reg_216_reg[16]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(\cols_reg_211_reg[31]_0 [16:13]),
        .O(sub_i_fu_149_p2[16:13]),
        .S({\sub_i_reg_216[16]_i_2_n_3 ,\sub_i_reg_216[16]_i_3_n_3 ,\sub_i_reg_216[16]_i_4_n_3 ,\sub_i_reg_216[16]_i_5_n_3 }));
  FDRE \sub_i_reg_216_reg[17] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[17]),
        .Q(sub_i_reg_216[17]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[18] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[18]),
        .Q(sub_i_reg_216[18]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[19] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[19]),
        .Q(sub_i_reg_216[19]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[1] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[1]),
        .Q(sub_i_reg_216[1]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[20] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[20]),
        .Q(sub_i_reg_216[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_i_reg_216_reg[20]_i_1 
       (.CI(\sub_i_reg_216_reg[16]_i_1_n_3 ),
        .CO({\sub_i_reg_216_reg[20]_i_1_n_3 ,\sub_i_reg_216_reg[20]_i_1_n_4 ,\sub_i_reg_216_reg[20]_i_1_n_5 ,\sub_i_reg_216_reg[20]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(\cols_reg_211_reg[31]_0 [20:17]),
        .O(sub_i_fu_149_p2[20:17]),
        .S({\sub_i_reg_216[20]_i_2_n_3 ,\sub_i_reg_216[20]_i_3_n_3 ,\sub_i_reg_216[20]_i_4_n_3 ,\sub_i_reg_216[20]_i_5_n_3 }));
  FDRE \sub_i_reg_216_reg[21] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[21]),
        .Q(sub_i_reg_216[21]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[22] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[22]),
        .Q(sub_i_reg_216[22]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[23] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[23]),
        .Q(sub_i_reg_216[23]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[24] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[24]),
        .Q(sub_i_reg_216[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_i_reg_216_reg[24]_i_1 
       (.CI(\sub_i_reg_216_reg[20]_i_1_n_3 ),
        .CO({\sub_i_reg_216_reg[24]_i_1_n_3 ,\sub_i_reg_216_reg[24]_i_1_n_4 ,\sub_i_reg_216_reg[24]_i_1_n_5 ,\sub_i_reg_216_reg[24]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(\cols_reg_211_reg[31]_0 [24:21]),
        .O(sub_i_fu_149_p2[24:21]),
        .S({\sub_i_reg_216[24]_i_2_n_3 ,\sub_i_reg_216[24]_i_3_n_3 ,\sub_i_reg_216[24]_i_4_n_3 ,\sub_i_reg_216[24]_i_5_n_3 }));
  FDRE \sub_i_reg_216_reg[25] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[25]),
        .Q(sub_i_reg_216[25]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[26] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[26]),
        .Q(sub_i_reg_216[26]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[27] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[27]),
        .Q(sub_i_reg_216[27]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[28] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[28]),
        .Q(sub_i_reg_216[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_i_reg_216_reg[28]_i_1 
       (.CI(\sub_i_reg_216_reg[24]_i_1_n_3 ),
        .CO({\sub_i_reg_216_reg[28]_i_1_n_3 ,\sub_i_reg_216_reg[28]_i_1_n_4 ,\sub_i_reg_216_reg[28]_i_1_n_5 ,\sub_i_reg_216_reg[28]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(\cols_reg_211_reg[31]_0 [28:25]),
        .O(sub_i_fu_149_p2[28:25]),
        .S({\sub_i_reg_216[28]_i_2_n_3 ,\sub_i_reg_216[28]_i_3_n_3 ,\sub_i_reg_216[28]_i_4_n_3 ,\sub_i_reg_216[28]_i_5_n_3 }));
  FDRE \sub_i_reg_216_reg[29] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[29]),
        .Q(sub_i_reg_216[29]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[2] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[2]),
        .Q(sub_i_reg_216[2]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[30] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[30]),
        .Q(sub_i_reg_216[30]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[31] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[31]),
        .Q(sub_i_reg_216[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_i_reg_216_reg[31]_i_1 
       (.CI(\sub_i_reg_216_reg[28]_i_1_n_3 ),
        .CO({\NLW_sub_i_reg_216_reg[31]_i_1_CO_UNCONNECTED [3:2],\sub_i_reg_216_reg[31]_i_1_n_5 ,\sub_i_reg_216_reg[31]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\cols_reg_211_reg[31]_0 [30:29]}),
        .O({\NLW_sub_i_reg_216_reg[31]_i_1_O_UNCONNECTED [3],sub_i_fu_149_p2[31:29]}),
        .S({1'b0,\sub_i_reg_216[31]_i_2_n_3 ,\sub_i_reg_216[31]_i_3_n_3 ,\sub_i_reg_216[31]_i_4_n_3 }));
  FDRE \sub_i_reg_216_reg[3] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[3]),
        .Q(sub_i_reg_216[3]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[4] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[4]),
        .Q(sub_i_reg_216[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_i_reg_216_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\sub_i_reg_216_reg[4]_i_1_n_3 ,\sub_i_reg_216_reg[4]_i_1_n_4 ,\sub_i_reg_216_reg[4]_i_1_n_5 ,\sub_i_reg_216_reg[4]_i_1_n_6 }),
        .CYINIT(\cols_reg_211_reg[31]_0 [0]),
        .DI(\cols_reg_211_reg[31]_0 [4:1]),
        .O(sub_i_fu_149_p2[4:1]),
        .S({\sub_i_reg_216[4]_i_2_n_3 ,\sub_i_reg_216[4]_i_3_n_3 ,\sub_i_reg_216[4]_i_4_n_3 ,\sub_i_reg_216[4]_i_5_n_3 }));
  FDRE \sub_i_reg_216_reg[5] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[5]),
        .Q(sub_i_reg_216[5]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[6] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[6]),
        .Q(sub_i_reg_216[6]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[7] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[7]),
        .Q(sub_i_reg_216[7]),
        .R(1'b0));
  FDRE \sub_i_reg_216_reg[8] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[8]),
        .Q(sub_i_reg_216[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_i_reg_216_reg[8]_i_1 
       (.CI(\sub_i_reg_216_reg[4]_i_1_n_3 ),
        .CO({\sub_i_reg_216_reg[8]_i_1_n_3 ,\sub_i_reg_216_reg[8]_i_1_n_4 ,\sub_i_reg_216_reg[8]_i_1_n_5 ,\sub_i_reg_216_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(\cols_reg_211_reg[31]_0 [8:5]),
        .O(sub_i_fu_149_p2[8:5]),
        .S({\sub_i_reg_216[8]_i_2_n_3 ,\sub_i_reg_216[8]_i_3_n_3 ,\sub_i_reg_216[8]_i_4_n_3 ,\sub_i_reg_216[8]_i_5_n_3 }));
  FDRE \sub_i_reg_216_reg[9] 
       (.C(ap_clk),
        .CE(Q),
        .D(sub_i_fu_149_p2[9]),
        .Q(sub_i_reg_216[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "colordetect_colordetect_accel_0_0,colordetect_accel,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "colordetect_accel,Vivado 2020.2.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_control_AWADDR,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    src_TVALID,
    src_TREADY,
    src_TDATA,
    src_TKEEP,
    src_TSTRB,
    src_TUSER,
    src_TLAST,
    src_TID,
    src_TDEST,
    dst_TVALID,
    dst_TREADY,
    dst_TDATA,
    dst_TKEEP,
    dst_TSTRB,
    dst_TUSER,
    dst_TLAST,
    dst_TID,
    dst_TDEST);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [4:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [4:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN colordetect_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:src:dst, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN colordetect_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src TVALID" *) input src_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src TREADY" *) output src_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src TDATA" *) input [23:0]src_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src TKEEP" *) input [2:0]src_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src TSTRB" *) input [2:0]src_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src TUSER" *) input [0:0]src_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src TLAST" *) input [0:0]src_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src TID" *) input [0:0]src_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src TDEST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME src, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN colordetect_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input [0:0]src_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst TVALID" *) output dst_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst TREADY" *) input dst_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst TDATA" *) output [23:0]dst_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst TKEEP" *) output [2:0]dst_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst TSTRB" *) output [2:0]dst_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst TUSER" *) output [0:0]dst_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst TLAST" *) output [0:0]dst_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst TID" *) output [0:0]dst_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst TDEST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dst, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN colordetect_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) output [0:0]dst_TDEST;

  wire \<const0> ;
  wire \<const1> ;
  wire ap_clk;
  wire ap_rst_n;
  wire [23:0]dst_TDATA;
  wire [0:0]dst_TLAST;
  wire dst_TREADY;
  wire dst_TVALID;
  wire interrupt;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [4:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [23:0]src_TDATA;
  wire src_TREADY;
  wire src_TVALID;
  wire [0:0]NLW_inst_dst_TDEST_UNCONNECTED;
  wire [0:0]NLW_inst_dst_TID_UNCONNECTED;
  wire [2:0]NLW_inst_dst_TKEEP_UNCONNECTED;
  wire [2:0]NLW_inst_dst_TSTRB_UNCONNECTED;
  wire [0:0]NLW_inst_dst_TUSER_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_RRESP_UNCONNECTED;

  assign dst_TDEST[0] = \<const0> ;
  assign dst_TID[0] = \<const0> ;
  assign dst_TKEEP[2] = \<const1> ;
  assign dst_TKEEP[1] = \<const1> ;
  assign dst_TKEEP[0] = \<const1> ;
  assign dst_TSTRB[2] = \<const0> ;
  assign dst_TSTRB[1] = \<const0> ;
  assign dst_TSTRB[0] = \<const0> ;
  assign dst_TUSER[0] = \<const0> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_S_AXI_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colordetect_accel inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .dst_TDATA(dst_TDATA),
        .dst_TDEST(NLW_inst_dst_TDEST_UNCONNECTED[0]),
        .dst_TID(NLW_inst_dst_TID_UNCONNECTED[0]),
        .dst_TKEEP(NLW_inst_dst_TKEEP_UNCONNECTED[2:0]),
        .dst_TLAST(dst_TLAST),
        .dst_TREADY(dst_TREADY),
        .dst_TSTRB(NLW_inst_dst_TSTRB_UNCONNECTED[2:0]),
        .dst_TUSER(NLW_inst_dst_TUSER_UNCONNECTED[0]),
        .dst_TVALID(dst_TVALID),
        .interrupt(interrupt),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BRESP(NLW_inst_s_axi_control_BRESP_UNCONNECTED[1:0]),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RRESP(NLW_inst_s_axi_control_RRESP_UNCONNECTED[1:0]),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .src_TDATA(src_TDATA),
        .src_TDEST(1'b0),
        .src_TID(1'b0),
        .src_TKEEP({1'b0,1'b0,1'b0}),
        .src_TLAST(1'b0),
        .src_TREADY(src_TREADY),
        .src_TSTRB({1'b0,1'b0,1'b0}),
        .src_TUSER(1'b0),
        .src_TVALID(src_TVALID));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
