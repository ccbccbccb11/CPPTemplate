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
	.file	"driver_spi.cpp"
	.file	1 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_def.h"
	.file	2 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc\\stm32f4xx_hal_gpio.h"
	.file	3 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h"
	.file	4 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include" "stdint.h"
	.file	5 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include" "stddef.h"
	.section	.text._Z9SPI2_Initv,"ax",%progbits
	.hidden	_Z9SPI2_Initv                   @ -- Begin function _Z9SPI2_Initv
	.globl	_Z9SPI2_Initv
	.p2align	2
	.type	_Z9SPI2_Initv,%function
	.code	16                              @ @_Z9SPI2_Initv
	.thumb_func
_Z9SPI2_Initv:
.Lfunc_begin0:
	.file	6 "E:\\RP\\CppTemplate\\MDK-ARM" "../User/drive/src/driver_spi.cpp"
	.loc	6 17 0                          @ ../User/drive/src/driver_spi.cpp:17:0
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
	.loc	6 18 2 prologue_end             @ ../User/drive/src/driver_spi.cpp:18:2
	movw	r0, :lower16:hspi2
	movt	r0, :upper16:hspi2
	bl	HAL_SPI_Init
.Ltmp1:
	.loc	6 0 2 is_stmt 0                 @ ../User/drive/src/driver_spi.cpp:0:2
	movw	r0, #1024
	movt	r0, #16386
	.loc	6 19 2 is_stmt 1                @ ../User/drive/src/driver_spi.cpp:19:2
	mov.w	r1, #4096
	movs	r2, #1
	bl	HAL_GPIO_WritePin
.Ltmp2:
	.loc	6 20 2                          @ ../User/drive/src/driver_spi.cpp:20:2
	movs	r0, #1
	pop.w	{r7, lr}
.Ltmp3:
	b	HAL_Delay
.Ltmp4:
.Lfunc_end0:
	.size	_Z9SPI2_Initv, .Lfunc_end0-_Z9SPI2_Initv
	.cfi_endproc
	.file	7 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc\\stm32f4xx_hal.h"
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
	.byte	0                               @ DW_CHILDREN_no
	.byte	60                              @ DW_AT_declaration
	.byte	25                              @ DW_FORM_flag_present
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
	.byte	10                              @ Abbreviation Code
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
	.byte	11                              @ Abbreviation Code
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
	.byte	12                              @ Abbreviation Code
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
	.byte	13                              @ Abbreviation Code
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
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	14                              @ Abbreviation Code
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
	.byte	1                               @ Abbrev [1] 0xb:0x319 DW_TAG_compile_unit
	.long	.Linfo_string0                  @ DW_AT_producer
	.short	26                              @ DW_AT_language
	.long	.Linfo_string1                  @ DW_AT_name
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.long	.Linfo_string2                  @ DW_AT_comp_dir
	.long	.Lfunc_begin0                   @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
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
	.byte	2                               @ Abbrev [2] 0x4e:0x15 DW_TAG_enumeration_type
	.long	71                              @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.byte	67                              @ DW_AT_decl_line
	.byte	3                               @ Abbrev [3] 0x56:0x6 DW_TAG_enumerator
	.long	.Linfo_string8                  @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	3                               @ Abbrev [3] 0x5c:0x6 DW_TAG_enumerator
	.long	.Linfo_string9                  @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	5                               @ Abbrev [5] 0x63:0x5 DW_TAG_pointer_type
	.long	104                             @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x68:0xc DW_TAG_typedef
	.long	116                             @ DW_AT_type
	.long	.Linfo_string10                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.short	537                             @ DW_AT_decl_line
	.byte	7                               @ Abbrev [7] 0x74:0x1 DW_TAG_structure_type
                                        @ DW_AT_declaration
	.byte	8                               @ Abbrev [8] 0x75:0xb DW_TAG_typedef
	.long	128                             @ DW_AT_type
	.long	.Linfo_string12                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x80:0x7 DW_TAG_base_type
	.long	.Linfo_string11                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	8                               @ Abbrev [8] 0x87:0xb DW_TAG_typedef
	.long	146                             @ DW_AT_type
	.long	.Linfo_string14                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	56                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x92:0x7 DW_TAG_base_type
	.long	.Linfo_string13                 @ DW_AT_name
	.byte	6                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	9                               @ Abbrev [9] 0x99:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	275                             @ DW_AT_decl_line
	.long	135                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0xa1:0xb DW_TAG_typedef
	.long	172                             @ DW_AT_type
	.long	.Linfo_string16                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	57                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0xac:0x7 DW_TAG_base_type
	.long	.Linfo_string15                 @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	9                               @ Abbrev [9] 0xb3:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	276                             @ DW_AT_decl_line
	.long	161                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0xbb:0xb DW_TAG_typedef
	.long	198                             @ DW_AT_type
	.long	.Linfo_string18                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	58                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0xc6:0x7 DW_TAG_base_type
	.long	.Linfo_string17                 @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	9                               @ Abbrev [9] 0xcd:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	277                             @ DW_AT_decl_line
	.long	187                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0xd5:0xb DW_TAG_typedef
	.long	224                             @ DW_AT_type
	.long	.Linfo_string20                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	59                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0xe0:0x7 DW_TAG_base_type
	.long	.Linfo_string19                 @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	8                               @ DW_AT_byte_size
	.byte	9                               @ Abbrev [9] 0xe7:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	278                             @ DW_AT_decl_line
	.long	213                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0xef:0xb DW_TAG_typedef
	.long	71                              @ DW_AT_type
	.long	.Linfo_string21                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	62                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0xfa:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	279                             @ DW_AT_decl_line
	.long	239                             @ DW_AT_import
	.byte	9                               @ Abbrev [9] 0x102:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	280                             @ DW_AT_decl_line
	.long	117                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x10a:0xb DW_TAG_typedef
	.long	277                             @ DW_AT_type
	.long	.Linfo_string23                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	64                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x115:0x7 DW_TAG_base_type
	.long	.Linfo_string22                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	9                               @ Abbrev [9] 0x11c:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	281                             @ DW_AT_decl_line
	.long	266                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x124:0xb DW_TAG_typedef
	.long	303                             @ DW_AT_type
	.long	.Linfo_string25                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	65                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x12f:0x7 DW_TAG_base_type
	.long	.Linfo_string24                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	8                               @ DW_AT_byte_size
	.byte	9                               @ Abbrev [9] 0x136:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	282                             @ DW_AT_decl_line
	.long	292                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x13e:0xb DW_TAG_typedef
	.long	146                             @ DW_AT_type
	.long	.Linfo_string26                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	71                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x149:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	283                             @ DW_AT_decl_line
	.long	318                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x151:0xb DW_TAG_typedef
	.long	172                             @ DW_AT_type
	.long	.Linfo_string27                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	72                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x15c:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	284                             @ DW_AT_decl_line
	.long	337                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x164:0xb DW_TAG_typedef
	.long	198                             @ DW_AT_type
	.long	.Linfo_string28                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	73                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x16f:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	285                             @ DW_AT_decl_line
	.long	356                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x177:0xb DW_TAG_typedef
	.long	224                             @ DW_AT_type
	.long	.Linfo_string29                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	74                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x182:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	286                             @ DW_AT_decl_line
	.long	375                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x18a:0xb DW_TAG_typedef
	.long	71                              @ DW_AT_type
	.long	.Linfo_string30                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	77                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x195:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	287                             @ DW_AT_decl_line
	.long	394                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x19d:0xb DW_TAG_typedef
	.long	128                             @ DW_AT_type
	.long	.Linfo_string31                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	78                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x1a8:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	288                             @ DW_AT_decl_line
	.long	413                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x1b0:0xb DW_TAG_typedef
	.long	277                             @ DW_AT_type
	.long	.Linfo_string32                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	79                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x1bb:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	289                             @ DW_AT_decl_line
	.long	432                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x1c3:0xb DW_TAG_typedef
	.long	303                             @ DW_AT_type
	.long	.Linfo_string33                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	80                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x1ce:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	290                             @ DW_AT_decl_line
	.long	451                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x1d6:0xb DW_TAG_typedef
	.long	198                             @ DW_AT_type
	.long	.Linfo_string34                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	85                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x1e1:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	291                             @ DW_AT_decl_line
	.long	470                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x1e9:0xb DW_TAG_typedef
	.long	198                             @ DW_AT_type
	.long	.Linfo_string35                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	86                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x1f4:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	292                             @ DW_AT_decl_line
	.long	489                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x1fc:0xb DW_TAG_typedef
	.long	198                             @ DW_AT_type
	.long	.Linfo_string36                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	87                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x207:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	293                             @ DW_AT_decl_line
	.long	508                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x20f:0xb DW_TAG_typedef
	.long	224                             @ DW_AT_type
	.long	.Linfo_string37                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	88                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x21a:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	294                             @ DW_AT_decl_line
	.long	527                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x222:0xb DW_TAG_typedef
	.long	277                             @ DW_AT_type
	.long	.Linfo_string38                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	91                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x22d:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	295                             @ DW_AT_decl_line
	.long	546                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x235:0xb DW_TAG_typedef
	.long	277                             @ DW_AT_type
	.long	.Linfo_string39                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	92                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x240:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	296                             @ DW_AT_decl_line
	.long	565                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x248:0xb DW_TAG_typedef
	.long	277                             @ DW_AT_type
	.long	.Linfo_string40                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	93                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x253:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	297                             @ DW_AT_decl_line
	.long	584                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x25b:0xb DW_TAG_typedef
	.long	303                             @ DW_AT_type
	.long	.Linfo_string41                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	94                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x266:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	298                             @ DW_AT_decl_line
	.long	603                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x26e:0xb DW_TAG_typedef
	.long	198                             @ DW_AT_type
	.long	.Linfo_string42                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	101                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x279:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	299                             @ DW_AT_decl_line
	.long	622                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x281:0xb DW_TAG_typedef
	.long	277                             @ DW_AT_type
	.long	.Linfo_string43                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	102                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x28c:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	300                             @ DW_AT_decl_line
	.long	641                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x294:0xb DW_TAG_typedef
	.long	224                             @ DW_AT_type
	.long	.Linfo_string44                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	106                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x29f:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	301                             @ DW_AT_decl_line
	.long	660                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x2a7:0xb DW_TAG_typedef
	.long	303                             @ DW_AT_type
	.long	.Linfo_string45                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	107                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x2b2:0x8 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.short	302                             @ DW_AT_decl_line
	.long	679                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x2ba:0xb DW_TAG_typedef
	.long	277                             @ DW_AT_type
	.long	.Linfo_string46                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x2c5:0x7 DW_TAG_imported_declaration
	.byte	5                               @ DW_AT_decl_file
	.byte	107                             @ DW_AT_decl_line
	.long	698                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x2cc:0xb DW_TAG_typedef
	.long	198                             @ DW_AT_type
	.long	.Linfo_string47                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.byte	38                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x2d7:0x7 DW_TAG_imported_declaration
	.byte	5                               @ DW_AT_decl_file
	.byte	108                             @ DW_AT_decl_line
	.long	716                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x2de:0xb DW_TAG_typedef
	.long	745                             @ DW_AT_type
	.long	.Linfo_string49                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.byte	95                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x2e9:0x7 DW_TAG_base_type
	.long	.Linfo_string48                 @ DW_AT_name
	.byte	4                               @ DW_AT_encoding
	.byte	8                               @ DW_AT_byte_size
	.byte	10                              @ Abbrev [10] 0x2f0:0x7 DW_TAG_imported_declaration
	.byte	5                               @ DW_AT_decl_file
	.byte	110                             @ DW_AT_decl_line
	.long	734                             @ DW_AT_import
	.byte	11                              @ Abbrev [11] 0x2f7:0x1f DW_TAG_subprogram
	.long	.Lfunc_begin0                   @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
                                        @ DW_AT_GNU_all_call_sites
	.long	.Linfo_string51                 @ DW_AT_linkage_name
	.long	.Linfo_string52                 @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	16                              @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	12                              @ Abbrev [12] 0x30c:0x9 DW_TAG_GNU_call_site
	.long	790                             @ DW_AT_abstract_origin
                                        @ DW_AT_GNU_tail_call
	.long	.Ltmp4                          @ DW_AT_low_pc
	.byte	0                               @ End Of Children Mark
	.byte	13                              @ Abbrev [13] 0x316:0xd DW_TAG_subprogram
	.long	.Linfo_string50                 @ DW_AT_name
	.byte	7                               @ DW_AT_decl_file
	.byte	233                             @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                              @ Abbrev [14] 0x31d:0x5 DW_TAG_formal_parameter
	.long	266                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]" @ string offset=0
.Linfo_string1:
	.asciz	"../User/drive/src\\driver_spi.cpp" @ string offset=68
.Linfo_string2:
	.asciz	"E:\\RP\\CppTemplate\\MDK-ARM"  @ string offset=101
.Linfo_string3:
	.asciz	"unsigned char"                 @ string offset=127
.Linfo_string4:
	.asciz	"HAL_OK"                        @ string offset=141
.Linfo_string5:
	.asciz	"HAL_ERROR"                     @ string offset=148
.Linfo_string6:
	.asciz	"HAL_BUSY"                      @ string offset=158
.Linfo_string7:
	.asciz	"HAL_TIMEOUT"                   @ string offset=167
.Linfo_string8:
	.asciz	"GPIO_PIN_RESET"                @ string offset=179
.Linfo_string9:
	.asciz	"GPIO_PIN_SET"                  @ string offset=194
.Linfo_string10:
	.asciz	"GPIO_TypeDef"                  @ string offset=207
.Linfo_string11:
	.asciz	"unsigned short"                @ string offset=220
.Linfo_string12:
	.asciz	"uint16_t"                      @ string offset=235
.Linfo_string13:
	.asciz	"signed char"                   @ string offset=244
.Linfo_string14:
	.asciz	"int8_t"                        @ string offset=256
.Linfo_string15:
	.asciz	"short"                         @ string offset=263
.Linfo_string16:
	.asciz	"int16_t"                       @ string offset=269
.Linfo_string17:
	.asciz	"int"                           @ string offset=277
.Linfo_string18:
	.asciz	"int32_t"                       @ string offset=281
.Linfo_string19:
	.asciz	"long long"                     @ string offset=289
.Linfo_string20:
	.asciz	"int64_t"                       @ string offset=299
.Linfo_string21:
	.asciz	"uint8_t"                       @ string offset=307
.Linfo_string22:
	.asciz	"unsigned int"                  @ string offset=315
.Linfo_string23:
	.asciz	"uint32_t"                      @ string offset=328
.Linfo_string24:
	.asciz	"unsigned long long"            @ string offset=337
.Linfo_string25:
	.asciz	"uint64_t"                      @ string offset=356
.Linfo_string26:
	.asciz	"int_least8_t"                  @ string offset=365
.Linfo_string27:
	.asciz	"int_least16_t"                 @ string offset=378
.Linfo_string28:
	.asciz	"int_least32_t"                 @ string offset=392
.Linfo_string29:
	.asciz	"int_least64_t"                 @ string offset=406
.Linfo_string30:
	.asciz	"uint_least8_t"                 @ string offset=420
.Linfo_string31:
	.asciz	"uint_least16_t"                @ string offset=434
.Linfo_string32:
	.asciz	"uint_least32_t"                @ string offset=449
.Linfo_string33:
	.asciz	"uint_least64_t"                @ string offset=464
.Linfo_string34:
	.asciz	"int_fast8_t"                   @ string offset=479
.Linfo_string35:
	.asciz	"int_fast16_t"                  @ string offset=491
.Linfo_string36:
	.asciz	"int_fast32_t"                  @ string offset=504
.Linfo_string37:
	.asciz	"int_fast64_t"                  @ string offset=517
.Linfo_string38:
	.asciz	"uint_fast8_t"                  @ string offset=530
.Linfo_string39:
	.asciz	"uint_fast16_t"                 @ string offset=543
.Linfo_string40:
	.asciz	"uint_fast32_t"                 @ string offset=557
.Linfo_string41:
	.asciz	"uint_fast64_t"                 @ string offset=571
.Linfo_string42:
	.asciz	"intptr_t"                      @ string offset=585
.Linfo_string43:
	.asciz	"uintptr_t"                     @ string offset=594
.Linfo_string44:
	.asciz	"intmax_t"                      @ string offset=604
.Linfo_string45:
	.asciz	"uintmax_t"                     @ string offset=613
.Linfo_string46:
	.asciz	"size_t"                        @ string offset=623
.Linfo_string47:
	.asciz	"ptrdiff_t"                     @ string offset=630
.Linfo_string48:
	.asciz	"long double"                   @ string offset=640
.Linfo_string49:
	.asciz	"max_align_t"                   @ string offset=652
.Linfo_string50:
	.asciz	"HAL_Delay"                     @ string offset=664
.Linfo_string51:
	.asciz	"_Z9SPI2_Initv"                 @ string offset=674
.Linfo_string52:
	.asciz	"SPI2_Init"                     @ string offset=688
	.ident	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
	.ARM_attribute	16, 1	@ Tag_AV_eba
	.section	.debug_line,"",%progbits
.Lline_table_start0:
