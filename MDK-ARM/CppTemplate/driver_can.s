	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-m4
	.eabi_attribute	6, 13	@ Tag_CPU_arch
	.eabi_attribute	7, 77	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 0	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	fpv4-sp-d16
	.eabi_attribute	27, 1	@ Tag_ABI_HardFP_use
	.eabi_attribute	36, 1	@ Tag_FP_HP_extension
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 2	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 2	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 1	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"driver_can.cpp"
	.file	1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include" "stdint.h"
	.file	2 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc\\stm32f4xx_hal_can.h"
	.file	3 "E:\\RP\\CppTemplate\\MDK-ARM" "../User/drive/src/driver_can.cpp"
	.file	4 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/CMSIS/Device/ST/STM32F4xx/Include\\stm32f4xx.h"
	.file	5 "E:\\RP\\CppTemplate\\MDK-ARM" "../User/drive/inc\\driver_can.hpp"
	.file	6 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include" "stddef.h"
	.section	.text._ZN11CANInstanceC2EP19__CAN_HandleTypeDefjjPFvvE,"ax",%progbits
	.hidden	_ZN11CANInstanceC2EP19__CAN_HandleTypeDefjjPFvvE @ -- Begin function _ZN11CANInstanceC2EP19__CAN_HandleTypeDefjjPFvvE
	.globl	_ZN11CANInstanceC2EP19__CAN_HandleTypeDefjjPFvvE
	.p2align	2
	.type	_ZN11CANInstanceC2EP19__CAN_HandleTypeDefjjPFvvE,%function
	.code	16                              @ @_ZN11CANInstanceC2EP19__CAN_HandleTypeDefjjPFvvE
	.thumb_func
_ZN11CANInstanceC2EP19__CAN_HandleTypeDefjjPFvvE:
.Lfunc_begin0:
	.loc	3 26 0                          @ ../User/drive/src/driver_can.cpp:26:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#32
	sub	sp, #32
	.cfi_def_cfa_offset 40
	ldr.w	r12, [sp, #40]
	str	r0, [sp, #24]
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	ldr	r1, [sp, #24]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r1, [sp, #28]
.Ltmp0:
	.loc	3 24 20 prologue_end            @ ../User/drive/src/driver_can.cpp:24:20
	ldr	r0, [sp, #20]
	.loc	3 24 8 is_stmt 0                @ ../User/drive/src/driver_can.cpp:24:8
	str	r0, [r1]
	.loc	3 25 15 is_stmt 1               @ ../User/drive/src/driver_can.cpp:25:15
	ldr	r0, [sp, #16]
	.loc	3 25 8 is_stmt 0                @ ../User/drive/src/driver_can.cpp:25:8
	str	r0, [r1, #28]
	.loc	3 25 30                         @ ../User/drive/src/driver_can.cpp:25:30
	ldr	r0, [sp, #12]
	.loc	3 25 23                         @ ../User/drive/src/driver_can.cpp:25:23
	str	r0, [r1, #44]
	.loc	3 26 29 is_stmt 1               @ ../User/drive/src/driver_can.cpp:26:29
	ldr	r0, [sp, #40]
	.loc	3 26 8 is_stmt 0                @ ../User/drive/src/driver_can.cpp:26:8
	str	r0, [r1, #60]
.Ltmp1:
	.loc	3 27 7 is_stmt 1                @ ../User/drive/src/driver_can.cpp:27:7
	movw	r0, :lower16:_ZN11CANInstance12can_ins_cnt_E
	movt	r0, :upper16:_ZN11CANInstance12can_ins_cnt_E
	ldrb	r0, [r0]
.Ltmp2:
	.loc	3 27 6 is_stmt 0                @ ../User/drive/src/driver_can.cpp:27:6
	cbnz	r0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
.Ltmp3:
	.loc	3 28 3 is_stmt 1                @ ../User/drive/src/driver_can.cpp:28:3
	bl	_Z9CAN1_Initv
	.loc	3 29 3                          @ ../User/drive/src/driver_can.cpp:29:3
	bl	_Z9CAN2_Initv
	.loc	3 30 2                          @ ../User/drive/src/driver_can.cpp:30:2
	b	.LBB0_2
.Ltmp4:
.LBB0_2:
	.loc	3 31 6                          @ ../User/drive/src/driver_can.cpp:31:6
	movw	r0, :lower16:_ZN11CANInstance12can_ins_cnt_E
	movt	r0, :upper16:_ZN11CANInstance12can_ins_cnt_E
	ldrb	r0, [r0]
.Ltmp5:
	.loc	3 31 6 is_stmt 0                @ ../User/drive/src/driver_can.cpp:31:6
	cmp	r0, #13
	blt	.LBB0_5
	b	.LBB0_3
.LBB0_3:
.Ltmp6:
	.loc	3 32 3 is_stmt 1                @ ../User/drive/src/driver_can.cpp:32:3
	b	.LBB0_4
.LBB0_4:                                @ =>This Inner Loop Header: Depth=1
	.loc	3 33 4                          @ ../User/drive/src/driver_can.cpp:33:4
	b	.LBB0_4
.Ltmp7:
.LBB0_5:
	.loc	3 0 4 is_stmt 0                 @ ../User/drive/src/driver_can.cpp:0:4
	movs	r0, #0
.Ltmp8:
	.loc	3 35 14 is_stmt 1               @ ../User/drive/src/driver_can.cpp:35:14
	str	r0, [sp, #8]
	.loc	3 35 7 is_stmt 0                @ ../User/drive/src/driver_can.cpp:35:7
	b	.LBB0_6
.LBB0_6:                                @ =>This Inner Loop Header: Depth=1
.Ltmp9:
	.loc	3 35 21                         @ ../User/drive/src/driver_can.cpp:35:21
	ldr	r0, [sp, #8]
	.loc	3 35 25                         @ ../User/drive/src/driver_can.cpp:35:25
	movw	r1, :lower16:_ZN11CANInstance12can_ins_cnt_E
	movt	r1, :upper16:_ZN11CANInstance12can_ins_cnt_E
	ldrb	r1, [r1]
.Ltmp10:
	.loc	3 35 2                          @ ../User/drive/src/driver_can.cpp:35:2
	cmp	r0, r1
	bhs	.LBB0_13
	b	.LBB0_7
.LBB0_7:                                @   in Loop: Header=BB0_6 Depth=1
.Ltmp11:
	.loc	3 36 20 is_stmt 1               @ ../User/drive/src/driver_can.cpp:36:20
	ldr	r1, [sp, #8]
	.loc	3 36 7 is_stmt 0                @ ../User/drive/src/driver_can.cpp:36:7
	movw	r0, :lower16:_ZL12can_instance
	movt	r0, :upper16:_ZL12can_instance
	ldr.w	r0, [r0, r1, lsl #2]
	.loc	3 36 24                         @ ../User/drive/src/driver_can.cpp:36:24
	ldr	r0, [r0, #44]
	.loc	3 36 34                         @ ../User/drive/src/driver_can.cpp:36:34
	ldr	r1, [sp, #12]
	.loc	3 36 40                         @ ../User/drive/src/driver_can.cpp:36:40
	cmp	r0, r1
	bne	.LBB0_11
	b	.LBB0_8
.LBB0_8:                                @   in Loop: Header=BB0_6 Depth=1
	.loc	3 37 17 is_stmt 1               @ ../User/drive/src/driver_can.cpp:37:17
	ldr	r1, [sp, #8]
	.loc	3 37 4 is_stmt 0                @ ../User/drive/src/driver_can.cpp:37:4
	movw	r0, :lower16:_ZL12can_instance
	movt	r0, :upper16:_ZL12can_instance
	ldr.w	r0, [r0, r1, lsl #2]
	.loc	3 37 21                         @ ../User/drive/src/driver_can.cpp:37:21
	ldr	r0, [r0]
	.loc	3 37 36                         @ ../User/drive/src/driver_can.cpp:37:36
	ldr	r1, [sp, #20]
.Ltmp12:
	.loc	3 36 7 is_stmt 1                @ ../User/drive/src/driver_can.cpp:36:7
	cmp	r0, r1
	bne	.LBB0_11
	b	.LBB0_9
.LBB0_9:
.Ltmp13:
	.loc	3 38 4                          @ ../User/drive/src/driver_can.cpp:38:4
	b	.LBB0_10
.LBB0_10:                               @ =>This Inner Loop Header: Depth=1
	.loc	3 39 5                          @ ../User/drive/src/driver_can.cpp:39:5
	b	.LBB0_10
.Ltmp14:
.LBB0_11:                               @   in Loop: Header=BB0_6 Depth=1
	.loc	3 41 2                          @ ../User/drive/src/driver_can.cpp:41:2
	b	.LBB0_12
.Ltmp15:
.LBB0_12:                               @   in Loop: Header=BB0_6 Depth=1
	.loc	3 35 53                         @ ../User/drive/src/driver_can.cpp:35:53
	ldr	r0, [sp, #8]
	adds	r0, #1
	str	r0, [sp, #8]
	.loc	3 35 2 is_stmt 0                @ ../User/drive/src/driver_can.cpp:35:2
	b	.LBB0_6
.Ltmp16:
.LBB0_13:
	.loc	3 42 21 is_stmt 1               @ ../User/drive/src/driver_can.cpp:42:21
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [r0, #28]
	.loc	3 42 19 is_stmt 0               @ ../User/drive/src/driver_can.cpp:42:19
	str	r1, [r0, #4]
	movs	r1, #0
	.loc	3 43 19 is_stmt 1               @ ../User/drive/src/driver_can.cpp:43:19
	str	r1, [r0, #8]
	movs	r2, #8
	.loc	3 44 17                         @ ../User/drive/src/driver_can.cpp:44:17
	str	r2, [r0, #20]
	.loc	3 45 17                         @ ../User/drive/src/driver_can.cpp:45:17
	str	r1, [r0, #12]
	.loc	3 46 17                         @ ../User/drive/src/driver_can.cpp:46:17
	str	r1, [r0, #16]
	.loc	3 47 40                         @ ../User/drive/src/driver_can.cpp:47:40
	movw	r3, :lower16:_ZN11CANInstance12can_ins_cnt_E
	movt	r3, :upper16:_ZN11CANInstance12can_ins_cnt_E
	ldrb	r2, [r3]
	adds	r1, r2, #1
	strb	r1, [r3]
	.loc	3 47 2 is_stmt 0                @ ../User/drive/src/driver_can.cpp:47:2
	movw	r1, :lower16:_ZL12can_instance
	movt	r1, :upper16:_ZL12can_instance
	.loc	3 47 44                         @ ../User/drive/src/driver_can.cpp:47:44
	str.w	r0, [r1, r2, lsl #2]
.Ltmp17:
	.loc	3 48 1 is_stmt 1                @ ../User/drive/src/driver_can.cpp:48:1
	ldr	r0, [sp, #28]
	add	sp, #32
	pop	{r7, pc}
.Ltmp18:
.Lfunc_end0:
	.size	_ZN11CANInstanceC2EP19__CAN_HandleTypeDefjjPFvvE, .Lfunc_end0-_ZN11CANInstanceC2EP19__CAN_HandleTypeDefjjPFvvE
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text._Z9CAN1_Initv,"ax",%progbits
	.hidden	_Z9CAN1_Initv                   @ -- Begin function _Z9CAN1_Initv
	.globl	_Z9CAN1_Initv
	.p2align	2
	.type	_Z9CAN1_Initv,%function
	.code	16                              @ @_Z9CAN1_Initv
	.thumb_func
_Z9CAN1_Initv:
.Lfunc_begin1:
	.loc	3 59 0                          @ ../User/drive/src/driver_can.cpp:59:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#48
	sub	sp, #48
	.cfi_def_cfa_offset 56
	add	r0, sp, #8
.Ltmp19:
	.loc	3 62 2 prologue_end             @ ../User/drive/src/driver_can.cpp:62:2
	str	r0, [sp]                        @ 4-byte Spill
	bl	_Z20CAN_FilterParamsInitP17CAN_FilterTypeDef
	ldr	r1, [sp]                        @ 4-byte Reload
	.loc	3 63 2                          @ ../User/drive/src/driver_can.cpp:63:2
	movw	r0, :lower16:hcan1
	movt	r0, :upper16:hcan1
	str	r0, [sp, #4]                    @ 4-byte Spill
	bl	HAL_CAN_ConfigFilter
                                        @ kill: def $r1 killed $r0
	.loc	3 65 2                          @ ../User/drive/src/driver_can.cpp:65:2
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	movs	r1, #2
	bl	HAL_CAN_ActivateNotification
                                        @ kill: def $r1 killed $r0
	.loc	3 67 2                          @ ../User/drive/src/driver_can.cpp:67:2
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	bl	HAL_CAN_Start
	.loc	3 68 1                          @ ../User/drive/src/driver_can.cpp:68:1
	add	sp, #48
	pop	{r7, pc}
.Ltmp20:
.Lfunc_end1:
	.size	_Z9CAN1_Initv, .Lfunc_end1-_Z9CAN1_Initv
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text._Z9CAN2_Initv,"ax",%progbits
	.hidden	_Z9CAN2_Initv                   @ -- Begin function _Z9CAN2_Initv
	.globl	_Z9CAN2_Initv
	.p2align	2
	.type	_Z9CAN2_Initv,%function
	.code	16                              @ @_Z9CAN2_Initv
	.thumb_func
_Z9CAN2_Initv:
.Lfunc_begin2:
	.loc	3 74 0                          @ ../User/drive/src/driver_can.cpp:74:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#48
	sub	sp, #48
	.cfi_def_cfa_offset 56
	add	r0, sp, #8
.Ltmp21:
	.loc	3 77 2 prologue_end             @ ../User/drive/src/driver_can.cpp:77:2
	str	r0, [sp]                        @ 4-byte Spill
	bl	_Z20CAN_FilterParamsInitP17CAN_FilterTypeDef
	ldr	r1, [sp]                        @ 4-byte Reload
	.loc	3 78 2                          @ ../User/drive/src/driver_can.cpp:78:2
	movw	r0, :lower16:hcan2
	movt	r0, :upper16:hcan2
	str	r0, [sp, #4]                    @ 4-byte Spill
	bl	HAL_CAN_ConfigFilter
                                        @ kill: def $r1 killed $r0
	.loc	3 80 2                          @ ../User/drive/src/driver_can.cpp:80:2
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	movs	r1, #2
	bl	HAL_CAN_ActivateNotification
                                        @ kill: def $r1 killed $r0
	.loc	3 82 2                          @ ../User/drive/src/driver_can.cpp:82:2
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	bl	HAL_CAN_Start
	.loc	3 83 1                          @ ../User/drive/src/driver_can.cpp:83:1
	add	sp, #48
	pop	{r7, pc}
.Ltmp22:
.Lfunc_end2:
	.size	_Z9CAN2_Initv, .Lfunc_end2-_Z9CAN2_Initv
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text._Z20CAN_FilterParamsInitP17CAN_FilterTypeDef,"ax",%progbits
	.hidden	_Z20CAN_FilterParamsInitP17CAN_FilterTypeDef @ -- Begin function _Z20CAN_FilterParamsInitP17CAN_FilterTypeDef
	.globl	_Z20CAN_FilterParamsInitP17CAN_FilterTypeDef
	.p2align	2
	.type	_Z20CAN_FilterParamsInitP17CAN_FilterTypeDef,%function
	.code	16                              @ @_Z20CAN_FilterParamsInitP17CAN_FilterTypeDef
	.thumb_func
_Z20CAN_FilterParamsInitP17CAN_FilterTypeDef:
.Lfunc_begin3:
	.loc	3 89 0                          @ ../User/drive/src/driver_can.cpp:89:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#4
	sub	sp, #4
	.cfi_def_cfa_offset 4
	str	r0, [sp]
.Ltmp23:
	.loc	3 90 2 prologue_end             @ ../User/drive/src/driver_can.cpp:90:2
	ldr	r1, [sp]
	movs	r0, #0
	.loc	3 90 30 is_stmt 0               @ ../User/drive/src/driver_can.cpp:90:30
	str	r0, [r1]
	.loc	3 91 2 is_stmt 1                @ ../User/drive/src/driver_can.cpp:91:2
	ldr	r1, [sp]
	.loc	3 91 29 is_stmt 0               @ ../User/drive/src/driver_can.cpp:91:29
	str	r0, [r1, #4]
	.loc	3 92 2 is_stmt 1                @ ../User/drive/src/driver_can.cpp:92:2
	ldr	r1, [sp]
	.loc	3 92 34 is_stmt 0               @ ../User/drive/src/driver_can.cpp:92:34
	str	r0, [r1, #8]
	.loc	3 93 2 is_stmt 1                @ ../User/drive/src/driver_can.cpp:93:2
	ldr	r1, [sp]
	.loc	3 93 33 is_stmt 0               @ ../User/drive/src/driver_can.cpp:93:33
	str	r0, [r1, #12]
	.loc	3 94 2 is_stmt 1                @ ../User/drive/src/driver_can.cpp:94:2
	ldr	r1, [sp]
	.loc	3 94 38 is_stmt 0               @ ../User/drive/src/driver_can.cpp:94:38
	str	r0, [r1, #16]
	.loc	3 95 2 is_stmt 1                @ ../User/drive/src/driver_can.cpp:95:2
	ldr	r1, [sp]
	.loc	3 95 28 is_stmt 0               @ ../User/drive/src/driver_can.cpp:95:28
	str	r0, [r1, #20]
	.loc	3 96 2 is_stmt 1                @ ../User/drive/src/driver_can.cpp:96:2
	ldr	r1, [sp]
	.loc	3 96 28 is_stmt 0               @ ../User/drive/src/driver_can.cpp:96:28
	str	r0, [r1, #24]
	.loc	3 97 2 is_stmt 1                @ ../User/drive/src/driver_can.cpp:97:2
	ldr	r2, [sp]
	movs	r1, #1
	.loc	3 97 29 is_stmt 0               @ ../User/drive/src/driver_can.cpp:97:29
	str	r1, [r2, #28]
	.loc	3 98 2 is_stmt 1                @ ../User/drive/src/driver_can.cpp:98:2
	ldr	r2, [sp]
	.loc	3 98 34 is_stmt 0               @ ../User/drive/src/driver_can.cpp:98:34
	str	r1, [r2, #32]
	.loc	3 99 2 is_stmt 1                @ ../User/drive/src/driver_can.cpp:99:2
	ldr	r1, [sp]
	.loc	3 99 38 is_stmt 0               @ ../User/drive/src/driver_can.cpp:99:38
	str	r0, [r1, #36]
	.loc	3 100 1 is_stmt 1               @ ../User/drive/src/driver_can.cpp:100:1
	add	sp, #4
	bx	lr
.Ltmp24:
.Lfunc_end3:
	.size	_Z20CAN_FilterParamsInitP17CAN_FilterTypeDef, .Lfunc_end3-_Z20CAN_FilterParamsInitP17CAN_FilterTypeDef
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text._Z19HAL_CAN_TxHeadeInitt,"ax",%progbits
	.hidden	_Z19HAL_CAN_TxHeadeInitt        @ -- Begin function _Z19HAL_CAN_TxHeadeInitt
	.globl	_Z19HAL_CAN_TxHeadeInitt
	.p2align	2
	.type	_Z19HAL_CAN_TxHeadeInitt,%function
	.code	16                              @ @_Z19HAL_CAN_TxHeadeInitt
	.thumb_func
_Z19HAL_CAN_TxHeadeInitt:
.Lfunc_begin4:
	.loc	3 106 0                         @ ../User/drive/src/driver_can.cpp:106:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#4
	sub	sp, #4
	.cfi_def_cfa_offset 4
                                        @ kill: def $r1 killed $r0
	strh.w	r0, [sp, #2]
.Ltmp25:
	.loc	3 107 26 prologue_end           @ ../User/drive/src/driver_can.cpp:107:26
	ldrh.w	r0, [sp, #2]
	.loc	3 107 24 is_stmt 0              @ ../User/drive/src/driver_can.cpp:107:24
	movw	r1, :lower16:CAN_TxHeadeType
	movt	r1, :upper16:CAN_TxHeadeType
	str	r0, [r1]
	movs	r0, #0
	.loc	3 108 24 is_stmt 1              @ ../User/drive/src/driver_can.cpp:108:24
	str	r0, [r1, #4]
	movs	r2, #8
	.loc	3 109 22                        @ ../User/drive/src/driver_can.cpp:109:22
	str	r2, [r1, #16]
	.loc	3 110 22                        @ ../User/drive/src/driver_can.cpp:110:22
	str	r0, [r1, #8]
	.loc	3 111 22                        @ ../User/drive/src/driver_can.cpp:111:22
	str	r0, [r1, #12]
	.loc	3 112 1                         @ ../User/drive/src/driver_can.cpp:112:1
	add	sp, #4
	bx	lr
.Ltmp26:
.Lfunc_end4:
	.size	_Z19HAL_CAN_TxHeadeInitt, .Lfunc_end4-_Z19HAL_CAN_TxHeadeInitt
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.HAL_CAN_RxFifo0MsgPendingCallback,"ax",%progbits
	.hidden	HAL_CAN_RxFifo0MsgPendingCallback @ -- Begin function HAL_CAN_RxFifo0MsgPendingCallback
	.globl	HAL_CAN_RxFifo0MsgPendingCallback
	.p2align	2
	.type	HAL_CAN_RxFifo0MsgPendingCallback,%function
	.code	16                              @ @HAL_CAN_RxFifo0MsgPendingCallback
	.thumb_func
HAL_CAN_RxFifo0MsgPendingCallback:
.Lfunc_begin5:
	.loc	3 120 0                         @ ../User/drive/src/driver_can.cpp:120:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#4
	sub	sp, #4
	.cfi_def_cfa_offset 4
	str	r0, [sp]
.Ltmp27:
	.loc	3 122 1 prologue_end            @ ../User/drive/src/driver_can.cpp:122:1
	add	sp, #4
	bx	lr
.Ltmp28:
.Lfunc_end5:
	.size	HAL_CAN_RxFifo0MsgPendingCallback, .Lfunc_end5-HAL_CAN_RxFifo0MsgPendingCallback
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.hidden	CAN_FillterType                 @ @CAN_FillterType
	.type	CAN_FillterType,%object
	.section	.bss.CAN_FillterType,"aw",%nobits
	.globl	CAN_FillterType
	.p2align	2, 0x0
CAN_FillterType:
	.zero	40
	.size	CAN_FillterType, 40

	.hidden	CAN_TxHeadeType                 @ @CAN_TxHeadeType
	.type	CAN_TxHeadeType,%object
	.section	.bss.CAN_TxHeadeType,"aw",%nobits
	.globl	CAN_TxHeadeType
	.p2align	2, 0x0
CAN_TxHeadeType:
	.zero	24
	.size	CAN_TxHeadeType, 24

	.hidden	_ZN11CANInstance12can_ins_cnt_E @ @_ZN11CANInstance12can_ins_cnt_E
	.type	_ZN11CANInstance12can_ins_cnt_E,%object
	.section	.bss._ZN11CANInstance12can_ins_cnt_E,"aw",%nobits
	.globl	_ZN11CANInstance12can_ins_cnt_E
_ZN11CANInstance12can_ins_cnt_E:
	.byte	0                               @ 0x0
	.size	_ZN11CANInstance12can_ins_cnt_E, 1

	.hidden	_ZN11CANInstance16can_ins_cnt_max_E @ @_ZN11CANInstance16can_ins_cnt_max_E
	.type	_ZN11CANInstance16can_ins_cnt_max_E,%object
	.section	.rodata._ZN11CANInstance16can_ins_cnt_max_E,"a",%progbits
	.globl	_ZN11CANInstance16can_ins_cnt_max_E
_ZN11CANInstance16can_ins_cnt_max_E:
	.byte	12                              @ 0xc
	.size	_ZN11CANInstance16can_ins_cnt_max_E, 1

	.type	_ZL12can_instance,%object       @ @_ZL12can_instance
	.section	.bss._ZL12can_instance,"aw",%nobits
	.p2align	2, 0x0
_ZL12can_instance:
	.zero	48
	.size	_ZL12can_instance, 48

	.section	.debug_abbrev,"",%progbits
	.byte	1                               @ Abbreviation Code
	.byte	17                              @ DW_TAG_compile_unit
	.byte	1                               @ DW_CHILDREN_yes
	.byte	37                              @ DW_AT_producer
	.byte	14                              @ DW_FORM_strp
	.byte	19                              @ DW_AT_language
	.byte	5                               @ DW_FORM_data2
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	16                              @ DW_AT_stmt_list
	.byte	23                              @ DW_FORM_sec_offset
	.byte	27                              @ DW_AT_comp_dir
	.byte	14                              @ DW_FORM_strp
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	85                              @ DW_AT_ranges
	.byte	23                              @ DW_FORM_sec_offset
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	2                               @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	3                               @ Abbreviation Code
	.byte	22                              @ DW_TAG_typedef
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	4                               @ Abbreviation Code
	.byte	19                              @ DW_TAG_structure_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	54                              @ DW_AT_calling_convention
	.byte	11                              @ DW_FORM_data1
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	5                               @ Abbreviation Code
	.byte	13                              @ DW_TAG_member
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	56                              @ DW_AT_data_member_location
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	6                               @ Abbreviation Code
	.byte	36                              @ DW_TAG_base_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	62                              @ DW_AT_encoding
	.byte	11                              @ DW_FORM_data1
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	7                               @ Abbreviation Code
	.byte	4                               @ DW_TAG_enumeration_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	8                               @ Abbreviation Code
	.byte	40                              @ DW_TAG_enumerator
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	28                              @ DW_AT_const_value
	.byte	15                              @ DW_FORM_udata
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	9                               @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	71                              @ DW_AT_specification
	.byte	19                              @ DW_FORM_ref4
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	110                             @ DW_AT_linkage_name
	.byte	14                              @ DW_FORM_strp
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	10                              @ Abbreviation Code
	.byte	2                               @ DW_TAG_class_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	54                              @ DW_AT_calling_convention
	.byte	11                              @ DW_FORM_data1
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	11                              @ Abbreviation Code
	.byte	13                              @ DW_TAG_member
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	60                              @ DW_AT_declaration
	.byte	25                              @ DW_FORM_flag_present
	.byte	50                              @ DW_AT_accessibility
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	12                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	60                              @ DW_AT_declaration
	.byte	25                              @ DW_FORM_flag_present
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	50                              @ DW_AT_accessibility
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	13                              @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	52                              @ DW_AT_artificial
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	14                              @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	15                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	110                             @ DW_AT_linkage_name
	.byte	14                              @ DW_FORM_strp
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	60                              @ DW_AT_declaration
	.byte	25                              @ DW_FORM_flag_present
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	50                              @ DW_AT_accessibility
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	16                              @ Abbreviation Code
	.byte	15                              @ DW_TAG_pointer_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	17                              @ Abbreviation Code
	.byte	19                              @ DW_TAG_structure_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	60                              @ DW_AT_declaration
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	18                              @ Abbreviation Code
	.byte	1                               @ DW_TAG_array_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	19                              @ Abbreviation Code
	.byte	33                              @ DW_TAG_subrange_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	55                              @ DW_AT_count
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	20                              @ Abbreviation Code
	.byte	36                              @ DW_TAG_base_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	62                              @ DW_AT_encoding
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	21                              @ Abbreviation Code
	.byte	21                              @ DW_TAG_subroutine_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	22                              @ Abbreviation Code
	.byte	38                              @ DW_TAG_const_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	23                              @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	110                             @ DW_AT_linkage_name
	.byte	14                              @ DW_FORM_strp
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	24                              @ Abbreviation Code
	.byte	8                               @ DW_TAG_imported_declaration
	.byte	0                               @ DW_CHILDREN_no
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	24                              @ DW_AT_import
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	25                              @ Abbreviation Code
	.byte	8                               @ DW_TAG_imported_declaration
	.byte	0                               @ DW_CHILDREN_no
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	24                              @ DW_AT_import
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	26                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	64                              @ DW_AT_frame_base
	.byte	24                              @ DW_FORM_exprloc
	.byte	100                             @ DW_AT_object_pointer
	.byte	19                              @ DW_FORM_ref4
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	110                             @ DW_AT_linkage_name
	.byte	14                              @ DW_FORM_strp
	.byte	71                              @ DW_AT_specification
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	27                              @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	52                              @ DW_AT_artificial
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	28                              @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	29                              @ Abbreviation Code
	.byte	11                              @ DW_TAG_lexical_block
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	30                              @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	31                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	64                              @ DW_AT_frame_base
	.byte	24                              @ DW_FORM_exprloc
	.byte	110                             @ DW_AT_linkage_name
	.byte	14                              @ DW_FORM_strp
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	32                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	64                              @ DW_AT_frame_base
	.byte	24                              @ DW_FORM_exprloc
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	0                               @ EOM(3)
	.section	.debug_info,"",%progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 @ Length of Unit
.Ldebug_info_start0:
	.short	4                               @ DWARF version number
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	4                               @ Address Size (in bytes)
	.byte	1                               @ Abbrev [1] 0xb:0x645 DW_TAG_compile_unit
	.long	.Linfo_string0                  @ DW_AT_producer
	.short	26                              @ DW_AT_language
	.long	.Linfo_string1                  @ DW_AT_name
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.long	.Linfo_string2                  @ DW_AT_comp_dir
	.long	0                               @ DW_AT_low_pc
	.long	.Ldebug_ranges0                 @ DW_AT_ranges
	.byte	2                               @ Abbrev [2] 0x26:0x11 DW_TAG_variable
	.long	.Linfo_string3                  @ DW_AT_name
	.long	55                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.byte	15                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	CAN_FillterType
	.byte	3                               @ Abbrev [3] 0x37:0xb DW_TAG_typedef
	.long	66                              @ DW_AT_type
	.long	.Linfo_string16                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	146                             @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x42:0x7e DW_TAG_structure_type
	.byte	5                               @ DW_AT_calling_convention
	.byte	40                              @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.byte	101                             @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0x47:0xc DW_TAG_member
	.long	.Linfo_string4                  @ DW_AT_name
	.long	192                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	103                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x53:0xc DW_TAG_member
	.long	.Linfo_string7                  @ DW_AT_name
	.long	192                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	107                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x5f:0xc DW_TAG_member
	.long	.Linfo_string8                  @ DW_AT_name
	.long	192                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	111                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x6b:0xc DW_TAG_member
	.long	.Linfo_string9                  @ DW_AT_name
	.long	192                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	116                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x77:0xc DW_TAG_member
	.long	.Linfo_string10                 @ DW_AT_name
	.long	192                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	121                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x83:0xc DW_TAG_member
	.long	.Linfo_string11                 @ DW_AT_name
	.long	192                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	124                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x8f:0xc DW_TAG_member
	.long	.Linfo_string12                 @ DW_AT_name
	.long	192                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	130                             @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x9b:0xc DW_TAG_member
	.long	.Linfo_string13                 @ DW_AT_name
	.long	192                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	133                             @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xa7:0xc DW_TAG_member
	.long	.Linfo_string14                 @ DW_AT_name
	.long	192                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	136                             @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xb3:0xc DW_TAG_member
	.long	.Linfo_string15                 @ DW_AT_name
	.long	192                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	139                             @ DW_AT_decl_line
	.byte	36                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	3                               @ Abbrev [3] 0xc0:0xb DW_TAG_typedef
	.long	203                             @ DW_AT_type
	.long	.Linfo_string6                  @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	64                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0xcb:0x7 DW_TAG_base_type
	.long	.Linfo_string5                  @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	2                               @ Abbrev [2] 0xd2:0x11 DW_TAG_variable
	.long	.Linfo_string17                 @ DW_AT_name
	.long	227                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.byte	16                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	CAN_TxHeadeType
	.byte	3                               @ Abbrev [3] 0xe3:0xb DW_TAG_typedef
	.long	238                             @ DW_AT_type
	.long	.Linfo_string28                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	174                             @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0xee:0x4e DW_TAG_structure_type
	.byte	5                               @ DW_AT_calling_convention
	.byte	24                              @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.byte	151                             @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0xf3:0xc DW_TAG_member
	.long	.Linfo_string18                 @ DW_AT_name
	.long	192                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	153                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xff:0xc DW_TAG_member
	.long	.Linfo_string19                 @ DW_AT_name
	.long	192                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	156                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x10b:0xc DW_TAG_member
	.long	.Linfo_string20                 @ DW_AT_name
	.long	192                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	159                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x117:0xc DW_TAG_member
	.long	.Linfo_string21                 @ DW_AT_name
	.long	192                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	162                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x123:0xc DW_TAG_member
	.long	.Linfo_string22                 @ DW_AT_name
	.long	192                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	165                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x12f:0xc DW_TAG_member
	.long	.Linfo_string23                 @ DW_AT_name
	.long	316                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	168                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	3                               @ Abbrev [3] 0x13c:0xb DW_TAG_typedef
	.long	327                             @ DW_AT_type
	.long	.Linfo_string27                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	194                             @ DW_AT_decl_line
	.byte	7                               @ Abbrev [7] 0x147:0x15 DW_TAG_enumeration_type
	.long	348                             @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	4                               @ DW_AT_decl_file
	.byte	190                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x14f:0x6 DW_TAG_enumerator
	.long	.Linfo_string25                 @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	8                               @ Abbrev [8] 0x155:0x6 DW_TAG_enumerator
	.long	.Linfo_string26                 @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0x15c:0x7 DW_TAG_base_type
	.long	.Linfo_string24                 @ DW_AT_name
	.byte	8                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	9                               @ Abbrev [9] 0x163:0xf DW_TAG_variable
	.long	487                             @ DW_AT_specification
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	_ZN11CANInstance12can_ins_cnt_E
	.long	.Linfo_string47                 @ DW_AT_linkage_name
	.byte	10                              @ Abbrev [10] 0x172:0xd5 DW_TAG_class_type
	.byte	5                               @ DW_AT_calling_convention
	.long	.Linfo_string44                 @ DW_AT_name
	.byte	64                              @ DW_AT_byte_size
	.byte	5                               @ DW_AT_decl_file
	.byte	33                              @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0x17b:0xc DW_TAG_member
	.long	.Linfo_string29                 @ DW_AT_name
	.long	583                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.byte	35                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x187:0xc DW_TAG_member
	.long	.Linfo_string32                 @ DW_AT_name
	.long	227                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.byte	36                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x193:0xc DW_TAG_member
	.long	.Linfo_string33                 @ DW_AT_name
	.long	192                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.byte	37                              @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x19f:0xc DW_TAG_member
	.long	.Linfo_string34                 @ DW_AT_name
	.long	192                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.byte	38                              @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x1ab:0xc DW_TAG_member
	.long	.Linfo_string35                 @ DW_AT_name
	.long	604                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.byte	39                              @ DW_AT_decl_line
	.byte	36                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x1b7:0xc DW_TAG_member
	.long	.Linfo_string38                 @ DW_AT_name
	.long	192                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.byte	40                              @ DW_AT_decl_line
	.byte	44                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x1c3:0xc DW_TAG_member
	.long	.Linfo_string39                 @ DW_AT_name
	.long	616                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.byte	41                              @ DW_AT_decl_line
	.byte	48                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x1cf:0xc DW_TAG_member
	.long	.Linfo_string40                 @ DW_AT_name
	.long	604                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.byte	42                              @ DW_AT_decl_line
	.byte	49                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x1db:0xc DW_TAG_member
	.long	.Linfo_string41                 @ DW_AT_name
	.long	634                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.byte	43                              @ DW_AT_decl_line
	.byte	60                              @ DW_AT_data_member_location
	.byte	11                              @ Abbrev [11] 0x1e7:0xc DW_TAG_member
	.long	.Linfo_string42                 @ DW_AT_name
	.long	616                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.byte	45                              @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.byte	1                               @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	11                              @ Abbrev [11] 0x1f3:0xc DW_TAG_member
	.long	.Linfo_string43                 @ DW_AT_name
	.long	640                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.byte	1                               @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	12                              @ Abbrev [12] 0x1ff:0xe DW_TAG_subprogram
	.long	.Linfo_string44                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.byte	47                              @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	13                              @ Abbrev [13] 0x207:0x5 DW_TAG_formal_parameter
	.long	645                             @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                               @ End Of Children Mark
	.byte	12                              @ Abbrev [12] 0x20d:0x22 DW_TAG_subprogram
	.long	.Linfo_string44                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.byte	48                              @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	13                              @ Abbrev [13] 0x215:0x5 DW_TAG_formal_parameter
	.long	645                             @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	14                              @ Abbrev [14] 0x21a:0x5 DW_TAG_formal_parameter
	.long	583                             @ DW_AT_type
	.byte	14                              @ Abbrev [14] 0x21f:0x5 DW_TAG_formal_parameter
	.long	192                             @ DW_AT_type
	.byte	14                              @ Abbrev [14] 0x224:0x5 DW_TAG_formal_parameter
	.long	192                             @ DW_AT_type
	.byte	14                              @ Abbrev [14] 0x229:0x5 DW_TAG_formal_parameter
	.long	634                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	15                              @ Abbrev [15] 0x22f:0x17 DW_TAG_subprogram
	.long	.Linfo_string45                 @ DW_AT_linkage_name
	.long	.Linfo_string46                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.byte	51                              @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	13                              @ Abbrev [13] 0x23b:0x5 DW_TAG_formal_parameter
	.long	645                             @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	14                              @ Abbrev [14] 0x240:0x5 DW_TAG_formal_parameter
	.long	616                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
	.byte	16                              @ Abbrev [16] 0x247:0x5 DW_TAG_pointer_type
	.long	588                             @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x24c:0xb DW_TAG_typedef
	.long	599                             @ DW_AT_type
	.long	.Linfo_string31                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	238                             @ DW_AT_decl_line
	.byte	17                              @ Abbrev [17] 0x257:0x5 DW_TAG_structure_type
	.long	.Linfo_string30                 @ DW_AT_name
                                        @ DW_AT_declaration
	.byte	18                              @ Abbrev [18] 0x25c:0xc DW_TAG_array_type
	.long	616                             @ DW_AT_type
	.byte	19                              @ Abbrev [19] 0x261:0x6 DW_TAG_subrange_type
	.long	627                             @ DW_AT_type
	.byte	8                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	3                               @ Abbrev [3] 0x268:0xb DW_TAG_typedef
	.long	348                             @ DW_AT_type
	.long	.Linfo_string36                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	62                              @ DW_AT_decl_line
	.byte	20                              @ Abbrev [20] 0x273:0x7 DW_TAG_base_type
	.long	.Linfo_string37                 @ DW_AT_name
	.byte	8                               @ DW_AT_byte_size
	.byte	7                               @ DW_AT_encoding
	.byte	16                              @ Abbrev [16] 0x27a:0x5 DW_TAG_pointer_type
	.long	639                             @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0x27f:0x1 DW_TAG_subroutine_type
	.byte	22                              @ Abbrev [22] 0x280:0x5 DW_TAG_const_type
	.long	616                             @ DW_AT_type
	.byte	16                              @ Abbrev [16] 0x285:0x5 DW_TAG_pointer_type
	.long	370                             @ DW_AT_type
	.byte	9                               @ Abbrev [9] 0x28a:0xf DW_TAG_variable
	.long	499                             @ DW_AT_specification
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	_ZN11CANInstance16can_ins_cnt_max_E
	.long	.Linfo_string48                 @ DW_AT_linkage_name
	.byte	23                              @ Abbrev [23] 0x299:0x15 DW_TAG_variable
	.long	.Linfo_string49                 @ DW_AT_name
	.long	686                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	20                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	_ZL12can_instance
	.long	.Linfo_string50                 @ DW_AT_linkage_name
	.byte	18                              @ Abbrev [18] 0x2ae:0xc DW_TAG_array_type
	.long	698                             @ DW_AT_type
	.byte	19                              @ Abbrev [19] 0x2b3:0x6 DW_TAG_subrange_type
	.long	627                             @ DW_AT_type
	.byte	12                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	16                              @ Abbrev [16] 0x2ba:0x5 DW_TAG_pointer_type
	.long	370                             @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x2bf:0xb DW_TAG_typedef
	.long	714                             @ DW_AT_type
	.long	.Linfo_string52                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	56                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x2ca:0x7 DW_TAG_base_type
	.long	.Linfo_string51                 @ DW_AT_name
	.byte	6                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	24                              @ Abbrev [24] 0x2d1:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	275                             @ DW_AT_decl_line
	.long	703                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x2d9:0xb DW_TAG_typedef
	.long	740                             @ DW_AT_type
	.long	.Linfo_string54                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	57                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x2e4:0x7 DW_TAG_base_type
	.long	.Linfo_string53                 @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	24                              @ Abbrev [24] 0x2eb:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	276                             @ DW_AT_decl_line
	.long	729                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x2f3:0xb DW_TAG_typedef
	.long	766                             @ DW_AT_type
	.long	.Linfo_string56                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	58                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x2fe:0x7 DW_TAG_base_type
	.long	.Linfo_string55                 @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	24                              @ Abbrev [24] 0x305:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	277                             @ DW_AT_decl_line
	.long	755                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x30d:0xb DW_TAG_typedef
	.long	792                             @ DW_AT_type
	.long	.Linfo_string58                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	59                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x318:0x7 DW_TAG_base_type
	.long	.Linfo_string57                 @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	8                               @ DW_AT_byte_size
	.byte	24                              @ Abbrev [24] 0x31f:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	278                             @ DW_AT_decl_line
	.long	781                             @ DW_AT_import
	.byte	24                              @ Abbrev [24] 0x327:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	279                             @ DW_AT_decl_line
	.long	616                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x32f:0xb DW_TAG_typedef
	.long	826                             @ DW_AT_type
	.long	.Linfo_string60                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x33a:0x7 DW_TAG_base_type
	.long	.Linfo_string59                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	24                              @ Abbrev [24] 0x341:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	280                             @ DW_AT_decl_line
	.long	815                             @ DW_AT_import
	.byte	24                              @ Abbrev [24] 0x349:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	281                             @ DW_AT_decl_line
	.long	192                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x351:0xb DW_TAG_typedef
	.long	860                             @ DW_AT_type
	.long	.Linfo_string62                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	65                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x35c:0x7 DW_TAG_base_type
	.long	.Linfo_string61                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	8                               @ DW_AT_byte_size
	.byte	24                              @ Abbrev [24] 0x363:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	282                             @ DW_AT_decl_line
	.long	849                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x36b:0xb DW_TAG_typedef
	.long	714                             @ DW_AT_type
	.long	.Linfo_string63                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	71                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x376:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	283                             @ DW_AT_decl_line
	.long	875                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x37e:0xb DW_TAG_typedef
	.long	740                             @ DW_AT_type
	.long	.Linfo_string64                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	72                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x389:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	284                             @ DW_AT_decl_line
	.long	894                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x391:0xb DW_TAG_typedef
	.long	766                             @ DW_AT_type
	.long	.Linfo_string65                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	73                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x39c:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	285                             @ DW_AT_decl_line
	.long	913                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x3a4:0xb DW_TAG_typedef
	.long	792                             @ DW_AT_type
	.long	.Linfo_string66                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	74                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x3af:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	286                             @ DW_AT_decl_line
	.long	932                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x3b7:0xb DW_TAG_typedef
	.long	348                             @ DW_AT_type
	.long	.Linfo_string67                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	77                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x3c2:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	287                             @ DW_AT_decl_line
	.long	951                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x3ca:0xb DW_TAG_typedef
	.long	826                             @ DW_AT_type
	.long	.Linfo_string68                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	78                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x3d5:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	288                             @ DW_AT_decl_line
	.long	970                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x3dd:0xb DW_TAG_typedef
	.long	203                             @ DW_AT_type
	.long	.Linfo_string69                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	79                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x3e8:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	289                             @ DW_AT_decl_line
	.long	989                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x3f0:0xb DW_TAG_typedef
	.long	860                             @ DW_AT_type
	.long	.Linfo_string70                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	80                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x3fb:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	290                             @ DW_AT_decl_line
	.long	1008                            @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x403:0xb DW_TAG_typedef
	.long	766                             @ DW_AT_type
	.long	.Linfo_string71                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	85                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x40e:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	291                             @ DW_AT_decl_line
	.long	1027                            @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x416:0xb DW_TAG_typedef
	.long	766                             @ DW_AT_type
	.long	.Linfo_string72                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	86                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x421:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	292                             @ DW_AT_decl_line
	.long	1046                            @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x429:0xb DW_TAG_typedef
	.long	766                             @ DW_AT_type
	.long	.Linfo_string73                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	87                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x434:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	293                             @ DW_AT_decl_line
	.long	1065                            @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x43c:0xb DW_TAG_typedef
	.long	792                             @ DW_AT_type
	.long	.Linfo_string74                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	88                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x447:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	294                             @ DW_AT_decl_line
	.long	1084                            @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x44f:0xb DW_TAG_typedef
	.long	203                             @ DW_AT_type
	.long	.Linfo_string75                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	91                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x45a:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	295                             @ DW_AT_decl_line
	.long	1103                            @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x462:0xb DW_TAG_typedef
	.long	203                             @ DW_AT_type
	.long	.Linfo_string76                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	92                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x46d:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	296                             @ DW_AT_decl_line
	.long	1122                            @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x475:0xb DW_TAG_typedef
	.long	203                             @ DW_AT_type
	.long	.Linfo_string77                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	93                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x480:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	297                             @ DW_AT_decl_line
	.long	1141                            @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x488:0xb DW_TAG_typedef
	.long	860                             @ DW_AT_type
	.long	.Linfo_string78                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	94                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x493:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	298                             @ DW_AT_decl_line
	.long	1160                            @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x49b:0xb DW_TAG_typedef
	.long	766                             @ DW_AT_type
	.long	.Linfo_string79                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	101                             @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x4a6:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	299                             @ DW_AT_decl_line
	.long	1179                            @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x4ae:0xb DW_TAG_typedef
	.long	203                             @ DW_AT_type
	.long	.Linfo_string80                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	102                             @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x4b9:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	300                             @ DW_AT_decl_line
	.long	1198                            @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x4c1:0xb DW_TAG_typedef
	.long	792                             @ DW_AT_type
	.long	.Linfo_string81                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	106                             @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x4cc:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	301                             @ DW_AT_decl_line
	.long	1217                            @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x4d4:0xb DW_TAG_typedef
	.long	860                             @ DW_AT_type
	.long	.Linfo_string82                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	107                             @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x4df:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	302                             @ DW_AT_decl_line
	.long	1236                            @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x4e7:0xb DW_TAG_typedef
	.long	203                             @ DW_AT_type
	.long	.Linfo_string83                 @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
	.byte	25                              @ Abbrev [25] 0x4f2:0x7 DW_TAG_imported_declaration
	.byte	6                               @ DW_AT_decl_file
	.byte	107                             @ DW_AT_decl_line
	.long	1255                            @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x4f9:0xb DW_TAG_typedef
	.long	766                             @ DW_AT_type
	.long	.Linfo_string84                 @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	38                              @ DW_AT_decl_line
	.byte	25                              @ Abbrev [25] 0x504:0x7 DW_TAG_imported_declaration
	.byte	6                               @ DW_AT_decl_file
	.byte	108                             @ DW_AT_decl_line
	.long	1273                            @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x50b:0xb DW_TAG_typedef
	.long	1302                            @ DW_AT_type
	.long	.Linfo_string86                 @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	95                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x516:0x7 DW_TAG_base_type
	.long	.Linfo_string85                 @ DW_AT_name
	.byte	4                               @ DW_AT_encoding
	.byte	8                               @ DW_AT_byte_size
	.byte	25                              @ Abbrev [25] 0x51d:0x7 DW_TAG_imported_declaration
	.byte	6                               @ DW_AT_decl_file
	.byte	110                             @ DW_AT_decl_line
	.long	1291                            @ DW_AT_import
	.byte	26                              @ Abbrev [26] 0x524:0x76 DW_TAG_subprogram
	.long	.Lfunc_begin0                   @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	1341                            @ DW_AT_object_pointer
	.byte	3                               @ DW_AT_decl_file
	.byte	21                              @ DW_AT_decl_line
	.long	.Linfo_string87                 @ DW_AT_linkage_name
	.long	525                             @ DW_AT_specification
	.byte	27                              @ Abbrev [27] 0x53d:0xc DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	24
	.long	.Linfo_string97                 @ DW_AT_name
	.long	698                             @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	28                              @ Abbrev [28] 0x549:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	20
	.long	.Linfo_string98                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	21                              @ DW_AT_decl_line
	.long	583                             @ DW_AT_type
	.byte	28                              @ Abbrev [28] 0x557:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string99                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	22                              @ DW_AT_decl_line
	.long	192                             @ DW_AT_type
	.byte	28                              @ Abbrev [28] 0x565:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	12
	.long	.Linfo_string100                @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	22                              @ DW_AT_decl_line
	.long	192                             @ DW_AT_type
	.byte	28                              @ Abbrev [28] 0x573:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	40
	.long	.Linfo_string101                @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	23                              @ DW_AT_decl_line
	.long	634                             @ DW_AT_type
	.byte	29                              @ Abbrev [29] 0x581:0x18 DW_TAG_lexical_block
	.long	.Ltmp8                          @ DW_AT_low_pc
	.long	.Ltmp16-.Ltmp8                  @ DW_AT_high_pc
	.byte	30                              @ Abbrev [30] 0x58a:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string102                @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	35                              @ DW_AT_decl_line
	.long	1255                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
	.byte	31                              @ Abbrev [31] 0x59a:0x24 DW_TAG_subprogram
	.long	.Lfunc_begin1                   @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string88                 @ DW_AT_linkage_name
	.long	.Linfo_string89                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	59                              @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	30                              @ Abbrev [30] 0x5af:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string103                @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	60                              @ DW_AT_decl_line
	.long	55                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	31                              @ Abbrev [31] 0x5be:0x24 DW_TAG_subprogram
	.long	.Lfunc_begin2                   @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string90                 @ DW_AT_linkage_name
	.long	.Linfo_string91                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	74                              @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	30                              @ Abbrev [30] 0x5d3:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string103                @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	75                              @ DW_AT_decl_line
	.long	55                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	31                              @ Abbrev [31] 0x5e2:0x24 DW_TAG_subprogram
	.long	.Lfunc_begin3                   @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string92                 @ DW_AT_linkage_name
	.long	.Linfo_string93                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	89                              @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	28                              @ Abbrev [28] 0x5f7:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string103                @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	89                              @ DW_AT_decl_line
	.long	1610                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	31                              @ Abbrev [31] 0x606:0x24 DW_TAG_subprogram
	.long	.Lfunc_begin4                   @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string94                 @ DW_AT_linkage_name
	.long	.Linfo_string95                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	106                             @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	28                              @ Abbrev [28] 0x61b:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	2
	.long	.Linfo_string104                @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	106                             @ DW_AT_decl_line
	.long	815                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	32                              @ Abbrev [32] 0x62a:0x20 DW_TAG_subprogram
	.long	.Lfunc_begin5                   @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string96                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	120                             @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	28                              @ Abbrev [28] 0x63b:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string105                @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	120                             @ DW_AT_decl_line
	.long	583                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	16                              @ Abbrev [16] 0x64a:0x5 DW_TAG_pointer_type
	.long	55                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.long	.Lfunc_begin2
	.long	.Lfunc_end2
	.long	.Lfunc_begin3
	.long	.Lfunc_end3
	.long	.Lfunc_begin4
	.long	.Lfunc_end4
	.long	.Lfunc_begin5
	.long	.Lfunc_end5
	.long	0
	.long	0
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]" @ string offset=0
.Linfo_string1:
	.asciz	"../User/drive/src\\driver_can.cpp" @ string offset=68
.Linfo_string2:
	.asciz	"E:\\RP\\CppTemplate\\MDK-ARM"  @ string offset=101
.Linfo_string3:
	.asciz	"CAN_FillterType"               @ string offset=127
.Linfo_string4:
	.asciz	"FilterIdHigh"                  @ string offset=143
.Linfo_string5:
	.asciz	"unsigned int"                  @ string offset=156
.Linfo_string6:
	.asciz	"uint32_t"                      @ string offset=169
.Linfo_string7:
	.asciz	"FilterIdLow"                   @ string offset=178
.Linfo_string8:
	.asciz	"FilterMaskIdHigh"              @ string offset=190
.Linfo_string9:
	.asciz	"FilterMaskIdLow"               @ string offset=207
.Linfo_string10:
	.asciz	"FilterFIFOAssignment"          @ string offset=223
.Linfo_string11:
	.asciz	"FilterBank"                    @ string offset=244
.Linfo_string12:
	.asciz	"FilterMode"                    @ string offset=255
.Linfo_string13:
	.asciz	"FilterScale"                   @ string offset=266
.Linfo_string14:
	.asciz	"FilterActivation"              @ string offset=278
.Linfo_string15:
	.asciz	"SlaveStartFilterBank"          @ string offset=295
.Linfo_string16:
	.asciz	"CAN_FilterTypeDef"             @ string offset=316
.Linfo_string17:
	.asciz	"CAN_TxHeadeType"               @ string offset=334
.Linfo_string18:
	.asciz	"StdId"                         @ string offset=350
.Linfo_string19:
	.asciz	"ExtId"                         @ string offset=356
.Linfo_string20:
	.asciz	"IDE"                           @ string offset=362
.Linfo_string21:
	.asciz	"RTR"                           @ string offset=366
.Linfo_string22:
	.asciz	"DLC"                           @ string offset=370
.Linfo_string23:
	.asciz	"TransmitGlobalTime"            @ string offset=374
.Linfo_string24:
	.asciz	"unsigned char"                 @ string offset=393
.Linfo_string25:
	.asciz	"DISABLE"                       @ string offset=407
.Linfo_string26:
	.asciz	"ENABLE"                        @ string offset=415
.Linfo_string27:
	.asciz	"FunctionalState"               @ string offset=422
.Linfo_string28:
	.asciz	"CAN_TxHeaderTypeDef"           @ string offset=438
.Linfo_string29:
	.asciz	"can_handle_"                   @ string offset=458
.Linfo_string30:
	.asciz	"__CAN_HandleTypeDef"           @ string offset=470
.Linfo_string31:
	.asciz	"CAN_HandleTypeDef"             @ string offset=490
.Linfo_string32:
	.asciz	"tx_config_"                    @ string offset=508
.Linfo_string33:
	.asciz	"tx_id_"                        @ string offset=519
.Linfo_string34:
	.asciz	"tx_mailbox_"                   @ string offset=526
.Linfo_string35:
	.asciz	"tx_buff_"                      @ string offset=538
.Linfo_string36:
	.asciz	"uint8_t"                       @ string offset=547
.Linfo_string37:
	.asciz	"__ARRAY_SIZE_TYPE__"           @ string offset=555
.Linfo_string38:
	.asciz	"rx_id_"                        @ string offset=575
.Linfo_string39:
	.asciz	"rx_len_"                       @ string offset=582
.Linfo_string40:
	.asciz	"rx_buff_"                      @ string offset=590
.Linfo_string41:
	.asciz	"can_module_callback_"          @ string offset=599
.Linfo_string42:
	.asciz	"can_ins_cnt_"                  @ string offset=620
.Linfo_string43:
	.asciz	"can_ins_cnt_max_"              @ string offset=633
.Linfo_string44:
	.asciz	"CANInstance"                   @ string offset=650
.Linfo_string45:
	.asciz	"_ZN11CANInstance17SetTxConfigLengthEh" @ string offset=662
.Linfo_string46:
	.asciz	"SetTxConfigLength"             @ string offset=700
.Linfo_string47:
	.asciz	"_ZN11CANInstance12can_ins_cnt_E" @ string offset=718
.Linfo_string48:
	.asciz	"_ZN11CANInstance16can_ins_cnt_max_E" @ string offset=750
.Linfo_string49:
	.asciz	"can_instance"                  @ string offset=786
.Linfo_string50:
	.asciz	"_ZL12can_instance"             @ string offset=799
.Linfo_string51:
	.asciz	"signed char"                   @ string offset=817
.Linfo_string52:
	.asciz	"int8_t"                        @ string offset=829
.Linfo_string53:
	.asciz	"short"                         @ string offset=836
.Linfo_string54:
	.asciz	"int16_t"                       @ string offset=842
.Linfo_string55:
	.asciz	"int"                           @ string offset=850
.Linfo_string56:
	.asciz	"int32_t"                       @ string offset=854
.Linfo_string57:
	.asciz	"long long"                     @ string offset=862
.Linfo_string58:
	.asciz	"int64_t"                       @ string offset=872
.Linfo_string59:
	.asciz	"unsigned short"                @ string offset=880
.Linfo_string60:
	.asciz	"uint16_t"                      @ string offset=895
.Linfo_string61:
	.asciz	"unsigned long long"            @ string offset=904
.Linfo_string62:
	.asciz	"uint64_t"                      @ string offset=923
.Linfo_string63:
	.asciz	"int_least8_t"                  @ string offset=932
.Linfo_string64:
	.asciz	"int_least16_t"                 @ string offset=945
.Linfo_string65:
	.asciz	"int_least32_t"                 @ string offset=959
.Linfo_string66:
	.asciz	"int_least64_t"                 @ string offset=973
.Linfo_string67:
	.asciz	"uint_least8_t"                 @ string offset=987
.Linfo_string68:
	.asciz	"uint_least16_t"                @ string offset=1001
.Linfo_string69:
	.asciz	"uint_least32_t"                @ string offset=1016
.Linfo_string70:
	.asciz	"uint_least64_t"                @ string offset=1031
.Linfo_string71:
	.asciz	"int_fast8_t"                   @ string offset=1046
.Linfo_string72:
	.asciz	"int_fast16_t"                  @ string offset=1058
.Linfo_string73:
	.asciz	"int_fast32_t"                  @ string offset=1071
.Linfo_string74:
	.asciz	"int_fast64_t"                  @ string offset=1084
.Linfo_string75:
	.asciz	"uint_fast8_t"                  @ string offset=1097
.Linfo_string76:
	.asciz	"uint_fast16_t"                 @ string offset=1110
.Linfo_string77:
	.asciz	"uint_fast32_t"                 @ string offset=1124
.Linfo_string78:
	.asciz	"uint_fast64_t"                 @ string offset=1138
.Linfo_string79:
	.asciz	"intptr_t"                      @ string offset=1152
.Linfo_string80:
	.asciz	"uintptr_t"                     @ string offset=1161
.Linfo_string81:
	.asciz	"intmax_t"                      @ string offset=1171
.Linfo_string82:
	.asciz	"uintmax_t"                     @ string offset=1180
.Linfo_string83:
	.asciz	"size_t"                        @ string offset=1190
.Linfo_string84:
	.asciz	"ptrdiff_t"                     @ string offset=1197
.Linfo_string85:
	.asciz	"long double"                   @ string offset=1207
.Linfo_string86:
	.asciz	"max_align_t"                   @ string offset=1219
.Linfo_string87:
	.asciz	"_ZN11CANInstanceC2EP19__CAN_HandleTypeDefjjPFvvE" @ string offset=1231
.Linfo_string88:
	.asciz	"_Z9CAN1_Initv"                 @ string offset=1280
.Linfo_string89:
	.asciz	"CAN1_Init"                     @ string offset=1294
.Linfo_string90:
	.asciz	"_Z9CAN2_Initv"                 @ string offset=1304
.Linfo_string91:
	.asciz	"CAN2_Init"                     @ string offset=1318
.Linfo_string92:
	.asciz	"_Z20CAN_FilterParamsInitP17CAN_FilterTypeDef" @ string offset=1328
.Linfo_string93:
	.asciz	"CAN_FilterParamsInit"          @ string offset=1373
.Linfo_string94:
	.asciz	"_Z19HAL_CAN_TxHeadeInitt"      @ string offset=1394
.Linfo_string95:
	.asciz	"HAL_CAN_TxHeadeInit"           @ string offset=1419
.Linfo_string96:
	.asciz	"HAL_CAN_RxFifo0MsgPendingCallback" @ string offset=1439
.Linfo_string97:
	.asciz	"this"                          @ string offset=1473
.Linfo_string98:
	.asciz	"can_handle"                    @ string offset=1478
.Linfo_string99:
	.asciz	"tx_id"                         @ string offset=1489
.Linfo_string100:
	.asciz	"rx_id"                         @ string offset=1495
.Linfo_string101:
	.asciz	"can_module_callback"           @ string offset=1501
.Linfo_string102:
	.asciz	"i"                             @ string offset=1521
.Linfo_string103:
	.asciz	"sFilterConfig"                 @ string offset=1523
.Linfo_string104:
	.asciz	"ID"                            @ string offset=1537
.Linfo_string105:
	.asciz	"hcan"                          @ string offset=1540
	.globl	_ZN11CANInstanceC1EP19__CAN_HandleTypeDefjjPFvvE
	.type	_ZN11CANInstanceC1EP19__CAN_HandleTypeDefjjPFvvE,%function
	.hidden	_ZN11CANInstanceC1EP19__CAN_HandleTypeDefjjPFvvE
.set _ZN11CANInstanceC1EP19__CAN_HandleTypeDefjjPFvvE, _ZN11CANInstanceC2EP19__CAN_HandleTypeDefjjPFvvE
	.ident	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
	.ARM_attribute	16, 1	@ Tag_AV_eba
	.section	.debug_line,"",%progbits
.Lline_table_start0:
