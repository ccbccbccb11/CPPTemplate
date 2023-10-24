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
	.file	"freertos.c"
	.file	1 "E:\\RP\\CppTemplate\\MDK-ARM" "../Core/Src/freertos.c"
	.file	2 "E:\\RP\\CppTemplate\\MDK-ARM" "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
	.file	3 "E:\\RP\\CppTemplate\\MDK-ARM" "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS\\cmsis_os.h"
	.file	4 "E:\\RP\\CppTemplate\\MDK-ARM" "../Middlewares/Third_Party/FreeRTOS/Source/include\\FreeRTOS.h"
	.file	5 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include" "stdint.h"
	.file	6 "E:\\RP\\CppTemplate\\MDK-ARM" "../Middlewares/Third_Party/FreeRTOS/Source/portable/RVDS/ARM_CM4F\\portmacro.h"
	.section	.text.vApplicationGetIdleTaskMemory,"ax",%progbits
	.hidden	vApplicationGetIdleTaskMemory   @ -- Begin function vApplicationGetIdleTaskMemory
	.globl	vApplicationGetIdleTaskMemory
	.p2align	2
	.type	vApplicationGetIdleTaskMemory,%function
	.code	16                              @ @vApplicationGetIdleTaskMemory
	.thumb_func
vApplicationGetIdleTaskMemory:
.Lfunc_begin0:
	.loc	1 75 0                          @ ../Core/Src/freertos.c:75:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:
	.pad	#12
	sub	sp, #12
	.cfi_def_cfa_offset 12
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	str	r2, [sp]
.Ltmp0:
	.loc	1 76 4 prologue_end             @ ../Core/Src/freertos.c:76:4
	ldr	r1, [sp, #8]
	.loc	1 76 25 is_stmt 0               @ ../Core/Src/freertos.c:76:25
	movw	r0, :lower16:xIdleTaskTCBBuffer
	movt	r0, :upper16:xIdleTaskTCBBuffer
	str	r0, [r1]
	.loc	1 77 4 is_stmt 1                @ ../Core/Src/freertos.c:77:4
	ldr	r1, [sp, #4]
	.loc	1 77 27 is_stmt 0               @ ../Core/Src/freertos.c:77:27
	movw	r0, :lower16:xIdleStack
	movt	r0, :upper16:xIdleStack
	str	r0, [r1]
	.loc	1 78 4 is_stmt 1                @ ../Core/Src/freertos.c:78:4
	ldr	r1, [sp]
	movs	r0, #128
	.loc	1 78 25 is_stmt 0               @ ../Core/Src/freertos.c:78:25
	str	r0, [r1]
	.loc	1 80 1 is_stmt 1                @ ../Core/Src/freertos.c:80:1
	add	sp, #12
	bx	lr
.Ltmp1:
.Lfunc_end0:
	.size	vApplicationGetIdleTaskMemory, .Lfunc_end0-vApplicationGetIdleTaskMemory
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.MX_FREERTOS_Init,"ax",%progbits
	.hidden	MX_FREERTOS_Init                @ -- Begin function MX_FREERTOS_Init
	.globl	MX_FREERTOS_Init
	.p2align	2
	.type	MX_FREERTOS_Init,%function
	.code	16                              @ @MX_FREERTOS_Init
	.thumb_func
MX_FREERTOS_Init:
.Lfunc_begin1:
	.loc	1 88 0                          @ ../Core/Src/freertos.c:88:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.cfi_offset r5, -12
	.cfi_offset r4, -16
	.pad	#120
	sub	sp, #120
	.cfi_def_cfa_offset 136
.Ltmp2:
	.loc	1 111 3 prologue_end            @ ../Core/Src/freertos.c:111:3
	movw	r0, :lower16:.L__const.MX_FREERTOS_Init.os_thread_def_defaultTask
	movt	r0, :upper16:.L__const.MX_FREERTOS_Init.os_thread_def_defaultTask
	ldr	r1, [r0]
	ldr	r2, [r0, #4]
	ldr	r3, [r0, #8]
	ldr.w	r12, [r0, #12]
	ldr.w	lr, [r0, #16]
	ldr	r4, [r0, #20]
	str	r4, [sp, #112]
	str.w	lr, [sp, #108]
	str.w	r12, [sp, #104]
	str	r3, [sp, #100]
	str	r2, [sp, #96]
	str	r1, [sp, #92]
	ldr	r0, [r0, #24]
	str	r0, [sp, #116]
	add	r0, sp, #92
	movs	r1, #0
	.loc	1 112 23                        @ ../Core/Src/freertos.c:112:23
	str	r1, [sp, #4]                    @ 4-byte Spill
	bl	osThreadCreate
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	.loc	1 112 21 is_stmt 0              @ ../Core/Src/freertos.c:112:21
	movw	r2, :lower16:defaultTaskHandle
	movt	r2, :upper16:defaultTaskHandle
	str	r0, [r2]
	.loc	1 115 3 is_stmt 1               @ ../Core/Src/freertos.c:115:3
	movw	r0, :lower16:.L__const.MX_FREERTOS_Init.os_thread_def_ControlTask
	movt	r0, :upper16:.L__const.MX_FREERTOS_Init.os_thread_def_ControlTask
	ldr	r2, [r0]
	ldr	r3, [r0, #4]
	ldr.w	r12, [r0, #8]
	ldr.w	lr, [r0, #12]
	ldr	r4, [r0, #16]
	ldr	r5, [r0, #20]
	str	r5, [sp, #84]
	str	r4, [sp, #80]
	str.w	lr, [sp, #76]
	str.w	r12, [sp, #72]
	str	r3, [sp, #68]
	str	r2, [sp, #64]
	ldr	r0, [r0, #24]
	str	r0, [sp, #88]
	add	r0, sp, #64
	.loc	1 116 23                        @ ../Core/Src/freertos.c:116:23
	bl	osThreadCreate
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	.loc	1 116 21 is_stmt 0              @ ../Core/Src/freertos.c:116:21
	movw	r2, :lower16:ControlTaskHandle
	movt	r2, :upper16:ControlTaskHandle
	str	r0, [r2]
	.loc	1 119 3 is_stmt 1               @ ../Core/Src/freertos.c:119:3
	movw	r0, :lower16:.L__const.MX_FREERTOS_Init.os_thread_def_HeartBeatTask
	movt	r0, :upper16:.L__const.MX_FREERTOS_Init.os_thread_def_HeartBeatTask
	ldr	r2, [r0]
	ldr	r3, [r0, #4]
	ldr.w	r12, [r0, #8]
	ldr.w	lr, [r0, #12]
	ldr	r4, [r0, #16]
	ldr	r5, [r0, #20]
	str	r5, [sp, #56]
	str	r4, [sp, #52]
	str.w	lr, [sp, #48]
	str.w	r12, [sp, #44]
	str	r3, [sp, #40]
	str	r2, [sp, #36]
	ldr	r0, [r0, #24]
	str	r0, [sp, #60]
	add	r0, sp, #36
	.loc	1 120 25                        @ ../Core/Src/freertos.c:120:25
	bl	osThreadCreate
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	.loc	1 120 23 is_stmt 0              @ ../Core/Src/freertos.c:120:23
	movw	r2, :lower16:HeartBeatTaskHandle
	movt	r2, :upper16:HeartBeatTaskHandle
	str	r0, [r2]
	.loc	1 123 3 is_stmt 1               @ ../Core/Src/freertos.c:123:3
	movw	r0, :lower16:.L__const.MX_FREERTOS_Init.os_thread_def_RealTimeTask
	movt	r0, :upper16:.L__const.MX_FREERTOS_Init.os_thread_def_RealTimeTask
	ldr	r2, [r0]
	ldr	r3, [r0, #4]
	ldr.w	r12, [r0, #8]
	ldr.w	lr, [r0, #12]
	ldr	r4, [r0, #16]
	ldr	r5, [r0, #20]
	str	r5, [sp, #28]
	str	r4, [sp, #24]
	str.w	lr, [sp, #20]
	str.w	r12, [sp, #16]
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r0, [r0, #24]
	str	r0, [sp, #32]
	add	r0, sp, #8
	.loc	1 124 24                        @ ../Core/Src/freertos.c:124:24
	bl	osThreadCreate
	.loc	1 124 22 is_stmt 0              @ ../Core/Src/freertos.c:124:22
	movw	r1, :lower16:RealTimeTaskHandle
	movt	r1, :upper16:RealTimeTaskHandle
	str	r0, [r1]
	.loc	1 130 1 is_stmt 1               @ ../Core/Src/freertos.c:130:1
	add	sp, #120
	pop	{r4, r5, r7, pc}
.Ltmp3:
.Lfunc_end1:
	.size	MX_FREERTOS_Init, .Lfunc_end1-MX_FREERTOS_Init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.StartDefaultTask,"ax",%progbits
	.hidden	StartDefaultTask                @ -- Begin function StartDefaultTask
	.globl	StartDefaultTask
	.p2align	2
	.type	StartDefaultTask,%function
	.code	16                              @ @StartDefaultTask
	.thumb_func
StartDefaultTask:
.Lfunc_begin2:
	.loc	1 140 0                         @ ../Core/Src/freertos.c:140:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
.Ltmp4:
	.loc	1 143 3 prologue_end            @ ../Core/Src/freertos.c:143:3
	b	.LBB2_1
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	.loc	1 0 3 is_stmt 0                 @ ../Core/Src/freertos.c:0:3
	movs	r0, #1
.Ltmp5:
	.loc	1 145 5 is_stmt 1               @ ../Core/Src/freertos.c:145:5
	bl	osDelay
.Ltmp6:
	.loc	1 143 3                         @ ../Core/Src/freertos.c:143:3
	b	.LBB2_1
.Ltmp7:
.Lfunc_end2:
	.size	StartDefaultTask, .Lfunc_end2-StartDefaultTask
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.StartControlTask,"ax",%progbits
	.hidden	StartControlTask                @ -- Begin function StartControlTask
	.weak	StartControlTask
	.p2align	2
	.type	StartControlTask,%function
	.code	16                              @ @StartControlTask
	.thumb_func
StartControlTask:
.Lfunc_begin3:
	.loc	1 158 0                         @ ../Core/Src/freertos.c:158:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
.Ltmp8:
	.loc	1 161 3 prologue_end            @ ../Core/Src/freertos.c:161:3
	b	.LBB3_1
.LBB3_1:                                @ =>This Inner Loop Header: Depth=1
	.loc	1 0 3 is_stmt 0                 @ ../Core/Src/freertos.c:0:3
	movs	r0, #1
.Ltmp9:
	.loc	1 163 5 is_stmt 1               @ ../Core/Src/freertos.c:163:5
	bl	osDelay
.Ltmp10:
	.loc	1 161 3                         @ ../Core/Src/freertos.c:161:3
	b	.LBB3_1
.Ltmp11:
.Lfunc_end3:
	.size	StartControlTask, .Lfunc_end3-StartControlTask
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.StartHeartBeatTask,"ax",%progbits
	.hidden	StartHeartBeatTask              @ -- Begin function StartHeartBeatTask
	.weak	StartHeartBeatTask
	.p2align	2
	.type	StartHeartBeatTask,%function
	.code	16                              @ @StartHeartBeatTask
	.thumb_func
StartHeartBeatTask:
.Lfunc_begin4:
	.loc	1 176 0                         @ ../Core/Src/freertos.c:176:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
.Ltmp12:
	.loc	1 179 3 prologue_end            @ ../Core/Src/freertos.c:179:3
	b	.LBB4_1
.LBB4_1:                                @ =>This Inner Loop Header: Depth=1
	.loc	1 0 3 is_stmt 0                 @ ../Core/Src/freertos.c:0:3
	movs	r0, #1
.Ltmp13:
	.loc	1 181 5 is_stmt 1               @ ../Core/Src/freertos.c:181:5
	bl	osDelay
.Ltmp14:
	.loc	1 179 3                         @ ../Core/Src/freertos.c:179:3
	b	.LBB4_1
.Ltmp15:
.Lfunc_end4:
	.size	StartHeartBeatTask, .Lfunc_end4-StartHeartBeatTask
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.StartRealTimeTask,"ax",%progbits
	.hidden	StartRealTimeTask               @ -- Begin function StartRealTimeTask
	.weak	StartRealTimeTask
	.p2align	2
	.type	StartRealTimeTask,%function
	.code	16                              @ @StartRealTimeTask
	.thumb_func
StartRealTimeTask:
.Lfunc_begin5:
	.loc	1 194 0                         @ ../Core/Src/freertos.c:194:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
.Ltmp16:
	.loc	1 197 3 prologue_end            @ ../Core/Src/freertos.c:197:3
	b	.LBB5_1
.LBB5_1:                                @ =>This Inner Loop Header: Depth=1
	.loc	1 0 3 is_stmt 0                 @ ../Core/Src/freertos.c:0:3
	movs	r0, #1
.Ltmp17:
	.loc	1 199 5 is_stmt 1               @ ../Core/Src/freertos.c:199:5
	bl	osDelay
.Ltmp18:
	.loc	1 197 3                         @ ../Core/Src/freertos.c:197:3
	b	.LBB5_1
.Ltmp19:
.Lfunc_end5:
	.size	StartRealTimeTask, .Lfunc_end5-StartRealTimeTask
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.type	xIdleTaskTCBBuffer,%object      @ @xIdleTaskTCBBuffer
	.section	.bss.xIdleTaskTCBBuffer,"aw",%nobits
	.p2align	2, 0x0
xIdleTaskTCBBuffer:
	.zero	84
	.size	xIdleTaskTCBBuffer, 84

	.type	xIdleStack,%object              @ @xIdleStack
	.section	.bss.xIdleStack,"aw",%nobits
	.p2align	2, 0x0
xIdleStack:
	.zero	512
	.size	xIdleStack, 512

	.type	.L.str,%object                  @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"defaultTask"
	.size	.L.str, 12

	.type	.L__const.MX_FREERTOS_Init.os_thread_def_defaultTask,%object @ @__const.MX_FREERTOS_Init.os_thread_def_defaultTask
	.section	.rodata..L__const.MX_FREERTOS_Init.os_thread_def_defaultTask,"a",%progbits
	.p2align	2, 0x0
.L__const.MX_FREERTOS_Init.os_thread_def_defaultTask:
	.long	.L.str
	.long	StartDefaultTask
	.short	0                               @ 0x0
	.zero	2
	.long	0                               @ 0x0
	.long	128                             @ 0x80
	.long	0
	.long	0
	.size	.L__const.MX_FREERTOS_Init.os_thread_def_defaultTask, 28

	.hidden	defaultTaskHandle               @ @defaultTaskHandle
	.type	defaultTaskHandle,%object
	.section	.bss.defaultTaskHandle,"aw",%nobits
	.globl	defaultTaskHandle
	.p2align	2, 0x0
defaultTaskHandle:
	.long	0
	.size	defaultTaskHandle, 4

	.type	.L.str.1,%object                @ @.str.1
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.1:
	.asciz	"ControlTask"
	.size	.L.str.1, 12

	.type	.L__const.MX_FREERTOS_Init.os_thread_def_ControlTask,%object @ @__const.MX_FREERTOS_Init.os_thread_def_ControlTask
	.section	.rodata..L__const.MX_FREERTOS_Init.os_thread_def_ControlTask,"a",%progbits
	.p2align	2, 0x0
.L__const.MX_FREERTOS_Init.os_thread_def_ControlTask:
	.long	.L.str.1
	.long	StartControlTask
	.short	65533                           @ 0xfffd
	.zero	2
	.long	0                               @ 0x0
	.long	1024                            @ 0x400
	.long	0
	.long	0
	.size	.L__const.MX_FREERTOS_Init.os_thread_def_ControlTask, 28

	.hidden	ControlTaskHandle               @ @ControlTaskHandle
	.type	ControlTaskHandle,%object
	.section	.bss.ControlTaskHandle,"aw",%nobits
	.globl	ControlTaskHandle
	.p2align	2, 0x0
ControlTaskHandle:
	.long	0
	.size	ControlTaskHandle, 4

	.type	.L.str.2,%object                @ @.str.2
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.2:
	.asciz	"HeartBeatTask"
	.size	.L.str.2, 14

	.type	.L__const.MX_FREERTOS_Init.os_thread_def_HeartBeatTask,%object @ @__const.MX_FREERTOS_Init.os_thread_def_HeartBeatTask
	.section	.rodata..L__const.MX_FREERTOS_Init.os_thread_def_HeartBeatTask,"a",%progbits
	.p2align	2, 0x0
.L__const.MX_FREERTOS_Init.os_thread_def_HeartBeatTask:
	.long	.L.str.2
	.long	StartHeartBeatTask
	.short	1                               @ 0x1
	.zero	2
	.long	0                               @ 0x0
	.long	256                             @ 0x100
	.long	0
	.long	0
	.size	.L__const.MX_FREERTOS_Init.os_thread_def_HeartBeatTask, 28

	.hidden	HeartBeatTaskHandle             @ @HeartBeatTaskHandle
	.type	HeartBeatTaskHandle,%object
	.section	.bss.HeartBeatTaskHandle,"aw",%nobits
	.globl	HeartBeatTaskHandle
	.p2align	2, 0x0
HeartBeatTaskHandle:
	.long	0
	.size	HeartBeatTaskHandle, 4

	.type	.L.str.3,%object                @ @.str.3
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.3:
	.asciz	"RealTimeTask"
	.size	.L.str.3, 13

	.type	.L__const.MX_FREERTOS_Init.os_thread_def_RealTimeTask,%object @ @__const.MX_FREERTOS_Init.os_thread_def_RealTimeTask
	.section	.rodata..L__const.MX_FREERTOS_Init.os_thread_def_RealTimeTask,"a",%progbits
	.p2align	2, 0x0
.L__const.MX_FREERTOS_Init.os_thread_def_RealTimeTask:
	.long	.L.str.3
	.long	StartRealTimeTask
	.short	2                               @ 0x2
	.zero	2
	.long	0                               @ 0x0
	.long	1024                            @ 0x400
	.long	0
	.long	0
	.size	.L__const.MX_FREERTOS_Init.os_thread_def_RealTimeTask, 28

	.hidden	RealTimeTaskHandle              @ @RealTimeTaskHandle
	.type	RealTimeTaskHandle,%object
	.section	.bss.RealTimeTaskHandle,"aw",%nobits
	.globl	RealTimeTaskHandle
	.p2align	2, 0x0
RealTimeTaskHandle:
	.long	0
	.size	RealTimeTaskHandle, 4

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
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	3                               @ Abbreviation Code
	.byte	1                               @ DW_TAG_array_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	4                               @ Abbreviation Code
	.byte	33                              @ DW_TAG_subrange_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	55                              @ DW_AT_count
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	5                               @ Abbreviation Code
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
	.byte	6                               @ Abbreviation Code
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
	.byte	7                               @ Abbreviation Code
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
	.byte	8                               @ Abbreviation Code
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
	.byte	9                               @ Abbreviation Code
	.byte	15                              @ DW_TAG_pointer_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	10                              @ Abbreviation Code
	.byte	19                              @ DW_TAG_structure_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	60                              @ DW_AT_declaration
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	11                              @ Abbreviation Code
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
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	12                              @ Abbreviation Code
	.byte	22                              @ DW_TAG_typedef
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	13                              @ Abbreviation Code
	.byte	19                              @ DW_TAG_structure_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	14                              @ Abbreviation Code
	.byte	13                              @ DW_TAG_member
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	56                              @ DW_AT_data_member_location
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	15                              @ Abbreviation Code
	.byte	15                              @ DW_TAG_pointer_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	16                              @ Abbreviation Code
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
	.byte	17                              @ Abbreviation Code
	.byte	40                              @ DW_TAG_enumerator
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	28                              @ DW_AT_const_value
	.byte	13                              @ DW_FORM_sdata
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	18                              @ Abbreviation Code
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
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	19                              @ Abbreviation Code
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
	.byte	20                              @ Abbreviation Code
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
	.byte	21                              @ Abbreviation Code
	.byte	38                              @ DW_TAG_const_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	22                              @ Abbreviation Code
	.byte	21                              @ DW_TAG_subroutine_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	23                              @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	24                              @ Abbreviation Code
	.byte	38                              @ DW_TAG_const_type
	.byte	0                               @ DW_CHILDREN_no
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
	.byte	1                               @ Abbrev [1] 0xb:0x474 DW_TAG_compile_unit
	.long	.Linfo_string0                  @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.long	.Linfo_string1                  @ DW_AT_name
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.long	.Linfo_string2                  @ DW_AT_comp_dir
	.long	0                               @ DW_AT_low_pc
	.long	.Ldebug_ranges0                 @ DW_AT_ranges
	.byte	2                               @ Abbrev [2] 0x26:0xd DW_TAG_variable
	.long	51                              @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	111                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	.L.str
	.byte	3                               @ Abbrev [3] 0x33:0xc DW_TAG_array_type
	.long	63                              @ DW_AT_type
	.byte	4                               @ Abbrev [4] 0x38:0x6 DW_TAG_subrange_type
	.long	70                              @ DW_AT_type
	.byte	12                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	5                               @ Abbrev [5] 0x3f:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  @ DW_AT_name
	.byte	8                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	6                               @ Abbrev [6] 0x46:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  @ DW_AT_name
	.byte	8                               @ DW_AT_byte_size
	.byte	7                               @ DW_AT_encoding
	.byte	2                               @ Abbrev [2] 0x4d:0xd DW_TAG_variable
	.long	51                              @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	115                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	.L.str.1
	.byte	2                               @ Abbrev [2] 0x5a:0xd DW_TAG_variable
	.long	103                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	119                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	.L.str.2
	.byte	3                               @ Abbrev [3] 0x67:0xc DW_TAG_array_type
	.long	63                              @ DW_AT_type
	.byte	4                               @ Abbrev [4] 0x6c:0x6 DW_TAG_subrange_type
	.long	70                              @ DW_AT_type
	.byte	14                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	2                               @ Abbrev [2] 0x73:0xd DW_TAG_variable
	.long	128                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	123                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	.L.str.3
	.byte	3                               @ Abbrev [3] 0x80:0xc DW_TAG_array_type
	.long	63                              @ DW_AT_type
	.byte	4                               @ Abbrev [4] 0x85:0x6 DW_TAG_subrange_type
	.long	70                              @ DW_AT_type
	.byte	13                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	7                               @ Abbrev [7] 0x8c:0x11 DW_TAG_variable
	.long	.Linfo_string5                  @ DW_AT_name
	.long	157                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	50                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	defaultTaskHandle
	.byte	8                               @ Abbrev [8] 0x9d:0xb DW_TAG_typedef
	.long	168                             @ DW_AT_type
	.long	.Linfo_string8                  @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	238                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0xa8:0xb DW_TAG_typedef
	.long	179                             @ DW_AT_type
	.long	.Linfo_string7                  @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	70                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0xb3:0x5 DW_TAG_pointer_type
	.long	184                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0xb8:0x5 DW_TAG_structure_type
	.long	.Linfo_string6                  @ DW_AT_name
                                        @ DW_AT_declaration
	.byte	7                               @ Abbrev [7] 0xbd:0x11 DW_TAG_variable
	.long	.Linfo_string9                  @ DW_AT_name
	.long	157                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	51                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	ControlTaskHandle
	.byte	7                               @ Abbrev [7] 0xce:0x11 DW_TAG_variable
	.long	.Linfo_string10                 @ DW_AT_name
	.long	157                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	52                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	HeartBeatTaskHandle
	.byte	7                               @ Abbrev [7] 0xdf:0x11 DW_TAG_variable
	.long	.Linfo_string11                 @ DW_AT_name
	.long	157                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	53                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	RealTimeTaskHandle
	.byte	11                              @ Abbrev [11] 0xf0:0x11 DW_TAG_variable
	.long	.Linfo_string12                 @ DW_AT_name
	.long	257                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	71                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	xIdleTaskTCBBuffer
	.byte	12                              @ Abbrev [12] 0x101:0xc DW_TAG_typedef
	.long	269                             @ DW_AT_type
	.long	.Linfo_string34                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.short	1160                            @ DW_AT_decl_line
	.byte	13                              @ Abbrev [13] 0x10d:0x7f DW_TAG_structure_type
	.long	.Linfo_string33                 @ DW_AT_name
	.byte	84                              @ DW_AT_byte_size
	.byte	4                               @ DW_AT_decl_file
	.short	1112                            @ DW_AT_decl_line
	.byte	14                              @ Abbrev [14] 0x116:0xd DW_TAG_member
	.long	.Linfo_string13                 @ DW_AT_name
	.long	396                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	1114                            @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	14                              @ Abbrev [14] 0x123:0xd DW_TAG_member
	.long	.Linfo_string14                 @ DW_AT_name
	.long	397                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	1118                            @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	14                              @ Abbrev [14] 0x130:0xd DW_TAG_member
	.long	.Linfo_string22                 @ DW_AT_name
	.long	498                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	1119                            @ DW_AT_decl_line
	.byte	44                              @ DW_AT_data_member_location
	.byte	14                              @ Abbrev [14] 0x13d:0xd DW_TAG_member
	.long	.Linfo_string25                 @ DW_AT_name
	.long	396                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	1120                            @ DW_AT_decl_line
	.byte	48                              @ DW_AT_data_member_location
	.byte	14                              @ Abbrev [14] 0x14a:0xd DW_TAG_member
	.long	.Linfo_string26                 @ DW_AT_name
	.long	516                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	1121                            @ DW_AT_decl_line
	.byte	52                              @ DW_AT_data_member_location
	.byte	14                              @ Abbrev [14] 0x157:0xd DW_TAG_member
	.long	.Linfo_string29                 @ DW_AT_name
	.long	546                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	1132                            @ DW_AT_decl_line
	.byte	68                              @ DW_AT_data_member_location
	.byte	14                              @ Abbrev [14] 0x164:0xd DW_TAG_member
	.long	.Linfo_string30                 @ DW_AT_name
	.long	468                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	1147                            @ DW_AT_decl_line
	.byte	76                              @ DW_AT_data_member_location
	.byte	14                              @ Abbrev [14] 0x171:0xd DW_TAG_member
	.long	.Linfo_string31                 @ DW_AT_name
	.long	528                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	1148                            @ DW_AT_decl_line
	.byte	80                              @ DW_AT_data_member_location
	.byte	14                              @ Abbrev [14] 0x17e:0xd DW_TAG_member
	.long	.Linfo_string32                 @ DW_AT_name
	.long	528                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	1151                            @ DW_AT_decl_line
	.byte	81                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	15                              @ Abbrev [15] 0x18c:0x1 DW_TAG_pointer_type
	.byte	3                               @ Abbrev [3] 0x18d:0xc DW_TAG_array_type
	.long	409                             @ DW_AT_type
	.byte	4                               @ Abbrev [4] 0x192:0x6 DW_TAG_subrange_type
	.long	70                              @ DW_AT_type
	.byte	2                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	12                              @ Abbrev [12] 0x199:0xc DW_TAG_typedef
	.long	421                             @ DW_AT_type
	.long	.Linfo_string21                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.short	1072                            @ DW_AT_decl_line
	.byte	13                              @ Abbrev [13] 0x1a5:0x24 DW_TAG_structure_type
	.long	.Linfo_string20                 @ DW_AT_name
	.byte	20                              @ DW_AT_byte_size
	.byte	4                               @ DW_AT_decl_file
	.short	1061                            @ DW_AT_decl_line
	.byte	14                              @ Abbrev [14] 0x1ae:0xd DW_TAG_member
	.long	.Linfo_string15                 @ DW_AT_name
	.long	457                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	1066                            @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	14                              @ Abbrev [14] 0x1bb:0xd DW_TAG_member
	.long	.Linfo_string19                 @ DW_AT_name
	.long	486                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	1067                            @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	8                               @ Abbrev [8] 0x1c9:0xb DW_TAG_typedef
	.long	468                             @ DW_AT_type
	.long	.Linfo_string18                 @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x1d4:0xb DW_TAG_typedef
	.long	479                             @ DW_AT_type
	.long	.Linfo_string17                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.byte	64                              @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0x1df:0x7 DW_TAG_base_type
	.long	.Linfo_string16                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	3                               @ Abbrev [3] 0x1e6:0xc DW_TAG_array_type
	.long	396                             @ DW_AT_type
	.byte	4                               @ Abbrev [4] 0x1eb:0x6 DW_TAG_subrange_type
	.long	70                              @ DW_AT_type
	.byte	4                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	8                               @ Abbrev [8] 0x1f2:0xb DW_TAG_typedef
	.long	509                             @ DW_AT_type
	.long	.Linfo_string24                 @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	57                              @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0x1fd:0x7 DW_TAG_base_type
	.long	.Linfo_string23                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	3                               @ Abbrev [3] 0x204:0xc DW_TAG_array_type
	.long	528                             @ DW_AT_type
	.byte	4                               @ Abbrev [4] 0x209:0x6 DW_TAG_subrange_type
	.long	70                              @ DW_AT_type
	.byte	16                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	8                               @ Abbrev [8] 0x210:0xb DW_TAG_typedef
	.long	539                             @ DW_AT_type
	.long	.Linfo_string28                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.byte	62                              @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0x21b:0x7 DW_TAG_base_type
	.long	.Linfo_string27                 @ DW_AT_name
	.byte	8                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	3                               @ Abbrev [3] 0x222:0xc DW_TAG_array_type
	.long	498                             @ DW_AT_type
	.byte	4                               @ Abbrev [4] 0x227:0x6 DW_TAG_subrange_type
	.long	70                              @ DW_AT_type
	.byte	2                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	11                              @ Abbrev [11] 0x22e:0x11 DW_TAG_variable
	.long	.Linfo_string35                 @ DW_AT_name
	.long	575                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	72                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	xIdleStack
	.byte	3                               @ Abbrev [3] 0x23f:0xc DW_TAG_array_type
	.long	587                             @ DW_AT_type
	.byte	4                               @ Abbrev [4] 0x244:0x6 DW_TAG_subrange_type
	.long	70                              @ DW_AT_type
	.byte	128                             @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	8                               @ Abbrev [8] 0x24b:0xb DW_TAG_typedef
	.long	468                             @ DW_AT_type
	.long	.Linfo_string36                 @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	55                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x256:0x3a DW_TAG_enumeration_type
	.long	656                             @ DW_AT_type
	.byte	2                               @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.byte	172                             @ DW_AT_decl_line
	.byte	17                              @ Abbrev [17] 0x25e:0x6 DW_TAG_enumerator
	.long	.Linfo_string38                 @ DW_AT_name
	.byte	125                             @ DW_AT_const_value
	.byte	17                              @ Abbrev [17] 0x264:0x6 DW_TAG_enumerator
	.long	.Linfo_string39                 @ DW_AT_name
	.byte	126                             @ DW_AT_const_value
	.byte	17                              @ Abbrev [17] 0x26a:0x6 DW_TAG_enumerator
	.long	.Linfo_string40                 @ DW_AT_name
	.byte	127                             @ DW_AT_const_value
	.byte	17                              @ Abbrev [17] 0x270:0x6 DW_TAG_enumerator
	.long	.Linfo_string41                 @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	17                              @ Abbrev [17] 0x276:0x6 DW_TAG_enumerator
	.long	.Linfo_string42                 @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	17                              @ Abbrev [17] 0x27c:0x6 DW_TAG_enumerator
	.long	.Linfo_string43                 @ DW_AT_name
	.byte	2                               @ DW_AT_const_value
	.byte	17                              @ Abbrev [17] 0x282:0x6 DW_TAG_enumerator
	.long	.Linfo_string44                 @ DW_AT_name
	.byte	3                               @ DW_AT_const_value
	.byte	17                              @ Abbrev [17] 0x288:0x7 DW_TAG_enumerator
	.long	.Linfo_string45                 @ DW_AT_name
	.ascii	"\204\001"                      @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	5                               @ Abbrev [5] 0x290:0x7 DW_TAG_base_type
	.long	.Linfo_string37                 @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	8                               @ Abbrev [8] 0x297:0xb DW_TAG_typedef
	.long	674                             @ DW_AT_type
	.long	.Linfo_string47                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0x2a2:0x7 DW_TAG_base_type
	.long	.Linfo_string46                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	18                              @ Abbrev [18] 0x2a9:0x3c DW_TAG_subprogram
	.long	.Lfunc_begin0                   @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string48                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	74                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	19                              @ Abbrev [19] 0x2ba:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string54                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	74                              @ DW_AT_decl_line
	.long	945                             @ DW_AT_type
	.byte	19                              @ Abbrev [19] 0x2c8:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string55                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	74                              @ DW_AT_decl_line
	.long	955                             @ DW_AT_type
	.byte	19                              @ Abbrev [19] 0x2d6:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string56                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	74                              @ DW_AT_decl_line
	.long	965                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	18                              @ Abbrev [18] 0x2e5:0x4c DW_TAG_subprogram
	.long	.Lfunc_begin1                   @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string49                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	88                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	20                              @ Abbrev [20] 0x2f6:0xf DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	145
	.asciz	"\334"
	.long	.Linfo_string57                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	111                             @ DW_AT_decl_line
	.long	970                             @ DW_AT_type
	.byte	20                              @ Abbrev [20] 0x305:0xf DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	145
	.asciz	"\300"
	.long	.Linfo_string70                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	115                             @ DW_AT_decl_line
	.long	970                             @ DW_AT_type
	.byte	20                              @ Abbrev [20] 0x314:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	36
	.long	.Linfo_string71                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	119                             @ DW_AT_decl_line
	.long	970                             @ DW_AT_type
	.byte	20                              @ Abbrev [20] 0x322:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string72                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	123                             @ DW_AT_decl_line
	.long	970                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	18                              @ Abbrev [18] 0x331:0x20 DW_TAG_subprogram
	.long	.Lfunc_begin2                   @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string50                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	139                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	19                              @ Abbrev [19] 0x342:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string73                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	139                             @ DW_AT_decl_line
	.long	1116                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	18                              @ Abbrev [18] 0x351:0x20 DW_TAG_subprogram
	.long	.Lfunc_begin3                   @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string51                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	157                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	19                              @ Abbrev [19] 0x362:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string73                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	157                             @ DW_AT_decl_line
	.long	1116                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	18                              @ Abbrev [18] 0x371:0x20 DW_TAG_subprogram
	.long	.Lfunc_begin4                   @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string52                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	175                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	19                              @ Abbrev [19] 0x382:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string73                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	175                             @ DW_AT_decl_line
	.long	1116                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	18                              @ Abbrev [18] 0x391:0x20 DW_TAG_subprogram
	.long	.Lfunc_begin5                   @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string53                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	193                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	19                              @ Abbrev [19] 0x3a2:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string73                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	193                             @ DW_AT_decl_line
	.long	1116                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x3b1:0x5 DW_TAG_pointer_type
	.long	950                             @ DW_AT_type
	.byte	9                               @ Abbrev [9] 0x3b6:0x5 DW_TAG_pointer_type
	.long	257                             @ DW_AT_type
	.byte	9                               @ Abbrev [9] 0x3bb:0x5 DW_TAG_pointer_type
	.long	960                             @ DW_AT_type
	.byte	9                               @ Abbrev [9] 0x3c0:0x5 DW_TAG_pointer_type
	.long	587                             @ DW_AT_type
	.byte	9                               @ Abbrev [9] 0x3c5:0x5 DW_TAG_pointer_type
	.long	468                             @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0x3ca:0x5 DW_TAG_const_type
	.long	975                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x3cf:0xc DW_TAG_typedef
	.long	987                             @ DW_AT_type
	.long	.Linfo_string69                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.short	290                             @ DW_AT_decl_line
	.byte	13                              @ Abbrev [13] 0x3db:0x65 DW_TAG_structure_type
	.long	.Linfo_string68                 @ DW_AT_name
	.byte	28                              @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.short	280                             @ DW_AT_decl_line
	.byte	14                              @ Abbrev [14] 0x3e4:0xd DW_TAG_member
	.long	.Linfo_string58                 @ DW_AT_name
	.long	1088                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	281                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	14                              @ Abbrev [14] 0x3f1:0xd DW_TAG_member
	.long	.Linfo_string59                 @ DW_AT_name
	.long	1093                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	282                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	14                              @ Abbrev [14] 0x3fe:0xd DW_TAG_member
	.long	.Linfo_string61                 @ DW_AT_name
	.long	1122                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	283                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	14                              @ Abbrev [14] 0x40b:0xd DW_TAG_member
	.long	.Linfo_string63                 @ DW_AT_name
	.long	468                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	284                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	14                              @ Abbrev [14] 0x418:0xd DW_TAG_member
	.long	.Linfo_string64                 @ DW_AT_name
	.long	468                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	285                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	14                              @ Abbrev [14] 0x425:0xd DW_TAG_member
	.long	.Linfo_string65                 @ DW_AT_name
	.long	965                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	287                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	14                              @ Abbrev [14] 0x432:0xd DW_TAG_member
	.long	.Linfo_string66                 @ DW_AT_name
	.long	1133                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	288                             @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x440:0x5 DW_TAG_pointer_type
	.long	63                              @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x445:0xb DW_TAG_typedef
	.long	1104                            @ DW_AT_type
	.long	.Linfo_string60                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	228                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x450:0x5 DW_TAG_pointer_type
	.long	1109                            @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0x455:0x7 DW_TAG_subroutine_type
                                        @ DW_AT_prototyped
	.byte	23                              @ Abbrev [23] 0x456:0x5 DW_TAG_formal_parameter
	.long	1116                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x45c:0x5 DW_TAG_pointer_type
	.long	1121                            @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x461:0x1 DW_TAG_const_type
	.byte	8                               @ Abbrev [8] 0x462:0xb DW_TAG_typedef
	.long	598                             @ DW_AT_type
	.long	.Linfo_string62                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	181                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x46d:0x5 DW_TAG_pointer_type
	.long	1138                            @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x472:0xc DW_TAG_typedef
	.long	257                             @ DW_AT_type
	.long	.Linfo_string67                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.short	267                             @ DW_AT_decl_line
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
	.asciz	"../Core/Src\\freertos.c"       @ string offset=68
.Linfo_string2:
	.asciz	"E:\\RP\\CppTemplate\\MDK-ARM"  @ string offset=91
.Linfo_string3:
	.asciz	"char"                          @ string offset=117
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           @ string offset=122
.Linfo_string5:
	.asciz	"defaultTaskHandle"             @ string offset=142
.Linfo_string6:
	.asciz	"tskTaskControlBlock"           @ string offset=160
.Linfo_string7:
	.asciz	"TaskHandle_t"                  @ string offset=180
.Linfo_string8:
	.asciz	"osThreadId"                    @ string offset=193
.Linfo_string9:
	.asciz	"ControlTaskHandle"             @ string offset=204
.Linfo_string10:
	.asciz	"HeartBeatTaskHandle"           @ string offset=222
.Linfo_string11:
	.asciz	"RealTimeTaskHandle"            @ string offset=242
.Linfo_string12:
	.asciz	"xIdleTaskTCBBuffer"            @ string offset=261
.Linfo_string13:
	.asciz	"pxDummy1"                      @ string offset=280
.Linfo_string14:
	.asciz	"xDummy3"                       @ string offset=289
.Linfo_string15:
	.asciz	"xDummy2"                       @ string offset=297
.Linfo_string16:
	.asciz	"unsigned int"                  @ string offset=305
.Linfo_string17:
	.asciz	"uint32_t"                      @ string offset=318
.Linfo_string18:
	.asciz	"TickType_t"                    @ string offset=327
.Linfo_string19:
	.asciz	"pvDummy3"                      @ string offset=338
.Linfo_string20:
	.asciz	"xSTATIC_LIST_ITEM"             @ string offset=347
.Linfo_string21:
	.asciz	"StaticListItem_t"              @ string offset=365
.Linfo_string22:
	.asciz	"uxDummy5"                      @ string offset=382
.Linfo_string23:
	.asciz	"unsigned long"                 @ string offset=391
.Linfo_string24:
	.asciz	"UBaseType_t"                   @ string offset=405
.Linfo_string25:
	.asciz	"pxDummy6"                      @ string offset=417
.Linfo_string26:
	.asciz	"ucDummy7"                      @ string offset=426
.Linfo_string27:
	.asciz	"unsigned char"                 @ string offset=435
.Linfo_string28:
	.asciz	"uint8_t"                       @ string offset=449
.Linfo_string29:
	.asciz	"uxDummy12"                     @ string offset=457
.Linfo_string30:
	.asciz	"ulDummy18"                     @ string offset=467
.Linfo_string31:
	.asciz	"ucDummy19"                     @ string offset=477
.Linfo_string32:
	.asciz	"uxDummy20"                     @ string offset=487
.Linfo_string33:
	.asciz	"xSTATIC_TCB"                   @ string offset=497
.Linfo_string34:
	.asciz	"StaticTask_t"                  @ string offset=509
.Linfo_string35:
	.asciz	"xIdleStack"                    @ string offset=522
.Linfo_string36:
	.asciz	"StackType_t"                   @ string offset=533
.Linfo_string37:
	.asciz	"short"                         @ string offset=545
.Linfo_string38:
	.asciz	"osPriorityIdle"                @ string offset=551
.Linfo_string39:
	.asciz	"osPriorityLow"                 @ string offset=566
.Linfo_string40:
	.asciz	"osPriorityBelowNormal"         @ string offset=580
.Linfo_string41:
	.asciz	"osPriorityNormal"              @ string offset=602
.Linfo_string42:
	.asciz	"osPriorityAboveNormal"         @ string offset=619
.Linfo_string43:
	.asciz	"osPriorityHigh"                @ string offset=641
.Linfo_string44:
	.asciz	"osPriorityRealtime"            @ string offset=656
.Linfo_string45:
	.asciz	"osPriorityError"               @ string offset=675
.Linfo_string46:
	.asciz	"unsigned short"                @ string offset=691
.Linfo_string47:
	.asciz	"uint16_t"                      @ string offset=706
.Linfo_string48:
	.asciz	"vApplicationGetIdleTaskMemory" @ string offset=715
.Linfo_string49:
	.asciz	"MX_FREERTOS_Init"              @ string offset=745
.Linfo_string50:
	.asciz	"StartDefaultTask"              @ string offset=762
.Linfo_string51:
	.asciz	"StartControlTask"              @ string offset=779
.Linfo_string52:
	.asciz	"StartHeartBeatTask"            @ string offset=796
.Linfo_string53:
	.asciz	"StartRealTimeTask"             @ string offset=815
.Linfo_string54:
	.asciz	"ppxIdleTaskTCBBuffer"          @ string offset=833
.Linfo_string55:
	.asciz	"ppxIdleTaskStackBuffer"        @ string offset=854
.Linfo_string56:
	.asciz	"pulIdleTaskStackSize"          @ string offset=877
.Linfo_string57:
	.asciz	"os_thread_def_defaultTask"     @ string offset=898
.Linfo_string58:
	.asciz	"name"                          @ string offset=924
.Linfo_string59:
	.asciz	"pthread"                       @ string offset=929
.Linfo_string60:
	.asciz	"os_pthread"                    @ string offset=937
.Linfo_string61:
	.asciz	"tpriority"                     @ string offset=948
.Linfo_string62:
	.asciz	"osPriority"                    @ string offset=958
.Linfo_string63:
	.asciz	"instances"                     @ string offset=969
.Linfo_string64:
	.asciz	"stacksize"                     @ string offset=979
.Linfo_string65:
	.asciz	"buffer"                        @ string offset=989
.Linfo_string66:
	.asciz	"controlblock"                  @ string offset=996
.Linfo_string67:
	.asciz	"osStaticThreadDef_t"           @ string offset=1009
.Linfo_string68:
	.asciz	"os_thread_def"                 @ string offset=1029
.Linfo_string69:
	.asciz	"osThreadDef_t"                 @ string offset=1043
.Linfo_string70:
	.asciz	"os_thread_def_ControlTask"     @ string offset=1057
.Linfo_string71:
	.asciz	"os_thread_def_HeartBeatTask"   @ string offset=1083
.Linfo_string72:
	.asciz	"os_thread_def_RealTimeTask"    @ string offset=1111
.Linfo_string73:
	.asciz	"argument"                      @ string offset=1138
	.ident	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
	.ARM_attribute	16, 1	@ Tag_AV_eba
	.section	.debug_line,"",%progbits
.Lline_table_start0:
