// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCOLORDETECT_ACCEL_H
#define XCOLORDETECT_ACCEL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcolordetect_accel_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XColordetect_accel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XColordetect_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XColordetect_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XColordetect_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XColordetect_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XColordetect_accel_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XColordetect_accel_Initialize(XColordetect_accel *InstancePtr, u16 DeviceId);
XColordetect_accel_Config* XColordetect_accel_LookupConfig(u16 DeviceId);
int XColordetect_accel_CfgInitialize(XColordetect_accel *InstancePtr, XColordetect_accel_Config *ConfigPtr);
#else
int XColordetect_accel_Initialize(XColordetect_accel *InstancePtr, const char* InstanceName);
int XColordetect_accel_Release(XColordetect_accel *InstancePtr);
#endif

void XColordetect_accel_Start(XColordetect_accel *InstancePtr);
u32 XColordetect_accel_IsDone(XColordetect_accel *InstancePtr);
u32 XColordetect_accel_IsIdle(XColordetect_accel *InstancePtr);
u32 XColordetect_accel_IsReady(XColordetect_accel *InstancePtr);
void XColordetect_accel_EnableAutoRestart(XColordetect_accel *InstancePtr);
void XColordetect_accel_DisableAutoRestart(XColordetect_accel *InstancePtr);

void XColordetect_accel_Set_low_thresh(XColordetect_accel *InstancePtr, u64 Data);
u64 XColordetect_accel_Get_low_thresh(XColordetect_accel *InstancePtr);
void XColordetect_accel_Set_high_thresh(XColordetect_accel *InstancePtr, u64 Data);
u64 XColordetect_accel_Get_high_thresh(XColordetect_accel *InstancePtr);
void XColordetect_accel_Set_rows(XColordetect_accel *InstancePtr, u32 Data);
u32 XColordetect_accel_Get_rows(XColordetect_accel *InstancePtr);
void XColordetect_accel_Set_cols(XColordetect_accel *InstancePtr, u32 Data);
u32 XColordetect_accel_Get_cols(XColordetect_accel *InstancePtr);
void XColordetect_accel_Set_t1(XColordetect_accel *InstancePtr, u32 Data);
u32 XColordetect_accel_Get_t1(XColordetect_accel *InstancePtr);
u32 XColordetect_accel_Get_t2(XColordetect_accel *InstancePtr);
u32 XColordetect_accel_Get_t2_vld(XColordetect_accel *InstancePtr);

void XColordetect_accel_InterruptGlobalEnable(XColordetect_accel *InstancePtr);
void XColordetect_accel_InterruptGlobalDisable(XColordetect_accel *InstancePtr);
void XColordetect_accel_InterruptEnable(XColordetect_accel *InstancePtr, u32 Mask);
void XColordetect_accel_InterruptDisable(XColordetect_accel *InstancePtr, u32 Mask);
void XColordetect_accel_InterruptClear(XColordetect_accel *InstancePtr, u32 Mask);
u32 XColordetect_accel_InterruptGetEnabled(XColordetect_accel *InstancePtr);
u32 XColordetect_accel_InterruptGetStatus(XColordetect_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
