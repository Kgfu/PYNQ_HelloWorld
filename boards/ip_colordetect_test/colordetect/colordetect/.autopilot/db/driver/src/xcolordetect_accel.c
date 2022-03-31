// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcolordetect_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XColordetect_accel_CfgInitialize(XColordetect_accel *InstancePtr, XColordetect_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XColordetect_accel_Start(XColordetect_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColordetect_accel_ReadReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XColordetect_accel_WriteReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XColordetect_accel_IsDone(XColordetect_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColordetect_accel_ReadReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XColordetect_accel_IsIdle(XColordetect_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColordetect_accel_ReadReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XColordetect_accel_IsReady(XColordetect_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColordetect_accel_ReadReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XColordetect_accel_EnableAutoRestart(XColordetect_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColordetect_accel_WriteReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XColordetect_accel_DisableAutoRestart(XColordetect_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColordetect_accel_WriteReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XColordetect_accel_Set_low_thresh(XColordetect_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColordetect_accel_WriteReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_LOW_THRESH_DATA, (u32)(Data));
    XColordetect_accel_WriteReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_LOW_THRESH_DATA + 4, (u32)(Data >> 32));
}

u64 XColordetect_accel_Get_low_thresh(XColordetect_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColordetect_accel_ReadReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_LOW_THRESH_DATA);
    Data += (u64)XColordetect_accel_ReadReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_LOW_THRESH_DATA + 4) << 32;
    return Data;
}

void XColordetect_accel_Set_high_thresh(XColordetect_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColordetect_accel_WriteReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_HIGH_THRESH_DATA, (u32)(Data));
    XColordetect_accel_WriteReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_HIGH_THRESH_DATA + 4, (u32)(Data >> 32));
}

u64 XColordetect_accel_Get_high_thresh(XColordetect_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColordetect_accel_ReadReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_HIGH_THRESH_DATA);
    Data += (u64)XColordetect_accel_ReadReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_HIGH_THRESH_DATA + 4) << 32;
    return Data;
}

void XColordetect_accel_Set_rows(XColordetect_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColordetect_accel_WriteReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_ROWS_DATA, Data);
}

u32 XColordetect_accel_Get_rows(XColordetect_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColordetect_accel_ReadReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_ROWS_DATA);
    return Data;
}

void XColordetect_accel_Set_cols(XColordetect_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColordetect_accel_WriteReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_COLS_DATA, Data);
}

u32 XColordetect_accel_Get_cols(XColordetect_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColordetect_accel_ReadReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_COLS_DATA);
    return Data;
}

void XColordetect_accel_Set_t1(XColordetect_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColordetect_accel_WriteReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_T1_DATA, Data);
}

u32 XColordetect_accel_Get_t1(XColordetect_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColordetect_accel_ReadReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_T1_DATA);
    return Data;
}

u32 XColordetect_accel_Get_t2(XColordetect_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColordetect_accel_ReadReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_T2_DATA);
    return Data;
}

u32 XColordetect_accel_Get_t2_vld(XColordetect_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColordetect_accel_ReadReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_T2_CTRL);
    return Data & 0x1;
}

void XColordetect_accel_InterruptGlobalEnable(XColordetect_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColordetect_accel_WriteReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_GIE, 1);
}

void XColordetect_accel_InterruptGlobalDisable(XColordetect_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColordetect_accel_WriteReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_GIE, 0);
}

void XColordetect_accel_InterruptEnable(XColordetect_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XColordetect_accel_ReadReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_IER);
    XColordetect_accel_WriteReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XColordetect_accel_InterruptDisable(XColordetect_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XColordetect_accel_ReadReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_IER);
    XColordetect_accel_WriteReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XColordetect_accel_InterruptClear(XColordetect_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColordetect_accel_WriteReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XColordetect_accel_InterruptGetEnabled(XColordetect_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XColordetect_accel_ReadReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_IER);
}

u32 XColordetect_accel_InterruptGetStatus(XColordetect_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XColordetect_accel_ReadReg(InstancePtr->Control_BaseAddress, XCOLORDETECT_ACCEL_CONTROL_ADDR_ISR);
}

