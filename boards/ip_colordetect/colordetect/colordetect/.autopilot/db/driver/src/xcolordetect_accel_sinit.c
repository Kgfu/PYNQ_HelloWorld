// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcolordetect_accel.h"

extern XColordetect_accel_Config XColordetect_accel_ConfigTable[];

XColordetect_accel_Config *XColordetect_accel_LookupConfig(u16 DeviceId) {
	XColordetect_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCOLORDETECT_ACCEL_NUM_INSTANCES; Index++) {
		if (XColordetect_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XColordetect_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XColordetect_accel_Initialize(XColordetect_accel *InstancePtr, u16 DeviceId) {
	XColordetect_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XColordetect_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XColordetect_accel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

