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
	.file	"stm32f4xx_hal_msp.c"
	.file	1 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h"
	.file	2 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include" "stdint.h"
	.section	.text.HAL_MspInit,"ax",%progbits
	.hidden	HAL_MspInit                     @ -- Begin function HAL_MspInit
	.globl	HAL_MspInit
	.p2align	2
	.type	HAL_MspInit,%function
	.code	16                              @ @HAL_MspInit
	.thumb_func
HAL_MspInit:
.Lfunc_begin0:
	.file	3 "E:\\RP\\CppTemplate\\MDK-ARM" "../Core/Src/stm32f4xx_hal_msp.c"
	.loc	3 65 0                          @ ../Core/Src/stm32f4xx_hal_msp.c:65:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 8
	movs	r0, #0
	movw	r1, #14400
.Ltmp0:
	.loc	3 70 3 prologue_end             @ ../Core/Src/stm32f4xx_hal_msp.c:70:3
	str	r0, [sp, #4]
	movt	r1, #16386
	ldr	r2, [r1, #4]
	orr	r2, r2, #16384
	str	r2, [r1, #4]
	ldr	r2, [r1, #4]
	and	r2, r2, #16384
	str	r2, [sp, #4]
	ldr	r2, [sp, #4]
.Ltmp1:
	.loc	3 71 3                          @ ../Core/Src/stm32f4xx_hal_msp.c:71:3
	str	r0, [sp]
	ldr	r0, [r1]
.Ltmp2:
	.loc	3 75 3                          @ ../Core/Src/stm32f4xx_hal_msp.c:75:3
	movs	r2, #0
.Ltmp3:
	.loc	3 71 3                          @ ../Core/Src/stm32f4xx_hal_msp.c:71:3
	orr	r0, r0, #268435456
	str	r0, [r1]
	ldr	r0, [r1]
.Ltmp4:
	.loc	3 75 3                          @ ../Core/Src/stm32f4xx_hal_msp.c:75:3
	movs	r1, #15
.Ltmp5:
	.loc	3 71 3                          @ ../Core/Src/stm32f4xx_hal_msp.c:71:3
	and	r0, r0, #268435456
	str	r0, [sp]
	ldr	r0, [sp]
.Ltmp6:
	.loc	3 75 3                          @ ../Core/Src/stm32f4xx_hal_msp.c:75:3
	mvn	r0, #1
	add	sp, #8
.Ltmp7:
	b	HAL_NVIC_SetPriority
.Ltmp8:
.Lfunc_end0:
	.size	HAL_MspInit, .Lfunc_end0-HAL_MspInit
	.cfi_endproc
	.file	4 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc\\stm32f4xx_hal_cortex.h"
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
	.byte	13                              @ DW_FORM_sdata
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
	.byte	11                              @ DW_TAG_lexical_block
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	16                              @ Abbreviation Code
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
	.byte	17                              @ Abbreviation Code
	.byte	11                              @ DW_TAG_lexical_block
	.byte	1                               @ DW_CHILDREN_yes
	.byte	85                              @ DW_AT_ranges
	.byte	23                              @ DW_FORM_sec_offset
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	18                              @ Abbreviation Code
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
	.byte	19                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	60                              @ DW_AT_declaration
	.byte	25                              @ DW_FORM_flag_present
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	20                              @ Abbreviation Code
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
	.byte	1                               @ Abbrev [1] 0xb:0x484 DW_TAG_compile_unit
	.long	.Linfo_string0                  @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.long	.Linfo_string1                  @ DW_AT_name
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.long	.Linfo_string2                  @ DW_AT_comp_dir
	.long	.Lfunc_begin0                   @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	2                               @ Abbrev [2] 0x26:0x230 DW_TAG_enumeration_type
	.long	598                             @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	1                               @ DW_AT_decl_file
	.byte	65                              @ DW_AT_decl_line
	.byte	3                               @ Abbrev [3] 0x2e:0x6 DW_TAG_enumerator
	.long	.Linfo_string4                  @ DW_AT_name
	.byte	114                             @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x34:0x6 DW_TAG_enumerator
	.long	.Linfo_string5                  @ DW_AT_name
	.byte	116                             @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x3a:0x6 DW_TAG_enumerator
	.long	.Linfo_string6                  @ DW_AT_name
	.byte	117                             @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x40:0x6 DW_TAG_enumerator
	.long	.Linfo_string7                  @ DW_AT_name
	.byte	118                             @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x46:0x6 DW_TAG_enumerator
	.long	.Linfo_string8                  @ DW_AT_name
	.byte	123                             @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x4c:0x6 DW_TAG_enumerator
	.long	.Linfo_string9                  @ DW_AT_name
	.byte	124                             @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x52:0x6 DW_TAG_enumerator
	.long	.Linfo_string10                 @ DW_AT_name
	.byte	126                             @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x58:0x6 DW_TAG_enumerator
	.long	.Linfo_string11                 @ DW_AT_name
	.byte	127                             @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x5e:0x6 DW_TAG_enumerator
	.long	.Linfo_string12                 @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x64:0x6 DW_TAG_enumerator
	.long	.Linfo_string13                 @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x6a:0x6 DW_TAG_enumerator
	.long	.Linfo_string14                 @ DW_AT_name
	.byte	2                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x70:0x6 DW_TAG_enumerator
	.long	.Linfo_string15                 @ DW_AT_name
	.byte	3                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x76:0x6 DW_TAG_enumerator
	.long	.Linfo_string16                 @ DW_AT_name
	.byte	4                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x7c:0x6 DW_TAG_enumerator
	.long	.Linfo_string17                 @ DW_AT_name
	.byte	5                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x82:0x6 DW_TAG_enumerator
	.long	.Linfo_string18                 @ DW_AT_name
	.byte	6                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x88:0x6 DW_TAG_enumerator
	.long	.Linfo_string19                 @ DW_AT_name
	.byte	7                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x8e:0x6 DW_TAG_enumerator
	.long	.Linfo_string20                 @ DW_AT_name
	.byte	8                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x94:0x6 DW_TAG_enumerator
	.long	.Linfo_string21                 @ DW_AT_name
	.byte	9                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x9a:0x6 DW_TAG_enumerator
	.long	.Linfo_string22                 @ DW_AT_name
	.byte	10                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xa0:0x6 DW_TAG_enumerator
	.long	.Linfo_string23                 @ DW_AT_name
	.byte	11                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xa6:0x6 DW_TAG_enumerator
	.long	.Linfo_string24                 @ DW_AT_name
	.byte	12                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xac:0x6 DW_TAG_enumerator
	.long	.Linfo_string25                 @ DW_AT_name
	.byte	13                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xb2:0x6 DW_TAG_enumerator
	.long	.Linfo_string26                 @ DW_AT_name
	.byte	14                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xb8:0x6 DW_TAG_enumerator
	.long	.Linfo_string27                 @ DW_AT_name
	.byte	15                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xbe:0x6 DW_TAG_enumerator
	.long	.Linfo_string28                 @ DW_AT_name
	.byte	16                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xc4:0x6 DW_TAG_enumerator
	.long	.Linfo_string29                 @ DW_AT_name
	.byte	17                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xca:0x6 DW_TAG_enumerator
	.long	.Linfo_string30                 @ DW_AT_name
	.byte	18                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xd0:0x6 DW_TAG_enumerator
	.long	.Linfo_string31                 @ DW_AT_name
	.byte	19                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xd6:0x6 DW_TAG_enumerator
	.long	.Linfo_string32                 @ DW_AT_name
	.byte	20                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xdc:0x6 DW_TAG_enumerator
	.long	.Linfo_string33                 @ DW_AT_name
	.byte	21                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xe2:0x6 DW_TAG_enumerator
	.long	.Linfo_string34                 @ DW_AT_name
	.byte	22                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xe8:0x6 DW_TAG_enumerator
	.long	.Linfo_string35                 @ DW_AT_name
	.byte	23                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xee:0x6 DW_TAG_enumerator
	.long	.Linfo_string36                 @ DW_AT_name
	.byte	24                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xf4:0x6 DW_TAG_enumerator
	.long	.Linfo_string37                 @ DW_AT_name
	.byte	25                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0xfa:0x6 DW_TAG_enumerator
	.long	.Linfo_string38                 @ DW_AT_name
	.byte	26                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x100:0x6 DW_TAG_enumerator
	.long	.Linfo_string39                 @ DW_AT_name
	.byte	27                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x106:0x6 DW_TAG_enumerator
	.long	.Linfo_string40                 @ DW_AT_name
	.byte	28                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x10c:0x6 DW_TAG_enumerator
	.long	.Linfo_string41                 @ DW_AT_name
	.byte	29                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x112:0x6 DW_TAG_enumerator
	.long	.Linfo_string42                 @ DW_AT_name
	.byte	30                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x118:0x6 DW_TAG_enumerator
	.long	.Linfo_string43                 @ DW_AT_name
	.byte	31                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x11e:0x6 DW_TAG_enumerator
	.long	.Linfo_string44                 @ DW_AT_name
	.byte	32                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x124:0x6 DW_TAG_enumerator
	.long	.Linfo_string45                 @ DW_AT_name
	.byte	33                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x12a:0x6 DW_TAG_enumerator
	.long	.Linfo_string46                 @ DW_AT_name
	.byte	34                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x130:0x6 DW_TAG_enumerator
	.long	.Linfo_string47                 @ DW_AT_name
	.byte	35                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x136:0x6 DW_TAG_enumerator
	.long	.Linfo_string48                 @ DW_AT_name
	.byte	36                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x13c:0x6 DW_TAG_enumerator
	.long	.Linfo_string49                 @ DW_AT_name
	.byte	37                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x142:0x6 DW_TAG_enumerator
	.long	.Linfo_string50                 @ DW_AT_name
	.byte	38                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x148:0x6 DW_TAG_enumerator
	.long	.Linfo_string51                 @ DW_AT_name
	.byte	39                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x14e:0x6 DW_TAG_enumerator
	.long	.Linfo_string52                 @ DW_AT_name
	.byte	40                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x154:0x6 DW_TAG_enumerator
	.long	.Linfo_string53                 @ DW_AT_name
	.byte	41                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x15a:0x6 DW_TAG_enumerator
	.long	.Linfo_string54                 @ DW_AT_name
	.byte	42                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x160:0x6 DW_TAG_enumerator
	.long	.Linfo_string55                 @ DW_AT_name
	.byte	43                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x166:0x6 DW_TAG_enumerator
	.long	.Linfo_string56                 @ DW_AT_name
	.byte	44                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x16c:0x6 DW_TAG_enumerator
	.long	.Linfo_string57                 @ DW_AT_name
	.byte	45                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x172:0x6 DW_TAG_enumerator
	.long	.Linfo_string58                 @ DW_AT_name
	.byte	46                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x178:0x6 DW_TAG_enumerator
	.long	.Linfo_string59                 @ DW_AT_name
	.byte	47                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x17e:0x6 DW_TAG_enumerator
	.long	.Linfo_string60                 @ DW_AT_name
	.byte	48                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x184:0x6 DW_TAG_enumerator
	.long	.Linfo_string61                 @ DW_AT_name
	.byte	49                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x18a:0x6 DW_TAG_enumerator
	.long	.Linfo_string62                 @ DW_AT_name
	.byte	50                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x190:0x6 DW_TAG_enumerator
	.long	.Linfo_string63                 @ DW_AT_name
	.byte	51                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x196:0x6 DW_TAG_enumerator
	.long	.Linfo_string64                 @ DW_AT_name
	.byte	52                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x19c:0x6 DW_TAG_enumerator
	.long	.Linfo_string65                 @ DW_AT_name
	.byte	53                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x1a2:0x6 DW_TAG_enumerator
	.long	.Linfo_string66                 @ DW_AT_name
	.byte	54                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x1a8:0x6 DW_TAG_enumerator
	.long	.Linfo_string67                 @ DW_AT_name
	.byte	55                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x1ae:0x6 DW_TAG_enumerator
	.long	.Linfo_string68                 @ DW_AT_name
	.byte	56                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x1b4:0x6 DW_TAG_enumerator
	.long	.Linfo_string69                 @ DW_AT_name
	.byte	57                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x1ba:0x6 DW_TAG_enumerator
	.long	.Linfo_string70                 @ DW_AT_name
	.byte	58                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x1c0:0x6 DW_TAG_enumerator
	.long	.Linfo_string71                 @ DW_AT_name
	.byte	59                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x1c6:0x6 DW_TAG_enumerator
	.long	.Linfo_string72                 @ DW_AT_name
	.byte	60                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x1cc:0x6 DW_TAG_enumerator
	.long	.Linfo_string73                 @ DW_AT_name
	.byte	61                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x1d2:0x6 DW_TAG_enumerator
	.long	.Linfo_string74                 @ DW_AT_name
	.byte	62                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x1d8:0x6 DW_TAG_enumerator
	.long	.Linfo_string75                 @ DW_AT_name
	.byte	63                              @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x1de:0x7 DW_TAG_enumerator
	.long	.Linfo_string76                 @ DW_AT_name
	.asciz	"\300"                          @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x1e5:0x7 DW_TAG_enumerator
	.long	.Linfo_string77                 @ DW_AT_name
	.asciz	"\301"                          @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x1ec:0x7 DW_TAG_enumerator
	.long	.Linfo_string78                 @ DW_AT_name
	.asciz	"\302"                          @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x1f3:0x7 DW_TAG_enumerator
	.long	.Linfo_string79                 @ DW_AT_name
	.asciz	"\303"                          @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x1fa:0x7 DW_TAG_enumerator
	.long	.Linfo_string80                 @ DW_AT_name
	.asciz	"\304"                          @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x201:0x7 DW_TAG_enumerator
	.long	.Linfo_string81                 @ DW_AT_name
	.asciz	"\305"                          @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x208:0x7 DW_TAG_enumerator
	.long	.Linfo_string82                 @ DW_AT_name
	.asciz	"\306"                          @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x20f:0x7 DW_TAG_enumerator
	.long	.Linfo_string83                 @ DW_AT_name
	.asciz	"\307"                          @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x216:0x7 DW_TAG_enumerator
	.long	.Linfo_string84                 @ DW_AT_name
	.asciz	"\310"                          @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x21d:0x7 DW_TAG_enumerator
	.long	.Linfo_string85                 @ DW_AT_name
	.asciz	"\311"                          @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x224:0x7 DW_TAG_enumerator
	.long	.Linfo_string86                 @ DW_AT_name
	.asciz	"\312"                          @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x22b:0x7 DW_TAG_enumerator
	.long	.Linfo_string87                 @ DW_AT_name
	.asciz	"\313"                          @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x232:0x7 DW_TAG_enumerator
	.long	.Linfo_string88                 @ DW_AT_name
	.asciz	"\314"                          @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x239:0x7 DW_TAG_enumerator
	.long	.Linfo_string89                 @ DW_AT_name
	.asciz	"\315"                          @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x240:0x7 DW_TAG_enumerator
	.long	.Linfo_string90                 @ DW_AT_name
	.asciz	"\316"                          @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x247:0x7 DW_TAG_enumerator
	.long	.Linfo_string91                 @ DW_AT_name
	.asciz	"\320"                          @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x24e:0x7 DW_TAG_enumerator
	.long	.Linfo_string92                 @ DW_AT_name
	.asciz	"\321"                          @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	4                               @ Abbrev [4] 0x256:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  @ DW_AT_name
	.byte	6                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	5                               @ Abbrev [5] 0x25d:0x5 DW_TAG_pointer_type
	.long	610                             @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x262:0xc DW_TAG_typedef
	.long	622                             @ DW_AT_type
	.long	.Linfo_string126                @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	628                             @ DW_AT_decl_line
	.byte	7                               @ Abbrev [7] 0x26e:0x18c DW_TAG_structure_type
	.byte	136                             @ DW_AT_byte_size
	.byte	1                               @ DW_AT_decl_file
	.short	596                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x273:0xd DW_TAG_member
	.long	.Linfo_string93                 @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	598                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x280:0xd DW_TAG_member
	.long	.Linfo_string96                 @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	599                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x28d:0xd DW_TAG_member
	.long	.Linfo_string97                 @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	600                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x29a:0xd DW_TAG_member
	.long	.Linfo_string98                 @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	601                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x2a7:0xd DW_TAG_member
	.long	.Linfo_string99                 @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	602                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x2b4:0xd DW_TAG_member
	.long	.Linfo_string100                @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	603                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x2c1:0xd DW_TAG_member
	.long	.Linfo_string101                @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	604                             @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x2ce:0xd DW_TAG_member
	.long	.Linfo_string102                @ DW_AT_name
	.long	1023                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	605                             @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x2db:0xd DW_TAG_member
	.long	.Linfo_string103                @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	606                             @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x2e8:0xd DW_TAG_member
	.long	.Linfo_string104                @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	607                             @ DW_AT_decl_line
	.byte	36                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x2f5:0xd DW_TAG_member
	.long	.Linfo_string105                @ DW_AT_name
	.long	1041                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	608                             @ DW_AT_decl_line
	.byte	40                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x302:0xd DW_TAG_member
	.long	.Linfo_string107                @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	609                             @ DW_AT_decl_line
	.byte	48                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x30f:0xd DW_TAG_member
	.long	.Linfo_string108                @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	610                             @ DW_AT_decl_line
	.byte	52                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x31c:0xd DW_TAG_member
	.long	.Linfo_string109                @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	611                             @ DW_AT_decl_line
	.byte	56                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x329:0xd DW_TAG_member
	.long	.Linfo_string110                @ DW_AT_name
	.long	1023                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	612                             @ DW_AT_decl_line
	.byte	60                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x336:0xd DW_TAG_member
	.long	.Linfo_string111                @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	613                             @ DW_AT_decl_line
	.byte	64                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x343:0xd DW_TAG_member
	.long	.Linfo_string112                @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	614                             @ DW_AT_decl_line
	.byte	68                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x350:0xd DW_TAG_member
	.long	.Linfo_string113                @ DW_AT_name
	.long	1041                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	615                             @ DW_AT_decl_line
	.byte	72                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x35d:0xd DW_TAG_member
	.long	.Linfo_string114                @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	616                             @ DW_AT_decl_line
	.byte	80                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x36a:0xd DW_TAG_member
	.long	.Linfo_string115                @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	617                             @ DW_AT_decl_line
	.byte	84                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x377:0xd DW_TAG_member
	.long	.Linfo_string116                @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	618                             @ DW_AT_decl_line
	.byte	88                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x384:0xd DW_TAG_member
	.long	.Linfo_string117                @ DW_AT_name
	.long	1023                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	619                             @ DW_AT_decl_line
	.byte	92                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x391:0xd DW_TAG_member
	.long	.Linfo_string118                @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	620                             @ DW_AT_decl_line
	.byte	96                              @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x39e:0xd DW_TAG_member
	.long	.Linfo_string119                @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	621                             @ DW_AT_decl_line
	.byte	100                             @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x3ab:0xd DW_TAG_member
	.long	.Linfo_string120                @ DW_AT_name
	.long	1041                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	622                             @ DW_AT_decl_line
	.byte	104                             @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x3b8:0xd DW_TAG_member
	.long	.Linfo_string121                @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	623                             @ DW_AT_decl_line
	.byte	112                             @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x3c5:0xd DW_TAG_member
	.long	.Linfo_string122                @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	624                             @ DW_AT_decl_line
	.byte	116                             @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x3d2:0xd DW_TAG_member
	.long	.Linfo_string123                @ DW_AT_name
	.long	1041                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	625                             @ DW_AT_decl_line
	.byte	120                             @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x3df:0xd DW_TAG_member
	.long	.Linfo_string124                @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	626                             @ DW_AT_decl_line
	.byte	128                             @ DW_AT_data_member_location
	.byte	8                               @ Abbrev [8] 0x3ec:0xd DW_TAG_member
	.long	.Linfo_string125                @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	627                             @ DW_AT_decl_line
	.byte	132                             @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x3fa:0x5 DW_TAG_volatile_type
	.long	1023                            @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x3ff:0xb DW_TAG_typedef
	.long	1034                            @ DW_AT_type
	.long	.Linfo_string95                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	64                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x40a:0x7 DW_TAG_base_type
	.long	.Linfo_string94                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	11                              @ Abbrev [11] 0x411:0xc DW_TAG_array_type
	.long	1023                            @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x416:0x6 DW_TAG_subrange_type
	.long	1053                            @ DW_AT_type
	.byte	2                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	13                              @ Abbrev [13] 0x41d:0x7 DW_TAG_base_type
	.long	.Linfo_string106                @ DW_AT_name
	.byte	8                               @ DW_AT_byte_size
	.byte	7                               @ DW_AT_encoding
	.byte	14                              @ Abbrev [14] 0x424:0x47 DW_TAG_subprogram
	.long	.Lfunc_begin0                   @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
                                        @ DW_AT_GNU_all_call_sites
	.long	.Linfo_string129                @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	64                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	15                              @ Abbrev [15] 0x435:0x18 DW_TAG_lexical_block
	.long	.Ltmp0                          @ DW_AT_low_pc
	.long	.Ltmp1-.Ltmp0                   @ DW_AT_high_pc
	.byte	16                              @ Abbrev [16] 0x43e:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string130                @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	70                              @ DW_AT_decl_line
	.long	1018                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	17                              @ Abbrev [17] 0x44d:0x14 DW_TAG_lexical_block
	.long	.Ldebug_ranges0                 @ DW_AT_ranges
	.byte	16                              @ Abbrev [16] 0x452:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string130                @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	71                              @ DW_AT_decl_line
	.long	1018                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	18                              @ Abbrev [18] 0x461:0x9 DW_TAG_GNU_call_site
	.long	1131                            @ DW_AT_abstract_origin
                                        @ DW_AT_GNU_tail_call
	.long	.Ltmp8                          @ DW_AT_low_pc
	.byte	0                               @ End Of Children Mark
	.byte	19                              @ Abbrev [19] 0x46b:0x18 DW_TAG_subprogram
	.long	.Linfo_string127                @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.short	261                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	20                              @ Abbrev [20] 0x473:0x5 DW_TAG_formal_parameter
	.long	1155                            @ DW_AT_type
	.byte	20                              @ Abbrev [20] 0x478:0x5 DW_TAG_formal_parameter
	.long	1023                            @ DW_AT_type
	.byte	20                              @ Abbrev [20] 0x47d:0x5 DW_TAG_formal_parameter
	.long	1023                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	10                              @ Abbrev [10] 0x483:0xb DW_TAG_typedef
	.long	38                              @ DW_AT_type
	.long	.Linfo_string128                @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	158                             @ DW_AT_decl_line
	.byte	0                               @ End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.long	.Ltmp1-.Lfunc_begin0
	.long	.Ltmp2-.Lfunc_begin0
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]" @ string offset=0
.Linfo_string1:
	.asciz	"../Core/Src\\stm32f4xx_hal_msp.c" @ string offset=68
.Linfo_string2:
	.asciz	"E:\\RP\\CppTemplate\\MDK-ARM"  @ string offset=100
.Linfo_string3:
	.asciz	"signed char"                   @ string offset=126
.Linfo_string4:
	.asciz	"NonMaskableInt_IRQn"           @ string offset=138
.Linfo_string5:
	.asciz	"MemoryManagement_IRQn"         @ string offset=158
.Linfo_string6:
	.asciz	"BusFault_IRQn"                 @ string offset=180
.Linfo_string7:
	.asciz	"UsageFault_IRQn"               @ string offset=194
.Linfo_string8:
	.asciz	"SVCall_IRQn"                   @ string offset=210
.Linfo_string9:
	.asciz	"DebugMonitor_IRQn"             @ string offset=222
.Linfo_string10:
	.asciz	"PendSV_IRQn"                   @ string offset=240
.Linfo_string11:
	.asciz	"SysTick_IRQn"                  @ string offset=252
.Linfo_string12:
	.asciz	"WWDG_IRQn"                     @ string offset=265
.Linfo_string13:
	.asciz	"PVD_IRQn"                      @ string offset=275
.Linfo_string14:
	.asciz	"TAMP_STAMP_IRQn"               @ string offset=284
.Linfo_string15:
	.asciz	"RTC_WKUP_IRQn"                 @ string offset=300
.Linfo_string16:
	.asciz	"FLASH_IRQn"                    @ string offset=314
.Linfo_string17:
	.asciz	"RCC_IRQn"                      @ string offset=325
.Linfo_string18:
	.asciz	"EXTI0_IRQn"                    @ string offset=334
.Linfo_string19:
	.asciz	"EXTI1_IRQn"                    @ string offset=345
.Linfo_string20:
	.asciz	"EXTI2_IRQn"                    @ string offset=356
.Linfo_string21:
	.asciz	"EXTI3_IRQn"                    @ string offset=367
.Linfo_string22:
	.asciz	"EXTI4_IRQn"                    @ string offset=378
.Linfo_string23:
	.asciz	"DMA1_Stream0_IRQn"             @ string offset=389
.Linfo_string24:
	.asciz	"DMA1_Stream1_IRQn"             @ string offset=407
.Linfo_string25:
	.asciz	"DMA1_Stream2_IRQn"             @ string offset=425
.Linfo_string26:
	.asciz	"DMA1_Stream3_IRQn"             @ string offset=443
.Linfo_string27:
	.asciz	"DMA1_Stream4_IRQn"             @ string offset=461
.Linfo_string28:
	.asciz	"DMA1_Stream5_IRQn"             @ string offset=479
.Linfo_string29:
	.asciz	"DMA1_Stream6_IRQn"             @ string offset=497
.Linfo_string30:
	.asciz	"ADC_IRQn"                      @ string offset=515
.Linfo_string31:
	.asciz	"CAN1_TX_IRQn"                  @ string offset=524
.Linfo_string32:
	.asciz	"CAN1_RX0_IRQn"                 @ string offset=537
.Linfo_string33:
	.asciz	"CAN1_RX1_IRQn"                 @ string offset=551
.Linfo_string34:
	.asciz	"CAN1_SCE_IRQn"                 @ string offset=565
.Linfo_string35:
	.asciz	"EXTI9_5_IRQn"                  @ string offset=579
.Linfo_string36:
	.asciz	"TIM1_BRK_TIM9_IRQn"            @ string offset=592
.Linfo_string37:
	.asciz	"TIM1_UP_TIM10_IRQn"            @ string offset=611
.Linfo_string38:
	.asciz	"TIM1_TRG_COM_TIM11_IRQn"       @ string offset=630
.Linfo_string39:
	.asciz	"TIM1_CC_IRQn"                  @ string offset=654
.Linfo_string40:
	.asciz	"TIM2_IRQn"                     @ string offset=667
.Linfo_string41:
	.asciz	"TIM3_IRQn"                     @ string offset=677
.Linfo_string42:
	.asciz	"TIM4_IRQn"                     @ string offset=687
.Linfo_string43:
	.asciz	"I2C1_EV_IRQn"                  @ string offset=697
.Linfo_string44:
	.asciz	"I2C1_ER_IRQn"                  @ string offset=710
.Linfo_string45:
	.asciz	"I2C2_EV_IRQn"                  @ string offset=723
.Linfo_string46:
	.asciz	"I2C2_ER_IRQn"                  @ string offset=736
.Linfo_string47:
	.asciz	"SPI1_IRQn"                     @ string offset=749
.Linfo_string48:
	.asciz	"SPI2_IRQn"                     @ string offset=759
.Linfo_string49:
	.asciz	"USART1_IRQn"                   @ string offset=769
.Linfo_string50:
	.asciz	"USART2_IRQn"                   @ string offset=781
.Linfo_string51:
	.asciz	"USART3_IRQn"                   @ string offset=793
.Linfo_string52:
	.asciz	"EXTI15_10_IRQn"                @ string offset=805
.Linfo_string53:
	.asciz	"RTC_Alarm_IRQn"                @ string offset=820
.Linfo_string54:
	.asciz	"OTG_FS_WKUP_IRQn"              @ string offset=835
.Linfo_string55:
	.asciz	"TIM8_BRK_TIM12_IRQn"           @ string offset=852
.Linfo_string56:
	.asciz	"TIM8_UP_TIM13_IRQn"            @ string offset=872
.Linfo_string57:
	.asciz	"TIM8_TRG_COM_TIM14_IRQn"       @ string offset=891
.Linfo_string58:
	.asciz	"TIM8_CC_IRQn"                  @ string offset=915
.Linfo_string59:
	.asciz	"DMA1_Stream7_IRQn"             @ string offset=928
.Linfo_string60:
	.asciz	"FSMC_IRQn"                     @ string offset=946
.Linfo_string61:
	.asciz	"SDIO_IRQn"                     @ string offset=956
.Linfo_string62:
	.asciz	"TIM5_IRQn"                     @ string offset=966
.Linfo_string63:
	.asciz	"SPI3_IRQn"                     @ string offset=976
.Linfo_string64:
	.asciz	"UART4_IRQn"                    @ string offset=986
.Linfo_string65:
	.asciz	"UART5_IRQn"                    @ string offset=997
.Linfo_string66:
	.asciz	"TIM6_DAC_IRQn"                 @ string offset=1008
.Linfo_string67:
	.asciz	"TIM7_IRQn"                     @ string offset=1022
.Linfo_string68:
	.asciz	"DMA2_Stream0_IRQn"             @ string offset=1032
.Linfo_string69:
	.asciz	"DMA2_Stream1_IRQn"             @ string offset=1050
.Linfo_string70:
	.asciz	"DMA2_Stream2_IRQn"             @ string offset=1068
.Linfo_string71:
	.asciz	"DMA2_Stream3_IRQn"             @ string offset=1086
.Linfo_string72:
	.asciz	"DMA2_Stream4_IRQn"             @ string offset=1104
.Linfo_string73:
	.asciz	"ETH_IRQn"                      @ string offset=1122
.Linfo_string74:
	.asciz	"ETH_WKUP_IRQn"                 @ string offset=1131
.Linfo_string75:
	.asciz	"CAN2_TX_IRQn"                  @ string offset=1145
.Linfo_string76:
	.asciz	"CAN2_RX0_IRQn"                 @ string offset=1158
.Linfo_string77:
	.asciz	"CAN2_RX1_IRQn"                 @ string offset=1172
.Linfo_string78:
	.asciz	"CAN2_SCE_IRQn"                 @ string offset=1186
.Linfo_string79:
	.asciz	"OTG_FS_IRQn"                   @ string offset=1200
.Linfo_string80:
	.asciz	"DMA2_Stream5_IRQn"             @ string offset=1212
.Linfo_string81:
	.asciz	"DMA2_Stream6_IRQn"             @ string offset=1230
.Linfo_string82:
	.asciz	"DMA2_Stream7_IRQn"             @ string offset=1248
.Linfo_string83:
	.asciz	"USART6_IRQn"                   @ string offset=1266
.Linfo_string84:
	.asciz	"I2C3_EV_IRQn"                  @ string offset=1278
.Linfo_string85:
	.asciz	"I2C3_ER_IRQn"                  @ string offset=1291
.Linfo_string86:
	.asciz	"OTG_HS_EP1_OUT_IRQn"           @ string offset=1304
.Linfo_string87:
	.asciz	"OTG_HS_EP1_IN_IRQn"            @ string offset=1324
.Linfo_string88:
	.asciz	"OTG_HS_WKUP_IRQn"              @ string offset=1343
.Linfo_string89:
	.asciz	"OTG_HS_IRQn"                   @ string offset=1360
.Linfo_string90:
	.asciz	"DCMI_IRQn"                     @ string offset=1372
.Linfo_string91:
	.asciz	"RNG_IRQn"                      @ string offset=1382
.Linfo_string92:
	.asciz	"FPU_IRQn"                      @ string offset=1391
.Linfo_string93:
	.asciz	"CR"                            @ string offset=1400
.Linfo_string94:
	.asciz	"unsigned int"                  @ string offset=1403
.Linfo_string95:
	.asciz	"uint32_t"                      @ string offset=1416
.Linfo_string96:
	.asciz	"PLLCFGR"                       @ string offset=1425
.Linfo_string97:
	.asciz	"CFGR"                          @ string offset=1433
.Linfo_string98:
	.asciz	"CIR"                           @ string offset=1438
.Linfo_string99:
	.asciz	"AHB1RSTR"                      @ string offset=1442
.Linfo_string100:
	.asciz	"AHB2RSTR"                      @ string offset=1451
.Linfo_string101:
	.asciz	"AHB3RSTR"                      @ string offset=1460
.Linfo_string102:
	.asciz	"RESERVED0"                     @ string offset=1469
.Linfo_string103:
	.asciz	"APB1RSTR"                      @ string offset=1479
.Linfo_string104:
	.asciz	"APB2RSTR"                      @ string offset=1488
.Linfo_string105:
	.asciz	"RESERVED1"                     @ string offset=1497
.Linfo_string106:
	.asciz	"__ARRAY_SIZE_TYPE__"           @ string offset=1507
.Linfo_string107:
	.asciz	"AHB1ENR"                       @ string offset=1527
.Linfo_string108:
	.asciz	"AHB2ENR"                       @ string offset=1535
.Linfo_string109:
	.asciz	"AHB3ENR"                       @ string offset=1543
.Linfo_string110:
	.asciz	"RESERVED2"                     @ string offset=1551
.Linfo_string111:
	.asciz	"APB1ENR"                       @ string offset=1561
.Linfo_string112:
	.asciz	"APB2ENR"                       @ string offset=1569
.Linfo_string113:
	.asciz	"RESERVED3"                     @ string offset=1577
.Linfo_string114:
	.asciz	"AHB1LPENR"                     @ string offset=1587
.Linfo_string115:
	.asciz	"AHB2LPENR"                     @ string offset=1597
.Linfo_string116:
	.asciz	"AHB3LPENR"                     @ string offset=1607
.Linfo_string117:
	.asciz	"RESERVED4"                     @ string offset=1617
.Linfo_string118:
	.asciz	"APB1LPENR"                     @ string offset=1627
.Linfo_string119:
	.asciz	"APB2LPENR"                     @ string offset=1637
.Linfo_string120:
	.asciz	"RESERVED5"                     @ string offset=1647
.Linfo_string121:
	.asciz	"BDCR"                          @ string offset=1657
.Linfo_string122:
	.asciz	"CSR"                           @ string offset=1662
.Linfo_string123:
	.asciz	"RESERVED6"                     @ string offset=1666
.Linfo_string124:
	.asciz	"SSCGR"                         @ string offset=1676
.Linfo_string125:
	.asciz	"PLLI2SCFGR"                    @ string offset=1682
.Linfo_string126:
	.asciz	"RCC_TypeDef"                   @ string offset=1693
.Linfo_string127:
	.asciz	"HAL_NVIC_SetPriority"          @ string offset=1705
.Linfo_string128:
	.asciz	"IRQn_Type"                     @ string offset=1726
.Linfo_string129:
	.asciz	"HAL_MspInit"                   @ string offset=1736
.Linfo_string130:
	.asciz	"tmpreg"                        @ string offset=1748
	.ident	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
	.ARM_attribute	16, 1	@ Tag_AV_eba
	.section	.debug_line,"",%progbits
.Lline_table_start0:
