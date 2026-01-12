// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.2 (64-bit)
// Tool Version Limit: 2024.02
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xblackboxjam.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XBlackboxjam_CfgInitialize(XBlackboxjam *InstancePtr, XBlackboxjam_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XBlackboxjam_Start(XBlackboxjam *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_AP_CTRL) & 0x80;
    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XBlackboxjam_IsDone(XBlackboxjam *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XBlackboxjam_IsIdle(XBlackboxjam *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XBlackboxjam_IsReady(XBlackboxjam *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XBlackboxjam_EnableAutoRestart(XBlackboxjam *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XBlackboxjam_DisableAutoRestart(XBlackboxjam *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_AP_CTRL, 0);
}

void XBlackboxjam_Set_in_r(XBlackboxjam *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_IN_R_DATA, (u32)(Data));
    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_IN_R_DATA + 4, (u32)(Data >> 32));
}

u64 XBlackboxjam_Get_in_r(XBlackboxjam *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_IN_R_DATA);
    Data += (u64)XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_IN_R_DATA + 4) << 32;
    return Data;
}

void XBlackboxjam_Set_out_r(XBlackboxjam *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XBlackboxjam_Get_out_r(XBlackboxjam *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XBlackboxjam_Set_doInit(XBlackboxjam *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_DOINIT_DATA, Data);
}

u32 XBlackboxjam_Get_doInit(XBlackboxjam *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_DOINIT_DATA);
    return Data;
}

void XBlackboxjam_Set_targetLayer(XBlackboxjam *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_TARGETLAYER_DATA, Data);
}

u32 XBlackboxjam_Get_targetLayer(XBlackboxjam *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_TARGETLAYER_DATA);
    return Data;
}

void XBlackboxjam_Set_targetMem(XBlackboxjam *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_TARGETMEM_DATA, Data);
}

u32 XBlackboxjam_Get_targetMem(XBlackboxjam *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_TARGETMEM_DATA);
    return Data;
}

void XBlackboxjam_Set_targetInd(XBlackboxjam *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_TARGETIND_DATA, Data);
}

u32 XBlackboxjam_Get_targetInd(XBlackboxjam *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_TARGETIND_DATA);
    return Data;
}

void XBlackboxjam_Set_targetThresh(XBlackboxjam *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_TARGETTHRESH_DATA, Data);
}

u32 XBlackboxjam_Get_targetThresh(XBlackboxjam *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_TARGETTHRESH_DATA);
    return Data;
}

void XBlackboxjam_Set_val_r(XBlackboxjam *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_VAL_R_DATA, (u32)(Data));
    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_VAL_R_DATA + 4, (u32)(Data >> 32));
}

u64 XBlackboxjam_Get_val_r(XBlackboxjam *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_VAL_R_DATA);
    Data += (u64)XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_VAL_R_DATA + 4) << 32;
    return Data;
}

void XBlackboxjam_Set_numReps(XBlackboxjam *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_NUMREPS_DATA, Data);
}

u32 XBlackboxjam_Get_numReps(XBlackboxjam *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_NUMREPS_DATA);
    return Data;
}

void XBlackboxjam_InterruptGlobalEnable(XBlackboxjam *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_GIE, 1);
}

void XBlackboxjam_InterruptGlobalDisable(XBlackboxjam *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_GIE, 0);
}

void XBlackboxjam_InterruptEnable(XBlackboxjam *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_IER);
    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_IER, Register | Mask);
}

void XBlackboxjam_InterruptDisable(XBlackboxjam *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_IER);
    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_IER, Register & (~Mask));
}

void XBlackboxjam_InterruptClear(XBlackboxjam *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBlackboxjam_WriteReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_ISR, Mask);
}

u32 XBlackboxjam_InterruptGetEnabled(XBlackboxjam *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_IER);
}

u32 XBlackboxjam_InterruptGetStatus(XBlackboxjam *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBlackboxjam_ReadReg(InstancePtr->Control_BaseAddress, XBLACKBOXJAM_CONTROL_ADDR_ISR);
}

