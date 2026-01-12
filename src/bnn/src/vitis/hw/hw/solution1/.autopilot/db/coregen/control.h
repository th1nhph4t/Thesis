// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of in_r
//        bit 31~0 - in_r[31:0] (Read/Write)
// 0x14 : Data signal of in_r
//        bit 31~0 - in_r[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of out_r
//        bit 31~0 - out_r[31:0] (Read/Write)
// 0x20 : Data signal of out_r
//        bit 31~0 - out_r[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of doInit
//        bit 0  - doInit[0] (Read/Write)
//        others - reserved
// 0x2c : reserved
// 0x30 : Data signal of targetLayer
//        bit 31~0 - targetLayer[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of targetMem
//        bit 31~0 - targetMem[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of targetInd
//        bit 31~0 - targetInd[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of targetThresh
//        bit 31~0 - targetThresh[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of val_r
//        bit 31~0 - val_r[31:0] (Read/Write)
// 0x54 : Data signal of val_r
//        bit 31~0 - val_r[63:32] (Read/Write)
// 0x58 : reserved
// 0x5c : Data signal of numReps
//        bit 31~0 - numReps[31:0] (Read/Write)
// 0x60 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL           0x00
#define CONTROL_ADDR_GIE               0x04
#define CONTROL_ADDR_IER               0x08
#define CONTROL_ADDR_ISR               0x0c
#define CONTROL_ADDR_IN_R_DATA         0x10
#define CONTROL_BITS_IN_R_DATA         64
#define CONTROL_ADDR_OUT_R_DATA        0x1c
#define CONTROL_BITS_OUT_R_DATA        64
#define CONTROL_ADDR_DOINIT_DATA       0x28
#define CONTROL_BITS_DOINIT_DATA       1
#define CONTROL_ADDR_TARGETLAYER_DATA  0x30
#define CONTROL_BITS_TARGETLAYER_DATA  32
#define CONTROL_ADDR_TARGETMEM_DATA    0x38
#define CONTROL_BITS_TARGETMEM_DATA    32
#define CONTROL_ADDR_TARGETIND_DATA    0x40
#define CONTROL_BITS_TARGETIND_DATA    32
#define CONTROL_ADDR_TARGETTHRESH_DATA 0x48
#define CONTROL_BITS_TARGETTHRESH_DATA 32
#define CONTROL_ADDR_VAL_R_DATA        0x50
#define CONTROL_BITS_VAL_R_DATA        64
#define CONTROL_ADDR_NUMREPS_DATA      0x5c
#define CONTROL_BITS_NUMREPS_DATA      32
