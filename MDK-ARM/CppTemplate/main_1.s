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
	.file	"main.c"
	.file	1 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_def.h"
	.file	2 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc\\stm32f4xx_hal_tim.h"
	.file	3 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc\\stm32f4xx_hal_dma.h"
	.file	4 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include" "stdint.h"
	.file	5 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h"
	.section	.text.SystemClock_Config,"ax",%progbits
	.hidden	SystemClock_Config              @ -- Begin function SystemClock_Config
	.globl	SystemClock_Config
	.p2align	2
	.type	SystemClock_Config,%function
	.code	16                              @ @SystemClock_Config
	.thumb_func
SystemClock_Config:
.Lfunc_begin0:
	.file	6 "E:\\RP\\CppTemplate\\MDK-ARM" "../Core/Src/main.c"
	.loc	6 77 0                          @ ../Core/Src/main.c:77:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.cfi_offset r5, -12
	.cfi_offset r4, -16
	.pad	#72
	sub	sp, #72
	.cfi_def_cfa_offset 88
	movs	r4, #0
	movw	r0, #14400
.Ltmp0:
	.loc	6 78 22 prologue_end            @ ../Core/Src/main.c:78:22
	strd	r4, r4, [sp, #40]
	strd	r4, r4, [sp, #32]
	.loc	6 79 22                         @ ../Core/Src/main.c:79:22
	str	r4, [sp, #20]
	strd	r4, r4, [sp, #12]
	strd	r4, r4, [sp, #4]
.Ltmp1:
	.loc	6 83 3                          @ ../Core/Src/main.c:83:3
	str	r4, [sp]
	movt	r0, #16386
	ldr	r1, [r0]
	movs	r5, #2
	orr	r1, r1, #268435456
	str	r1, [r0]
	ldr	r0, [r0]
	and	r0, r0, #268435456
	str	r0, [sp]
	ldr	r0, [sp]
	movw	r0, #28672
.Ltmp2:
	.loc	6 84 3                          @ ../Core/Src/main.c:84:3
	str	r4, [sp]
	movt	r0, #16384
	ldr	r1, [r0]
	orr	r1, r1, #16384
	str	r1, [r0]
	ldr	r0, [r0]
	and	r0, r0, #16384
	str	r0, [sp]
	ldr	r0, [sp]
	movs	r0, #1
.Ltmp3:
	.loc	6 89 36                         @ ../Core/Src/main.c:89:36
	str	r0, [sp, #24]
	mov.w	r0, #65536
	.loc	6 90 30                         @ ../Core/Src/main.c:90:30
	str	r0, [sp, #28]
	mov.w	r0, #4194304
	.loc	6 92 35                         @ ../Core/Src/main.c:92:35
	str	r0, [sp, #52]
	movs	r0, #25
	.loc	6 93 30                         @ ../Core/Src/main.c:93:30
	str	r0, [sp, #56]
	mov.w	r0, #336
	.loc	6 94 30                         @ ../Core/Src/main.c:94:30
	strd	r0, r5, [sp, #60]
	movs	r0, #4
	.loc	6 96 30                         @ ../Core/Src/main.c:96:30
	str	r0, [sp, #68]
	add	r0, sp, #24
	.loc	6 91 34                         @ ../Core/Src/main.c:91:34
	str	r5, [sp, #48]
.Ltmp4:
	.loc	6 97 7                          @ ../Core/Src/main.c:97:7
	bl	HAL_RCC_OscConfig
.Ltmp5:
	.loc	6 97 7 is_stmt 0                @ ../Core/Src/main.c:97:7
	cbz	r0, .LBB0_3
@ %bb.1:
.Ltmp6:
	.loc	6 150 3 is_stmt 1               @ ../Core/Src/main.c:150:3
	@APP
	mrs	r0, primask
	cpsid i

	@NO_APP
	.p2align	2
.LBB0_2:                                @ =>This Inner Loop Header: Depth=1
	.loc	6 151 3                         @ ../Core/Src/main.c:151:3
	b	.LBB0_2
.Ltmp7:
	.p2align	2
.LBB0_3:
	.loc	6 0 3 is_stmt 0                 @ ../Core/Src/main.c:0:3
	movs	r0, #15
	.loc	6 104 31 is_stmt 1              @ ../Core/Src/main.c:104:31
	strd	r0, r5, [sp, #4]
	mov.w	r0, #5120
	.loc	6 108 36                        @ ../Core/Src/main.c:108:36
	str	r0, [sp, #16]
	mov.w	r0, #4096
	.loc	6 109 36                        @ ../Core/Src/main.c:109:36
	str	r0, [sp, #20]
	add	r0, sp, #4
.Ltmp8:
	.loc	6 111 7                         @ ../Core/Src/main.c:111:7
	movs	r1, #5
.Ltmp9:
	.loc	6 107 35                        @ ../Core/Src/main.c:107:35
	str	r4, [sp, #12]
.Ltmp10:
	.loc	6 111 7                         @ ../Core/Src/main.c:111:7
	bl	HAL_RCC_ClockConfig
.Ltmp11:
	.loc	6 111 7 is_stmt 0               @ ../Core/Src/main.c:111:7
	cbz	r0, .LBB0_6
@ %bb.4:
.Ltmp12:
	.loc	6 150 3 is_stmt 1               @ ../Core/Src/main.c:150:3
	@APP
	mrs	r0, primask
	cpsid i

	@NO_APP
	.p2align	2
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	.loc	6 151 3                         @ ../Core/Src/main.c:151:3
	b	.LBB0_5
.Ltmp13:
	.p2align	2
.LBB0_6:
	.loc	6 115 1                         @ ../Core/Src/main.c:115:1
	add	sp, #72
	pop	{r4, r5, r7, pc}
.Ltmp14:
.Lfunc_end0:
	.size	SystemClock_Config, .Lfunc_end0-SystemClock_Config
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.Error_Handler,"ax",%progbits
	.hidden	Error_Handler                   @ -- Begin function Error_Handler
	.globl	Error_Handler
	.p2align	2
	.type	Error_Handler,%function
	.code	16                              @ @Error_Handler
	.thumb_func
Error_Handler:
.Lfunc_begin1:
	.loc	6 147 0                         @ ../Core/Src/main.c:147:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.loc	6 150 3 prologue_end            @ ../Core/Src/main.c:150:3
	@APP
	mrs	r0, primask
	cpsid i

	@NO_APP
	.p2align	2
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
	.loc	6 151 3                         @ ../Core/Src/main.c:151:3
	b	.LBB1_1
.Ltmp15:
.Lfunc_end1:
	.size	Error_Handler, .Lfunc_end1-Error_Handler
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.HAL_TIM_PeriodElapsedCallback,"ax",%progbits
	.hidden	HAL_TIM_PeriodElapsedCallback   @ -- Begin function HAL_TIM_PeriodElapsedCallback
	.globl	HAL_TIM_PeriodElapsedCallback
	.p2align	2
	.type	HAL_TIM_PeriodElapsedCallback,%function
	.code	16                              @ @HAL_TIM_PeriodElapsedCallback
	.thumb_func
HAL_TIM_PeriodElapsedCallback:
.Lfunc_begin2:
	.loc	6 130 0                         @ ../Core/Src/main.c:130:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	@DEBUG_VALUE: HAL_TIM_PeriodElapsedCallback:htim <- $r0
	.loc	6 134 13 prologue_end           @ ../Core/Src/main.c:134:13
	ldr	r0, [r0]
.Ltmp16:
	@DEBUG_VALUE: HAL_TIM_PeriodElapsedCallback:htim <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	6 134 7 is_stmt 0               @ ../Core/Src/main.c:134:7
	cmp.w	r0, #1073741824
	.loc	6 140 1 is_stmt 1               @ ../Core/Src/main.c:140:1
	it	ne
	bxne	lr
.Ltmp17:
	.loc	6 135 5                         @ ../Core/Src/main.c:135:5
	b	HAL_IncTick
.Ltmp18:
.Lfunc_end2:
	.size	HAL_TIM_PeriodElapsedCallback, .Lfunc_end2-HAL_TIM_PeriodElapsedCallback
	.cfi_endproc
	.file	7 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc\\stm32f4xx_hal.h"
	.cantunwind
	.fnend
                                        @ -- End function
	.file	8 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc\\stm32f4xx_hal_rcc.h"
	.file	9 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_rcc_ex.h"
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
	.long	-1
	.long	.Lfunc_begin2                   @   base address
	.long	.Lfunc_begin2-.Lfunc_begin2
	.long	.Ltmp16-.Lfunc_begin2
	.short	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.long	.Ltmp16-.Lfunc_begin2
	.long	.Lfunc_end2-.Lfunc_begin2
	.short	4                               @ Loc expr size
	.byte	243                             @ DW_OP_GNU_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
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
	.byte	3                               @ Abbreviation Code
	.byte	40                              @ DW_TAG_enumerator
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	28                              @ DW_AT_const_value
	.byte	15                              @ DW_FORM_udata
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
	.byte	4                               @ DW_TAG_enumeration_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	6                               @ Abbreviation Code
	.byte	15                              @ DW_TAG_pointer_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	7                               @ Abbreviation Code
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
	.byte	8                               @ Abbreviation Code
	.byte	19                              @ DW_TAG_structure_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	9                               @ Abbreviation Code
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
	.byte	10                              @ Abbreviation Code
	.byte	53                              @ DW_TAG_volatile_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	11                              @ Abbreviation Code
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
	.byte	12                              @ Abbreviation Code
	.byte	1                               @ DW_TAG_array_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	13                              @ Abbreviation Code
	.byte	33                              @ DW_TAG_subrange_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	55                              @ DW_AT_count
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	14                              @ Abbreviation Code
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
	.byte	15                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	0                               @ DW_CHILDREN_no
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
	.byte	32                              @ DW_AT_inline
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	16                              @ Abbreviation Code
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
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	17                              @ Abbreviation Code
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
	.byte	18                              @ Abbreviation Code
	.byte	11                              @ DW_TAG_lexical_block
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	19                              @ Abbreviation Code
	.byte	29                              @ DW_TAG_inlined_subroutine
	.byte	0                               @ DW_CHILDREN_no
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
	.byte	20                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	0                               @ DW_CHILDREN_no
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
	.byte	21                              @ Abbreviation Code
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
	.byte	22                              @ Abbreviation Code
	.ascii	"\211\202\001"                  @ DW_TAG_GNU_call_site
	.byte	0                               @ DW_CHILDREN_no
	.byte	49                              @ DW_AT_abstract_origin
	.byte	19                              @ DW_FORM_ref4
	.ascii	"\225B"                         @ DW_AT_GNU_tail_call
	.byte	25                              @ DW_FORM_flag_present
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	23                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	60                              @ DW_AT_declaration
	.byte	25                              @ DW_FORM_flag_present
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	24                              @ Abbreviation Code
	.byte	19                              @ DW_TAG_structure_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	25                              @ Abbreviation Code
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
	.byte	26                              @ Abbreviation Code
	.byte	19                              @ DW_TAG_structure_type
	.byte	1                               @ DW_CHILDREN_yes
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
	.byte	27                              @ Abbreviation Code
	.byte	15                              @ DW_TAG_pointer_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	28                              @ Abbreviation Code
	.byte	21                              @ DW_TAG_subroutine_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	29                              @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
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
	.byte	1                               @ Abbrev [1] 0xb:0x935 DW_TAG_compile_unit
	.long	.Linfo_string0                  @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.long	.Linfo_string1                  @ DW_AT_name
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.long	.Linfo_string2                  @ DW_AT_comp_dir
	.long	0                               @ DW_AT_low_pc
	.long	.Ldebug_ranges0                 @ DW_AT_ranges
	.byte	2                               @ Abbrev [2] 0x26:0x21 DW_TAG_enumeration_type
	.long	71                              @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	1                               @ DW_AT_decl_file
	.byte	38                              @ DW_AT_decl_line
	.byte	3                               @ Abbrev [3] 0x2e:0x6 DW_TAG_enumerator
	.long	.Linfo_string4                  @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x34:0x6 DW_TAG_enumerator
	.long	.Linfo_string5                  @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x3a:0x6 DW_TAG_enumerator
	.long	.Linfo_string6                  @ DW_AT_name
	.byte	2                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x40:0x6 DW_TAG_enumerator
	.long	.Linfo_string7                  @ DW_AT_name
	.byte	3                               @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	4                               @ Abbrev [4] 0x47:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  @ DW_AT_name
	.byte	8                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	5                               @ Abbrev [5] 0x4e:0x28 DW_TAG_enumeration_type
	.long	71                              @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.short	322                             @ DW_AT_decl_line
	.byte	3                               @ Abbrev [3] 0x57:0x6 DW_TAG_enumerator
	.long	.Linfo_string8                  @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x5d:0x6 DW_TAG_enumerator
	.long	.Linfo_string9                  @ DW_AT_name
	.byte	2                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x63:0x6 DW_TAG_enumerator
	.long	.Linfo_string10                 @ DW_AT_name
	.byte	4                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x69:0x6 DW_TAG_enumerator
	.long	.Linfo_string11                 @ DW_AT_name
	.byte	8                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x6f:0x6 DW_TAG_enumerator
	.long	.Linfo_string12                 @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	2                               @ Abbrev [2] 0x76:0x15 DW_TAG_enumeration_type
	.long	71                              @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	1                               @ DW_AT_decl_file
	.byte	49                              @ DW_AT_decl_line
	.byte	3                               @ Abbrev [3] 0x7e:0x6 DW_TAG_enumerator
	.long	.Linfo_string13                 @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x84:0x6 DW_TAG_enumerator
	.long	.Linfo_string14                 @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	2                               @ Abbrev [2] 0x8b:0x2d DW_TAG_enumeration_type
	.long	71                              @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.byte	102                             @ DW_AT_decl_line
	.byte	3                               @ Abbrev [3] 0x93:0x6 DW_TAG_enumerator
	.long	.Linfo_string15                 @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x99:0x6 DW_TAG_enumerator
	.long	.Linfo_string16                 @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x9f:0x6 DW_TAG_enumerator
	.long	.Linfo_string17                 @ DW_AT_name
	.byte	2                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xa5:0x6 DW_TAG_enumerator
	.long	.Linfo_string18                 @ DW_AT_name
	.byte	3                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xab:0x6 DW_TAG_enumerator
	.long	.Linfo_string19                 @ DW_AT_name
	.byte	4                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xb1:0x6 DW_TAG_enumerator
	.long	.Linfo_string20                 @ DW_AT_name
	.byte	5                               @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	5                               @ Abbrev [5] 0xb8:0x28 DW_TAG_enumeration_type
	.long	71                              @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.short	290                             @ DW_AT_decl_line
	.byte	3                               @ Abbrev [3] 0xc1:0x6 DW_TAG_enumerator
	.long	.Linfo_string21                 @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xc7:0x6 DW_TAG_enumerator
	.long	.Linfo_string22                 @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xcd:0x6 DW_TAG_enumerator
	.long	.Linfo_string23                 @ DW_AT_name
	.byte	2                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xd3:0x6 DW_TAG_enumerator
	.long	.Linfo_string24                 @ DW_AT_name
	.byte	3                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xd9:0x6 DW_TAG_enumerator
	.long	.Linfo_string25                 @ DW_AT_name
	.byte	4                               @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	5                               @ Abbrev [5] 0xe0:0x1c DW_TAG_enumeration_type
	.long	71                              @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.short	302                             @ DW_AT_decl_line
	.byte	3                               @ Abbrev [3] 0xe9:0x6 DW_TAG_enumerator
	.long	.Linfo_string26                 @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xef:0x6 DW_TAG_enumerator
	.long	.Linfo_string27                 @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xf5:0x6 DW_TAG_enumerator
	.long	.Linfo_string28                 @ DW_AT_name
	.byte	2                               @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	5                               @ Abbrev [5] 0xfc:0x1c DW_TAG_enumeration_type
	.long	71                              @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.short	312                             @ DW_AT_decl_line
	.byte	3                               @ Abbrev [3] 0x105:0x6 DW_TAG_enumerator
	.long	.Linfo_string29                 @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x10b:0x6 DW_TAG_enumerator
	.long	.Linfo_string30                 @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x111:0x6 DW_TAG_enumerator
	.long	.Linfo_string31                 @ DW_AT_name
	.byte	2                               @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0x118:0x5 DW_TAG_pointer_type
	.long	285                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x11d:0xc DW_TAG_typedef
	.long	297                             @ DW_AT_type
	.long	.Linfo_string65                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.short	628                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x129:0x18c DW_TAG_structure_type
	.byte	136                             @ DW_AT_byte_size
	.byte	5                               @ DW_AT_decl_file
	.short	596                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x12e:0xd DW_TAG_member
	.long	.Linfo_string32                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	598                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x13b:0xd DW_TAG_member
	.long	.Linfo_string35                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	599                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x148:0xd DW_TAG_member
	.long	.Linfo_string36                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	600                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x155:0xd DW_TAG_member
	.long	.Linfo_string37                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	601                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x162:0xd DW_TAG_member
	.long	.Linfo_string38                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	602                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x16f:0xd DW_TAG_member
	.long	.Linfo_string39                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	603                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x17c:0xd DW_TAG_member
	.long	.Linfo_string40                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	604                             @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x189:0xd DW_TAG_member
	.long	.Linfo_string41                 @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	605                             @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x196:0xd DW_TAG_member
	.long	.Linfo_string42                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	606                             @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x1a3:0xd DW_TAG_member
	.long	.Linfo_string43                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	607                             @ DW_AT_decl_line
	.byte	36                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x1b0:0xd DW_TAG_member
	.long	.Linfo_string44                 @ DW_AT_name
	.long	716                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	608                             @ DW_AT_decl_line
	.byte	40                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x1bd:0xd DW_TAG_member
	.long	.Linfo_string46                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	609                             @ DW_AT_decl_line
	.byte	48                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x1ca:0xd DW_TAG_member
	.long	.Linfo_string47                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	610                             @ DW_AT_decl_line
	.byte	52                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x1d7:0xd DW_TAG_member
	.long	.Linfo_string48                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	611                             @ DW_AT_decl_line
	.byte	56                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x1e4:0xd DW_TAG_member
	.long	.Linfo_string49                 @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	612                             @ DW_AT_decl_line
	.byte	60                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x1f1:0xd DW_TAG_member
	.long	.Linfo_string50                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	613                             @ DW_AT_decl_line
	.byte	64                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x1fe:0xd DW_TAG_member
	.long	.Linfo_string51                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	614                             @ DW_AT_decl_line
	.byte	68                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x20b:0xd DW_TAG_member
	.long	.Linfo_string52                 @ DW_AT_name
	.long	716                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	615                             @ DW_AT_decl_line
	.byte	72                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x218:0xd DW_TAG_member
	.long	.Linfo_string53                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	616                             @ DW_AT_decl_line
	.byte	80                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x225:0xd DW_TAG_member
	.long	.Linfo_string54                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	617                             @ DW_AT_decl_line
	.byte	84                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x232:0xd DW_TAG_member
	.long	.Linfo_string55                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	618                             @ DW_AT_decl_line
	.byte	88                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x23f:0xd DW_TAG_member
	.long	.Linfo_string56                 @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	619                             @ DW_AT_decl_line
	.byte	92                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x24c:0xd DW_TAG_member
	.long	.Linfo_string57                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	620                             @ DW_AT_decl_line
	.byte	96                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x259:0xd DW_TAG_member
	.long	.Linfo_string58                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	621                             @ DW_AT_decl_line
	.byte	100                             @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x266:0xd DW_TAG_member
	.long	.Linfo_string59                 @ DW_AT_name
	.long	716                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	622                             @ DW_AT_decl_line
	.byte	104                             @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x273:0xd DW_TAG_member
	.long	.Linfo_string60                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	623                             @ DW_AT_decl_line
	.byte	112                             @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x280:0xd DW_TAG_member
	.long	.Linfo_string61                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	624                             @ DW_AT_decl_line
	.byte	116                             @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x28d:0xd DW_TAG_member
	.long	.Linfo_string62                 @ DW_AT_name
	.long	716                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	625                             @ DW_AT_decl_line
	.byte	120                             @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x29a:0xd DW_TAG_member
	.long	.Linfo_string63                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	626                             @ DW_AT_decl_line
	.byte	128                             @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x2a7:0xd DW_TAG_member
	.long	.Linfo_string64                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	627                             @ DW_AT_decl_line
	.byte	132                             @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	10                              @ Abbrev [10] 0x2b5:0x5 DW_TAG_volatile_type
	.long	698                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x2ba:0xb DW_TAG_typedef
	.long	709                             @ DW_AT_type
	.long	.Linfo_string34                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	64                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x2c5:0x7 DW_TAG_base_type
	.long	.Linfo_string33                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	12                              @ Abbrev [12] 0x2cc:0xc DW_TAG_array_type
	.long	698                             @ DW_AT_type
	.byte	13                              @ Abbrev [13] 0x2d1:0x6 DW_TAG_subrange_type
	.long	728                             @ DW_AT_type
	.byte	2                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	14                              @ Abbrev [14] 0x2d8:0x7 DW_TAG_base_type
	.long	.Linfo_string45                 @ DW_AT_name
	.byte	8                               @ DW_AT_byte_size
	.byte	7                               @ DW_AT_encoding
	.byte	6                               @ Abbrev [6] 0x2df:0x5 DW_TAG_pointer_type
	.long	740                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x2e4:0xc DW_TAG_typedef
	.long	752                             @ DW_AT_type
	.long	.Linfo_string66                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.short	590                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x2f0:0x20 DW_TAG_structure_type
	.byte	8                               @ DW_AT_byte_size
	.byte	5                               @ DW_AT_decl_file
	.short	586                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x2f5:0xd DW_TAG_member
	.long	.Linfo_string32                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	588                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x302:0xd DW_TAG_member
	.long	.Linfo_string61                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	589                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	11                              @ Abbrev [11] 0x310:0xb DW_TAG_typedef
	.long	71                              @ DW_AT_type
	.long	.Linfo_string67                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	62                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x31b:0x5 DW_TAG_pointer_type
	.long	800                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x320:0xc DW_TAG_typedef
	.long	812                             @ DW_AT_type
	.long	.Linfo_string89                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.short	751                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x32c:0x117 DW_TAG_structure_type
	.byte	84                              @ DW_AT_byte_size
	.byte	5                               @ DW_AT_decl_file
	.short	728                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x331:0xd DW_TAG_member
	.long	.Linfo_string68                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	730                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x33e:0xd DW_TAG_member
	.long	.Linfo_string69                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	731                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x34b:0xd DW_TAG_member
	.long	.Linfo_string70                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	732                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x358:0xd DW_TAG_member
	.long	.Linfo_string71                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	733                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x365:0xd DW_TAG_member
	.long	.Linfo_string72                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	734                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x372:0xd DW_TAG_member
	.long	.Linfo_string73                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	735                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x37f:0xd DW_TAG_member
	.long	.Linfo_string74                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	736                             @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x38c:0xd DW_TAG_member
	.long	.Linfo_string75                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	737                             @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x399:0xd DW_TAG_member
	.long	.Linfo_string76                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	738                             @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x3a6:0xd DW_TAG_member
	.long	.Linfo_string77                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	739                             @ DW_AT_decl_line
	.byte	36                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x3b3:0xd DW_TAG_member
	.long	.Linfo_string78                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	740                             @ DW_AT_decl_line
	.byte	40                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x3c0:0xd DW_TAG_member
	.long	.Linfo_string79                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	741                             @ DW_AT_decl_line
	.byte	44                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x3cd:0xd DW_TAG_member
	.long	.Linfo_string80                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	742                             @ DW_AT_decl_line
	.byte	48                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x3da:0xd DW_TAG_member
	.long	.Linfo_string81                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	743                             @ DW_AT_decl_line
	.byte	52                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x3e7:0xd DW_TAG_member
	.long	.Linfo_string82                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	744                             @ DW_AT_decl_line
	.byte	56                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x3f4:0xd DW_TAG_member
	.long	.Linfo_string83                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	745                             @ DW_AT_decl_line
	.byte	60                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x401:0xd DW_TAG_member
	.long	.Linfo_string84                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	746                             @ DW_AT_decl_line
	.byte	64                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x40e:0xd DW_TAG_member
	.long	.Linfo_string85                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	747                             @ DW_AT_decl_line
	.byte	68                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x41b:0xd DW_TAG_member
	.long	.Linfo_string86                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	748                             @ DW_AT_decl_line
	.byte	72                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x428:0xd DW_TAG_member
	.long	.Linfo_string87                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	749                             @ DW_AT_decl_line
	.byte	76                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x435:0xd DW_TAG_member
	.long	.Linfo_string88                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	750                             @ DW_AT_decl_line
	.byte	80                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	15                              @ Abbrev [15] 0x443:0x8 DW_TAG_subprogram
	.long	.Linfo_string90                 @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	146                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_inline
	.byte	16                              @ Abbrev [16] 0x44b:0x7e DW_TAG_subprogram
	.long	.Lfunc_begin0                   @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
                                        @ DW_AT_GNU_all_call_sites
	.long	.Linfo_string92                 @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	76                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	17                              @ Abbrev [17] 0x45c:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	24
	.long	.Linfo_string94                 @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	78                              @ DW_AT_decl_line
	.long	1289                            @ DW_AT_type
	.byte	17                              @ Abbrev [17] 0x46a:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string110                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	79                              @ DW_AT_decl_line
	.long	1477                            @ DW_AT_type
	.byte	18                              @ Abbrev [18] 0x478:0x18 DW_TAG_lexical_block
	.long	.Ltmp1                          @ DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   @ DW_AT_high_pc
	.byte	17                              @ Abbrev [17] 0x481:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string117                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	83                              @ DW_AT_decl_line
	.long	693                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	18                              @ Abbrev [18] 0x490:0x18 DW_TAG_lexical_block
	.long	.Ltmp2                          @ DW_AT_low_pc
	.long	.Ltmp3-.Ltmp2                   @ DW_AT_high_pc
	.byte	17                              @ Abbrev [17] 0x499:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string117                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	84                              @ DW_AT_decl_line
	.long	693                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	19                              @ Abbrev [19] 0x4a8:0x10 DW_TAG_inlined_subroutine
	.long	1091                            @ DW_AT_abstract_origin
	.long	.Ltmp6                          @ DW_AT_low_pc
	.long	.Ltmp7-.Ltmp6                   @ DW_AT_high_pc
	.byte	6                               @ DW_AT_call_file
	.byte	99                              @ DW_AT_call_line
	.byte	5                               @ DW_AT_call_column
	.byte	19                              @ Abbrev [19] 0x4b8:0x10 DW_TAG_inlined_subroutine
	.long	1091                            @ DW_AT_abstract_origin
	.long	.Ltmp12                         @ DW_AT_low_pc
	.long	.Ltmp13-.Ltmp12                 @ DW_AT_high_pc
	.byte	6                               @ DW_AT_call_file
	.byte	113                             @ DW_AT_call_line
	.byte	5                               @ DW_AT_call_column
	.byte	0                               @ End Of Children Mark
	.byte	20                              @ Abbrev [20] 0x4c9:0xf DW_TAG_subprogram
	.long	.Lfunc_begin1                   @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
                                        @ DW_AT_GNU_all_call_sites
	.long	1091                            @ DW_AT_abstract_origin
	.byte	16                              @ Abbrev [16] 0x4d8:0x2a DW_TAG_subprogram
	.long	.Lfunc_begin2                   @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
                                        @ DW_AT_GNU_all_call_sites
	.long	.Linfo_string93                 @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	129                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	21                              @ Abbrev [21] 0x4e9:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc0                    @ DW_AT_location
	.long	.Linfo_string118                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	129                             @ DW_AT_decl_line
	.long	1553                            @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0x4f8:0x9 DW_TAG_GNU_call_site
	.long	1282                            @ DW_AT_abstract_origin
                                        @ DW_AT_GNU_tail_call
	.long	.Ltmp18                         @ DW_AT_low_pc
	.byte	0                               @ End Of Children Mark
	.byte	23                              @ Abbrev [23] 0x502:0x7 DW_TAG_subprogram
	.long	.Linfo_string91                 @ DW_AT_name
	.byte	7                               @ DW_AT_decl_file
	.byte	232                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                              @ Abbrev [11] 0x509:0xb DW_TAG_typedef
	.long	1300                            @ DW_AT_type
	.long	.Linfo_string109                @ DW_AT_name
	.byte	8                               @ DW_AT_decl_file
	.byte	70                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x514:0x59 DW_TAG_structure_type
	.byte	48                              @ DW_AT_byte_size
	.byte	8                               @ DW_AT_decl_file
	.byte	49                              @ DW_AT_decl_line
	.byte	25                              @ Abbrev [25] 0x518:0xc DW_TAG_member
	.long	.Linfo_string95                 @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	51                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x524:0xc DW_TAG_member
	.long	.Linfo_string96                 @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	54                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x530:0xc DW_TAG_member
	.long	.Linfo_string97                 @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	57                              @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x53c:0xc DW_TAG_member
	.long	.Linfo_string98                 @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	60                              @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x548:0xc DW_TAG_member
	.long	.Linfo_string99                 @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x554:0xc DW_TAG_member
	.long	.Linfo_string100                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	66                              @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x560:0xc DW_TAG_member
	.long	.Linfo_string101                @ DW_AT_name
	.long	1389                            @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	69                              @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	11                              @ Abbrev [11] 0x56d:0xb DW_TAG_typedef
	.long	1400                            @ DW_AT_type
	.long	.Linfo_string108                @ DW_AT_name
	.byte	9                               @ DW_AT_decl_file
	.byte	73                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x578:0x4d DW_TAG_structure_type
	.byte	24                              @ DW_AT_byte_size
	.byte	9                               @ DW_AT_decl_file
	.byte	45                              @ DW_AT_decl_line
	.byte	25                              @ Abbrev [25] 0x57c:0xc DW_TAG_member
	.long	.Linfo_string102                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	9                               @ DW_AT_decl_file
	.byte	47                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x588:0xc DW_TAG_member
	.long	.Linfo_string103                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	9                               @ DW_AT_decl_file
	.byte	50                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x594:0xc DW_TAG_member
	.long	.Linfo_string104                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	9                               @ DW_AT_decl_file
	.byte	53                              @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x5a0:0xc DW_TAG_member
	.long	.Linfo_string105                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	9                               @ DW_AT_decl_file
	.byte	56                              @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x5ac:0xc DW_TAG_member
	.long	.Linfo_string106                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	9                               @ DW_AT_decl_file
	.byte	60                              @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x5b8:0xc DW_TAG_member
	.long	.Linfo_string107                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	9                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	11                              @ Abbrev [11] 0x5c5:0xb DW_TAG_typedef
	.long	1488                            @ DW_AT_type
	.long	.Linfo_string116                @ DW_AT_name
	.byte	8                               @ DW_AT_decl_file
	.byte	92                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x5d0:0x41 DW_TAG_structure_type
	.byte	20                              @ DW_AT_byte_size
	.byte	8                               @ DW_AT_decl_file
	.byte	75                              @ DW_AT_decl_line
	.byte	25                              @ Abbrev [25] 0x5d4:0xc DW_TAG_member
	.long	.Linfo_string111                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	77                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x5e0:0xc DW_TAG_member
	.long	.Linfo_string112                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	80                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x5ec:0xc DW_TAG_member
	.long	.Linfo_string113                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	83                              @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x5f8:0xc DW_TAG_member
	.long	.Linfo_string114                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	86                              @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x604:0xc DW_TAG_member
	.long	.Linfo_string115                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	89                              @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0x611:0x5 DW_TAG_pointer_type
	.long	1558                            @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x616:0xc DW_TAG_typedef
	.long	1570                            @ DW_AT_type
	.long	.Linfo_string171                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	380                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x622:0x7b DW_TAG_structure_type
	.byte	72                              @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.short	337                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x627:0xd DW_TAG_member
	.long	.Linfo_string119                @ DW_AT_name
	.long	795                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	340                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x634:0xd DW_TAG_member
	.long	.Linfo_string120                @ DW_AT_name
	.long	1693                            @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	341                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x641:0xd DW_TAG_member
	.long	.Linfo_string128                @ DW_AT_name
	.long	1781                            @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	342                             @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x64e:0xd DW_TAG_member
	.long	.Linfo_string130                @ DW_AT_name
	.long	1793                            @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	343                             @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x65b:0xd DW_TAG_member
	.long	.Linfo_string149                @ DW_AT_name
	.long	2259                            @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	345                             @ DW_AT_decl_line
	.byte	60                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x668:0xd DW_TAG_member
	.long	.Linfo_string151                @ DW_AT_name
	.long	2304                            @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	346                             @ DW_AT_decl_line
	.byte	61                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x675:0xd DW_TAG_member
	.long	.Linfo_string166                @ DW_AT_name
	.long	2321                            @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	347                             @ DW_AT_decl_line
	.byte	62                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x682:0xd DW_TAG_member
	.long	.Linfo_string168                @ DW_AT_name
	.long	2321                            @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	348                             @ DW_AT_decl_line
	.byte	66                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x68f:0xd DW_TAG_member
	.long	.Linfo_string169                @ DW_AT_name
	.long	2350                            @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	349                             @ DW_AT_decl_line
	.byte	70                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	11                              @ Abbrev [11] 0x69d:0xb DW_TAG_typedef
	.long	1704                            @ DW_AT_type
	.long	.Linfo_string127                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	74                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x6a8:0x4d DW_TAG_structure_type
	.byte	24                              @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
	.byte	25                              @ Abbrev [25] 0x6ac:0xc DW_TAG_member
	.long	.Linfo_string121                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	48                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x6b8:0xc DW_TAG_member
	.long	.Linfo_string122                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	51                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x6c4:0xc DW_TAG_member
	.long	.Linfo_string123                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	54                              @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x6d0:0xc DW_TAG_member
	.long	.Linfo_string124                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	58                              @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x6dc:0xc DW_TAG_member
	.long	.Linfo_string125                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	61                              @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x6e8:0xc DW_TAG_member
	.long	.Linfo_string126                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	72                              @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	7                               @ Abbrev [7] 0x6f5:0xc DW_TAG_typedef
	.long	78                              @ DW_AT_type
	.long	.Linfo_string129                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	329                             @ DW_AT_decl_line
	.byte	12                              @ Abbrev [12] 0x701:0xc DW_TAG_array_type
	.long	1805                            @ DW_AT_type
	.byte	13                              @ Abbrev [13] 0x706:0x6 DW_TAG_subrange_type
	.long	728                             @ DW_AT_type
	.byte	7                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0x70d:0x5 DW_TAG_pointer_type
	.long	1810                            @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x712:0xb DW_TAG_typedef
	.long	1821                            @ DW_AT_type
	.long	.Linfo_string164                @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	168                             @ DW_AT_decl_line
	.byte	26                              @ Abbrev [26] 0x71d:0xb1 DW_TAG_structure_type
	.long	.Linfo_string163                @ DW_AT_name
	.byte	96                              @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.byte	138                             @ DW_AT_decl_line
	.byte	25                              @ Abbrev [25] 0x725:0xc DW_TAG_member
	.long	.Linfo_string119                @ DW_AT_name
	.long	1998                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	140                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x731:0xc DW_TAG_member
	.long	.Linfo_string120                @ DW_AT_name
	.long	2099                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	142                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x73d:0xc DW_TAG_member
	.long	.Linfo_string149                @ DW_AT_name
	.long	2259                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	144                             @ DW_AT_decl_line
	.byte	52                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x749:0xc DW_TAG_member
	.long	.Linfo_string151                @ DW_AT_name
	.long	2270                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	146                             @ DW_AT_decl_line
	.byte	53                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x755:0xc DW_TAG_member
	.long	.Linfo_string153                @ DW_AT_name
	.long	2286                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	148                             @ DW_AT_decl_line
	.byte	56                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x761:0xc DW_TAG_member
	.long	.Linfo_string154                @ DW_AT_name
	.long	2287                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	150                             @ DW_AT_decl_line
	.byte	60                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x76d:0xc DW_TAG_member
	.long	.Linfo_string155                @ DW_AT_name
	.long	2287                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	152                             @ DW_AT_decl_line
	.byte	64                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x779:0xc DW_TAG_member
	.long	.Linfo_string156                @ DW_AT_name
	.long	2287                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	154                             @ DW_AT_decl_line
	.byte	68                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x785:0xc DW_TAG_member
	.long	.Linfo_string157                @ DW_AT_name
	.long	2287                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	156                             @ DW_AT_decl_line
	.byte	72                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x791:0xc DW_TAG_member
	.long	.Linfo_string158                @ DW_AT_name
	.long	2287                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	158                             @ DW_AT_decl_line
	.byte	76                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x79d:0xc DW_TAG_member
	.long	.Linfo_string159                @ DW_AT_name
	.long	2287                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	160                             @ DW_AT_decl_line
	.byte	80                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x7a9:0xc DW_TAG_member
	.long	.Linfo_string160                @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	162                             @ DW_AT_decl_line
	.byte	84                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x7b5:0xc DW_TAG_member
	.long	.Linfo_string161                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	164                             @ DW_AT_decl_line
	.byte	88                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x7c1:0xc DW_TAG_member
	.long	.Linfo_string162                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	166                             @ DW_AT_decl_line
	.byte	92                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0x7ce:0x5 DW_TAG_pointer_type
	.long	2003                            @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x7d3:0xc DW_TAG_typedef
	.long	2015                            @ DW_AT_type
	.long	.Linfo_string136                @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.short	353                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x7df:0x54 DW_TAG_structure_type
	.byte	24                              @ DW_AT_byte_size
	.byte	5                               @ DW_AT_decl_file
	.short	345                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x7e4:0xd DW_TAG_member
	.long	.Linfo_string32                 @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	347                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x7f1:0xd DW_TAG_member
	.long	.Linfo_string131                @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	348                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x7fe:0xd DW_TAG_member
	.long	.Linfo_string132                @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	349                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x80b:0xd DW_TAG_member
	.long	.Linfo_string133                @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	350                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x818:0xd DW_TAG_member
	.long	.Linfo_string134                @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	351                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x825:0xd DW_TAG_member
	.long	.Linfo_string135                @ DW_AT_name
	.long	693                             @ DW_AT_type
	.byte	5                               @ DW_AT_decl_file
	.short	352                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	11                              @ Abbrev [11] 0x833:0xb DW_TAG_typedef
	.long	2110                            @ DW_AT_type
	.long	.Linfo_string148                @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	96                              @ DW_AT_decl_line
	.byte	24                              @ Abbrev [24] 0x83e:0x95 DW_TAG_structure_type
	.byte	48                              @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.byte	48                              @ DW_AT_decl_line
	.byte	25                              @ Abbrev [25] 0x842:0xc DW_TAG_member
	.long	.Linfo_string128                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	50                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x84e:0xc DW_TAG_member
	.long	.Linfo_string137                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	53                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x85a:0xc DW_TAG_member
	.long	.Linfo_string138                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	57                              @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x866:0xc DW_TAG_member
	.long	.Linfo_string139                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	60                              @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x872:0xc DW_TAG_member
	.long	.Linfo_string140                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x87e:0xc DW_TAG_member
	.long	.Linfo_string141                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	66                              @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x88a:0xc DW_TAG_member
	.long	.Linfo_string142                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	69                              @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x896:0xc DW_TAG_member
	.long	.Linfo_string143                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	74                              @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x8a2:0xc DW_TAG_member
	.long	.Linfo_string144                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	77                              @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x8ae:0xc DW_TAG_member
	.long	.Linfo_string145                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	82                              @ DW_AT_decl_line
	.byte	36                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x8ba:0xc DW_TAG_member
	.long	.Linfo_string146                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	85                              @ DW_AT_decl_line
	.byte	40                              @ DW_AT_data_member_location
	.byte	25                              @ Abbrev [25] 0x8c6:0xc DW_TAG_member
	.long	.Linfo_string147                @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	91                              @ DW_AT_decl_line
	.byte	44                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	11                              @ Abbrev [11] 0x8d3:0xb DW_TAG_typedef
	.long	118                             @ DW_AT_type
	.long	.Linfo_string150                @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	53                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x8de:0x5 DW_TAG_volatile_type
	.long	2275                            @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x8e3:0xb DW_TAG_typedef
	.long	139                             @ DW_AT_type
	.long	.Linfo_string152                @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	110                             @ DW_AT_decl_line
	.byte	27                              @ Abbrev [27] 0x8ee:0x1 DW_TAG_pointer_type
	.byte	6                               @ Abbrev [6] 0x8ef:0x5 DW_TAG_pointer_type
	.long	2292                            @ DW_AT_type
	.byte	28                              @ Abbrev [28] 0x8f4:0x7 DW_TAG_subroutine_type
                                        @ DW_AT_prototyped
	.byte	29                              @ Abbrev [29] 0x8f5:0x5 DW_TAG_formal_parameter
	.long	2299                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0x8fb:0x5 DW_TAG_pointer_type
	.long	1821                            @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x900:0x5 DW_TAG_volatile_type
	.long	2309                            @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x905:0xc DW_TAG_typedef
	.long	184                             @ DW_AT_type
	.long	.Linfo_string165                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	297                             @ DW_AT_decl_line
	.byte	12                              @ Abbrev [12] 0x911:0xc DW_TAG_array_type
	.long	2333                            @ DW_AT_type
	.byte	13                              @ Abbrev [13] 0x916:0x6 DW_TAG_subrange_type
	.long	728                             @ DW_AT_type
	.byte	4                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	10                              @ Abbrev [10] 0x91d:0x5 DW_TAG_volatile_type
	.long	2338                            @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x922:0xc DW_TAG_typedef
	.long	224                             @ DW_AT_type
	.long	.Linfo_string167                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	307                             @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x92e:0x5 DW_TAG_volatile_type
	.long	2355                            @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x933:0xc DW_TAG_typedef
	.long	252                             @ DW_AT_type
	.long	.Linfo_string170                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	317                             @ DW_AT_decl_line
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
	.long	0
	.long	0
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]" @ string offset=0
.Linfo_string1:
	.asciz	"../Core/Src\\main.c"           @ string offset=68
.Linfo_string2:
	.asciz	"E:\\RP\\CppTemplate\\MDK-ARM"  @ string offset=87
.Linfo_string3:
	.asciz	"unsigned char"                 @ string offset=113
.Linfo_string4:
	.asciz	"HAL_OK"                        @ string offset=127
.Linfo_string5:
	.asciz	"HAL_ERROR"                     @ string offset=134
.Linfo_string6:
	.asciz	"HAL_BUSY"                      @ string offset=144
.Linfo_string7:
	.asciz	"HAL_TIMEOUT"                   @ string offset=153
.Linfo_string8:
	.asciz	"HAL_TIM_ACTIVE_CHANNEL_1"      @ string offset=165
.Linfo_string9:
	.asciz	"HAL_TIM_ACTIVE_CHANNEL_2"      @ string offset=190
.Linfo_string10:
	.asciz	"HAL_TIM_ACTIVE_CHANNEL_3"      @ string offset=215
.Linfo_string11:
	.asciz	"HAL_TIM_ACTIVE_CHANNEL_4"      @ string offset=240
.Linfo_string12:
	.asciz	"HAL_TIM_ACTIVE_CHANNEL_CLEARED" @ string offset=265
.Linfo_string13:
	.asciz	"HAL_UNLOCKED"                  @ string offset=296
.Linfo_string14:
	.asciz	"HAL_LOCKED"                    @ string offset=309
.Linfo_string15:
	.asciz	"HAL_DMA_STATE_RESET"           @ string offset=320
.Linfo_string16:
	.asciz	"HAL_DMA_STATE_READY"           @ string offset=340
.Linfo_string17:
	.asciz	"HAL_DMA_STATE_BUSY"            @ string offset=360
.Linfo_string18:
	.asciz	"HAL_DMA_STATE_TIMEOUT"         @ string offset=379
.Linfo_string19:
	.asciz	"HAL_DMA_STATE_ERROR"           @ string offset=401
.Linfo_string20:
	.asciz	"HAL_DMA_STATE_ABORT"           @ string offset=421
.Linfo_string21:
	.asciz	"HAL_TIM_STATE_RESET"           @ string offset=441
.Linfo_string22:
	.asciz	"HAL_TIM_STATE_READY"           @ string offset=461
.Linfo_string23:
	.asciz	"HAL_TIM_STATE_BUSY"            @ string offset=481
.Linfo_string24:
	.asciz	"HAL_TIM_STATE_TIMEOUT"         @ string offset=500
.Linfo_string25:
	.asciz	"HAL_TIM_STATE_ERROR"           @ string offset=522
.Linfo_string26:
	.asciz	"HAL_TIM_CHANNEL_STATE_RESET"   @ string offset=542
.Linfo_string27:
	.asciz	"HAL_TIM_CHANNEL_STATE_READY"   @ string offset=570
.Linfo_string28:
	.asciz	"HAL_TIM_CHANNEL_STATE_BUSY"    @ string offset=598
.Linfo_string29:
	.asciz	"HAL_DMA_BURST_STATE_RESET"     @ string offset=625
.Linfo_string30:
	.asciz	"HAL_DMA_BURST_STATE_READY"     @ string offset=651
.Linfo_string31:
	.asciz	"HAL_DMA_BURST_STATE_BUSY"      @ string offset=677
.Linfo_string32:
	.asciz	"CR"                            @ string offset=702
.Linfo_string33:
	.asciz	"unsigned int"                  @ string offset=705
.Linfo_string34:
	.asciz	"uint32_t"                      @ string offset=718
.Linfo_string35:
	.asciz	"PLLCFGR"                       @ string offset=727
.Linfo_string36:
	.asciz	"CFGR"                          @ string offset=735
.Linfo_string37:
	.asciz	"CIR"                           @ string offset=740
.Linfo_string38:
	.asciz	"AHB1RSTR"                      @ string offset=744
.Linfo_string39:
	.asciz	"AHB2RSTR"                      @ string offset=753
.Linfo_string40:
	.asciz	"AHB3RSTR"                      @ string offset=762
.Linfo_string41:
	.asciz	"RESERVED0"                     @ string offset=771
.Linfo_string42:
	.asciz	"APB1RSTR"                      @ string offset=781
.Linfo_string43:
	.asciz	"APB2RSTR"                      @ string offset=790
.Linfo_string44:
	.asciz	"RESERVED1"                     @ string offset=799
.Linfo_string45:
	.asciz	"__ARRAY_SIZE_TYPE__"           @ string offset=809
.Linfo_string46:
	.asciz	"AHB1ENR"                       @ string offset=829
.Linfo_string47:
	.asciz	"AHB2ENR"                       @ string offset=837
.Linfo_string48:
	.asciz	"AHB3ENR"                       @ string offset=845
.Linfo_string49:
	.asciz	"RESERVED2"                     @ string offset=853
.Linfo_string50:
	.asciz	"APB1ENR"                       @ string offset=863
.Linfo_string51:
	.asciz	"APB2ENR"                       @ string offset=871
.Linfo_string52:
	.asciz	"RESERVED3"                     @ string offset=879
.Linfo_string53:
	.asciz	"AHB1LPENR"                     @ string offset=889
.Linfo_string54:
	.asciz	"AHB2LPENR"                     @ string offset=899
.Linfo_string55:
	.asciz	"AHB3LPENR"                     @ string offset=909
.Linfo_string56:
	.asciz	"RESERVED4"                     @ string offset=919
.Linfo_string57:
	.asciz	"APB1LPENR"                     @ string offset=929
.Linfo_string58:
	.asciz	"APB2LPENR"                     @ string offset=939
.Linfo_string59:
	.asciz	"RESERVED5"                     @ string offset=949
.Linfo_string60:
	.asciz	"BDCR"                          @ string offset=959
.Linfo_string61:
	.asciz	"CSR"                           @ string offset=964
.Linfo_string62:
	.asciz	"RESERVED6"                     @ string offset=968
.Linfo_string63:
	.asciz	"SSCGR"                         @ string offset=978
.Linfo_string64:
	.asciz	"PLLI2SCFGR"                    @ string offset=984
.Linfo_string65:
	.asciz	"RCC_TypeDef"                   @ string offset=995
.Linfo_string66:
	.asciz	"PWR_TypeDef"                   @ string offset=1007
.Linfo_string67:
	.asciz	"uint8_t"                       @ string offset=1019
.Linfo_string68:
	.asciz	"CR1"                           @ string offset=1027
.Linfo_string69:
	.asciz	"CR2"                           @ string offset=1031
.Linfo_string70:
	.asciz	"SMCR"                          @ string offset=1035
.Linfo_string71:
	.asciz	"DIER"                          @ string offset=1040
.Linfo_string72:
	.asciz	"SR"                            @ string offset=1045
.Linfo_string73:
	.asciz	"EGR"                           @ string offset=1048
.Linfo_string74:
	.asciz	"CCMR1"                         @ string offset=1052
.Linfo_string75:
	.asciz	"CCMR2"                         @ string offset=1058
.Linfo_string76:
	.asciz	"CCER"                          @ string offset=1064
.Linfo_string77:
	.asciz	"CNT"                           @ string offset=1069
.Linfo_string78:
	.asciz	"PSC"                           @ string offset=1073
.Linfo_string79:
	.asciz	"ARR"                           @ string offset=1077
.Linfo_string80:
	.asciz	"RCR"                           @ string offset=1081
.Linfo_string81:
	.asciz	"CCR1"                          @ string offset=1085
.Linfo_string82:
	.asciz	"CCR2"                          @ string offset=1090
.Linfo_string83:
	.asciz	"CCR3"                          @ string offset=1095
.Linfo_string84:
	.asciz	"CCR4"                          @ string offset=1100
.Linfo_string85:
	.asciz	"BDTR"                          @ string offset=1105
.Linfo_string86:
	.asciz	"DCR"                           @ string offset=1110
.Linfo_string87:
	.asciz	"DMAR"                          @ string offset=1114
.Linfo_string88:
	.asciz	"OR"                            @ string offset=1119
.Linfo_string89:
	.asciz	"TIM_TypeDef"                   @ string offset=1122
.Linfo_string90:
	.asciz	"Error_Handler"                 @ string offset=1134
.Linfo_string91:
	.asciz	"HAL_IncTick"                   @ string offset=1148
.Linfo_string92:
	.asciz	"SystemClock_Config"            @ string offset=1160
.Linfo_string93:
	.asciz	"HAL_TIM_PeriodElapsedCallback" @ string offset=1179
.Linfo_string94:
	.asciz	"RCC_OscInitStruct"             @ string offset=1209
.Linfo_string95:
	.asciz	"OscillatorType"                @ string offset=1227
.Linfo_string96:
	.asciz	"HSEState"                      @ string offset=1242
.Linfo_string97:
	.asciz	"LSEState"                      @ string offset=1251
.Linfo_string98:
	.asciz	"HSIState"                      @ string offset=1260
.Linfo_string99:
	.asciz	"HSICalibrationValue"           @ string offset=1269
.Linfo_string100:
	.asciz	"LSIState"                      @ string offset=1289
.Linfo_string101:
	.asciz	"PLL"                           @ string offset=1298
.Linfo_string102:
	.asciz	"PLLState"                      @ string offset=1302
.Linfo_string103:
	.asciz	"PLLSource"                     @ string offset=1311
.Linfo_string104:
	.asciz	"PLLM"                          @ string offset=1321
.Linfo_string105:
	.asciz	"PLLN"                          @ string offset=1326
.Linfo_string106:
	.asciz	"PLLP"                          @ string offset=1331
.Linfo_string107:
	.asciz	"PLLQ"                          @ string offset=1336
.Linfo_string108:
	.asciz	"RCC_PLLInitTypeDef"            @ string offset=1341
.Linfo_string109:
	.asciz	"RCC_OscInitTypeDef"            @ string offset=1360
.Linfo_string110:
	.asciz	"RCC_ClkInitStruct"             @ string offset=1379
.Linfo_string111:
	.asciz	"ClockType"                     @ string offset=1397
.Linfo_string112:
	.asciz	"SYSCLKSource"                  @ string offset=1407
.Linfo_string113:
	.asciz	"AHBCLKDivider"                 @ string offset=1420
.Linfo_string114:
	.asciz	"APB1CLKDivider"                @ string offset=1434
.Linfo_string115:
	.asciz	"APB2CLKDivider"                @ string offset=1449
.Linfo_string116:
	.asciz	"RCC_ClkInitTypeDef"            @ string offset=1464
.Linfo_string117:
	.asciz	"tmpreg"                        @ string offset=1483
.Linfo_string118:
	.asciz	"htim"                          @ string offset=1490
.Linfo_string119:
	.asciz	"Instance"                      @ string offset=1495
.Linfo_string120:
	.asciz	"Init"                          @ string offset=1504
.Linfo_string121:
	.asciz	"Prescaler"                     @ string offset=1509
.Linfo_string122:
	.asciz	"CounterMode"                   @ string offset=1519
.Linfo_string123:
	.asciz	"Period"                        @ string offset=1531
.Linfo_string124:
	.asciz	"ClockDivision"                 @ string offset=1538
.Linfo_string125:
	.asciz	"RepetitionCounter"             @ string offset=1552
.Linfo_string126:
	.asciz	"AutoReloadPreload"             @ string offset=1570
.Linfo_string127:
	.asciz	"TIM_Base_InitTypeDef"          @ string offset=1588
.Linfo_string128:
	.asciz	"Channel"                       @ string offset=1609
.Linfo_string129:
	.asciz	"HAL_TIM_ActiveChannel"         @ string offset=1617
.Linfo_string130:
	.asciz	"hdma"                          @ string offset=1639
.Linfo_string131:
	.asciz	"NDTR"                          @ string offset=1644
.Linfo_string132:
	.asciz	"PAR"                           @ string offset=1649
.Linfo_string133:
	.asciz	"M0AR"                          @ string offset=1653
.Linfo_string134:
	.asciz	"M1AR"                          @ string offset=1658
.Linfo_string135:
	.asciz	"FCR"                           @ string offset=1663
.Linfo_string136:
	.asciz	"DMA_Stream_TypeDef"            @ string offset=1667
.Linfo_string137:
	.asciz	"Direction"                     @ string offset=1686
.Linfo_string138:
	.asciz	"PeriphInc"                     @ string offset=1696
.Linfo_string139:
	.asciz	"MemInc"                        @ string offset=1706
.Linfo_string140:
	.asciz	"PeriphDataAlignment"           @ string offset=1713
.Linfo_string141:
	.asciz	"MemDataAlignment"              @ string offset=1733
.Linfo_string142:
	.asciz	"Mode"                          @ string offset=1750
.Linfo_string143:
	.asciz	"Priority"                      @ string offset=1755
.Linfo_string144:
	.asciz	"FIFOMode"                      @ string offset=1764
.Linfo_string145:
	.asciz	"FIFOThreshold"                 @ string offset=1773
.Linfo_string146:
	.asciz	"MemBurst"                      @ string offset=1787
.Linfo_string147:
	.asciz	"PeriphBurst"                   @ string offset=1796
.Linfo_string148:
	.asciz	"DMA_InitTypeDef"               @ string offset=1808
.Linfo_string149:
	.asciz	"Lock"                          @ string offset=1824
.Linfo_string150:
	.asciz	"HAL_LockTypeDef"               @ string offset=1829
.Linfo_string151:
	.asciz	"State"                         @ string offset=1845
.Linfo_string152:
	.asciz	"HAL_DMA_StateTypeDef"          @ string offset=1851
.Linfo_string153:
	.asciz	"Parent"                        @ string offset=1872
.Linfo_string154:
	.asciz	"XferCpltCallback"              @ string offset=1879
.Linfo_string155:
	.asciz	"XferHalfCpltCallback"          @ string offset=1896
.Linfo_string156:
	.asciz	"XferM1CpltCallback"            @ string offset=1917
.Linfo_string157:
	.asciz	"XferM1HalfCpltCallback"        @ string offset=1936
.Linfo_string158:
	.asciz	"XferErrorCallback"             @ string offset=1959
.Linfo_string159:
	.asciz	"XferAbortCallback"             @ string offset=1977
.Linfo_string160:
	.asciz	"ErrorCode"                     @ string offset=1995
.Linfo_string161:
	.asciz	"StreamBaseAddress"             @ string offset=2005
.Linfo_string162:
	.asciz	"StreamIndex"                   @ string offset=2023
.Linfo_string163:
	.asciz	"__DMA_HandleTypeDef"           @ string offset=2035
.Linfo_string164:
	.asciz	"DMA_HandleTypeDef"             @ string offset=2055
.Linfo_string165:
	.asciz	"HAL_TIM_StateTypeDef"          @ string offset=2073
.Linfo_string166:
	.asciz	"ChannelState"                  @ string offset=2094
.Linfo_string167:
	.asciz	"HAL_TIM_ChannelStateTypeDef"   @ string offset=2107
.Linfo_string168:
	.asciz	"ChannelNState"                 @ string offset=2135
.Linfo_string169:
	.asciz	"DMABurstState"                 @ string offset=2149
.Linfo_string170:
	.asciz	"HAL_TIM_DMABurstStateTypeDef"  @ string offset=2163
.Linfo_string171:
	.asciz	"TIM_HandleTypeDef"             @ string offset=2192
	.ident	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
	.ARM_attribute	16, 1	@ Tag_AV_eba
	.section	.debug_line,"",%progbits
.Lline_table_start0:
