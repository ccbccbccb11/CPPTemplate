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
	.file	"spi.c"
	.file	1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include" "stdint.h"
	.file	2 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h"
	.file	3 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc\\stm32f4xx_hal_spi.h"
	.file	4 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc\\stm32f4xx_hal_dma.h"
	.file	5 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_def.h"
	.file	6 "E:\\RP\\CppTemplate\\MDK-ARM" "../Core/Src/spi.c"
	.section	.text.MX_SPI2_Init,"ax",%progbits
	.hidden	MX_SPI2_Init                    @ -- Begin function MX_SPI2_Init
	.globl	MX_SPI2_Init
	.p2align	2
	.type	MX_SPI2_Init,%function
	.code	16                              @ @MX_SPI2_Init
	.thumb_func
MX_SPI2_Init:
.Lfunc_begin0:
	.loc	6 31 0                          @ ../Core/Src/spi.c:31:0
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
	.loc	6 40 18 prologue_end            @ ../Core/Src/spi.c:40:18
	movw	r0, :lower16:hspi2
	movw	r1, #14336
	movt	r0, :upper16:hspi2
	movt	r1, #16384
	mov.w	r2, #260
	movs	r3, #0
	stm.w	r0, {r1, r2, r3}
	.loc	6 43 23                         @ ../Core/Src/spi.c:43:23
	add.w	r1, r0, #20
	mov.w	r12, #512
	mov.w	lr, #16
	stm.w	r1, {r3, r12, lr}
	movs	r1, #10
	strd	r3, r3, [r0, #12]
	.loc	6 48 23                         @ ../Core/Src/spi.c:48:23
	strd	r3, r3, [r0, #32]
	.loc	6 50 29                         @ ../Core/Src/spi.c:50:29
	strd	r3, r1, [r0, #40]
.Ltmp1:
	.loc	6 52 7                          @ ../Core/Src/spi.c:52:7
	bl	HAL_SPI_Init
.Ltmp2:
	.loc	6 52 7 is_stmt 0                @ ../Core/Src/spi.c:52:7
	cmp	r0, #0
	.loc	6 60 1 is_stmt 1                @ ../Core/Src/spi.c:60:1
	it	eq
	popeq	{r7, pc}
.LBB0_1:
.Ltmp3:
	.loc	6 54 5                          @ ../Core/Src/spi.c:54:5
	pop.w	{r7, lr}
.Ltmp4:
	b	Error_Handler
.Ltmp5:
.Lfunc_end0:
	.size	MX_SPI2_Init, .Lfunc_end0-MX_SPI2_Init
	.cfi_endproc
	.file	7 "E:\\RP\\CppTemplate\\MDK-ARM" "../Core/Inc/main.h"
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.HAL_SPI_MspInit,"ax",%progbits
	.hidden	HAL_SPI_MspInit                 @ -- Begin function HAL_SPI_MspInit
	.globl	HAL_SPI_MspInit
	.p2align	2
	.type	HAL_SPI_MspInit,%function
	.code	16                              @ @HAL_SPI_MspInit
	.thumb_func
HAL_SPI_MspInit:
.Lfunc_begin1:
	.loc	6 63 0                          @ ../Core/Src/spi.c:63:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	@DEBUG_VALUE: HAL_SPI_MspInit:spiHandle <- $r0
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#24
	sub	sp, #24
	.cfi_def_cfa_offset 32
.Ltmp6:
	.loc	6 66 17 prologue_end            @ ../Core/Src/spi.c:66:17
	ldr	r1, [r0]
	movw	r0, #14336
.Ltmp7:
	@DEBUG_VALUE: HAL_SPI_MspInit:spiHandle <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	6 0 17 is_stmt 0                @ ../Core/Src/spi.c:0:17
	movt	r0, #16384
.Ltmp8:
	.loc	6 66 6                          @ ../Core/Src/spi.c:66:6
	cmp	r1, r0
	beq	.LBB1_2
.Ltmp9:
@ %bb.1:
	@DEBUG_VALUE: HAL_SPI_MspInit:spiHandle <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	6 91 1 is_stmt 1                @ ../Core/Src/spi.c:91:1
	add	sp, #24
	pop	{r7, pc}
.Ltmp10:
	.p2align	2
.LBB1_2:
	@DEBUG_VALUE: HAL_SPI_MspInit:spiHandle <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	6 0 1 is_stmt 0                 @ ../Core/Src/spi.c:0:1
	movs	r1, #0
	movw	r2, #14384
.Ltmp11:
	.loc	6 72 5 is_stmt 1                @ ../Core/Src/spi.c:72:5
	str	r1, [sp, #4]
	movt	r2, #16386
	ldr	r3, [r2, #16]
.Ltmp12:
	.loc	6 85 5                          @ ../Core/Src/spi.c:85:5
	add.w	r0, r0, #117760
.Ltmp13:
	.loc	6 72 5                          @ ../Core/Src/spi.c:72:5
	orr	r3, r3, #16384
	str	r3, [r2, #16]
	ldr	r3, [r2, #16]
	and	r3, r3, #16384
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
.Ltmp14:
	.loc	6 74 5                          @ ../Core/Src/spi.c:74:5
	str	r1, [sp, #4]
	ldr	r3, [r2]
	orr	r3, r3, #2
	str	r3, [r2]
	ldr	r2, [r2]
	and	r2, r2, #2
	str	r2, [sp, #4]
	ldr	r2, [sp, #4]
	mov.w	r2, #57344
.Ltmp15:
	.loc	6 80 25                         @ ../Core/Src/spi.c:80:25
	str	r2, [sp, #4]
	movs	r2, #2
	.loc	6 81 26                         @ ../Core/Src/spi.c:81:26
	strd	r2, r1, [sp, #8]
	movs	r1, #3
	.loc	6 83 27                         @ ../Core/Src/spi.c:83:27
	str	r1, [sp, #16]
	movs	r1, #5
	.loc	6 84 31                         @ ../Core/Src/spi.c:84:31
	str	r1, [sp, #20]
	add	r1, sp, #4
	.loc	6 85 5                          @ ../Core/Src/spi.c:85:5
	bl	HAL_GPIO_Init
.Ltmp16:
	.loc	6 91 1                          @ ../Core/Src/spi.c:91:1
	add	sp, #24
	pop	{r7, pc}
.Ltmp17:
.Lfunc_end1:
	.size	HAL_SPI_MspInit, .Lfunc_end1-HAL_SPI_MspInit
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.HAL_SPI_MspDeInit,"ax",%progbits
	.hidden	HAL_SPI_MspDeInit               @ -- Begin function HAL_SPI_MspDeInit
	.globl	HAL_SPI_MspDeInit
	.p2align	2
	.type	HAL_SPI_MspDeInit,%function
	.code	16                              @ @HAL_SPI_MspDeInit
	.thumb_func
HAL_SPI_MspDeInit:
.Lfunc_begin2:
	.loc	6 94 0                          @ ../Core/Src/spi.c:94:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	@DEBUG_VALUE: HAL_SPI_MspDeInit:spiHandle <- $r0
	.loc	6 96 17 prologue_end            @ ../Core/Src/spi.c:96:17
	ldr	r1, [r0]
	movw	r0, #14336
.Ltmp18:
	@DEBUG_VALUE: HAL_SPI_MspDeInit:spiHandle <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	6 0 17 is_stmt 0                @ ../Core/Src/spi.c:0:17
	movt	r0, #16384
.Ltmp19:
	.loc	6 96 6                          @ ../Core/Src/spi.c:96:6
	cmp	r1, r0
	.loc	6 115 1 is_stmt 1               @ ../Core/Src/spi.c:115:1
	it	ne
	bxne	lr
.Ltmp20:
.LBB2_1:
	@DEBUG_VALUE: HAL_SPI_MspDeInit:spiHandle <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	6 0 1 is_stmt 0                 @ ../Core/Src/spi.c:0:1
	movw	r2, #14400
	movt	r2, #16386
.Ltmp21:
	.loc	6 102 5 is_stmt 1               @ ../Core/Src/spi.c:102:5
	ldr	r1, [r2]
	.loc	6 109 5                         @ ../Core/Src/spi.c:109:5
	add.w	r0, r0, #117760
	.loc	6 102 5                         @ ../Core/Src/spi.c:102:5
	bic	r3, r1, #16384
	.loc	6 109 5                         @ ../Core/Src/spi.c:109:5
	mov.w	r1, #57344
	.loc	6 102 5                         @ ../Core/Src/spi.c:102:5
	str	r3, [r2]
.Ltmp22:
	.loc	6 109 5                         @ ../Core/Src/spi.c:109:5
	b	HAL_GPIO_DeInit
.Ltmp23:
.Lfunc_end2:
	.size	HAL_SPI_MspDeInit, .Lfunc_end2-HAL_SPI_MspDeInit
	.cfi_endproc
	.file	8 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc\\stm32f4xx_hal_gpio.h"
	.cantunwind
	.fnend
                                        @ -- End function
	.hidden	hspi2                           @ @hspi2
	.type	hspi2,%object
	.section	.bss.hspi2,"aw",%nobits
	.globl	hspi2
	.p2align	2, 0x0
hspi2:
	.zero	88
	.size	hspi2, 88

	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
	.long	-1
	.long	.Lfunc_begin1                   @   base address
	.long	.Lfunc_begin1-.Lfunc_begin1
	.long	.Ltmp7-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.long	.Ltmp7-.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.short	4                               @ Loc expr size
	.byte	243                             @ DW_OP_GNU_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.long	0
	.long	0
.Ldebug_loc1:
	.long	-1
	.long	.Lfunc_begin2                   @   base address
	.long	.Lfunc_begin2-.Lfunc_begin2
	.long	.Ltmp18-.Lfunc_begin2
	.short	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.long	.Ltmp18-.Lfunc_begin2
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
	.byte	12                              @ Abbreviation Code
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
	.byte	13                              @ Abbreviation Code
	.byte	21                              @ DW_TAG_subroutine_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	39                              @ DW_AT_prototyped
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
	.byte	16                              @ Abbreviation Code
	.byte	40                              @ DW_TAG_enumerator
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	28                              @ DW_AT_const_value
	.byte	15                              @ DW_FORM_udata
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	17                              @ Abbreviation Code
	.byte	15                              @ DW_TAG_pointer_type
	.byte	0                               @ DW_CHILDREN_no
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
	.byte	25                              @ Abbreviation Code
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
	.byte	26                              @ Abbreviation Code
	.byte	11                              @ DW_TAG_lexical_block
	.byte	1                               @ DW_CHILDREN_yes
	.byte	85                              @ DW_AT_ranges
	.byte	23                              @ DW_FORM_sec_offset
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	27                              @ Abbreviation Code
	.byte	11                              @ DW_TAG_lexical_block
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	28                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
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
	.byte	0                               @ EOM(3)
	.section	.debug_info,"",%progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 @ Length of Unit
.Ldebug_info_start0:
	.short	4                               @ DWARF version number
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	4                               @ Address Size (in bytes)
	.byte	1                               @ Abbrev [1] 0xb:0x85c DW_TAG_compile_unit
	.long	.Linfo_string0                  @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.long	.Linfo_string1                  @ DW_AT_name
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.long	.Linfo_string2                  @ DW_AT_comp_dir
	.long	0                               @ DW_AT_low_pc
	.long	.Ldebug_ranges1                 @ DW_AT_ranges
	.byte	2                               @ Abbrev [2] 0x26:0x11 DW_TAG_variable
	.long	.Linfo_string3                  @ DW_AT_name
	.long	55                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ DW_AT_decl_file
	.byte	27                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	hspi2
	.byte	3                               @ Abbrev [3] 0x37:0xb DW_TAG_typedef
	.long	66                              @ DW_AT_type
	.long	.Linfo_string96                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	149                             @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x42:0xbd DW_TAG_structure_type
	.long	.Linfo_string95                 @ DW_AT_name
	.byte	88                              @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.byte	104                             @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0x4a:0xc DW_TAG_member
	.long	.Linfo_string4                  @ DW_AT_name
	.long	255                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	106                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x56:0xc DW_TAG_member
	.long	.Linfo_string17                 @ DW_AT_name
	.long	418                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	108                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x62:0xc DW_TAG_member
	.long	.Linfo_string30                 @ DW_AT_name
	.long	566                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	110                             @ DW_AT_decl_line
	.byte	48                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x6e:0xc DW_TAG_member
	.long	.Linfo_string33                 @ DW_AT_name
	.long	589                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	112                             @ DW_AT_decl_line
	.byte	52                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x7a:0xc DW_TAG_member
	.long	.Linfo_string36                 @ DW_AT_name
	.long	607                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	114                             @ DW_AT_decl_line
	.byte	54                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x86:0xc DW_TAG_member
	.long	.Linfo_string37                 @ DW_AT_name
	.long	566                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	116                             @ DW_AT_decl_line
	.byte	56                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x92:0xc DW_TAG_member
	.long	.Linfo_string38                 @ DW_AT_name
	.long	589                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	118                             @ DW_AT_decl_line
	.byte	60                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x9e:0xc DW_TAG_member
	.long	.Linfo_string39                 @ DW_AT_name
	.long	607                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	120                             @ DW_AT_decl_line
	.byte	62                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xaa:0xc DW_TAG_member
	.long	.Linfo_string40                 @ DW_AT_name
	.long	612                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	122                             @ DW_AT_decl_line
	.byte	64                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xb6:0xc DW_TAG_member
	.long	.Linfo_string41                 @ DW_AT_name
	.long	612                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	124                             @ DW_AT_decl_line
	.byte	68                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xc2:0xc DW_TAG_member
	.long	.Linfo_string42                 @ DW_AT_name
	.long	629                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	126                             @ DW_AT_decl_line
	.byte	72                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xce:0xc DW_TAG_member
	.long	.Linfo_string85                 @ DW_AT_name
	.long	629                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	128                             @ DW_AT_decl_line
	.byte	76                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xda:0xc DW_TAG_member
	.long	.Linfo_string61                 @ DW_AT_name
	.long	1083                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	130                             @ DW_AT_decl_line
	.byte	80                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xe6:0xc DW_TAG_member
	.long	.Linfo_string65                 @ DW_AT_name
	.long	1194                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	132                             @ DW_AT_decl_line
	.byte	81                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xf2:0xc DW_TAG_member
	.long	.Linfo_string80                 @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	134                             @ DW_AT_decl_line
	.byte	84                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0xff:0x5 DW_TAG_pointer_type
	.long	260                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x104:0xc DW_TAG_typedef
	.long	272                             @ DW_AT_type
	.long	.Linfo_string16                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	721                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x110:0x7b DW_TAG_structure_type
	.byte	36                              @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.short	710                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x115:0xd DW_TAG_member
	.long	.Linfo_string5                  @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	712                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x122:0xd DW_TAG_member
	.long	.Linfo_string8                  @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	713                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x12f:0xd DW_TAG_member
	.long	.Linfo_string9                  @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	714                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x13c:0xd DW_TAG_member
	.long	.Linfo_string10                 @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	715                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x149:0xd DW_TAG_member
	.long	.Linfo_string11                 @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	716                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x156:0xd DW_TAG_member
	.long	.Linfo_string12                 @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	717                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x163:0xd DW_TAG_member
	.long	.Linfo_string13                 @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	718                             @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x170:0xd DW_TAG_member
	.long	.Linfo_string14                 @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	719                             @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x17d:0xd DW_TAG_member
	.long	.Linfo_string15                 @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	720                             @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	10                              @ Abbrev [10] 0x18b:0x5 DW_TAG_volatile_type
	.long	400                             @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x190:0xb DW_TAG_typedef
	.long	411                             @ DW_AT_type
	.long	.Linfo_string7                  @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	64                              @ DW_AT_decl_line
	.byte	11                              @ Abbrev [11] 0x19b:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	3                               @ Abbrev [3] 0x1a2:0xb DW_TAG_typedef
	.long	429                             @ DW_AT_type
	.long	.Linfo_string29                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	84                              @ DW_AT_decl_line
	.byte	12                              @ Abbrev [12] 0x1ad:0x89 DW_TAG_structure_type
	.byte	44                              @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0x1b1:0xc DW_TAG_member
	.long	.Linfo_string18                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	48                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x1bd:0xc DW_TAG_member
	.long	.Linfo_string19                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	51                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x1c9:0xc DW_TAG_member
	.long	.Linfo_string20                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	54                              @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x1d5:0xc DW_TAG_member
	.long	.Linfo_string21                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	57                              @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x1e1:0xc DW_TAG_member
	.long	.Linfo_string22                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	60                              @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x1ed:0xc DW_TAG_member
	.long	.Linfo_string23                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x1f9:0xc DW_TAG_member
	.long	.Linfo_string24                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	67                              @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x205:0xc DW_TAG_member
	.long	.Linfo_string25                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	73                              @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x211:0xc DW_TAG_member
	.long	.Linfo_string26                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	76                              @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x21d:0xc DW_TAG_member
	.long	.Linfo_string27                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	79                              @ DW_AT_decl_line
	.byte	36                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x229:0xc DW_TAG_member
	.long	.Linfo_string28                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	82                              @ DW_AT_decl_line
	.byte	40                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0x236:0x5 DW_TAG_pointer_type
	.long	571                             @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x23b:0xb DW_TAG_typedef
	.long	582                             @ DW_AT_type
	.long	.Linfo_string32                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	62                              @ DW_AT_decl_line
	.byte	11                              @ Abbrev [11] 0x246:0x7 DW_TAG_base_type
	.long	.Linfo_string31                 @ DW_AT_name
	.byte	8                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	3                               @ Abbrev [3] 0x24d:0xb DW_TAG_typedef
	.long	600                             @ DW_AT_type
	.long	.Linfo_string35                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	11                              @ Abbrev [11] 0x258:0x7 DW_TAG_base_type
	.long	.Linfo_string34                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	10                              @ Abbrev [10] 0x25f:0x5 DW_TAG_volatile_type
	.long	589                             @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x264:0x5 DW_TAG_pointer_type
	.long	617                             @ DW_AT_type
	.byte	13                              @ Abbrev [13] 0x269:0x7 DW_TAG_subroutine_type
                                        @ DW_AT_prototyped
	.byte	14                              @ Abbrev [14] 0x26a:0x5 DW_TAG_formal_parameter
	.long	624                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0x270:0x5 DW_TAG_pointer_type
	.long	66                              @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x275:0x5 DW_TAG_pointer_type
	.long	634                             @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x27a:0xb DW_TAG_typedef
	.long	645                             @ DW_AT_type
	.long	.Linfo_string84                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	168                             @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x285:0xb1 DW_TAG_structure_type
	.long	.Linfo_string83                 @ DW_AT_name
	.byte	96                              @ DW_AT_byte_size
	.byte	4                               @ DW_AT_decl_file
	.byte	138                             @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0x28d:0xc DW_TAG_member
	.long	.Linfo_string4                  @ DW_AT_name
	.long	822                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	140                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x299:0xc DW_TAG_member
	.long	.Linfo_string17                 @ DW_AT_name
	.long	923                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	142                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x2a5:0xc DW_TAG_member
	.long	.Linfo_string61                 @ DW_AT_name
	.long	1083                            @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	144                             @ DW_AT_decl_line
	.byte	52                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x2b1:0xc DW_TAG_member
	.long	.Linfo_string65                 @ DW_AT_name
	.long	1115                            @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	146                             @ DW_AT_decl_line
	.byte	53                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x2bd:0xc DW_TAG_member
	.long	.Linfo_string73                 @ DW_AT_name
	.long	1176                            @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	148                             @ DW_AT_decl_line
	.byte	56                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x2c9:0xc DW_TAG_member
	.long	.Linfo_string74                 @ DW_AT_name
	.long	1177                            @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	150                             @ DW_AT_decl_line
	.byte	60                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x2d5:0xc DW_TAG_member
	.long	.Linfo_string75                 @ DW_AT_name
	.long	1177                            @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	152                             @ DW_AT_decl_line
	.byte	64                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x2e1:0xc DW_TAG_member
	.long	.Linfo_string76                 @ DW_AT_name
	.long	1177                            @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	154                             @ DW_AT_decl_line
	.byte	68                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x2ed:0xc DW_TAG_member
	.long	.Linfo_string77                 @ DW_AT_name
	.long	1177                            @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	156                             @ DW_AT_decl_line
	.byte	72                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x2f9:0xc DW_TAG_member
	.long	.Linfo_string78                 @ DW_AT_name
	.long	1177                            @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	158                             @ DW_AT_decl_line
	.byte	76                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x305:0xc DW_TAG_member
	.long	.Linfo_string79                 @ DW_AT_name
	.long	1177                            @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	160                             @ DW_AT_decl_line
	.byte	80                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x311:0xc DW_TAG_member
	.long	.Linfo_string80                 @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	162                             @ DW_AT_decl_line
	.byte	84                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x31d:0xc DW_TAG_member
	.long	.Linfo_string81                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	164                             @ DW_AT_decl_line
	.byte	88                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x329:0xc DW_TAG_member
	.long	.Linfo_string82                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	166                             @ DW_AT_decl_line
	.byte	92                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0x336:0x5 DW_TAG_pointer_type
	.long	827                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x33b:0xc DW_TAG_typedef
	.long	839                             @ DW_AT_type
	.long	.Linfo_string49                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	353                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x347:0x54 DW_TAG_structure_type
	.byte	24                              @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.short	345                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x34c:0xd DW_TAG_member
	.long	.Linfo_string43                 @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	347                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x359:0xd DW_TAG_member
	.long	.Linfo_string44                 @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	348                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x366:0xd DW_TAG_member
	.long	.Linfo_string45                 @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	349                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x373:0xd DW_TAG_member
	.long	.Linfo_string46                 @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	350                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x380:0xd DW_TAG_member
	.long	.Linfo_string47                 @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	351                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x38d:0xd DW_TAG_member
	.long	.Linfo_string48                 @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	352                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	3                               @ Abbrev [3] 0x39b:0xb DW_TAG_typedef
	.long	934                             @ DW_AT_type
	.long	.Linfo_string60                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	96                              @ DW_AT_decl_line
	.byte	12                              @ Abbrev [12] 0x3a6:0x95 DW_TAG_structure_type
	.byte	48                              @ DW_AT_byte_size
	.byte	4                               @ DW_AT_decl_file
	.byte	48                              @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0x3aa:0xc DW_TAG_member
	.long	.Linfo_string50                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	50                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x3b6:0xc DW_TAG_member
	.long	.Linfo_string19                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	53                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x3c2:0xc DW_TAG_member
	.long	.Linfo_string51                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	57                              @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x3ce:0xc DW_TAG_member
	.long	.Linfo_string52                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	60                              @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x3da:0xc DW_TAG_member
	.long	.Linfo_string53                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x3e6:0xc DW_TAG_member
	.long	.Linfo_string54                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	66                              @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x3f2:0xc DW_TAG_member
	.long	.Linfo_string18                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	69                              @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x3fe:0xc DW_TAG_member
	.long	.Linfo_string55                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	74                              @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x40a:0xc DW_TAG_member
	.long	.Linfo_string56                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	77                              @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x416:0xc DW_TAG_member
	.long	.Linfo_string57                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	82                              @ DW_AT_decl_line
	.byte	36                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x422:0xc DW_TAG_member
	.long	.Linfo_string58                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	85                              @ DW_AT_decl_line
	.byte	40                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x42e:0xc DW_TAG_member
	.long	.Linfo_string59                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	91                              @ DW_AT_decl_line
	.byte	44                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	3                               @ Abbrev [3] 0x43b:0xb DW_TAG_typedef
	.long	1094                            @ DW_AT_type
	.long	.Linfo_string64                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.byte	53                              @ DW_AT_decl_line
	.byte	15                              @ Abbrev [15] 0x446:0x15 DW_TAG_enumeration_type
	.long	582                             @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	5                               @ DW_AT_decl_file
	.byte	49                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x44e:0x6 DW_TAG_enumerator
	.long	.Linfo_string62                 @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	16                              @ Abbrev [16] 0x454:0x6 DW_TAG_enumerator
	.long	.Linfo_string63                 @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	10                              @ Abbrev [10] 0x45b:0x5 DW_TAG_volatile_type
	.long	1120                            @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x460:0xb DW_TAG_typedef
	.long	1131                            @ DW_AT_type
	.long	.Linfo_string72                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	110                             @ DW_AT_decl_line
	.byte	15                              @ Abbrev [15] 0x46b:0x2d DW_TAG_enumeration_type
	.long	582                             @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	4                               @ DW_AT_decl_file
	.byte	102                             @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x473:0x6 DW_TAG_enumerator
	.long	.Linfo_string66                 @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	16                              @ Abbrev [16] 0x479:0x6 DW_TAG_enumerator
	.long	.Linfo_string67                 @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	16                              @ Abbrev [16] 0x47f:0x6 DW_TAG_enumerator
	.long	.Linfo_string68                 @ DW_AT_name
	.byte	2                               @ DW_AT_const_value
	.byte	16                              @ Abbrev [16] 0x485:0x6 DW_TAG_enumerator
	.long	.Linfo_string69                 @ DW_AT_name
	.byte	3                               @ DW_AT_const_value
	.byte	16                              @ Abbrev [16] 0x48b:0x6 DW_TAG_enumerator
	.long	.Linfo_string70                 @ DW_AT_name
	.byte	4                               @ DW_AT_const_value
	.byte	16                              @ Abbrev [16] 0x491:0x6 DW_TAG_enumerator
	.long	.Linfo_string71                 @ DW_AT_name
	.byte	5                               @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	17                              @ Abbrev [17] 0x498:0x1 DW_TAG_pointer_type
	.byte	6                               @ Abbrev [6] 0x499:0x5 DW_TAG_pointer_type
	.long	1182                            @ DW_AT_type
	.byte	13                              @ Abbrev [13] 0x49e:0x7 DW_TAG_subroutine_type
                                        @ DW_AT_prototyped
	.byte	14                              @ Abbrev [14] 0x49f:0x5 DW_TAG_formal_parameter
	.long	1189                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0x4a5:0x5 DW_TAG_pointer_type
	.long	645                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x4aa:0x5 DW_TAG_volatile_type
	.long	1199                            @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x4af:0xb DW_TAG_typedef
	.long	1210                            @ DW_AT_type
	.long	.Linfo_string94                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	99                              @ DW_AT_decl_line
	.byte	15                              @ Abbrev [15] 0x4ba:0x39 DW_TAG_enumeration_type
	.long	582                             @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.byte	89                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x4c2:0x6 DW_TAG_enumerator
	.long	.Linfo_string86                 @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	16                              @ Abbrev [16] 0x4c8:0x6 DW_TAG_enumerator
	.long	.Linfo_string87                 @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	16                              @ Abbrev [16] 0x4ce:0x6 DW_TAG_enumerator
	.long	.Linfo_string88                 @ DW_AT_name
	.byte	2                               @ DW_AT_const_value
	.byte	16                              @ Abbrev [16] 0x4d4:0x6 DW_TAG_enumerator
	.long	.Linfo_string89                 @ DW_AT_name
	.byte	3                               @ DW_AT_const_value
	.byte	16                              @ Abbrev [16] 0x4da:0x6 DW_TAG_enumerator
	.long	.Linfo_string90                 @ DW_AT_name
	.byte	4                               @ DW_AT_const_value
	.byte	16                              @ Abbrev [16] 0x4e0:0x6 DW_TAG_enumerator
	.long	.Linfo_string91                 @ DW_AT_name
	.byte	5                               @ DW_AT_const_value
	.byte	16                              @ Abbrev [16] 0x4e6:0x6 DW_TAG_enumerator
	.long	.Linfo_string92                 @ DW_AT_name
	.byte	6                               @ DW_AT_const_value
	.byte	16                              @ Abbrev [16] 0x4ec:0x6 DW_TAG_enumerator
	.long	.Linfo_string93                 @ DW_AT_name
	.byte	7                               @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	15                              @ Abbrev [15] 0x4f3:0x21 DW_TAG_enumeration_type
	.long	582                             @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	5                               @ DW_AT_decl_file
	.byte	38                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x4fb:0x6 DW_TAG_enumerator
	.long	.Linfo_string97                 @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	16                              @ Abbrev [16] 0x501:0x6 DW_TAG_enumerator
	.long	.Linfo_string98                 @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	16                              @ Abbrev [16] 0x507:0x6 DW_TAG_enumerator
	.long	.Linfo_string99                 @ DW_AT_name
	.byte	2                               @ DW_AT_const_value
	.byte	16                              @ Abbrev [16] 0x50d:0x6 DW_TAG_enumerator
	.long	.Linfo_string100                @ DW_AT_name
	.byte	3                               @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0x514:0x5 DW_TAG_pointer_type
	.long	1305                            @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x519:0xc DW_TAG_typedef
	.long	1317                            @ DW_AT_type
	.long	.Linfo_string131                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	628                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x525:0x18c DW_TAG_structure_type
	.byte	136                             @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.short	596                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x52a:0xd DW_TAG_member
	.long	.Linfo_string43                 @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	598                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x537:0xd DW_TAG_member
	.long	.Linfo_string101                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	599                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x544:0xd DW_TAG_member
	.long	.Linfo_string102                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	600                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x551:0xd DW_TAG_member
	.long	.Linfo_string103                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	601                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x55e:0xd DW_TAG_member
	.long	.Linfo_string104                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	602                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x56b:0xd DW_TAG_member
	.long	.Linfo_string105                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	603                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x578:0xd DW_TAG_member
	.long	.Linfo_string106                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	604                             @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x585:0xd DW_TAG_member
	.long	.Linfo_string107                @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	605                             @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x592:0xd DW_TAG_member
	.long	.Linfo_string108                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	606                             @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x59f:0xd DW_TAG_member
	.long	.Linfo_string109                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	607                             @ DW_AT_decl_line
	.byte	36                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x5ac:0xd DW_TAG_member
	.long	.Linfo_string110                @ DW_AT_name
	.long	1713                            @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	608                             @ DW_AT_decl_line
	.byte	40                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x5b9:0xd DW_TAG_member
	.long	.Linfo_string112                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	609                             @ DW_AT_decl_line
	.byte	48                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x5c6:0xd DW_TAG_member
	.long	.Linfo_string113                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	610                             @ DW_AT_decl_line
	.byte	52                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x5d3:0xd DW_TAG_member
	.long	.Linfo_string114                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	611                             @ DW_AT_decl_line
	.byte	56                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x5e0:0xd DW_TAG_member
	.long	.Linfo_string115                @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	612                             @ DW_AT_decl_line
	.byte	60                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x5ed:0xd DW_TAG_member
	.long	.Linfo_string116                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	613                             @ DW_AT_decl_line
	.byte	64                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x5fa:0xd DW_TAG_member
	.long	.Linfo_string117                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	614                             @ DW_AT_decl_line
	.byte	68                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x607:0xd DW_TAG_member
	.long	.Linfo_string118                @ DW_AT_name
	.long	1713                            @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	615                             @ DW_AT_decl_line
	.byte	72                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x614:0xd DW_TAG_member
	.long	.Linfo_string119                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	616                             @ DW_AT_decl_line
	.byte	80                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x621:0xd DW_TAG_member
	.long	.Linfo_string120                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	617                             @ DW_AT_decl_line
	.byte	84                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x62e:0xd DW_TAG_member
	.long	.Linfo_string121                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	618                             @ DW_AT_decl_line
	.byte	88                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x63b:0xd DW_TAG_member
	.long	.Linfo_string122                @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	619                             @ DW_AT_decl_line
	.byte	92                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x648:0xd DW_TAG_member
	.long	.Linfo_string123                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	620                             @ DW_AT_decl_line
	.byte	96                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x655:0xd DW_TAG_member
	.long	.Linfo_string124                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	621                             @ DW_AT_decl_line
	.byte	100                             @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x662:0xd DW_TAG_member
	.long	.Linfo_string125                @ DW_AT_name
	.long	1713                            @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	622                             @ DW_AT_decl_line
	.byte	104                             @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x66f:0xd DW_TAG_member
	.long	.Linfo_string126                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	623                             @ DW_AT_decl_line
	.byte	112                             @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x67c:0xd DW_TAG_member
	.long	.Linfo_string127                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	624                             @ DW_AT_decl_line
	.byte	116                             @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x689:0xd DW_TAG_member
	.long	.Linfo_string128                @ DW_AT_name
	.long	1713                            @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	625                             @ DW_AT_decl_line
	.byte	120                             @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x696:0xd DW_TAG_member
	.long	.Linfo_string129                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	626                             @ DW_AT_decl_line
	.byte	128                             @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x6a3:0xd DW_TAG_member
	.long	.Linfo_string130                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	627                             @ DW_AT_decl_line
	.byte	132                             @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	18                              @ Abbrev [18] 0x6b1:0xc DW_TAG_array_type
	.long	400                             @ DW_AT_type
	.byte	19                              @ Abbrev [19] 0x6b6:0x6 DW_TAG_subrange_type
	.long	1725                            @ DW_AT_type
	.byte	2                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	20                              @ Abbrev [20] 0x6bd:0x7 DW_TAG_base_type
	.long	.Linfo_string111                @ DW_AT_name
	.byte	8                               @ DW_AT_byte_size
	.byte	7                               @ DW_AT_encoding
	.byte	6                               @ Abbrev [6] 0x6c4:0x5 DW_TAG_pointer_type
	.long	1737                            @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x6c9:0xc DW_TAG_typedef
	.long	1749                            @ DW_AT_type
	.long	.Linfo_string141                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	537                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x6d5:0x7b DW_TAG_structure_type
	.byte	40                              @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.short	526                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x6da:0xd DW_TAG_member
	.long	.Linfo_string132                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	528                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x6e7:0xd DW_TAG_member
	.long	.Linfo_string133                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	529                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x6f4:0xd DW_TAG_member
	.long	.Linfo_string134                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	530                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x701:0xd DW_TAG_member
	.long	.Linfo_string135                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	531                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x70e:0xd DW_TAG_member
	.long	.Linfo_string136                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	532                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x71b:0xd DW_TAG_member
	.long	.Linfo_string137                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	533                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x728:0xd DW_TAG_member
	.long	.Linfo_string138                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	534                             @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x735:0xd DW_TAG_member
	.long	.Linfo_string139                @ DW_AT_name
	.long	395                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	535                             @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x742:0xd DW_TAG_member
	.long	.Linfo_string140                @ DW_AT_name
	.long	1872                            @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	536                             @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	18                              @ Abbrev [18] 0x750:0xc DW_TAG_array_type
	.long	395                             @ DW_AT_type
	.byte	19                              @ Abbrev [19] 0x755:0x6 DW_TAG_subrange_type
	.long	1725                            @ DW_AT_type
	.byte	2                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	21                              @ Abbrev [21] 0x75c:0x1b DW_TAG_subprogram
	.long	.Lfunc_begin0                   @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
                                        @ DW_AT_GNU_all_call_sites
	.long	.Linfo_string144                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	30                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	22                              @ Abbrev [22] 0x76d:0x9 DW_TAG_GNU_call_site
	.long	1911                            @ DW_AT_abstract_origin
                                        @ DW_AT_GNU_tail_call
	.long	.Ltmp5                          @ DW_AT_low_pc
	.byte	0                               @ End Of Children Mark
	.byte	23                              @ Abbrev [23] 0x777:0x7 DW_TAG_subprogram
	.long	.Linfo_string142                @ DW_AT_name
	.byte	7                               @ DW_AT_decl_file
	.byte	53                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	21                              @ Abbrev [21] 0x77e:0x5b DW_TAG_subprogram
	.long	.Lfunc_begin1                   @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
                                        @ DW_AT_GNU_all_call_sites
	.long	.Linfo_string145                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	62                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	24                              @ Abbrev [24] 0x78f:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc0                    @ DW_AT_location
	.long	.Linfo_string154                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	62                              @ DW_AT_decl_line
	.long	2145                            @ DW_AT_type
	.byte	25                              @ Abbrev [25] 0x79e:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string147                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	65                              @ DW_AT_decl_line
	.long	2069                            @ DW_AT_type
	.byte	26                              @ Abbrev [26] 0x7ac:0x14 DW_TAG_lexical_block
	.long	.Ldebug_ranges0                 @ DW_AT_ranges
	.byte	25                              @ Abbrev [25] 0x7b1:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string153                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	72                              @ DW_AT_decl_line
	.long	395                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	27                              @ Abbrev [27] 0x7c0:0x18 DW_TAG_lexical_block
	.long	.Ltmp14                         @ DW_AT_low_pc
	.long	.Ltmp15-.Ltmp14                 @ DW_AT_high_pc
	.byte	25                              @ Abbrev [25] 0x7c9:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string153                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	74                              @ DW_AT_decl_line
	.long	395                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
	.byte	21                              @ Abbrev [21] 0x7d9:0x2a DW_TAG_subprogram
	.long	.Lfunc_begin2                   @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
                                        @ DW_AT_GNU_all_call_sites
	.long	.Linfo_string146                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	93                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	24                              @ Abbrev [24] 0x7ea:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc1                    @ DW_AT_location
	.long	.Linfo_string154                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	93                              @ DW_AT_decl_line
	.long	2145                            @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0x7f9:0x9 DW_TAG_GNU_call_site
	.long	2051                            @ DW_AT_abstract_origin
                                        @ DW_AT_GNU_tail_call
	.long	.Ltmp23                         @ DW_AT_low_pc
	.byte	0                               @ End Of Children Mark
	.byte	28                              @ Abbrev [28] 0x803:0x12 DW_TAG_subprogram
	.long	.Linfo_string143                @ DW_AT_name
	.byte	8                               @ DW_AT_decl_file
	.byte	225                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                              @ Abbrev [14] 0x80a:0x5 DW_TAG_formal_parameter
	.long	1732                            @ DW_AT_type
	.byte	14                              @ Abbrev [14] 0x80f:0x5 DW_TAG_formal_parameter
	.long	400                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	3                               @ Abbrev [3] 0x815:0xb DW_TAG_typedef
	.long	2080                            @ DW_AT_type
	.long	.Linfo_string152                @ DW_AT_name
	.byte	8                               @ DW_AT_decl_file
	.byte	62                              @ DW_AT_decl_line
	.byte	12                              @ Abbrev [12] 0x820:0x41 DW_TAG_structure_type
	.byte	20                              @ DW_AT_byte_size
	.byte	8                               @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0x824:0xc DW_TAG_member
	.long	.Linfo_string148                @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	48                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x830:0xc DW_TAG_member
	.long	.Linfo_string18                 @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	51                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x83c:0xc DW_TAG_member
	.long	.Linfo_string149                @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	54                              @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x848:0xc DW_TAG_member
	.long	.Linfo_string150                @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	57                              @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x854:0xc DW_TAG_member
	.long	.Linfo_string151                @ DW_AT_name
	.long	400                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	60                              @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0x861:0x5 DW_TAG_pointer_type
	.long	55                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.long	.Ltmp11
	.long	.Ltmp12
	.long	.Ltmp13
	.long	.Ltmp14
	.long	0
	.long	0
.Ldebug_ranges1:
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
	.asciz	"../Core/Src\\spi.c"            @ string offset=68
.Linfo_string2:
	.asciz	"E:\\RP\\CppTemplate\\MDK-ARM"  @ string offset=86
.Linfo_string3:
	.asciz	"hspi2"                         @ string offset=112
.Linfo_string4:
	.asciz	"Instance"                      @ string offset=118
.Linfo_string5:
	.asciz	"CR1"                           @ string offset=127
.Linfo_string6:
	.asciz	"unsigned int"                  @ string offset=131
.Linfo_string7:
	.asciz	"uint32_t"                      @ string offset=144
.Linfo_string8:
	.asciz	"CR2"                           @ string offset=153
.Linfo_string9:
	.asciz	"SR"                            @ string offset=157
.Linfo_string10:
	.asciz	"DR"                            @ string offset=160
.Linfo_string11:
	.asciz	"CRCPR"                         @ string offset=163
.Linfo_string12:
	.asciz	"RXCRCR"                        @ string offset=169
.Linfo_string13:
	.asciz	"TXCRCR"                        @ string offset=176
.Linfo_string14:
	.asciz	"I2SCFGR"                       @ string offset=183
.Linfo_string15:
	.asciz	"I2SPR"                         @ string offset=191
.Linfo_string16:
	.asciz	"SPI_TypeDef"                   @ string offset=197
.Linfo_string17:
	.asciz	"Init"                          @ string offset=209
.Linfo_string18:
	.asciz	"Mode"                          @ string offset=214
.Linfo_string19:
	.asciz	"Direction"                     @ string offset=219
.Linfo_string20:
	.asciz	"DataSize"                      @ string offset=229
.Linfo_string21:
	.asciz	"CLKPolarity"                   @ string offset=238
.Linfo_string22:
	.asciz	"CLKPhase"                      @ string offset=250
.Linfo_string23:
	.asciz	"NSS"                           @ string offset=259
.Linfo_string24:
	.asciz	"BaudRatePrescaler"             @ string offset=263
.Linfo_string25:
	.asciz	"FirstBit"                      @ string offset=281
.Linfo_string26:
	.asciz	"TIMode"                        @ string offset=290
.Linfo_string27:
	.asciz	"CRCCalculation"                @ string offset=297
.Linfo_string28:
	.asciz	"CRCPolynomial"                 @ string offset=312
.Linfo_string29:
	.asciz	"SPI_InitTypeDef"               @ string offset=326
.Linfo_string30:
	.asciz	"pTxBuffPtr"                    @ string offset=342
.Linfo_string31:
	.asciz	"unsigned char"                 @ string offset=353
.Linfo_string32:
	.asciz	"uint8_t"                       @ string offset=367
.Linfo_string33:
	.asciz	"TxXferSize"                    @ string offset=375
.Linfo_string34:
	.asciz	"unsigned short"                @ string offset=386
.Linfo_string35:
	.asciz	"uint16_t"                      @ string offset=401
.Linfo_string36:
	.asciz	"TxXferCount"                   @ string offset=410
.Linfo_string37:
	.asciz	"pRxBuffPtr"                    @ string offset=422
.Linfo_string38:
	.asciz	"RxXferSize"                    @ string offset=433
.Linfo_string39:
	.asciz	"RxXferCount"                   @ string offset=444
.Linfo_string40:
	.asciz	"RxISR"                         @ string offset=456
.Linfo_string41:
	.asciz	"TxISR"                         @ string offset=462
.Linfo_string42:
	.asciz	"hdmatx"                        @ string offset=468
.Linfo_string43:
	.asciz	"CR"                            @ string offset=475
.Linfo_string44:
	.asciz	"NDTR"                          @ string offset=478
.Linfo_string45:
	.asciz	"PAR"                           @ string offset=483
.Linfo_string46:
	.asciz	"M0AR"                          @ string offset=487
.Linfo_string47:
	.asciz	"M1AR"                          @ string offset=492
.Linfo_string48:
	.asciz	"FCR"                           @ string offset=497
.Linfo_string49:
	.asciz	"DMA_Stream_TypeDef"            @ string offset=501
.Linfo_string50:
	.asciz	"Channel"                       @ string offset=520
.Linfo_string51:
	.asciz	"PeriphInc"                     @ string offset=528
.Linfo_string52:
	.asciz	"MemInc"                        @ string offset=538
.Linfo_string53:
	.asciz	"PeriphDataAlignment"           @ string offset=545
.Linfo_string54:
	.asciz	"MemDataAlignment"              @ string offset=565
.Linfo_string55:
	.asciz	"Priority"                      @ string offset=582
.Linfo_string56:
	.asciz	"FIFOMode"                      @ string offset=591
.Linfo_string57:
	.asciz	"FIFOThreshold"                 @ string offset=600
.Linfo_string58:
	.asciz	"MemBurst"                      @ string offset=614
.Linfo_string59:
	.asciz	"PeriphBurst"                   @ string offset=623
.Linfo_string60:
	.asciz	"DMA_InitTypeDef"               @ string offset=635
.Linfo_string61:
	.asciz	"Lock"                          @ string offset=651
.Linfo_string62:
	.asciz	"HAL_UNLOCKED"                  @ string offset=656
.Linfo_string63:
	.asciz	"HAL_LOCKED"                    @ string offset=669
.Linfo_string64:
	.asciz	"HAL_LockTypeDef"               @ string offset=680
.Linfo_string65:
	.asciz	"State"                         @ string offset=696
.Linfo_string66:
	.asciz	"HAL_DMA_STATE_RESET"           @ string offset=702
.Linfo_string67:
	.asciz	"HAL_DMA_STATE_READY"           @ string offset=722
.Linfo_string68:
	.asciz	"HAL_DMA_STATE_BUSY"            @ string offset=742
.Linfo_string69:
	.asciz	"HAL_DMA_STATE_TIMEOUT"         @ string offset=761
.Linfo_string70:
	.asciz	"HAL_DMA_STATE_ERROR"           @ string offset=783
.Linfo_string71:
	.asciz	"HAL_DMA_STATE_ABORT"           @ string offset=803
.Linfo_string72:
	.asciz	"HAL_DMA_StateTypeDef"          @ string offset=823
.Linfo_string73:
	.asciz	"Parent"                        @ string offset=844
.Linfo_string74:
	.asciz	"XferCpltCallback"              @ string offset=851
.Linfo_string75:
	.asciz	"XferHalfCpltCallback"          @ string offset=868
.Linfo_string76:
	.asciz	"XferM1CpltCallback"            @ string offset=889
.Linfo_string77:
	.asciz	"XferM1HalfCpltCallback"        @ string offset=908
.Linfo_string78:
	.asciz	"XferErrorCallback"             @ string offset=931
.Linfo_string79:
	.asciz	"XferAbortCallback"             @ string offset=949
.Linfo_string80:
	.asciz	"ErrorCode"                     @ string offset=967
.Linfo_string81:
	.asciz	"StreamBaseAddress"             @ string offset=977
.Linfo_string82:
	.asciz	"StreamIndex"                   @ string offset=995
.Linfo_string83:
	.asciz	"__DMA_HandleTypeDef"           @ string offset=1007
.Linfo_string84:
	.asciz	"DMA_HandleTypeDef"             @ string offset=1027
.Linfo_string85:
	.asciz	"hdmarx"                        @ string offset=1045
.Linfo_string86:
	.asciz	"HAL_SPI_STATE_RESET"           @ string offset=1052
.Linfo_string87:
	.asciz	"HAL_SPI_STATE_READY"           @ string offset=1072
.Linfo_string88:
	.asciz	"HAL_SPI_STATE_BUSY"            @ string offset=1092
.Linfo_string89:
	.asciz	"HAL_SPI_STATE_BUSY_TX"         @ string offset=1111
.Linfo_string90:
	.asciz	"HAL_SPI_STATE_BUSY_RX"         @ string offset=1133
.Linfo_string91:
	.asciz	"HAL_SPI_STATE_BUSY_TX_RX"      @ string offset=1155
.Linfo_string92:
	.asciz	"HAL_SPI_STATE_ERROR"           @ string offset=1180
.Linfo_string93:
	.asciz	"HAL_SPI_STATE_ABORT"           @ string offset=1200
.Linfo_string94:
	.asciz	"HAL_SPI_StateTypeDef"          @ string offset=1220
.Linfo_string95:
	.asciz	"__SPI_HandleTypeDef"           @ string offset=1241
.Linfo_string96:
	.asciz	"SPI_HandleTypeDef"             @ string offset=1261
.Linfo_string97:
	.asciz	"HAL_OK"                        @ string offset=1279
.Linfo_string98:
	.asciz	"HAL_ERROR"                     @ string offset=1286
.Linfo_string99:
	.asciz	"HAL_BUSY"                      @ string offset=1296
.Linfo_string100:
	.asciz	"HAL_TIMEOUT"                   @ string offset=1305
.Linfo_string101:
	.asciz	"PLLCFGR"                       @ string offset=1317
.Linfo_string102:
	.asciz	"CFGR"                          @ string offset=1325
.Linfo_string103:
	.asciz	"CIR"                           @ string offset=1330
.Linfo_string104:
	.asciz	"AHB1RSTR"                      @ string offset=1334
.Linfo_string105:
	.asciz	"AHB2RSTR"                      @ string offset=1343
.Linfo_string106:
	.asciz	"AHB3RSTR"                      @ string offset=1352
.Linfo_string107:
	.asciz	"RESERVED0"                     @ string offset=1361
.Linfo_string108:
	.asciz	"APB1RSTR"                      @ string offset=1371
.Linfo_string109:
	.asciz	"APB2RSTR"                      @ string offset=1380
.Linfo_string110:
	.asciz	"RESERVED1"                     @ string offset=1389
.Linfo_string111:
	.asciz	"__ARRAY_SIZE_TYPE__"           @ string offset=1399
.Linfo_string112:
	.asciz	"AHB1ENR"                       @ string offset=1419
.Linfo_string113:
	.asciz	"AHB2ENR"                       @ string offset=1427
.Linfo_string114:
	.asciz	"AHB3ENR"                       @ string offset=1435
.Linfo_string115:
	.asciz	"RESERVED2"                     @ string offset=1443
.Linfo_string116:
	.asciz	"APB1ENR"                       @ string offset=1453
.Linfo_string117:
	.asciz	"APB2ENR"                       @ string offset=1461
.Linfo_string118:
	.asciz	"RESERVED3"                     @ string offset=1469
.Linfo_string119:
	.asciz	"AHB1LPENR"                     @ string offset=1479
.Linfo_string120:
	.asciz	"AHB2LPENR"                     @ string offset=1489
.Linfo_string121:
	.asciz	"AHB3LPENR"                     @ string offset=1499
.Linfo_string122:
	.asciz	"RESERVED4"                     @ string offset=1509
.Linfo_string123:
	.asciz	"APB1LPENR"                     @ string offset=1519
.Linfo_string124:
	.asciz	"APB2LPENR"                     @ string offset=1529
.Linfo_string125:
	.asciz	"RESERVED5"                     @ string offset=1539
.Linfo_string126:
	.asciz	"BDCR"                          @ string offset=1549
.Linfo_string127:
	.asciz	"CSR"                           @ string offset=1554
.Linfo_string128:
	.asciz	"RESERVED6"                     @ string offset=1558
.Linfo_string129:
	.asciz	"SSCGR"                         @ string offset=1568
.Linfo_string130:
	.asciz	"PLLI2SCFGR"                    @ string offset=1574
.Linfo_string131:
	.asciz	"RCC_TypeDef"                   @ string offset=1585
.Linfo_string132:
	.asciz	"MODER"                         @ string offset=1597
.Linfo_string133:
	.asciz	"OTYPER"                        @ string offset=1603
.Linfo_string134:
	.asciz	"OSPEEDR"                       @ string offset=1610
.Linfo_string135:
	.asciz	"PUPDR"                         @ string offset=1618
.Linfo_string136:
	.asciz	"IDR"                           @ string offset=1624
.Linfo_string137:
	.asciz	"ODR"                           @ string offset=1628
.Linfo_string138:
	.asciz	"BSRR"                          @ string offset=1632
.Linfo_string139:
	.asciz	"LCKR"                          @ string offset=1637
.Linfo_string140:
	.asciz	"AFR"                           @ string offset=1642
.Linfo_string141:
	.asciz	"GPIO_TypeDef"                  @ string offset=1646
.Linfo_string142:
	.asciz	"Error_Handler"                 @ string offset=1659
.Linfo_string143:
	.asciz	"HAL_GPIO_DeInit"               @ string offset=1673
.Linfo_string144:
	.asciz	"MX_SPI2_Init"                  @ string offset=1689
.Linfo_string145:
	.asciz	"HAL_SPI_MspInit"               @ string offset=1702
.Linfo_string146:
	.asciz	"HAL_SPI_MspDeInit"             @ string offset=1718
.Linfo_string147:
	.asciz	"GPIO_InitStruct"               @ string offset=1736
.Linfo_string148:
	.asciz	"Pin"                           @ string offset=1752
.Linfo_string149:
	.asciz	"Pull"                          @ string offset=1756
.Linfo_string150:
	.asciz	"Speed"                         @ string offset=1761
.Linfo_string151:
	.asciz	"Alternate"                     @ string offset=1767
.Linfo_string152:
	.asciz	"GPIO_InitTypeDef"              @ string offset=1777
.Linfo_string153:
	.asciz	"tmpreg"                        @ string offset=1794
.Linfo_string154:
	.asciz	"spiHandle"                     @ string offset=1801
	.ident	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
	.ARM_attribute	16, 1	@ Tag_AV_eba
	.section	.debug_line,"",%progbits
.Lline_table_start0:
