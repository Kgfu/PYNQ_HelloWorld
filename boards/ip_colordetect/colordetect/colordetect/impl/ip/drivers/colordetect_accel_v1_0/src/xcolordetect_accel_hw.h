// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x30 : Data signal of rows
//        bit 31~0 - rows[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of cols
//        bit 31~0 - cols[31:0] (Read/Write)
// 0x3c : reserved
// 0x10 ~
// 0x1f : Memory 'low_thresh' (9 * 8b)
//        Word n : bit [ 7: 0] - low_thresh[4n]
//                 bit [15: 8] - low_thresh[4n+1]
//                 bit [23:16] - low_thresh[4n+2]
//                 bit [31:24] - low_thresh[4n+3]
// 0x20 ~
// 0x2f : Memory 'high_thresh' (9 * 8b)
//        Word n : bit [ 7: 0] - high_thresh[4n]
//                 bit [15: 8] - high_thresh[4n+1]
//                 bit [23:16] - high_thresh[4n+2]
//                 bit [31:24] - high_thresh[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCOLORDETECT_ACCEL_CONTROL_ADDR_AP_CTRL          0x00
#define XCOLORDETECT_ACCEL_CONTROL_ADDR_GIE              0x04
#define XCOLORDETECT_ACCEL_CONTROL_ADDR_IER              0x08
#define XCOLORDETECT_ACCEL_CONTROL_ADDR_ISR              0x0c
#define XCOLORDETECT_ACCEL_CONTROL_ADDR_ROWS_DATA        0x30
#define XCOLORDETECT_ACCEL_CONTROL_BITS_ROWS_DATA        32
#define XCOLORDETECT_ACCEL_CONTROL_ADDR_COLS_DATA        0x38
#define XCOLORDETECT_ACCEL_CONTROL_BITS_COLS_DATA        32
#define XCOLORDETECT_ACCEL_CONTROL_ADDR_LOW_THRESH_BASE  0x10
#define XCOLORDETECT_ACCEL_CONTROL_ADDR_LOW_THRESH_HIGH  0x1f
#define XCOLORDETECT_ACCEL_CONTROL_WIDTH_LOW_THRESH      8
#define XCOLORDETECT_ACCEL_CONTROL_DEPTH_LOW_THRESH      9
#define XCOLORDETECT_ACCEL_CONTROL_ADDR_HIGH_THRESH_BASE 0x20
#define XCOLORDETECT_ACCEL_CONTROL_ADDR_HIGH_THRESH_HIGH 0x2f
#define XCOLORDETECT_ACCEL_CONTROL_WIDTH_HIGH_THRESH     8
#define XCOLORDETECT_ACCEL_CONTROL_DEPTH_HIGH_THRESH     9

