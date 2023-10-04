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
	.file	"gpio.c"
	.file	1 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc\\stm32f4xx_hal_gpio.h"
	.file	2 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include" "stdint.h"
	.file	3 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h"
	.section	.text.MX_GPIO_Init,"ax",%progbits
	.hidden	MX_GPIO_Init                    @ -- Begin function MX_GPIO_Init
	.globl	MX_GPIO_Init
	.p2align	2
	.type	MX_GPIO_Init,%function
	.code	16                              @ @MX_GPIO_Init
	.thumb_func
MX_GPIO_Init:
.Lfunc_begin0:
	.file	4 "E:\\RP\\CppTemplate\\MDK-ARM" "../Core/Src/gpio.c"
	.loc	4 43 0                          @ ../Core/Src/gpio.c:43:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:
	.save	{r4, r5, r6, r7, lr}
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.cfi_offset r6, -12
	.cfi_offset r5, -16
	.cfi_offset r4, -20
	.pad	#28
	sub	sp, #28
	.cfi_def_cfa_offset 48
	movs	r6, #0
	movw	r0, #14384
.Ltmp0:
	.loc	4 45 20 prologue_end            @ ../Core/Src/gpio.c:45:20
	str	r6, [sp, #24]
	strd	r6, r6, [sp, #16]
	strd	r6, r6, [sp, #8]
.Ltmp1:
	.loc	4 48 3                          @ ../Core/Src/gpio.c:48:3
	str	r6, [sp, #4]
	movt	r0, #16386
	ldr	r1, [r0]
	movw	r4, #1024
	orr	r1, r1, #128
	str	r1, [r0]
	ldr	r1, [r0]
	movt	r4, #16386
	and	r1, r1, #128
	str	r1, [sp, #4]
	ldr	r1, [sp, #4]
.Ltmp2:
	.loc	4 49 3                          @ ../Core/Src/gpio.c:49:3
	str	r6, [sp, #4]
	ldr	r1, [r0]
.Ltmp3:
	.loc	4 55 3                          @ ../Core/Src/gpio.c:55:3
	movs	r2, #0
.Ltmp4:
	.loc	4 49 3                          @ ../Core/Src/gpio.c:49:3
	orr	r1, r1, #1
	str	r1, [r0]
	ldr	r1, [r0]
	and	r1, r1, #1
	str	r1, [sp, #4]
	ldr	r1, [sp, #4]
.Ltmp5:
	.loc	4 50 3                          @ ../Core/Src/gpio.c:50:3
	str	r6, [sp, #4]
	ldr	r1, [r0]
	orr	r1, r1, #2
	str	r1, [r0]
	ldr	r1, [r0]
	and	r1, r1, #2
	str	r1, [sp, #4]
	ldr	r1, [sp, #4]
.Ltmp6:
	.loc	4 51 3                          @ ../Core/Src/gpio.c:51:3
	str	r6, [sp, #4]
	ldr	r1, [r0]
	orr	r1, r1, #8
	str	r1, [r0]
	ldr	r1, [r0]
	and	r1, r1, #8
	str	r1, [sp, #4]
	ldr	r1, [sp, #4]
.Ltmp7:
	.loc	4 52 3                          @ ../Core/Src/gpio.c:52:3
	str	r6, [sp, #4]
	ldr	r1, [r0]
	orr	r1, r1, #4
	str	r1, [r0]
	ldr	r0, [r0]
.Ltmp8:
	.loc	4 55 3                          @ ../Core/Src/gpio.c:55:3
	mov.w	r1, #4480
.Ltmp9:
	.loc	4 52 3                          @ ../Core/Src/gpio.c:52:3
	and	r0, r0, #4
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
.Ltmp10:
	.loc	4 55 3                          @ ../Core/Src/gpio.c:55:3
	mov	r0, r4
	bl	HAL_GPIO_WritePin
.Ltmp11:
	.loc	4 0 3 is_stmt 0                 @ ../Core/Src/gpio.c:0:3
	mov.w	r0, #4096
	add	r5, sp, #8
	.loc	4 58 23 is_stmt 1               @ ../Core/Src/gpio.c:58:23
	str	r0, [sp, #8]
	movs	r7, #1
	.loc	4 62 3                          @ ../Core/Src/gpio.c:62:3
	mov	r0, r4
	mov	r1, r5
	.loc	4 59 24                         @ ../Core/Src/gpio.c:59:24
	strd	r7, r6, [sp, #12]
	.loc	4 61 25                         @ ../Core/Src/gpio.c:61:25
	str	r6, [sp, #20]
	.loc	4 62 3                          @ ../Core/Src/gpio.c:62:3
	bl	HAL_GPIO_Init
.Ltmp12:
	.loc	4 0 3 is_stmt 0                 @ ../Core/Src/gpio.c:0:3
	movs	r0, #128
	.loc	4 65 23 is_stmt 1               @ ../Core/Src/gpio.c:65:23
	strd	r0, r7, [sp, #8]
	movs	r0, #2
	.loc	4 68 25                         @ ../Core/Src/gpio.c:68:25
	str	r0, [sp, #20]
	.loc	4 69 3                          @ ../Core/Src/gpio.c:69:3
	mov	r0, r4
	mov	r1, r5
	.loc	4 67 24                         @ ../Core/Src/gpio.c:67:24
	str	r6, [sp, #16]
	.loc	4 69 3                          @ ../Core/Src/gpio.c:69:3
	bl	HAL_GPIO_Init
.Ltmp13:
	.loc	4 0 3 is_stmt 0                 @ ../Core/Src/gpio.c:0:3
	mov.w	r0, #256
	.loc	4 72 23 is_stmt 1               @ ../Core/Src/gpio.c:72:23
	strd	r0, r7, [sp, #8]
	movs	r0, #3
	.loc	4 75 25                         @ ../Core/Src/gpio.c:75:25
	str	r0, [sp, #20]
	.loc	4 76 3                          @ ../Core/Src/gpio.c:76:3
	mov	r0, r4
	mov	r1, r5
	.loc	4 74 24                         @ ../Core/Src/gpio.c:74:24
	str	r6, [sp, #16]
	.loc	4 76 3                          @ ../Core/Src/gpio.c:76:3
	bl	HAL_GPIO_Init
.Ltmp14:
	.loc	4 78 1                          @ ../Core/Src/gpio.c:78:1
	add	sp, #28
	pop	{r4, r5, r6, r7, pc}
.Ltmp15:
.Lfunc_end0:
	.size	MX_GPIO_Init, .Lfunc_end0-MX_GPIO_Init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
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
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
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
	.byte	11                              @ Abbreviation Code
	.byte	1                               @ DW_TAG_array_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	12                              @ Abbreviation Code
	.byte	33                              @ DW_TAG_subrange_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	55                              @ DW_AT_count
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	13                              @ Abbreviation Code
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
	.byte	14                              @ Abbreviation Code
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
	.byte	15                              @ Abbreviation Code
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
	.byte	16                              @ Abbreviation Code
	.byte	11                              @ DW_TAG_lexical_block
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	17                              @ Abbreviation Code
	.byte	11                              @ DW_TAG_lexical_block
	.byte	1                               @ DW_CHILDREN_yes
	.byte	85                              @ DW_AT_ranges
	.byte	23                              @ DW_FORM_sec_offset
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	18                              @ Abbreviation Code
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
	.byte	19                              @ Abbreviation Code
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
	.byte	0                               @ EOM(3)
	.section	.debug_info,"",%progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 @ Length of Unit
.Ldebug_info_start0:
	.short	4                               @ DWARF version number
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	4                               @ Address Size (in bytes)
	.byte	1                               @ Abbrev [1] 0xb:0x385 DW_TAG_compile_unit
	.long	.Linfo_string0                  @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.long	.Linfo_string1                  @ DW_AT_name
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.long	.Linfo_string2                  @ DW_AT_comp_dir
	.long	.Lfunc_begin0                   @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	2                               @ Abbrev [2] 0x26:0x15 DW_TAG_enumeration_type
	.long	59                              @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	1                               @ DW_AT_decl_file
	.byte	67                              @ DW_AT_decl_line
	.byte	3                               @ Abbrev [3] 0x2e:0x6 DW_TAG_enumerator
	.long	.Linfo_string4                  @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x34:0x6 DW_TAG_enumerator
	.long	.Linfo_string5                  @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	4                               @ Abbrev [4] 0x3b:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  @ DW_AT_name
	.byte	8                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	5                               @ Abbrev [5] 0x42:0x5 DW_TAG_pointer_type
	.long	71                              @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x47:0xc DW_TAG_typedef
	.long	83                              @ DW_AT_type
	.long	.Linfo_string39                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.short	628                             @ DW_AT_decl_line
	.byte	7                               @ Abbrev [7] 0x53:0x18c DW_TAG_structure_type
	.byte	136                             @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.short	596                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x58:0xd DW_TAG_member
	.long	.Linfo_string6                  @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	598                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x65:0xd DW_TAG_member
	.long	.Linfo_string9                  @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	599                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x72:0xd DW_TAG_member
	.long	.Linfo_string10                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	600                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x7f:0xd DW_TAG_member
	.long	.Linfo_string11                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	601                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x8c:0xd DW_TAG_member
	.long	.Linfo_string12                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	602                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x99:0xd DW_TAG_member
	.long	.Linfo_string13                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	603                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0xa6:0xd DW_TAG_member
	.long	.Linfo_string14                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	604                             @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0xb3:0xd DW_TAG_member
	.long	.Linfo_string15                 @ DW_AT_name
	.long	484                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	605                             @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0xc0:0xd DW_TAG_member
	.long	.Linfo_string16                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	606                             @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0xcd:0xd DW_TAG_member
	.long	.Linfo_string17                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	607                             @ DW_AT_decl_line
	.byte	36                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0xda:0xd DW_TAG_member
	.long	.Linfo_string18                 @ DW_AT_name
	.long	502                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	608                             @ DW_AT_decl_line
	.byte	40                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0xe7:0xd DW_TAG_member
	.long	.Linfo_string20                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	609                             @ DW_AT_decl_line
	.byte	48                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0xf4:0xd DW_TAG_member
	.long	.Linfo_string21                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	610                             @ DW_AT_decl_line
	.byte	52                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x101:0xd DW_TAG_member
	.long	.Linfo_string22                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	611                             @ DW_AT_decl_line
	.byte	56                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x10e:0xd DW_TAG_member
	.long	.Linfo_string23                 @ DW_AT_name
	.long	484                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	612                             @ DW_AT_decl_line
	.byte	60                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x11b:0xd DW_TAG_member
	.long	.Linfo_string24                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	613                             @ DW_AT_decl_line
	.byte	64                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x128:0xd DW_TAG_member
	.long	.Linfo_string25                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	614                             @ DW_AT_decl_line
	.byte	68                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x135:0xd DW_TAG_member
	.long	.Linfo_string26                 @ DW_AT_name
	.long	502                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	615                             @ DW_AT_decl_line
	.byte	72                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x142:0xd DW_TAG_member
	.long	.Linfo_string27                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	616                             @ DW_AT_decl_line
	.byte	80                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x14f:0xd DW_TAG_member
	.long	.Linfo_string28                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	617                             @ DW_AT_decl_line
	.byte	84                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x15c:0xd DW_TAG_member
	.long	.Linfo_string29                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	618                             @ DW_AT_decl_line
	.byte	88                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x169:0xd DW_TAG_member
	.long	.Linfo_string30                 @ DW_AT_name
	.long	484                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	619                             @ DW_AT_decl_line
	.byte	92                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x176:0xd DW_TAG_member
	.long	.Linfo_string31                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	620                             @ DW_AT_decl_line
	.byte	96                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x183:0xd DW_TAG_member
	.long	.Linfo_string32                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	621                             @ DW_AT_decl_line
	.byte	100                             @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x190:0xd DW_TAG_member
	.long	.Linfo_string33                 @ DW_AT_name
	.long	502                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	622                             @ DW_AT_decl_line
	.byte	104                             @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x19d:0xd DW_TAG_member
	.long	.Linfo_string34                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	623                             @ DW_AT_decl_line
	.byte	112                             @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x1aa:0xd DW_TAG_member
	.long	.Linfo_string35                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	624                             @ DW_AT_decl_line
	.byte	116                             @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x1b7:0xd DW_TAG_member
	.long	.Linfo_string36                 @ DW_AT_name
	.long	502                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	625                             @ DW_AT_decl_line
	.byte	120                             @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x1c4:0xd DW_TAG_member
	.long	.Linfo_string37                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	626                             @ DW_AT_decl_line
	.byte	128                             @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x1d1:0xd DW_TAG_member
	.long	.Linfo_string38                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	627                             @ DW_AT_decl_line
	.byte	132                             @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x1df:0x5 DW_TAG_volatile_type
	.long	484                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x1e4:0xb DW_TAG_typedef
	.long	495                             @ DW_AT_type
	.long	.Linfo_string8                  @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	64                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x1ef:0x7 DW_TAG_base_type
	.long	.Linfo_string7                  @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	11                              @ Abbrev [11] 0x1f6:0xc DW_TAG_array_type
	.long	484                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x1fb:0x6 DW_TAG_subrange_type
	.long	514                             @ DW_AT_type
	.byte	2                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	13                              @ Abbrev [13] 0x202:0x7 DW_TAG_base_type
	.long	.Linfo_string19                 @ DW_AT_name
	.byte	8                               @ DW_AT_byte_size
	.byte	7                               @ DW_AT_encoding
	.byte	5                               @ Abbrev [5] 0x209:0x5 DW_TAG_pointer_type
	.long	526                             @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x20e:0xc DW_TAG_typedef
	.long	538                             @ DW_AT_type
	.long	.Linfo_string49                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.short	537                             @ DW_AT_decl_line
	.byte	7                               @ Abbrev [7] 0x21a:0x7b DW_TAG_structure_type
	.byte	40                              @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.short	526                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x21f:0xd DW_TAG_member
	.long	.Linfo_string40                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	528                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x22c:0xd DW_TAG_member
	.long	.Linfo_string41                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	529                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x239:0xd DW_TAG_member
	.long	.Linfo_string42                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	530                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x246:0xd DW_TAG_member
	.long	.Linfo_string43                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	531                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x253:0xd DW_TAG_member
	.long	.Linfo_string44                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	532                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x260:0xd DW_TAG_member
	.long	.Linfo_string45                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	533                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x26d:0xd DW_TAG_member
	.long	.Linfo_string46                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	534                             @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x27a:0xd DW_TAG_member
	.long	.Linfo_string47                 @ DW_AT_name
	.long	479                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	535                             @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x287:0xd DW_TAG_member
	.long	.Linfo_string48                 @ DW_AT_name
	.long	661                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	536                             @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	11                              @ Abbrev [11] 0x295:0xc DW_TAG_array_type
	.long	479                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x29a:0x6 DW_TAG_subrange_type
	.long	514                             @ DW_AT_type
	.byte	2                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	10                              @ Abbrev [10] 0x2a1:0xb DW_TAG_typedef
	.long	684                             @ DW_AT_type
	.long	.Linfo_string51                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x2ac:0x7 DW_TAG_base_type
	.long	.Linfo_string50                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	14                              @ Abbrev [14] 0x2b3:0x90 DW_TAG_subprogram
	.long	.Lfunc_begin0                   @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
                                        @ DW_AT_GNU_all_call_sites
	.long	.Linfo_string52                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	42                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	15                              @ Abbrev [15] 0x2c4:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string53                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	45                              @ DW_AT_decl_line
	.long	835                             @ DW_AT_type
	.byte	16                              @ Abbrev [16] 0x2d2:0x18 DW_TAG_lexical_block
	.long	.Ltmp1                          @ DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   @ DW_AT_high_pc
	.byte	15                              @ Abbrev [15] 0x2db:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string60                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	48                              @ DW_AT_decl_line
	.long	479                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	17                              @ Abbrev [17] 0x2ea:0x14 DW_TAG_lexical_block
	.long	.Ldebug_ranges0                 @ DW_AT_ranges
	.byte	15                              @ Abbrev [15] 0x2ef:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string60                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	49                              @ DW_AT_decl_line
	.long	479                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	16                              @ Abbrev [16] 0x2fe:0x18 DW_TAG_lexical_block
	.long	.Ltmp5                          @ DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   @ DW_AT_high_pc
	.byte	15                              @ Abbrev [15] 0x307:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string60                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	50                              @ DW_AT_decl_line
	.long	479                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	16                              @ Abbrev [16] 0x316:0x18 DW_TAG_lexical_block
	.long	.Ltmp6                          @ DW_AT_low_pc
	.long	.Ltmp7-.Ltmp6                   @ DW_AT_high_pc
	.byte	15                              @ Abbrev [15] 0x31f:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string60                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	51                              @ DW_AT_decl_line
	.long	479                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	17                              @ Abbrev [17] 0x32e:0x14 DW_TAG_lexical_block
	.long	.Ldebug_ranges1                 @ DW_AT_ranges
	.byte	15                              @ Abbrev [15] 0x333:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string60                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	52                              @ DW_AT_decl_line
	.long	479                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
	.byte	10                              @ Abbrev [10] 0x343:0xb DW_TAG_typedef
	.long	846                             @ DW_AT_type
	.long	.Linfo_string59                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	62                              @ DW_AT_decl_line
	.byte	18                              @ Abbrev [18] 0x34e:0x41 DW_TAG_structure_type
	.byte	20                              @ DW_AT_byte_size
	.byte	1                               @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
	.byte	19                              @ Abbrev [19] 0x352:0xc DW_TAG_member
	.long	.Linfo_string54                 @ DW_AT_name
	.long	484                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	48                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	19                              @ Abbrev [19] 0x35e:0xc DW_TAG_member
	.long	.Linfo_string55                 @ DW_AT_name
	.long	484                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	51                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	19                              @ Abbrev [19] 0x36a:0xc DW_TAG_member
	.long	.Linfo_string56                 @ DW_AT_name
	.long	484                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	54                              @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	19                              @ Abbrev [19] 0x376:0xc DW_TAG_member
	.long	.Linfo_string57                 @ DW_AT_name
	.long	484                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	57                              @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	19                              @ Abbrev [19] 0x382:0xc DW_TAG_member
	.long	.Linfo_string58                 @ DW_AT_name
	.long	484                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	60                              @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.long	.Ltmp2-.Lfunc_begin0
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	.Ltmp5-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	.Ltmp9-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]" @ string offset=0
.Linfo_string1:
	.asciz	"../Core/Src\\gpio.c"           @ string offset=68
.Linfo_string2:
	.asciz	"E:\\RP\\CppTemplate\\MDK-ARM"  @ string offset=87
.Linfo_string3:
	.asciz	"unsigned char"                 @ string offset=113
.Linfo_string4:
	.asciz	"GPIO_PIN_RESET"                @ string offset=127
.Linfo_string5:
	.asciz	"GPIO_PIN_SET"                  @ string offset=142
.Linfo_string6:
	.asciz	"CR"                            @ string offset=155
.Linfo_string7:
	.asciz	"unsigned int"                  @ string offset=158
.Linfo_string8:
	.asciz	"uint32_t"                      @ string offset=171
.Linfo_string9:
	.asciz	"PLLCFGR"                       @ string offset=180
.Linfo_string10:
	.asciz	"CFGR"                          @ string offset=188
.Linfo_string11:
	.asciz	"CIR"                           @ string offset=193
.Linfo_string12:
	.asciz	"AHB1RSTR"                      @ string offset=197
.Linfo_string13:
	.asciz	"AHB2RSTR"                      @ string offset=206
.Linfo_string14:
	.asciz	"AHB3RSTR"                      @ string offset=215
.Linfo_string15:
	.asciz	"RESERVED0"                     @ string offset=224
.Linfo_string16:
	.asciz	"APB1RSTR"                      @ string offset=234
.Linfo_string17:
	.asciz	"APB2RSTR"                      @ string offset=243
.Linfo_string18:
	.asciz	"RESERVED1"                     @ string offset=252
.Linfo_string19:
	.asciz	"__ARRAY_SIZE_TYPE__"           @ string offset=262
.Linfo_string20:
	.asciz	"AHB1ENR"                       @ string offset=282
.Linfo_string21:
	.asciz	"AHB2ENR"                       @ string offset=290
.Linfo_string22:
	.asciz	"AHB3ENR"                       @ string offset=298
.Linfo_string23:
	.asciz	"RESERVED2"                     @ string offset=306
.Linfo_string24:
	.asciz	"APB1ENR"                       @ string offset=316
.Linfo_string25:
	.asciz	"APB2ENR"                       @ string offset=324
.Linfo_string26:
	.asciz	"RESERVED3"                     @ string offset=332
.Linfo_string27:
	.asciz	"AHB1LPENR"                     @ string offset=342
.Linfo_string28:
	.asciz	"AHB2LPENR"                     @ string offset=352
.Linfo_string29:
	.asciz	"AHB3LPENR"                     @ string offset=362
.Linfo_string30:
	.asciz	"RESERVED4"                     @ string offset=372
.Linfo_string31:
	.asciz	"APB1LPENR"                     @ string offset=382
.Linfo_string32:
	.asciz	"APB2LPENR"                     @ string offset=392
.Linfo_string33:
	.asciz	"RESERVED5"                     @ string offset=402
.Linfo_string34:
	.asciz	"BDCR"                          @ string offset=412
.Linfo_string35:
	.asciz	"CSR"                           @ string offset=417
.Linfo_string36:
	.asciz	"RESERVED6"                     @ string offset=421
.Linfo_string37:
	.asciz	"SSCGR"                         @ string offset=431
.Linfo_string38:
	.asciz	"PLLI2SCFGR"                    @ string offset=437
.Linfo_string39:
	.asciz	"RCC_TypeDef"                   @ string offset=448
.Linfo_string40:
	.asciz	"MODER"                         @ string offset=460
.Linfo_string41:
	.asciz	"OTYPER"                        @ string offset=466
.Linfo_string42:
	.asciz	"OSPEEDR"                       @ string offset=473
.Linfo_string43:
	.asciz	"PUPDR"                         @ string offset=481
.Linfo_string44:
	.asciz	"IDR"                           @ string offset=487
.Linfo_string45:
	.asciz	"ODR"                           @ string offset=491
.Linfo_string46:
	.asciz	"BSRR"                          @ string offset=495
.Linfo_string47:
	.asciz	"LCKR"                          @ string offset=500
.Linfo_string48:
	.asciz	"AFR"                           @ string offset=505
.Linfo_string49:
	.asciz	"GPIO_TypeDef"                  @ string offset=509
.Linfo_string50:
	.asciz	"unsigned short"                @ string offset=522
.Linfo_string51:
	.asciz	"uint16_t"                      @ string offset=537
.Linfo_string52:
	.asciz	"MX_GPIO_Init"                  @ string offset=546
.Linfo_string53:
	.asciz	"GPIO_InitStruct"               @ string offset=559
.Linfo_string54:
	.asciz	"Pin"                           @ string offset=575
.Linfo_string55:
	.asciz	"Mode"                          @ string offset=579
.Linfo_string56:
	.asciz	"Pull"                          @ string offset=584
.Linfo_string57:
	.asciz	"Speed"                         @ string offset=589
.Linfo_string58:
	.asciz	"Alternate"                     @ string offset=595
.Linfo_string59:
	.asciz	"GPIO_InitTypeDef"              @ string offset=605
.Linfo_string60:
	.asciz	"tmpreg"                        @ string offset=622
	.ident	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
	.ARM_attribute	16, 1	@ Tag_AV_eba
	.section	.debug_line,"",%progbits
.Lline_table_start0:
