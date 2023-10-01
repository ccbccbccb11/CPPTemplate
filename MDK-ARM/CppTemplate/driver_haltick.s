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
	.file	"driver_haltick.cpp"
	.file	1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include" "stdint.h"
	.file	2 "E:\\RP\\CppTemplate\\MDK-ARM" "../User/drive/src/driver_haltick.cpp"
	.file	3 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h"
	.file	4 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include" "stddef.h"
	.section	.text.micros,"ax",%progbits
	.hidden	micros                          @ -- Begin function micros
	.globl	micros
	.p2align	2
	.type	micros,%function
	.code	16                              @ @micros
	.thumb_func
micros:
.Lfunc_begin0:
	.loc	2 24 0                          @ ../User/drive/src/driver_haltick.cpp:24:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
.Ltmp0:
	.loc	2 26 7 prologue_end             @ ../User/drive/src/driver_haltick.cpp:26:7
	bl	HAL_GetTick
.Ltmp1:
	@DEBUG_VALUE: micros:ms <- $r0
	.loc	2 0 7 is_stmt 0                 @ ../User/drive/src/driver_haltick.cpp:0:7
	movs	r1, #36
	movt	r1, #16384
	.loc	2 30 13 is_stmt 1               @ ../User/drive/src/driver_haltick.cpp:30:13
	ldr	r1, [r1]
.Ltmp2:
	@DEBUG_VALUE: micros:us <- $r1
	.loc	2 0 13 is_stmt 0                @ ../User/drive/src/driver_haltick.cpp:0:13
	mov.w	r2, #1000
	.loc	2 31 21 is_stmt 1               @ ../User/drive/src/driver_haltick.cpp:31:21
	mla	r0, r0, r2, r1
.Ltmp3:
	.loc	2 31 11 is_stmt 0               @ ../User/drive/src/driver_haltick.cpp:31:11
	movw	r1, :lower16:haltick
.Ltmp4:
	movt	r1, :upper16:haltick
	str	r0, [r1]
	.loc	2 32 2 is_stmt 1                @ ../User/drive/src/driver_haltick.cpp:32:2
	pop	{r7, pc}
.Ltmp5:
.Lfunc_end0:
	.size	micros, .Lfunc_end0-micros
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.delay_us,"ax",%progbits
	.hidden	delay_us                        @ -- Begin function delay_us
	.globl	delay_us
	.p2align	2
	.type	delay_us,%function
	.code	16                              @ @delay_us
	.thumb_func
delay_us:
.Lfunc_begin1:
	.loc	2 35 0                          @ ../User/drive/src/driver_haltick.cpp:35:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	@DEBUG_VALUE: delay_us:us <- $r0
	.save	{r4, r5, r6, r7, r8, lr}
	push.w	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset lr, -4
	.cfi_offset r8, -8
	.cfi_offset r7, -12
	.cfi_offset r6, -16
	.cfi_offset r5, -20
	.cfi_offset r4, -24
	movw	r8, #36
	mov	r4, r0
.Ltmp6:
	@DEBUG_VALUE: delay_us:us <- $r4
	@DEBUG_VALUE: delay_us:us <- $r4
	movt	r8, #16384
.Ltmp7:
	.loc	2 26 7 prologue_end             @ ../User/drive/src/driver_haltick.cpp:26:7
	bl	HAL_GetTick
.Ltmp8:
	@DEBUG_VALUE: micros:ms <- $r0
	.loc	2 30 13                         @ ../User/drive/src/driver_haltick.cpp:30:13
	ldr.w	r1, [r8]
.Ltmp9:
	@DEBUG_VALUE: micros:us <- $r1
	.loc	2 0 13 is_stmt 0                @ ../User/drive/src/driver_haltick.cpp:0:13
	mov.w	r6, #1000
	.loc	2 31 21 is_stmt 1               @ ../User/drive/src/driver_haltick.cpp:31:21
	mla	r7, r0, r6, r1
	.loc	2 31 11 is_stmt 0               @ ../User/drive/src/driver_haltick.cpp:31:11
	movw	r5, :lower16:haltick
	movt	r5, :upper16:haltick
	str	r7, [r5]
.Ltmp10:
	@DEBUG_VALUE: delay_us:now <- $r7
	.p2align	2
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: delay_us:now <- $r7
	@DEBUG_VALUE: delay_us:us <- $r4
	.loc	2 26 7 is_stmt 1                @ ../User/drive/src/driver_haltick.cpp:26:7
	bl	HAL_GetTick
.Ltmp11:
	.loc	2 30 13                         @ ../User/drive/src/driver_haltick.cpp:30:13
	ldr.w	r1, [r8]
.Ltmp12:
	@DEBUG_VALUE: micros:ms <- $r0
	@DEBUG_VALUE: micros:us <- $r1
	.loc	2 31 21                         @ ../User/drive/src/driver_haltick.cpp:31:21
	mla	r0, r0, r6, r1
.Ltmp13:
	.loc	2 37 18                         @ ../User/drive/src/driver_haltick.cpp:37:18
	subs	r1, r0, r7
.Ltmp14:
	.loc	2 37 2 is_stmt 0                @ ../User/drive/src/driver_haltick.cpp:37:2
	cmp	r1, r4
.Ltmp15:
	.loc	2 31 11 is_stmt 1               @ ../User/drive/src/driver_haltick.cpp:31:11
	str	r0, [r5]
.Ltmp16:
	.loc	2 37 2                          @ ../User/drive/src/driver_haltick.cpp:37:2
	blo	.LBB1_1
.Ltmp17:
@ %bb.2:
	@DEBUG_VALUE: delay_us:now <- $r7
	@DEBUG_VALUE: delay_us:us <- $r4
	.loc	2 39 1                          @ ../User/drive/src/driver_haltick.cpp:39:1
	pop.w	{r4, r5, r6, r7, r8, pc}
.Ltmp18:
.Lfunc_end1:
	.size	delay_us, .Lfunc_end1-delay_us
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.delay_ms,"ax",%progbits
	.hidden	delay_ms                        @ -- Begin function delay_ms
	.globl	delay_ms
	.p2align	2
	.type	delay_ms,%function
	.code	16                              @ @delay_ms
	.thumb_func
delay_ms:
.Lfunc_begin2:
	.loc	2 41 0                          @ ../User/drive/src/driver_haltick.cpp:41:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	@DEBUG_VALUE: delay_ms:ms <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $r0
	@DEBUG_VALUE: delay_ms:ms <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $r0
	.save	{r4, r5, r6, r7, r8, lr}
	push.w	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset lr, -4
	.cfi_offset r8, -8
	.cfi_offset r7, -12
	.cfi_offset r6, -16
	.cfi_offset r5, -20
	.cfi_offset r4, -24
.Ltmp19:
	.loc	2 42 2 prologue_end             @ ../User/drive/src/driver_haltick.cpp:42:2
	cbz	r0, .LBB2_5
.Ltmp20:
@ %bb.1:
	@DEBUG_VALUE: delay_ms:ms <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $r0
	.loc	2 0 2 is_stmt 0                 @ ../User/drive/src/driver_haltick.cpp:0:2
	movs	r5, #36
	movw	r7, :lower16:haltick
	mov	r8, r0
.Ltmp21:
	@DEBUG_VALUE: delay_ms:ms <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $r8
	@DEBUG_VALUE: delay_ms:ms <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $r8
	movt	r5, #16384
	mov.w	r6, #1000
	movt	r7, :upper16:haltick
	b	.LBB2_3
.Ltmp22:
	.p2align	2
.LBB2_2:                                @   in Loop: Header=BB2_3 Depth=1
	@DEBUG_VALUE: delay_ms:ms <- $r8
	.loc	2 42 10                         @ ../User/drive/src/driver_haltick.cpp:42:10
	subs.w	r8, r8, #1
.Ltmp23:
	@DEBUG_VALUE: delay_ms:ms <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $r8
	.loc	2 44 1 is_stmt 1                @ ../User/drive/src/driver_haltick.cpp:44:1
	it	eq
	popeq.w	{r4, r5, r6, r7, r8, pc}
.Ltmp24:
.LBB2_3:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB2_4 Depth 2
	@DEBUG_VALUE: delay_ms:ms <- $r8
	@DEBUG_VALUE: delay_us:us <- 1000
	.loc	2 26 7                          @ ../User/drive/src/driver_haltick.cpp:26:7
	bl	HAL_GetTick
.Ltmp25:
	.loc	2 30 13                         @ ../User/drive/src/driver_haltick.cpp:30:13
	ldr	r1, [r5]
.Ltmp26:
	@DEBUG_VALUE: micros:ms <- $r0
	@DEBUG_VALUE: micros:us <- $r1
	.loc	2 31 21                         @ ../User/drive/src/driver_haltick.cpp:31:21
	mla	r4, r0, r6, r1
	.loc	2 31 11 is_stmt 0               @ ../User/drive/src/driver_haltick.cpp:31:11
	str	r4, [r7]
.Ltmp27:
	@DEBUG_VALUE: delay_us:now <- $r4
	.p2align	2
.LBB2_4:                                @   Parent Loop BB2_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	@DEBUG_VALUE: delay_us:now <- $r4
	@DEBUG_VALUE: delay_us:us <- 1000
	@DEBUG_VALUE: delay_ms:ms <- $r8
	.loc	2 26 7 is_stmt 1                @ ../User/drive/src/driver_haltick.cpp:26:7
	bl	HAL_GetTick
.Ltmp28:
	.loc	2 30 13                         @ ../User/drive/src/driver_haltick.cpp:30:13
	ldr	r1, [r5]
.Ltmp29:
	@DEBUG_VALUE: micros:ms <- $r0
	@DEBUG_VALUE: micros:us <- $r1
	.loc	2 31 21                         @ ../User/drive/src/driver_haltick.cpp:31:21
	mla	r0, r0, r6, r1
.Ltmp30:
	.loc	2 37 18                         @ ../User/drive/src/driver_haltick.cpp:37:18
	subs	r1, r0, r4
.Ltmp31:
	.loc	2 37 2 is_stmt 0                @ ../User/drive/src/driver_haltick.cpp:37:2
	cmp.w	r1, #1000
.Ltmp32:
	.loc	2 31 11 is_stmt 1               @ ../User/drive/src/driver_haltick.cpp:31:11
	str	r0, [r7]
.Ltmp33:
	.loc	2 37 2                          @ ../User/drive/src/driver_haltick.cpp:37:2
	blo	.LBB2_4
	b	.LBB2_2
.Ltmp34:
	.p2align	2
.LBB2_5:
	@DEBUG_VALUE: delay_ms:ms <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $r0
	.loc	2 44 1                          @ ../User/drive/src/driver_haltick.cpp:44:1
	pop.w	{r4, r5, r6, r7, r8, pc}
.Ltmp35:
.Lfunc_end2:
	.size	delay_ms, .Lfunc_end2-delay_ms
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.hidden	haltick                         @ @haltick
	.type	haltick,%object
	.section	.bss.haltick,"aw",%nobits
	.globl	haltick
	.p2align	2, 0x0
haltick:
	.long	0                               @ 0x0
	.size	haltick, 4

	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
	.long	-1
	.long	.Lfunc_begin0                   @   base address
	.long	.Ltmp1-.Lfunc_begin0
	.long	.Ltmp3-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc1:
	.long	-1
	.long	.Lfunc_begin0                   @   base address
	.long	.Ltmp2-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc2:
	.long	-1
	.long	.Lfunc_begin1                   @   base address
	.long	.Lfunc_begin1-.Lfunc_begin1
	.long	.Ltmp6-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.long	.Ltmp6-.Lfunc_begin1
	.long	.Ltmp18-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc3:
	.long	-1
	.long	.Lfunc_begin1                   @   base address
	.long	.Ltmp8-.Lfunc_begin1
	.long	.Ltmp10-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc4:
	.long	-1
	.long	.Lfunc_begin1                   @   base address
	.long	.Ltmp9-.Lfunc_begin1
	.long	.Ltmp10-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc5:
	.long	-1
	.long	.Lfunc_begin1                   @   base address
	.long	.Ltmp10-.Lfunc_begin1
	.long	.Ltmp18-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.long	0
	.long	0
.Ldebug_loc6:
	.long	-1
	.long	.Lfunc_begin1                   @   base address
	.long	.Ltmp12-.Lfunc_begin1
	.long	.Ltmp13-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc7:
	.long	-1
	.long	.Lfunc_begin1                   @   base address
	.long	.Ltmp12-.Lfunc_begin1
	.long	.Ltmp14-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc8:
	.long	-1
	.long	.Lfunc_begin2                   @   base address
	.long	.Lfunc_begin2-.Lfunc_begin2
	.long	.Ltmp21-.Lfunc_begin2
	.short	3                               @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	127                             @ -1
	.byte	159                             @ DW_OP_stack_value
	.long	.Ltmp21-.Lfunc_begin2
	.long	.Ltmp22-.Lfunc_begin2
	.short	3                               @ Loc expr size
	.byte	120                             @ DW_OP_breg8
	.byte	127                             @ -1
	.byte	159                             @ DW_OP_stack_value
	.long	.Ltmp22-.Lfunc_begin2
	.long	.Ltmp23-.Lfunc_begin2
	.short	1                               @ Loc expr size
	.byte	88                              @ DW_OP_reg8
	.long	.Ltmp23-.Lfunc_begin2
	.long	.Ltmp24-.Lfunc_begin2
	.short	3                               @ Loc expr size
	.byte	120                             @ DW_OP_breg8
	.byte	127                             @ -1
	.byte	159                             @ DW_OP_stack_value
	.long	.Ltmp24-.Lfunc_begin2
	.long	.Ltmp34-.Lfunc_begin2
	.short	1                               @ Loc expr size
	.byte	88                              @ DW_OP_reg8
	.long	.Ltmp34-.Lfunc_begin2
	.long	.Lfunc_end2-.Lfunc_begin2
	.short	3                               @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	127                             @ -1
	.byte	159                             @ DW_OP_stack_value
	.long	0
	.long	0
.Ldebug_loc9:
	.long	-1
	.long	.Lfunc_begin2                   @   base address
	.long	.Ltmp26-.Lfunc_begin2
	.long	.Ltmp27-.Lfunc_begin2
	.short	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc10:
	.long	-1
	.long	.Lfunc_begin2                   @   base address
	.long	.Ltmp26-.Lfunc_begin2
	.long	.Ltmp27-.Lfunc_begin2
	.short	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc11:
	.long	-1
	.long	.Lfunc_begin2                   @   base address
	.long	.Ltmp27-.Lfunc_begin2
	.long	.Ltmp34-.Lfunc_begin2
	.short	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc12:
	.long	-1
	.long	.Lfunc_begin2                   @   base address
	.long	.Ltmp29-.Lfunc_begin2
	.long	.Ltmp30-.Lfunc_begin2
	.short	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc13:
	.long	-1
	.long	.Lfunc_begin2                   @   base address
	.long	.Ltmp29-.Lfunc_begin2
	.long	.Ltmp31-.Lfunc_begin2
	.short	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.long	0
	.long	0
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
	.byte	5                               @ Abbreviation Code
	.byte	15                              @ DW_TAG_pointer_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	6                               @ Abbreviation Code
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
	.byte	7                               @ Abbreviation Code
	.byte	19                              @ DW_TAG_structure_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	54                              @ DW_AT_calling_convention
	.byte	11                              @ DW_FORM_data1
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	8                               @ Abbreviation Code
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
	.byte	9                               @ Abbreviation Code
	.byte	53                              @ DW_TAG_volatile_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	10                              @ Abbreviation Code
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
	.byte	11                              @ Abbreviation Code
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
	.byte	12                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	64                              @ DW_AT_frame_base
	.byte	24                              @ DW_FORM_exprloc
	.ascii	"\227B"                         @ DW_AT_GNU_all_call_sites
	.byte	25                              @ DW_FORM_flag_present
	.byte	49                              @ DW_AT_abstract_origin
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	13                              @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	23                              @ DW_FORM_sec_offset
	.byte	49                              @ DW_AT_abstract_origin
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	14                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	32                              @ DW_AT_inline
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	15                              @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
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
	.byte	16                              @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	23                              @ DW_FORM_sec_offset
	.byte	49                              @ DW_AT_abstract_origin
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	17                              @ Abbreviation Code
	.byte	29                              @ DW_TAG_inlined_subroutine
	.byte	1                               @ DW_CHILDREN_yes
	.byte	49                              @ DW_AT_abstract_origin
	.byte	19                              @ DW_FORM_ref4
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	88                              @ DW_AT_call_file
	.byte	11                              @ DW_FORM_data1
	.byte	89                              @ DW_AT_call_line
	.byte	11                              @ DW_FORM_data1
	.byte	87                              @ DW_AT_call_column
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	18                              @ Abbreviation Code
	.byte	29                              @ DW_TAG_inlined_subroutine
	.byte	1                               @ DW_CHILDREN_yes
	.byte	49                              @ DW_AT_abstract_origin
	.byte	19                              @ DW_FORM_ref4
	.byte	85                              @ DW_AT_ranges
	.byte	23                              @ DW_FORM_sec_offset
	.byte	88                              @ DW_AT_call_file
	.byte	11                              @ DW_FORM_data1
	.byte	89                              @ DW_AT_call_line
	.byte	11                              @ DW_FORM_data1
	.byte	87                              @ DW_AT_call_column
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	19                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	32                              @ DW_AT_inline
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	20                              @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
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
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	64                              @ DW_AT_frame_base
	.byte	24                              @ DW_FORM_exprloc
	.ascii	"\227B"                         @ DW_AT_GNU_all_call_sites
	.byte	25                              @ DW_FORM_flag_present
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
	.byte	22                              @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	23                              @ DW_FORM_sec_offset
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
	.byte	23                              @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	28                              @ DW_AT_const_value
	.byte	15                              @ DW_FORM_udata
	.byte	49                              @ DW_AT_abstract_origin
	.byte	19                              @ DW_FORM_ref4
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
	.byte	1                               @ Abbrev [1] 0xb:0x530 DW_TAG_compile_unit
	.long	.Linfo_string0                  @ DW_AT_producer
	.short	26                              @ DW_AT_language
	.long	.Linfo_string1                  @ DW_AT_name
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.long	.Linfo_string2                  @ DW_AT_comp_dir
	.long	0                               @ DW_AT_low_pc
	.long	.Ldebug_ranges2                 @ DW_AT_ranges
	.byte	2                               @ Abbrev [2] 0x26:0x11 DW_TAG_variable
	.long	.Linfo_string3                  @ DW_AT_name
	.long	55                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	2                               @ DW_AT_decl_file
	.byte	15                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	haltick
	.byte	3                               @ Abbrev [3] 0x37:0xb DW_TAG_typedef
	.long	66                              @ DW_AT_type
	.long	.Linfo_string5                  @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	64                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x42:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	5                               @ Abbrev [5] 0x49:0x5 DW_TAG_pointer_type
	.long	78                              @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x4e:0xc DW_TAG_typedef
	.long	90                              @ DW_AT_type
	.long	.Linfo_string27                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.short	751                             @ DW_AT_decl_line
	.byte	7                               @ Abbrev [7] 0x5a:0x118 DW_TAG_structure_type
	.byte	5                               @ DW_AT_calling_convention
	.byte	84                              @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.short	728                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x60:0xd DW_TAG_member
	.long	.Linfo_string6                  @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	730                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x6d:0xd DW_TAG_member
	.long	.Linfo_string7                  @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	731                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x7a:0xd DW_TAG_member
	.long	.Linfo_string8                  @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	732                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x87:0xd DW_TAG_member
	.long	.Linfo_string9                  @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	733                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x94:0xd DW_TAG_member
	.long	.Linfo_string10                 @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	734                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0xa1:0xd DW_TAG_member
	.long	.Linfo_string11                 @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	735                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0xae:0xd DW_TAG_member
	.long	.Linfo_string12                 @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	736                             @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0xbb:0xd DW_TAG_member
	.long	.Linfo_string13                 @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	737                             @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0xc8:0xd DW_TAG_member
	.long	.Linfo_string14                 @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	738                             @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0xd5:0xd DW_TAG_member
	.long	.Linfo_string15                 @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	739                             @ DW_AT_decl_line
	.byte	36                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0xe2:0xd DW_TAG_member
	.long	.Linfo_string16                 @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	740                             @ DW_AT_decl_line
	.byte	40                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0xef:0xd DW_TAG_member
	.long	.Linfo_string17                 @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	741                             @ DW_AT_decl_line
	.byte	44                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0xfc:0xd DW_TAG_member
	.long	.Linfo_string18                 @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	742                             @ DW_AT_decl_line
	.byte	48                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x109:0xd DW_TAG_member
	.long	.Linfo_string19                 @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	743                             @ DW_AT_decl_line
	.byte	52                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x116:0xd DW_TAG_member
	.long	.Linfo_string20                 @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	744                             @ DW_AT_decl_line
	.byte	56                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x123:0xd DW_TAG_member
	.long	.Linfo_string21                 @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	745                             @ DW_AT_decl_line
	.byte	60                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x130:0xd DW_TAG_member
	.long	.Linfo_string22                 @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	746                             @ DW_AT_decl_line
	.byte	64                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x13d:0xd DW_TAG_member
	.long	.Linfo_string23                 @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	747                             @ DW_AT_decl_line
	.byte	68                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x14a:0xd DW_TAG_member
	.long	.Linfo_string24                 @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	748                             @ DW_AT_decl_line
	.byte	72                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x157:0xd DW_TAG_member
	.long	.Linfo_string25                 @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	749                             @ DW_AT_decl_line
	.byte	76                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x164:0xd DW_TAG_member
	.long	.Linfo_string26                 @ DW_AT_name
	.long	370                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	750                             @ DW_AT_decl_line
	.byte	80                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x172:0x5 DW_TAG_volatile_type
	.long	55                              @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x177:0xb DW_TAG_typedef
	.long	386                             @ DW_AT_type
	.long	.Linfo_string29                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	56                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x182:0x7 DW_TAG_base_type
	.long	.Linfo_string28                 @ DW_AT_name
	.byte	6                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	10                              @ Abbrev [10] 0x189:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	275                             @ DW_AT_decl_line
	.long	375                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x191:0xb DW_TAG_typedef
	.long	412                             @ DW_AT_type
	.long	.Linfo_string31                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	57                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x19c:0x7 DW_TAG_base_type
	.long	.Linfo_string30                 @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	10                              @ Abbrev [10] 0x1a3:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	276                             @ DW_AT_decl_line
	.long	401                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x1ab:0xb DW_TAG_typedef
	.long	438                             @ DW_AT_type
	.long	.Linfo_string33                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	58                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x1b6:0x7 DW_TAG_base_type
	.long	.Linfo_string32                 @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	10                              @ Abbrev [10] 0x1bd:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	277                             @ DW_AT_decl_line
	.long	427                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x1c5:0xb DW_TAG_typedef
	.long	464                             @ DW_AT_type
	.long	.Linfo_string35                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	59                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x1d0:0x7 DW_TAG_base_type
	.long	.Linfo_string34                 @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	8                               @ DW_AT_byte_size
	.byte	10                              @ Abbrev [10] 0x1d7:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	278                             @ DW_AT_decl_line
	.long	453                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x1df:0xb DW_TAG_typedef
	.long	490                             @ DW_AT_type
	.long	.Linfo_string37                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	62                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x1ea:0x7 DW_TAG_base_type
	.long	.Linfo_string36                 @ DW_AT_name
	.byte	8                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	10                              @ Abbrev [10] 0x1f1:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	279                             @ DW_AT_decl_line
	.long	479                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x1f9:0xb DW_TAG_typedef
	.long	516                             @ DW_AT_type
	.long	.Linfo_string39                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x204:0x7 DW_TAG_base_type
	.long	.Linfo_string38                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	10                              @ Abbrev [10] 0x20b:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	280                             @ DW_AT_decl_line
	.long	505                             @ DW_AT_import
	.byte	10                              @ Abbrev [10] 0x213:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	281                             @ DW_AT_decl_line
	.long	55                              @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x21b:0xb DW_TAG_typedef
	.long	550                             @ DW_AT_type
	.long	.Linfo_string41                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	65                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x226:0x7 DW_TAG_base_type
	.long	.Linfo_string40                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	8                               @ DW_AT_byte_size
	.byte	10                              @ Abbrev [10] 0x22d:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	282                             @ DW_AT_decl_line
	.long	539                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x235:0xb DW_TAG_typedef
	.long	386                             @ DW_AT_type
	.long	.Linfo_string42                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	71                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x240:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	283                             @ DW_AT_decl_line
	.long	565                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x248:0xb DW_TAG_typedef
	.long	412                             @ DW_AT_type
	.long	.Linfo_string43                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	72                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x253:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	284                             @ DW_AT_decl_line
	.long	584                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x25b:0xb DW_TAG_typedef
	.long	438                             @ DW_AT_type
	.long	.Linfo_string44                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	73                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x266:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	285                             @ DW_AT_decl_line
	.long	603                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x26e:0xb DW_TAG_typedef
	.long	464                             @ DW_AT_type
	.long	.Linfo_string45                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	74                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x279:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	286                             @ DW_AT_decl_line
	.long	622                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x281:0xb DW_TAG_typedef
	.long	490                             @ DW_AT_type
	.long	.Linfo_string46                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	77                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x28c:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	287                             @ DW_AT_decl_line
	.long	641                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x294:0xb DW_TAG_typedef
	.long	516                             @ DW_AT_type
	.long	.Linfo_string47                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	78                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x29f:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	288                             @ DW_AT_decl_line
	.long	660                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x2a7:0xb DW_TAG_typedef
	.long	66                              @ DW_AT_type
	.long	.Linfo_string48                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	79                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x2b2:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	289                             @ DW_AT_decl_line
	.long	679                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x2ba:0xb DW_TAG_typedef
	.long	550                             @ DW_AT_type
	.long	.Linfo_string49                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	80                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x2c5:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	290                             @ DW_AT_decl_line
	.long	698                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x2cd:0xb DW_TAG_typedef
	.long	438                             @ DW_AT_type
	.long	.Linfo_string50                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	85                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x2d8:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	291                             @ DW_AT_decl_line
	.long	717                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x2e0:0xb DW_TAG_typedef
	.long	438                             @ DW_AT_type
	.long	.Linfo_string51                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	86                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x2eb:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	292                             @ DW_AT_decl_line
	.long	736                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x2f3:0xb DW_TAG_typedef
	.long	438                             @ DW_AT_type
	.long	.Linfo_string52                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	87                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x2fe:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	293                             @ DW_AT_decl_line
	.long	755                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x306:0xb DW_TAG_typedef
	.long	464                             @ DW_AT_type
	.long	.Linfo_string53                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	88                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x311:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	294                             @ DW_AT_decl_line
	.long	774                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x319:0xb DW_TAG_typedef
	.long	66                              @ DW_AT_type
	.long	.Linfo_string54                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	91                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x324:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	295                             @ DW_AT_decl_line
	.long	793                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x32c:0xb DW_TAG_typedef
	.long	66                              @ DW_AT_type
	.long	.Linfo_string55                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	92                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x337:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	296                             @ DW_AT_decl_line
	.long	812                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x33f:0xb DW_TAG_typedef
	.long	66                              @ DW_AT_type
	.long	.Linfo_string56                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	93                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x34a:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	297                             @ DW_AT_decl_line
	.long	831                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x352:0xb DW_TAG_typedef
	.long	550                             @ DW_AT_type
	.long	.Linfo_string57                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	94                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x35d:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	298                             @ DW_AT_decl_line
	.long	850                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x365:0xb DW_TAG_typedef
	.long	438                             @ DW_AT_type
	.long	.Linfo_string58                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	101                             @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x370:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	299                             @ DW_AT_decl_line
	.long	869                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x378:0xb DW_TAG_typedef
	.long	66                              @ DW_AT_type
	.long	.Linfo_string59                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	102                             @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x383:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	300                             @ DW_AT_decl_line
	.long	888                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x38b:0xb DW_TAG_typedef
	.long	464                             @ DW_AT_type
	.long	.Linfo_string60                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	106                             @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x396:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	301                             @ DW_AT_decl_line
	.long	907                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x39e:0xb DW_TAG_typedef
	.long	550                             @ DW_AT_type
	.long	.Linfo_string61                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	107                             @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x3a9:0x8 DW_TAG_imported_declaration
	.byte	1                               @ DW_AT_decl_file
	.short	302                             @ DW_AT_decl_line
	.long	926                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x3b1:0xb DW_TAG_typedef
	.long	66                              @ DW_AT_type
	.long	.Linfo_string62                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
	.byte	11                              @ Abbrev [11] 0x3bc:0x7 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.byte	107                             @ DW_AT_decl_line
	.long	945                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x3c3:0xb DW_TAG_typedef
	.long	438                             @ DW_AT_type
	.long	.Linfo_string63                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	38                              @ DW_AT_decl_line
	.byte	11                              @ Abbrev [11] 0x3ce:0x7 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.byte	108                             @ DW_AT_decl_line
	.long	963                             @ DW_AT_import
	.byte	3                               @ Abbrev [3] 0x3d5:0xb DW_TAG_typedef
	.long	992                             @ DW_AT_type
	.long	.Linfo_string65                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	95                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x3e0:0x7 DW_TAG_base_type
	.long	.Linfo_string64                 @ DW_AT_name
	.byte	4                               @ DW_AT_encoding
	.byte	8                               @ DW_AT_byte_size
	.byte	11                              @ Abbrev [11] 0x3e7:0x7 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.byte	110                             @ DW_AT_decl_line
	.long	981                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x3ee:0x22 DW_TAG_subprogram
	.long	.Lfunc_begin0                   @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
                                        @ DW_AT_GNU_all_call_sites
	.long	1040                            @ DW_AT_abstract_origin
	.byte	13                              @ Abbrev [13] 0x3fd:0x9 DW_TAG_variable
	.long	.Ldebug_loc0                    @ DW_AT_location
	.long	1052                            @ DW_AT_abstract_origin
	.byte	13                              @ Abbrev [13] 0x406:0x9 DW_TAG_variable
	.long	.Ldebug_loc1                    @ DW_AT_location
	.long	1063                            @ DW_AT_abstract_origin
	.byte	0                               @ End Of Children Mark
	.byte	14                              @ Abbrev [14] 0x410:0x23 DW_TAG_subprogram
	.long	.Linfo_string66                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	24                              @ DW_AT_decl_line
	.long	55                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_inline
	.byte	15                              @ Abbrev [15] 0x41c:0xb DW_TAG_variable
	.long	.Linfo_string67                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	25                              @ DW_AT_decl_line
	.long	55                              @ DW_AT_type
	.byte	15                              @ Abbrev [15] 0x427:0xb DW_TAG_variable
	.long	.Linfo_string68                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	25                              @ DW_AT_decl_line
	.long	55                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	12                              @ Abbrev [12] 0x433:0x64 DW_TAG_subprogram
	.long	.Lfunc_begin1                   @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
                                        @ DW_AT_GNU_all_call_sites
	.long	1175                            @ DW_AT_abstract_origin
	.byte	16                              @ Abbrev [16] 0x442:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc2                    @ DW_AT_location
	.long	1183                            @ DW_AT_abstract_origin
	.byte	13                              @ Abbrev [13] 0x44b:0x9 DW_TAG_variable
	.long	.Ldebug_loc5                    @ DW_AT_location
	.long	1194                            @ DW_AT_abstract_origin
	.byte	17                              @ Abbrev [17] 0x454:0x23 DW_TAG_inlined_subroutine
	.long	1040                            @ DW_AT_abstract_origin
	.long	.Ltmp7                          @ DW_AT_low_pc
	.long	.Ltmp10-.Ltmp7                  @ DW_AT_high_pc
	.byte	2                               @ DW_AT_call_file
	.byte	36                              @ DW_AT_call_line
	.byte	17                              @ DW_AT_call_column
	.byte	13                              @ Abbrev [13] 0x464:0x9 DW_TAG_variable
	.long	.Ldebug_loc3                    @ DW_AT_location
	.long	1052                            @ DW_AT_abstract_origin
	.byte	13                              @ Abbrev [13] 0x46d:0x9 DW_TAG_variable
	.long	.Ldebug_loc4                    @ DW_AT_location
	.long	1063                            @ DW_AT_abstract_origin
	.byte	0                               @ End Of Children Mark
	.byte	18                              @ Abbrev [18] 0x477:0x1f DW_TAG_inlined_subroutine
	.long	1040                            @ DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 @ DW_AT_ranges
	.byte	2                               @ DW_AT_call_file
	.byte	37                              @ DW_AT_call_line
	.byte	9                               @ DW_AT_call_column
	.byte	13                              @ Abbrev [13] 0x483:0x9 DW_TAG_variable
	.long	.Ldebug_loc6                    @ DW_AT_location
	.long	1052                            @ DW_AT_abstract_origin
	.byte	13                              @ Abbrev [13] 0x48c:0x9 DW_TAG_variable
	.long	.Ldebug_loc7                    @ DW_AT_location
	.long	1063                            @ DW_AT_abstract_origin
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
	.byte	19                              @ Abbrev [19] 0x497:0x1f DW_TAG_subprogram
	.long	.Linfo_string69                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	35                              @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_inline
	.byte	20                              @ Abbrev [20] 0x49f:0xb DW_TAG_formal_parameter
	.long	.Linfo_string68                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	35                              @ DW_AT_decl_line
	.long	55                              @ DW_AT_type
	.byte	15                              @ Abbrev [15] 0x4aa:0xb DW_TAG_variable
	.long	.Linfo_string70                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	36                              @ DW_AT_decl_line
	.long	55                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	21                              @ Abbrev [21] 0x4b6:0x84 DW_TAG_subprogram
	.long	.Lfunc_begin2                   @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
                                        @ DW_AT_GNU_all_call_sites
	.long	.Linfo_string71                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	41                              @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	22                              @ Abbrev [22] 0x4c7:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc8                    @ DW_AT_location
	.long	.Linfo_string67                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	41                              @ DW_AT_decl_line
	.long	55                              @ DW_AT_type
	.byte	17                              @ Abbrev [17] 0x4d6:0x63 DW_TAG_inlined_subroutine
	.long	1175                            @ DW_AT_abstract_origin
	.long	.Ltmp24                         @ DW_AT_low_pc
	.long	.Ltmp34-.Ltmp24                 @ DW_AT_high_pc
	.byte	2                               @ DW_AT_call_file
	.byte	43                              @ DW_AT_call_line
	.byte	3                               @ DW_AT_call_column
	.byte	23                              @ Abbrev [23] 0x4e6:0x7 DW_TAG_formal_parameter
	.ascii	"\350\007"                      @ DW_AT_const_value
	.long	1183                            @ DW_AT_abstract_origin
	.byte	13                              @ Abbrev [13] 0x4ed:0x9 DW_TAG_variable
	.long	.Ldebug_loc11                   @ DW_AT_location
	.long	1194                            @ DW_AT_abstract_origin
	.byte	17                              @ Abbrev [17] 0x4f6:0x23 DW_TAG_inlined_subroutine
	.long	1040                            @ DW_AT_abstract_origin
	.long	.Ltmp24                         @ DW_AT_low_pc
	.long	.Ltmp27-.Ltmp24                 @ DW_AT_high_pc
	.byte	2                               @ DW_AT_call_file
	.byte	36                              @ DW_AT_call_line
	.byte	17                              @ DW_AT_call_column
	.byte	13                              @ Abbrev [13] 0x506:0x9 DW_TAG_variable
	.long	.Ldebug_loc9                    @ DW_AT_location
	.long	1052                            @ DW_AT_abstract_origin
	.byte	13                              @ Abbrev [13] 0x50f:0x9 DW_TAG_variable
	.long	.Ldebug_loc10                   @ DW_AT_location
	.long	1063                            @ DW_AT_abstract_origin
	.byte	0                               @ End Of Children Mark
	.byte	18                              @ Abbrev [18] 0x519:0x1f DW_TAG_inlined_subroutine
	.long	1040                            @ DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 @ DW_AT_ranges
	.byte	2                               @ DW_AT_call_file
	.byte	37                              @ DW_AT_call_line
	.byte	9                               @ DW_AT_call_column
	.byte	13                              @ Abbrev [13] 0x525:0x9 DW_TAG_variable
	.long	.Ldebug_loc12                   @ DW_AT_location
	.long	1052                            @ DW_AT_abstract_origin
	.byte	13                              @ Abbrev [13] 0x52e:0x9 DW_TAG_variable
	.long	.Ldebug_loc13                   @ DW_AT_location
	.long	1063                            @ DW_AT_abstract_origin
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.long	.Ltmp10
	.long	.Ltmp13
	.long	.Ltmp15
	.long	.Ltmp16
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp27
	.long	.Ltmp30
	.long	.Ltmp32
	.long	.Ltmp33
	.long	0
	.long	0
.Ldebug_ranges2:
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.long	.Lfunc_begin2
	.long	.Lfunc_end2
	.long	0
	.long	0
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]" @ string offset=0
.Linfo_string1:
	.asciz	"../User/drive/src\\driver_haltick.cpp" @ string offset=68
.Linfo_string2:
	.asciz	"E:\\RP\\CppTemplate\\MDK-ARM"  @ string offset=105
.Linfo_string3:
	.asciz	"haltick"                       @ string offset=131
.Linfo_string4:
	.asciz	"unsigned int"                  @ string offset=139
.Linfo_string5:
	.asciz	"uint32_t"                      @ string offset=152
.Linfo_string6:
	.asciz	"CR1"                           @ string offset=161
.Linfo_string7:
	.asciz	"CR2"                           @ string offset=165
.Linfo_string8:
	.asciz	"SMCR"                          @ string offset=169
.Linfo_string9:
	.asciz	"DIER"                          @ string offset=174
.Linfo_string10:
	.asciz	"SR"                            @ string offset=179
.Linfo_string11:
	.asciz	"EGR"                           @ string offset=182
.Linfo_string12:
	.asciz	"CCMR1"                         @ string offset=186
.Linfo_string13:
	.asciz	"CCMR2"                         @ string offset=192
.Linfo_string14:
	.asciz	"CCER"                          @ string offset=198
.Linfo_string15:
	.asciz	"CNT"                           @ string offset=203
.Linfo_string16:
	.asciz	"PSC"                           @ string offset=207
.Linfo_string17:
	.asciz	"ARR"                           @ string offset=211
.Linfo_string18:
	.asciz	"RCR"                           @ string offset=215
.Linfo_string19:
	.asciz	"CCR1"                          @ string offset=219
.Linfo_string20:
	.asciz	"CCR2"                          @ string offset=224
.Linfo_string21:
	.asciz	"CCR3"                          @ string offset=229
.Linfo_string22:
	.asciz	"CCR4"                          @ string offset=234
.Linfo_string23:
	.asciz	"BDTR"                          @ string offset=239
.Linfo_string24:
	.asciz	"DCR"                           @ string offset=244
.Linfo_string25:
	.asciz	"DMAR"                          @ string offset=248
.Linfo_string26:
	.asciz	"OR"                            @ string offset=253
.Linfo_string27:
	.asciz	"TIM_TypeDef"                   @ string offset=256
.Linfo_string28:
	.asciz	"signed char"                   @ string offset=268
.Linfo_string29:
	.asciz	"int8_t"                        @ string offset=280
.Linfo_string30:
	.asciz	"short"                         @ string offset=287
.Linfo_string31:
	.asciz	"int16_t"                       @ string offset=293
.Linfo_string32:
	.asciz	"int"                           @ string offset=301
.Linfo_string33:
	.asciz	"int32_t"                       @ string offset=305
.Linfo_string34:
	.asciz	"long long"                     @ string offset=313
.Linfo_string35:
	.asciz	"int64_t"                       @ string offset=323
.Linfo_string36:
	.asciz	"unsigned char"                 @ string offset=331
.Linfo_string37:
	.asciz	"uint8_t"                       @ string offset=345
.Linfo_string38:
	.asciz	"unsigned short"                @ string offset=353
.Linfo_string39:
	.asciz	"uint16_t"                      @ string offset=368
.Linfo_string40:
	.asciz	"unsigned long long"            @ string offset=377
.Linfo_string41:
	.asciz	"uint64_t"                      @ string offset=396
.Linfo_string42:
	.asciz	"int_least8_t"                  @ string offset=405
.Linfo_string43:
	.asciz	"int_least16_t"                 @ string offset=418
.Linfo_string44:
	.asciz	"int_least32_t"                 @ string offset=432
.Linfo_string45:
	.asciz	"int_least64_t"                 @ string offset=446
.Linfo_string46:
	.asciz	"uint_least8_t"                 @ string offset=460
.Linfo_string47:
	.asciz	"uint_least16_t"                @ string offset=474
.Linfo_string48:
	.asciz	"uint_least32_t"                @ string offset=489
.Linfo_string49:
	.asciz	"uint_least64_t"                @ string offset=504
.Linfo_string50:
	.asciz	"int_fast8_t"                   @ string offset=519
.Linfo_string51:
	.asciz	"int_fast16_t"                  @ string offset=531
.Linfo_string52:
	.asciz	"int_fast32_t"                  @ string offset=544
.Linfo_string53:
	.asciz	"int_fast64_t"                  @ string offset=557
.Linfo_string54:
	.asciz	"uint_fast8_t"                  @ string offset=570
.Linfo_string55:
	.asciz	"uint_fast16_t"                 @ string offset=583
.Linfo_string56:
	.asciz	"uint_fast32_t"                 @ string offset=597
.Linfo_string57:
	.asciz	"uint_fast64_t"                 @ string offset=611
.Linfo_string58:
	.asciz	"intptr_t"                      @ string offset=625
.Linfo_string59:
	.asciz	"uintptr_t"                     @ string offset=634
.Linfo_string60:
	.asciz	"intmax_t"                      @ string offset=644
.Linfo_string61:
	.asciz	"uintmax_t"                     @ string offset=653
.Linfo_string62:
	.asciz	"size_t"                        @ string offset=663
.Linfo_string63:
	.asciz	"ptrdiff_t"                     @ string offset=670
.Linfo_string64:
	.asciz	"long double"                   @ string offset=680
.Linfo_string65:
	.asciz	"max_align_t"                   @ string offset=692
.Linfo_string66:
	.asciz	"micros"                        @ string offset=704
.Linfo_string67:
	.asciz	"ms"                            @ string offset=711
.Linfo_string68:
	.asciz	"us"                            @ string offset=714
.Linfo_string69:
	.asciz	"delay_us"                      @ string offset=717
.Linfo_string70:
	.asciz	"now"                           @ string offset=726
.Linfo_string71:
	.asciz	"delay_ms"                      @ string offset=730
	.ident	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
	.ARM_attribute	16, 1	@ Tag_AV_eba
	.section	.debug_line,"",%progbits
.Lline_table_start0:
