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
	.file	1 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc\\stm32f4xx_hal_gpio.h"
	.file	2 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h"
	.file	3 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include" "stdint.h"
	.file	4 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include" "stddef.h"
	.section	.text._Z9SPI2_Initv,"ax",%progbits
	.hidden	_Z9SPI2_Initv                   @ -- Begin function _Z9SPI2_Initv
	.globl	_Z9SPI2_Initv
	.p2align	2
	.type	_Z9SPI2_Initv,%function
	.code	16                              @ @_Z9SPI2_Initv
	.thumb_func
_Z9SPI2_Initv:
.Lfunc_begin0:
	.file	5 "E:\\RP\\CppTemplate\\MDK-ARM" "../User/drive/src/driver_spi.cpp"
	.loc	5 17 0                          @ ../User/drive/src/driver_spi.cpp:17:0
	.fnstart
	.cfi_sections .debug_frame
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
.Ltmp0:
	.loc	5 18 2 prologue_end             @ ../User/drive/src/driver_spi.cpp:18:2
	movw	r0, :lower16:hspi2
	movt	r0, :upper16:hspi2
	bl	HAL_SPI_Init
	movw	r0, #1024
	movt	r0, #16386
	mov.w	r1, #4096
	movs	r2, #1
	.loc	5 19 2                          @ ../User/drive/src/driver_spi.cpp:19:2
	str	r2, [sp, #4]                    @ 4-byte Spill
	bl	HAL_GPIO_WritePin
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	5 20 2                          @ ../User/drive/src/driver_spi.cpp:20:2
	bl	HAL_Delay
	.loc	5 21 1                          @ ../User/drive/src/driver_spi.cpp:21:1
	add	sp, #8
	pop	{r7, pc}
.Ltmp1:
.Lfunc_end0:
	.size	_Z9SPI2_Initv, .Lfunc_end0-_Z9SPI2_Initv
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
	.byte	0                               @ DW_CHILDREN_no
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
	.byte	0                               @ EOM(3)
	.section	.debug_info,"",%progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 @ Length of Unit
.Ldebug_info_start0:
	.short	4                               @ DWARF version number
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	4                               @ Address Size (in bytes)
	.byte	1                               @ Abbrev [1] 0xb:0x2e1 DW_TAG_compile_unit
	.long	.Linfo_string0                  @ DW_AT_producer
	.short	26                              @ DW_AT_language
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
	.long	.Linfo_string6                  @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	537                             @ DW_AT_decl_line
	.byte	7                               @ Abbrev [7] 0x53:0x1 DW_TAG_structure_type
                                        @ DW_AT_declaration
	.byte	8                               @ Abbrev [8] 0x54:0xb DW_TAG_typedef
	.long	95                              @ DW_AT_type
	.long	.Linfo_string8                  @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x5f:0x7 DW_TAG_base_type
	.long	.Linfo_string7                  @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	8                               @ Abbrev [8] 0x66:0xb DW_TAG_typedef
	.long	113                             @ DW_AT_type
	.long	.Linfo_string10                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	56                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x71:0x7 DW_TAG_base_type
	.long	.Linfo_string9                  @ DW_AT_name
	.byte	6                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	9                               @ Abbrev [9] 0x78:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	275                             @ DW_AT_decl_line
	.long	102                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x80:0xb DW_TAG_typedef
	.long	139                             @ DW_AT_type
	.long	.Linfo_string12                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	57                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x8b:0x7 DW_TAG_base_type
	.long	.Linfo_string11                 @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	9                               @ Abbrev [9] 0x92:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	276                             @ DW_AT_decl_line
	.long	128                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x9a:0xb DW_TAG_typedef
	.long	165                             @ DW_AT_type
	.long	.Linfo_string14                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	58                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0xa5:0x7 DW_TAG_base_type
	.long	.Linfo_string13                 @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	9                               @ Abbrev [9] 0xac:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	277                             @ DW_AT_decl_line
	.long	154                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0xb4:0xb DW_TAG_typedef
	.long	191                             @ DW_AT_type
	.long	.Linfo_string16                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	59                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0xbf:0x7 DW_TAG_base_type
	.long	.Linfo_string15                 @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	8                               @ DW_AT_byte_size
	.byte	9                               @ Abbrev [9] 0xc6:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	278                             @ DW_AT_decl_line
	.long	180                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0xce:0xb DW_TAG_typedef
	.long	59                              @ DW_AT_type
	.long	.Linfo_string17                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	62                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0xd9:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	279                             @ DW_AT_decl_line
	.long	206                             @ DW_AT_import
	.byte	9                               @ Abbrev [9] 0xe1:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	280                             @ DW_AT_decl_line
	.long	84                              @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0xe9:0xb DW_TAG_typedef
	.long	244                             @ DW_AT_type
	.long	.Linfo_string19                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	64                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0xf4:0x7 DW_TAG_base_type
	.long	.Linfo_string18                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	9                               @ Abbrev [9] 0xfb:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	281                             @ DW_AT_decl_line
	.long	233                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x103:0xb DW_TAG_typedef
	.long	270                             @ DW_AT_type
	.long	.Linfo_string21                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	65                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x10e:0x7 DW_TAG_base_type
	.long	.Linfo_string20                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	8                               @ DW_AT_byte_size
	.byte	9                               @ Abbrev [9] 0x115:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	282                             @ DW_AT_decl_line
	.long	259                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x11d:0xb DW_TAG_typedef
	.long	113                             @ DW_AT_type
	.long	.Linfo_string22                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	71                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x128:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	283                             @ DW_AT_decl_line
	.long	285                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x130:0xb DW_TAG_typedef
	.long	139                             @ DW_AT_type
	.long	.Linfo_string23                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	72                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x13b:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	284                             @ DW_AT_decl_line
	.long	304                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x143:0xb DW_TAG_typedef
	.long	165                             @ DW_AT_type
	.long	.Linfo_string24                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	73                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x14e:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	285                             @ DW_AT_decl_line
	.long	323                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x156:0xb DW_TAG_typedef
	.long	191                             @ DW_AT_type
	.long	.Linfo_string25                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	74                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x161:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	286                             @ DW_AT_decl_line
	.long	342                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x169:0xb DW_TAG_typedef
	.long	59                              @ DW_AT_type
	.long	.Linfo_string26                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	77                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x174:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	287                             @ DW_AT_decl_line
	.long	361                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x17c:0xb DW_TAG_typedef
	.long	95                              @ DW_AT_type
	.long	.Linfo_string27                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	78                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x187:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	288                             @ DW_AT_decl_line
	.long	380                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x18f:0xb DW_TAG_typedef
	.long	244                             @ DW_AT_type
	.long	.Linfo_string28                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	79                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x19a:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	289                             @ DW_AT_decl_line
	.long	399                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x1a2:0xb DW_TAG_typedef
	.long	270                             @ DW_AT_type
	.long	.Linfo_string29                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	80                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x1ad:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	290                             @ DW_AT_decl_line
	.long	418                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x1b5:0xb DW_TAG_typedef
	.long	165                             @ DW_AT_type
	.long	.Linfo_string30                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	85                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x1c0:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	291                             @ DW_AT_decl_line
	.long	437                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x1c8:0xb DW_TAG_typedef
	.long	165                             @ DW_AT_type
	.long	.Linfo_string31                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	86                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x1d3:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	292                             @ DW_AT_decl_line
	.long	456                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x1db:0xb DW_TAG_typedef
	.long	165                             @ DW_AT_type
	.long	.Linfo_string32                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	87                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x1e6:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	293                             @ DW_AT_decl_line
	.long	475                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x1ee:0xb DW_TAG_typedef
	.long	191                             @ DW_AT_type
	.long	.Linfo_string33                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	88                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x1f9:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	294                             @ DW_AT_decl_line
	.long	494                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x201:0xb DW_TAG_typedef
	.long	244                             @ DW_AT_type
	.long	.Linfo_string34                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	91                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x20c:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	295                             @ DW_AT_decl_line
	.long	513                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x214:0xb DW_TAG_typedef
	.long	244                             @ DW_AT_type
	.long	.Linfo_string35                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	92                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x21f:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	296                             @ DW_AT_decl_line
	.long	532                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x227:0xb DW_TAG_typedef
	.long	244                             @ DW_AT_type
	.long	.Linfo_string36                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	93                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x232:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	297                             @ DW_AT_decl_line
	.long	551                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x23a:0xb DW_TAG_typedef
	.long	270                             @ DW_AT_type
	.long	.Linfo_string37                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	94                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x245:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	298                             @ DW_AT_decl_line
	.long	570                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x24d:0xb DW_TAG_typedef
	.long	165                             @ DW_AT_type
	.long	.Linfo_string38                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	101                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x258:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	299                             @ DW_AT_decl_line
	.long	589                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x260:0xb DW_TAG_typedef
	.long	244                             @ DW_AT_type
	.long	.Linfo_string39                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	102                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x26b:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	300                             @ DW_AT_decl_line
	.long	608                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x273:0xb DW_TAG_typedef
	.long	191                             @ DW_AT_type
	.long	.Linfo_string40                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	106                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x27e:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	301                             @ DW_AT_decl_line
	.long	627                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x286:0xb DW_TAG_typedef
	.long	270                             @ DW_AT_type
	.long	.Linfo_string41                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	107                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x291:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	302                             @ DW_AT_decl_line
	.long	646                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x299:0xb DW_TAG_typedef
	.long	244                             @ DW_AT_type
	.long	.Linfo_string42                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x2a4:0x7 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.byte	107                             @ DW_AT_decl_line
	.long	665                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x2ab:0xb DW_TAG_typedef
	.long	165                             @ DW_AT_type
	.long	.Linfo_string43                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	38                              @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x2b6:0x7 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.byte	108                             @ DW_AT_decl_line
	.long	683                             @ DW_AT_import
	.byte	8                               @ Abbrev [8] 0x2bd:0xb DW_TAG_typedef
	.long	712                             @ DW_AT_type
	.long	.Linfo_string45                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	95                              @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x2c8:0x7 DW_TAG_base_type
	.long	.Linfo_string44                 @ DW_AT_name
	.byte	4                               @ DW_AT_encoding
	.byte	8                               @ DW_AT_byte_size
	.byte	10                              @ Abbrev [10] 0x2cf:0x7 DW_TAG_imported_declaration
	.byte	4                               @ DW_AT_decl_file
	.byte	110                             @ DW_AT_decl_line
	.long	701                             @ DW_AT_import
	.byte	11                              @ Abbrev [11] 0x2d6:0x15 DW_TAG_subprogram
	.long	.Lfunc_begin0                   @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string46                 @ DW_AT_linkage_name
	.long	.Linfo_string47                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.byte	16                              @ DW_AT_decl_line
                                        @ DW_AT_external
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
	.asciz	"GPIO_PIN_RESET"                @ string offset=141
.Linfo_string5:
	.asciz	"GPIO_PIN_SET"                  @ string offset=156
.Linfo_string6:
	.asciz	"GPIO_TypeDef"                  @ string offset=169
.Linfo_string7:
	.asciz	"unsigned short"                @ string offset=182
.Linfo_string8:
	.asciz	"uint16_t"                      @ string offset=197
.Linfo_string9:
	.asciz	"signed char"                   @ string offset=206
.Linfo_string10:
	.asciz	"int8_t"                        @ string offset=218
.Linfo_string11:
	.asciz	"short"                         @ string offset=225
.Linfo_string12:
	.asciz	"int16_t"                       @ string offset=231
.Linfo_string13:
	.asciz	"int"                           @ string offset=239
.Linfo_string14:
	.asciz	"int32_t"                       @ string offset=243
.Linfo_string15:
	.asciz	"long long"                     @ string offset=251
.Linfo_string16:
	.asciz	"int64_t"                       @ string offset=261
.Linfo_string17:
	.asciz	"uint8_t"                       @ string offset=269
.Linfo_string18:
	.asciz	"unsigned int"                  @ string offset=277
.Linfo_string19:
	.asciz	"uint32_t"                      @ string offset=290
.Linfo_string20:
	.asciz	"unsigned long long"            @ string offset=299
.Linfo_string21:
	.asciz	"uint64_t"                      @ string offset=318
.Linfo_string22:
	.asciz	"int_least8_t"                  @ string offset=327
.Linfo_string23:
	.asciz	"int_least16_t"                 @ string offset=340
.Linfo_string24:
	.asciz	"int_least32_t"                 @ string offset=354
.Linfo_string25:
	.asciz	"int_least64_t"                 @ string offset=368
.Linfo_string26:
	.asciz	"uint_least8_t"                 @ string offset=382
.Linfo_string27:
	.asciz	"uint_least16_t"                @ string offset=396
.Linfo_string28:
	.asciz	"uint_least32_t"                @ string offset=411
.Linfo_string29:
	.asciz	"uint_least64_t"                @ string offset=426
.Linfo_string30:
	.asciz	"int_fast8_t"                   @ string offset=441
.Linfo_string31:
	.asciz	"int_fast16_t"                  @ string offset=453
.Linfo_string32:
	.asciz	"int_fast32_t"                  @ string offset=466
.Linfo_string33:
	.asciz	"int_fast64_t"                  @ string offset=479
.Linfo_string34:
	.asciz	"uint_fast8_t"                  @ string offset=492
.Linfo_string35:
	.asciz	"uint_fast16_t"                 @ string offset=505
.Linfo_string36:
	.asciz	"uint_fast32_t"                 @ string offset=519
.Linfo_string37:
	.asciz	"uint_fast64_t"                 @ string offset=533
.Linfo_string38:
	.asciz	"intptr_t"                      @ string offset=547
.Linfo_string39:
	.asciz	"uintptr_t"                     @ string offset=556
.Linfo_string40:
	.asciz	"intmax_t"                      @ string offset=566
.Linfo_string41:
	.asciz	"uintmax_t"                     @ string offset=575
.Linfo_string42:
	.asciz	"size_t"                        @ string offset=585
.Linfo_string43:
	.asciz	"ptrdiff_t"                     @ string offset=592
.Linfo_string44:
	.asciz	"long double"                   @ string offset=602
.Linfo_string45:
	.asciz	"max_align_t"                   @ string offset=614
.Linfo_string46:
	.asciz	"_Z9SPI2_Initv"                 @ string offset=626
.Linfo_string47:
	.asciz	"SPI2_Init"                     @ string offset=640
	.ident	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
	.ARM_attribute	16, 1	@ Tag_AV_eba
	.section	.debug_line,"",%progbits
.Lline_table_start0:
