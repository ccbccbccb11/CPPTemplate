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
	.file	"usart.c"
	.file	1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include" "stdint.h"
	.file	2 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h"
	.file	3 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc\\stm32f4xx_hal_uart.h"
	.file	4 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc\\stm32f4xx_hal_dma.h"
	.file	5 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_def.h"
	.file	6 "E:\\RP\\CppTemplate\\MDK-ARM" "../Core/Src/usart.c"
	.section	.text.MX_UART4_Init,"ax",%progbits
	.hidden	MX_UART4_Init                   @ -- Begin function MX_UART4_Init
	.globl	MX_UART4_Init
	.p2align	2
	.type	MX_UART4_Init,%function
	.code	16                              @ @MX_UART4_Init
	.thumb_func
MX_UART4_Init:
.Lfunc_begin0:
	.loc	6 47 0                          @ ../Core/Src/usart.c:47:0
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
	.loc	6 56 19 prologue_end            @ ../Core/Src/usart.c:56:19
	movw	r0, :lower16:huart4
	movt	r0, :upper16:huart4
	str	r0, [sp, #4]                    @ 4-byte Spill
	movw	r1, #19456
	movt	r1, #16384
	str	r1, [r0]
	mov.w	r1, #115200
	.loc	6 57 24                         @ ../Core/Src/usart.c:57:24
	str	r1, [r0, #4]
	movs	r1, #0
	.loc	6 58 26                         @ ../Core/Src/usart.c:58:26
	str	r1, [r0, #8]
	.loc	6 59 24                         @ ../Core/Src/usart.c:59:24
	str	r1, [r0, #12]
	.loc	6 60 22                         @ ../Core/Src/usart.c:60:22
	str	r1, [r0, #16]
	movs	r2, #12
	.loc	6 61 20                         @ ../Core/Src/usart.c:61:20
	str	r2, [r0, #20]
	.loc	6 62 25                         @ ../Core/Src/usart.c:62:25
	str	r1, [r0, #24]
	.loc	6 63 28                         @ ../Core/Src/usart.c:63:28
	str	r1, [r0, #28]
.Ltmp1:
	.loc	6 64 7                          @ ../Core/Src/usart.c:64:7
	bl	HAL_UART_Init
.Ltmp2:
	.loc	6 64 7 is_stmt 0                @ ../Core/Src/usart.c:64:7
	cbz	r0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
.Ltmp3:
	.loc	6 66 5 is_stmt 1                @ ../Core/Src/usart.c:66:5
	bl	Error_Handler
	.loc	6 67 3                          @ ../Core/Src/usart.c:67:3
	b	.LBB0_2
.Ltmp4:
.LBB0_2:
	.loc	6 72 1                          @ ../Core/Src/usart.c:72:1
	add	sp, #8
	pop	{r7, pc}
.Ltmp5:
.Lfunc_end0:
	.size	MX_UART4_Init, .Lfunc_end0-MX_UART4_Init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.MX_UART5_Init,"ax",%progbits
	.hidden	MX_UART5_Init                   @ -- Begin function MX_UART5_Init
	.globl	MX_UART5_Init
	.p2align	2
	.type	MX_UART5_Init,%function
	.code	16                              @ @MX_UART5_Init
	.thumb_func
MX_UART5_Init:
.Lfunc_begin1:
	.loc	6 75 0                          @ ../Core/Src/usart.c:75:0
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
.Ltmp6:
	.loc	6 84 19 prologue_end            @ ../Core/Src/usart.c:84:19
	movw	r0, :lower16:huart5
	movt	r0, :upper16:huart5
	str	r0, [sp, #4]                    @ 4-byte Spill
	movw	r1, #20480
	movt	r1, #16384
	str	r1, [r0]
	mov.w	r1, #115200
	.loc	6 85 24                         @ ../Core/Src/usart.c:85:24
	str	r1, [r0, #4]
	movs	r1, #0
	.loc	6 86 26                         @ ../Core/Src/usart.c:86:26
	str	r1, [r0, #8]
	.loc	6 87 24                         @ ../Core/Src/usart.c:87:24
	str	r1, [r0, #12]
	.loc	6 88 22                         @ ../Core/Src/usart.c:88:22
	str	r1, [r0, #16]
	movs	r2, #12
	.loc	6 89 20                         @ ../Core/Src/usart.c:89:20
	str	r2, [r0, #20]
	.loc	6 90 25                         @ ../Core/Src/usart.c:90:25
	str	r1, [r0, #24]
	.loc	6 91 28                         @ ../Core/Src/usart.c:91:28
	str	r1, [r0, #28]
.Ltmp7:
	.loc	6 92 7                          @ ../Core/Src/usart.c:92:7
	bl	HAL_UART_Init
.Ltmp8:
	.loc	6 92 7 is_stmt 0                @ ../Core/Src/usart.c:92:7
	cbz	r0, .LBB1_2
	b	.LBB1_1
.LBB1_1:
.Ltmp9:
	.loc	6 94 5 is_stmt 1                @ ../Core/Src/usart.c:94:5
	bl	Error_Handler
	.loc	6 95 3                          @ ../Core/Src/usart.c:95:3
	b	.LBB1_2
.Ltmp10:
.LBB1_2:
	.loc	6 100 1                         @ ../Core/Src/usart.c:100:1
	add	sp, #8
	pop	{r7, pc}
.Ltmp11:
.Lfunc_end1:
	.size	MX_UART5_Init, .Lfunc_end1-MX_UART5_Init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.MX_USART1_UART_Init,"ax",%progbits
	.hidden	MX_USART1_UART_Init             @ -- Begin function MX_USART1_UART_Init
	.globl	MX_USART1_UART_Init
	.p2align	2
	.type	MX_USART1_UART_Init,%function
	.code	16                              @ @MX_USART1_UART_Init
	.thumb_func
MX_USART1_UART_Init:
.Lfunc_begin2:
	.loc	6 104 0                         @ ../Core/Src/usart.c:104:0
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
.Ltmp12:
	.loc	6 113 19 prologue_end           @ ../Core/Src/usart.c:113:19
	movw	r0, :lower16:huart1
	movt	r0, :upper16:huart1
	str	r0, [sp, #4]                    @ 4-byte Spill
	movw	r1, #4096
	movt	r1, #16385
	str	r1, [r0]
	mov.w	r1, #115200
	.loc	6 114 24                        @ ../Core/Src/usart.c:114:24
	str	r1, [r0, #4]
	movs	r1, #0
	.loc	6 115 26                        @ ../Core/Src/usart.c:115:26
	str	r1, [r0, #8]
	.loc	6 116 24                        @ ../Core/Src/usart.c:116:24
	str	r1, [r0, #12]
	.loc	6 117 22                        @ ../Core/Src/usart.c:117:22
	str	r1, [r0, #16]
	movs	r2, #12
	.loc	6 118 20                        @ ../Core/Src/usart.c:118:20
	str	r2, [r0, #20]
	.loc	6 119 25                        @ ../Core/Src/usart.c:119:25
	str	r1, [r0, #24]
	.loc	6 120 28                        @ ../Core/Src/usart.c:120:28
	str	r1, [r0, #28]
.Ltmp13:
	.loc	6 121 7                         @ ../Core/Src/usart.c:121:7
	bl	HAL_UART_Init
.Ltmp14:
	.loc	6 121 7 is_stmt 0               @ ../Core/Src/usart.c:121:7
	cbz	r0, .LBB2_2
	b	.LBB2_1
.LBB2_1:
.Ltmp15:
	.loc	6 123 5 is_stmt 1               @ ../Core/Src/usart.c:123:5
	bl	Error_Handler
	.loc	6 124 3                         @ ../Core/Src/usart.c:124:3
	b	.LBB2_2
.Ltmp16:
.LBB2_2:
	.loc	6 129 1                         @ ../Core/Src/usart.c:129:1
	add	sp, #8
	pop	{r7, pc}
.Ltmp17:
.Lfunc_end2:
	.size	MX_USART1_UART_Init, .Lfunc_end2-MX_USART1_UART_Init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.MX_USART2_UART_Init,"ax",%progbits
	.hidden	MX_USART2_UART_Init             @ -- Begin function MX_USART2_UART_Init
	.globl	MX_USART2_UART_Init
	.p2align	2
	.type	MX_USART2_UART_Init,%function
	.code	16                              @ @MX_USART2_UART_Init
	.thumb_func
MX_USART2_UART_Init:
.Lfunc_begin3:
	.loc	6 133 0                         @ ../Core/Src/usart.c:133:0
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
.Ltmp18:
	.loc	6 142 19 prologue_end           @ ../Core/Src/usart.c:142:19
	movw	r0, :lower16:huart2
	movt	r0, :upper16:huart2
	str	r0, [sp, #4]                    @ 4-byte Spill
	movw	r1, #17408
	movt	r1, #16384
	str	r1, [r0]
	movw	r1, #34464
	movt	r1, #1
	.loc	6 143 24                        @ ../Core/Src/usart.c:143:24
	str	r1, [r0, #4]
	movs	r1, #0
	.loc	6 144 26                        @ ../Core/Src/usart.c:144:26
	str	r1, [r0, #8]
	.loc	6 145 24                        @ ../Core/Src/usart.c:145:24
	str	r1, [r0, #12]
	.loc	6 146 22                        @ ../Core/Src/usart.c:146:22
	str	r1, [r0, #16]
	movs	r2, #12
	.loc	6 147 20                        @ ../Core/Src/usart.c:147:20
	str	r2, [r0, #20]
	.loc	6 148 25                        @ ../Core/Src/usart.c:148:25
	str	r1, [r0, #24]
	.loc	6 149 28                        @ ../Core/Src/usart.c:149:28
	str	r1, [r0, #28]
.Ltmp19:
	.loc	6 150 7                         @ ../Core/Src/usart.c:150:7
	bl	HAL_UART_Init
.Ltmp20:
	.loc	6 150 7 is_stmt 0               @ ../Core/Src/usart.c:150:7
	cbz	r0, .LBB3_2
	b	.LBB3_1
.LBB3_1:
.Ltmp21:
	.loc	6 152 5 is_stmt 1               @ ../Core/Src/usart.c:152:5
	bl	Error_Handler
	.loc	6 153 3                         @ ../Core/Src/usart.c:153:3
	b	.LBB3_2
.Ltmp22:
.LBB3_2:
	.loc	6 158 1                         @ ../Core/Src/usart.c:158:1
	add	sp, #8
	pop	{r7, pc}
.Ltmp23:
.Lfunc_end3:
	.size	MX_USART2_UART_Init, .Lfunc_end3-MX_USART2_UART_Init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.MX_USART3_UART_Init,"ax",%progbits
	.hidden	MX_USART3_UART_Init             @ -- Begin function MX_USART3_UART_Init
	.globl	MX_USART3_UART_Init
	.p2align	2
	.type	MX_USART3_UART_Init,%function
	.code	16                              @ @MX_USART3_UART_Init
	.thumb_func
MX_USART3_UART_Init:
.Lfunc_begin4:
	.loc	6 162 0                         @ ../Core/Src/usart.c:162:0
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
.Ltmp24:
	.loc	6 171 19 prologue_end           @ ../Core/Src/usart.c:171:19
	movw	r0, :lower16:huart3
	movt	r0, :upper16:huart3
	str	r0, [sp, #4]                    @ 4-byte Spill
	movw	r1, #18432
	movt	r1, #16384
	str	r1, [r0]
	mov.w	r1, #115200
	.loc	6 172 24                        @ ../Core/Src/usart.c:172:24
	str	r1, [r0, #4]
	movs	r1, #0
	.loc	6 173 26                        @ ../Core/Src/usart.c:173:26
	str	r1, [r0, #8]
	.loc	6 174 24                        @ ../Core/Src/usart.c:174:24
	str	r1, [r0, #12]
	.loc	6 175 22                        @ ../Core/Src/usart.c:175:22
	str	r1, [r0, #16]
	movs	r2, #12
	.loc	6 176 20                        @ ../Core/Src/usart.c:176:20
	str	r2, [r0, #20]
	.loc	6 177 25                        @ ../Core/Src/usart.c:177:25
	str	r1, [r0, #24]
	.loc	6 178 28                        @ ../Core/Src/usart.c:178:28
	str	r1, [r0, #28]
.Ltmp25:
	.loc	6 179 7                         @ ../Core/Src/usart.c:179:7
	bl	HAL_UART_Init
.Ltmp26:
	.loc	6 179 7 is_stmt 0               @ ../Core/Src/usart.c:179:7
	cbz	r0, .LBB4_2
	b	.LBB4_1
.LBB4_1:
.Ltmp27:
	.loc	6 181 5 is_stmt 1               @ ../Core/Src/usart.c:181:5
	bl	Error_Handler
	.loc	6 182 3                         @ ../Core/Src/usart.c:182:3
	b	.LBB4_2
.Ltmp28:
.LBB4_2:
	.loc	6 187 1                         @ ../Core/Src/usart.c:187:1
	add	sp, #8
	pop	{r7, pc}
.Ltmp29:
.Lfunc_end4:
	.size	MX_USART3_UART_Init, .Lfunc_end4-MX_USART3_UART_Init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.MX_USART6_UART_Init,"ax",%progbits
	.hidden	MX_USART6_UART_Init             @ -- Begin function MX_USART6_UART_Init
	.globl	MX_USART6_UART_Init
	.p2align	2
	.type	MX_USART6_UART_Init,%function
	.code	16                              @ @MX_USART6_UART_Init
	.thumb_func
MX_USART6_UART_Init:
.Lfunc_begin5:
	.loc	6 191 0                         @ ../Core/Src/usart.c:191:0
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
.Ltmp30:
	.loc	6 200 19 prologue_end           @ ../Core/Src/usart.c:200:19
	movw	r0, :lower16:huart6
	movt	r0, :upper16:huart6
	str	r0, [sp, #4]                    @ 4-byte Spill
	movw	r1, #5120
	movt	r1, #16385
	str	r1, [r0]
	mov.w	r1, #115200
	.loc	6 201 24                        @ ../Core/Src/usart.c:201:24
	str	r1, [r0, #4]
	movs	r1, #0
	.loc	6 202 26                        @ ../Core/Src/usart.c:202:26
	str	r1, [r0, #8]
	.loc	6 203 24                        @ ../Core/Src/usart.c:203:24
	str	r1, [r0, #12]
	.loc	6 204 22                        @ ../Core/Src/usart.c:204:22
	str	r1, [r0, #16]
	movs	r2, #12
	.loc	6 205 20                        @ ../Core/Src/usart.c:205:20
	str	r2, [r0, #20]
	.loc	6 206 25                        @ ../Core/Src/usart.c:206:25
	str	r1, [r0, #24]
	.loc	6 207 28                        @ ../Core/Src/usart.c:207:28
	str	r1, [r0, #28]
.Ltmp31:
	.loc	6 208 7                         @ ../Core/Src/usart.c:208:7
	bl	HAL_UART_Init
.Ltmp32:
	.loc	6 208 7 is_stmt 0               @ ../Core/Src/usart.c:208:7
	cbz	r0, .LBB5_2
	b	.LBB5_1
.LBB5_1:
.Ltmp33:
	.loc	6 210 5 is_stmt 1               @ ../Core/Src/usart.c:210:5
	bl	Error_Handler
	.loc	6 211 3                         @ ../Core/Src/usart.c:211:3
	b	.LBB5_2
.Ltmp34:
.LBB5_2:
	.loc	6 216 1                         @ ../Core/Src/usart.c:216:1
	add	sp, #8
	pop	{r7, pc}
.Ltmp35:
.Lfunc_end5:
	.size	MX_USART6_UART_Init, .Lfunc_end5-MX_USART6_UART_Init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.HAL_UART_MspInit,"ax",%progbits
	.hidden	HAL_UART_MspInit                @ -- Begin function HAL_UART_MspInit
	.globl	HAL_UART_MspInit
	.p2align	2
	.type	HAL_UART_MspInit,%function
	.code	16                              @ @HAL_UART_MspInit
	.thumb_func
HAL_UART_MspInit:
.Lfunc_begin6:
	.loc	6 219 0                         @ ../Core/Src/usart.c:219:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#184
	sub	sp, #184
	.cfi_def_cfa_offset 192
	str	r0, [sp, #180]
	movs	r0, #0
.Ltmp36:
	.loc	6 221 20 prologue_end           @ ../Core/Src/usart.c:221:20
	str	r0, [sp, #176]
	str	r0, [sp, #172]
	str	r0, [sp, #168]
	str	r0, [sp, #164]
	str	r0, [sp, #160]
.Ltmp37:
	.loc	6 222 6                         @ ../Core/Src/usart.c:222:6
	ldr	r0, [sp, #180]
	.loc	6 222 18 is_stmt 0              @ ../Core/Src/usart.c:222:18
	ldr	r0, [r0]
	movw	r1, #19456
	movt	r1, #16384
.Ltmp38:
	.loc	6 222 6                         @ ../Core/Src/usart.c:222:6
	cmp	r0, r1
	bne.w	.LBB6_14
	b	.LBB6_1
.LBB6_1:
.Ltmp39:
	.loc	6 228 5 is_stmt 1               @ ../Core/Src/usart.c:228:5
	b	.LBB6_2
.LBB6_2:
	.loc	6 0 5 is_stmt 0                 @ ../Core/Src/usart.c:0:5
	movs	r0, #0
.Ltmp40:
	.loc	6 228 5                         @ ../Core/Src/usart.c:228:5
	str	r0, [sp, #156]
	movw	r0, #14400
	movt	r0, #16386
	ldr	r1, [r0]
	orr	r1, r1, #524288
	str	r1, [r0]
	ldr	r0, [r0]
	and	r0, r0, #524288
	str	r0, [sp, #156]
	ldr	r0, [sp, #156]
	b	.LBB6_3
.Ltmp41:
.LBB6_3:
	.loc	6 230 5 is_stmt 1               @ ../Core/Src/usart.c:230:5
	b	.LBB6_4
.LBB6_4:
	.loc	6 0 5 is_stmt 0                 @ ../Core/Src/usart.c:0:5
	movs	r0, #0
.Ltmp42:
	.loc	6 230 5                         @ ../Core/Src/usart.c:230:5
	str	r0, [sp, #152]
	movw	r0, #14384
	movt	r0, #16386
	ldr	r1, [r0]
	orr	r1, r1, #1
	str	r1, [r0]
	ldr	r0, [r0]
	and	r0, r0, #1
	str	r0, [sp, #152]
	ldr	r0, [sp, #152]
	b	.LBB6_5
.Ltmp43:
.LBB6_5:
	.loc	6 0 5                           @ ../Core/Src/usart.c:0:5
	movs	r0, #3
	.loc	6 235 25 is_stmt 1              @ ../Core/Src/usart.c:235:25
	str	r0, [sp, #160]
	movs	r1, #2
	.loc	6 236 26                        @ ../Core/Src/usart.c:236:26
	str	r1, [sp, #164]
	movs	r1, #0
	.loc	6 237 26                        @ ../Core/Src/usart.c:237:26
	str	r1, [sp, #100]                  @ 4-byte Spill
	str	r1, [sp, #168]
	.loc	6 238 27                        @ ../Core/Src/usart.c:238:27
	str	r0, [sp, #172]
	movs	r0, #8
	.loc	6 239 31                        @ ../Core/Src/usart.c:239:31
	str	r0, [sp, #176]
	movs	r0, #0
	movt	r0, #16386
	add	r1, sp, #160
	.loc	6 240 5                         @ ../Core/Src/usart.c:240:5
	bl	HAL_GPIO_Init
	ldr	r1, [sp, #100]                  @ 4-byte Reload
	.loc	6 244 28                        @ ../Core/Src/usart.c:244:28
	movw	r0, :lower16:hdma_uart4_rx
	movt	r0, :upper16:hdma_uart4_rx
	str	r0, [sp, #104]                  @ 4-byte Spill
	movw	r2, #24640
	movt	r2, #16386
	str	r2, [r0]
	mov.w	r2, #134217728
	.loc	6 245 32                        @ ../Core/Src/usart.c:245:32
	str	r2, [r0, #4]
	.loc	6 246 34                        @ ../Core/Src/usart.c:246:34
	str	r1, [r0, #8]
	.loc	6 247 34                        @ ../Core/Src/usart.c:247:34
	str	r1, [r0, #12]
	mov.w	r2, #1024
	.loc	6 248 31                        @ ../Core/Src/usart.c:248:31
	str	r2, [r0, #16]
	.loc	6 249 44                        @ ../Core/Src/usart.c:249:44
	str	r1, [r0, #20]
	.loc	6 250 41                        @ ../Core/Src/usart.c:250:41
	str	r1, [r0, #24]
	mov.w	r2, #256
	.loc	6 251 29                        @ ../Core/Src/usart.c:251:29
	str	r2, [r0, #28]
	.loc	6 252 33                        @ ../Core/Src/usart.c:252:33
	str	r1, [r0, #32]
	.loc	6 253 33                        @ ../Core/Src/usart.c:253:33
	str	r1, [r0, #36]
.Ltmp44:
	.loc	6 254 9                         @ ../Core/Src/usart.c:254:9
	bl	HAL_DMA_Init
.Ltmp45:
	.loc	6 254 9 is_stmt 0               @ ../Core/Src/usart.c:254:9
	cbz	r0, .LBB6_7
	b	.LBB6_6
.LBB6_6:
.Ltmp46:
	.loc	6 256 7 is_stmt 1               @ ../Core/Src/usart.c:256:7
	bl	Error_Handler
	.loc	6 257 5                         @ ../Core/Src/usart.c:257:5
	b	.LBB6_7
.Ltmp47:
.LBB6_7:
	.loc	6 259 5                         @ ../Core/Src/usart.c:259:5
	b	.LBB6_8
.LBB6_8:
.Ltmp48:
	.loc	6 259 5 is_stmt 0               @ ../Core/Src/usart.c:259:5
	ldr	r0, [sp, #180]
	movw	r1, :lower16:hdma_uart4_rx
	movt	r1, :upper16:hdma_uart4_rx
	str	r1, [r0, #56]
	ldr	r0, [sp, #180]
	str	r0, [r1, #56]
	b	.LBB6_9
.Ltmp49:
.LBB6_9:
	.loc	6 262 28 is_stmt 1              @ ../Core/Src/usart.c:262:28
	movw	r0, :lower16:hdma_uart4_tx
	movt	r0, :upper16:hdma_uart4_tx
	str	r0, [sp, #96]                   @ 4-byte Spill
	movw	r1, #24688
	movt	r1, #16386
	str	r1, [r0]
	mov.w	r1, #134217728
	.loc	6 263 32                        @ ../Core/Src/usart.c:263:32
	str	r1, [r0, #4]
	movs	r1, #64
	.loc	6 264 34                        @ ../Core/Src/usart.c:264:34
	str	r1, [r0, #8]
	movs	r1, #0
	.loc	6 265 34                        @ ../Core/Src/usart.c:265:34
	str	r1, [r0, #12]
	mov.w	r2, #1024
	.loc	6 266 31                        @ ../Core/Src/usart.c:266:31
	str	r2, [r0, #16]
	.loc	6 267 44                        @ ../Core/Src/usart.c:267:44
	str	r1, [r0, #20]
	.loc	6 268 41                        @ ../Core/Src/usart.c:268:41
	str	r1, [r0, #24]
	mov.w	r2, #256
	.loc	6 269 29                        @ ../Core/Src/usart.c:269:29
	str	r2, [r0, #28]
	.loc	6 270 33                        @ ../Core/Src/usart.c:270:33
	str	r1, [r0, #32]
	.loc	6 271 33                        @ ../Core/Src/usart.c:271:33
	str	r1, [r0, #36]
.Ltmp50:
	.loc	6 272 9                         @ ../Core/Src/usart.c:272:9
	bl	HAL_DMA_Init
.Ltmp51:
	.loc	6 272 9 is_stmt 0               @ ../Core/Src/usart.c:272:9
	cbz	r0, .LBB6_11
	b	.LBB6_10
.LBB6_10:
.Ltmp52:
	.loc	6 274 7 is_stmt 1               @ ../Core/Src/usart.c:274:7
	bl	Error_Handler
	.loc	6 275 5                         @ ../Core/Src/usart.c:275:5
	b	.LBB6_11
.Ltmp53:
.LBB6_11:
	.loc	6 277 5                         @ ../Core/Src/usart.c:277:5
	b	.LBB6_12
.LBB6_12:
.Ltmp54:
	.loc	6 277 5 is_stmt 0               @ ../Core/Src/usart.c:277:5
	ldr	r0, [sp, #180]
	movw	r1, :lower16:hdma_uart4_tx
	movt	r1, :upper16:hdma_uart4_tx
	str	r1, [r0, #52]
	ldr	r0, [sp, #180]
	str	r0, [r1, #56]
	b	.LBB6_13
.Ltmp55:
.LBB6_13:
	.loc	6 0 5                           @ ../Core/Src/usart.c:0:5
	movs	r0, #52
	str	r0, [sp, #92]                   @ 4-byte Spill
	movs	r1, #5
	movs	r2, #0
	.loc	6 280 5 is_stmt 1               @ ../Core/Src/usart.c:280:5
	bl	HAL_NVIC_SetPriority
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	.loc	6 281 5                         @ ../Core/Src/usart.c:281:5
	bl	HAL_NVIC_EnableIRQ
	.loc	6 285 3                         @ ../Core/Src/usart.c:285:3
	b	.LBB6_87
.Ltmp56:
.LBB6_14:
	.loc	6 286 11                        @ ../Core/Src/usart.c:286:11
	ldr	r0, [sp, #180]
	.loc	6 286 23 is_stmt 0              @ ../Core/Src/usart.c:286:23
	ldr	r0, [r0]
	movw	r1, #20480
	movt	r1, #16384
.Ltmp57:
	.loc	6 286 11                        @ ../Core/Src/usart.c:286:11
	cmp	r0, r1
	bne.w	.LBB6_30
	b	.LBB6_15
.LBB6_15:
.Ltmp58:
	.loc	6 292 5 is_stmt 1               @ ../Core/Src/usart.c:292:5
	b	.LBB6_16
.LBB6_16:
	.loc	6 0 5 is_stmt 0                 @ ../Core/Src/usart.c:0:5
	movs	r0, #0
.Ltmp59:
	.loc	6 292 5                         @ ../Core/Src/usart.c:292:5
	str	r0, [sp, #148]
	movw	r0, #14400
	movt	r0, #16386
	ldr	r1, [r0]
	orr	r1, r1, #1048576
	str	r1, [r0]
	ldr	r0, [r0]
	and	r0, r0, #1048576
	str	r0, [sp, #148]
	ldr	r0, [sp, #148]
	b	.LBB6_17
.Ltmp60:
.LBB6_17:
	.loc	6 294 5 is_stmt 1               @ ../Core/Src/usart.c:294:5
	b	.LBB6_18
.LBB6_18:
	.loc	6 0 5 is_stmt 0                 @ ../Core/Src/usart.c:0:5
	movs	r0, #0
.Ltmp61:
	.loc	6 294 5                         @ ../Core/Src/usart.c:294:5
	str	r0, [sp, #144]
	movw	r0, #14384
	movt	r0, #16386
	ldr	r1, [r0]
	orr	r1, r1, #4
	str	r1, [r0]
	ldr	r0, [r0]
	and	r0, r0, #4
	str	r0, [sp, #144]
	ldr	r0, [sp, #144]
	b	.LBB6_19
.Ltmp62:
.LBB6_19:
	.loc	6 295 5 is_stmt 1               @ ../Core/Src/usart.c:295:5
	b	.LBB6_20
.LBB6_20:
	.loc	6 0 5 is_stmt 0                 @ ../Core/Src/usart.c:0:5
	movs	r0, #0
.Ltmp63:
	.loc	6 295 5                         @ ../Core/Src/usart.c:295:5
	str	r0, [sp, #140]
	movw	r0, #14384
	movt	r0, #16386
	ldr	r1, [r0]
	orr	r1, r1, #8
	str	r1, [r0]
	ldr	r0, [r0]
	and	r0, r0, #8
	str	r0, [sp, #140]
	ldr	r0, [sp, #140]
	b	.LBB6_21
.Ltmp64:
.LBB6_21:
	.loc	6 0 5                           @ ../Core/Src/usart.c:0:5
	mov.w	r0, #4096
	.loc	6 300 25 is_stmt 1              @ ../Core/Src/usart.c:300:25
	str	r0, [sp, #160]
	movs	r0, #2
	.loc	6 301 26                        @ ../Core/Src/usart.c:301:26
	str	r0, [sp, #68]                   @ 4-byte Spill
	str	r0, [sp, #164]
	movs	r0, #0
	.loc	6 302 26                        @ ../Core/Src/usart.c:302:26
	str	r0, [sp, #84]                   @ 4-byte Spill
	str	r0, [sp, #168]
	movs	r0, #3
	.loc	6 303 27                        @ ../Core/Src/usart.c:303:27
	str	r0, [sp, #72]                   @ 4-byte Spill
	str	r0, [sp, #172]
	movs	r0, #8
	.loc	6 304 31                        @ ../Core/Src/usart.c:304:31
	str	r0, [sp, #76]                   @ 4-byte Spill
	str	r0, [sp, #176]
	movw	r0, #2048
	movt	r0, #16386
	add	r1, sp, #160
	.loc	6 305 5                         @ ../Core/Src/usart.c:305:5
	str	r1, [sp, #80]                   @ 4-byte Spill
	bl	HAL_GPIO_Init
	ldr.w	r12, [sp, #68]                  @ 4-byte Reload
	ldr	r2, [sp, #72]                   @ 4-byte Reload
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #80]                   @ 4-byte Reload
	ldr	r3, [sp, #84]                   @ 4-byte Reload
	mov.w	lr, #4
	.loc	6 307 25                        @ ../Core/Src/usart.c:307:25
	str.w	lr, [sp, #160]
	.loc	6 308 26                        @ ../Core/Src/usart.c:308:26
	str.w	r12, [sp, #164]
	.loc	6 309 26                        @ ../Core/Src/usart.c:309:26
	str	r3, [sp, #168]
	.loc	6 310 27                        @ ../Core/Src/usart.c:310:27
	str	r2, [sp, #172]
	.loc	6 311 31                        @ ../Core/Src/usart.c:311:31
	str	r0, [sp, #176]
	movw	r0, #3072
	movt	r0, #16386
	.loc	6 312 5                         @ ../Core/Src/usart.c:312:5
	bl	HAL_GPIO_Init
	ldr	r1, [sp, #84]                   @ 4-byte Reload
	.loc	6 316 28                        @ ../Core/Src/usart.c:316:28
	movw	r0, :lower16:hdma_uart5_rx
	movt	r0, :upper16:hdma_uart5_rx
	str	r0, [sp, #88]                   @ 4-byte Spill
	movw	r2, #24592
	movt	r2, #16386
	str	r2, [r0]
	mov.w	r2, #134217728
	.loc	6 317 32                        @ ../Core/Src/usart.c:317:32
	str	r2, [r0, #4]
	.loc	6 318 34                        @ ../Core/Src/usart.c:318:34
	str	r1, [r0, #8]
	.loc	6 319 34                        @ ../Core/Src/usart.c:319:34
	str	r1, [r0, #12]
	mov.w	r2, #1024
	.loc	6 320 31                        @ ../Core/Src/usart.c:320:31
	str	r2, [r0, #16]
	.loc	6 321 44                        @ ../Core/Src/usart.c:321:44
	str	r1, [r0, #20]
	.loc	6 322 41                        @ ../Core/Src/usart.c:322:41
	str	r1, [r0, #24]
	mov.w	r2, #256
	.loc	6 323 29                        @ ../Core/Src/usart.c:323:29
	str	r2, [r0, #28]
	.loc	6 324 33                        @ ../Core/Src/usart.c:324:33
	str	r1, [r0, #32]
	.loc	6 325 33                        @ ../Core/Src/usart.c:325:33
	str	r1, [r0, #36]
.Ltmp65:
	.loc	6 326 9                         @ ../Core/Src/usart.c:326:9
	bl	HAL_DMA_Init
.Ltmp66:
	.loc	6 326 9 is_stmt 0               @ ../Core/Src/usart.c:326:9
	cbz	r0, .LBB6_23
	b	.LBB6_22
.LBB6_22:
.Ltmp67:
	.loc	6 328 7 is_stmt 1               @ ../Core/Src/usart.c:328:7
	bl	Error_Handler
	.loc	6 329 5                         @ ../Core/Src/usart.c:329:5
	b	.LBB6_23
.Ltmp68:
.LBB6_23:
	.loc	6 331 5                         @ ../Core/Src/usart.c:331:5
	b	.LBB6_24
.LBB6_24:
.Ltmp69:
	.loc	6 331 5 is_stmt 0               @ ../Core/Src/usart.c:331:5
	ldr	r0, [sp, #180]
	movw	r1, :lower16:hdma_uart5_rx
	movt	r1, :upper16:hdma_uart5_rx
	str	r1, [r0, #56]
	ldr	r0, [sp, #180]
	str	r0, [r1, #56]
	b	.LBB6_25
.Ltmp70:
.LBB6_25:
	.loc	6 334 28 is_stmt 1              @ ../Core/Src/usart.c:334:28
	movw	r0, :lower16:hdma_uart5_tx
	movt	r0, :upper16:hdma_uart5_tx
	str	r0, [sp, #64]                   @ 4-byte Spill
	movw	r1, #24760
	movt	r1, #16386
	str	r1, [r0]
	mov.w	r1, #134217728
	.loc	6 335 32                        @ ../Core/Src/usart.c:335:32
	str	r1, [r0, #4]
	movs	r1, #64
	.loc	6 336 34                        @ ../Core/Src/usart.c:336:34
	str	r1, [r0, #8]
	movs	r1, #0
	.loc	6 337 34                        @ ../Core/Src/usart.c:337:34
	str	r1, [r0, #12]
	mov.w	r2, #1024
	.loc	6 338 31                        @ ../Core/Src/usart.c:338:31
	str	r2, [r0, #16]
	.loc	6 339 44                        @ ../Core/Src/usart.c:339:44
	str	r1, [r0, #20]
	.loc	6 340 41                        @ ../Core/Src/usart.c:340:41
	str	r1, [r0, #24]
	mov.w	r2, #256
	.loc	6 341 29                        @ ../Core/Src/usart.c:341:29
	str	r2, [r0, #28]
	.loc	6 342 33                        @ ../Core/Src/usart.c:342:33
	str	r1, [r0, #32]
	.loc	6 343 33                        @ ../Core/Src/usart.c:343:33
	str	r1, [r0, #36]
.Ltmp71:
	.loc	6 344 9                         @ ../Core/Src/usart.c:344:9
	bl	HAL_DMA_Init
.Ltmp72:
	.loc	6 344 9 is_stmt 0               @ ../Core/Src/usart.c:344:9
	cbz	r0, .LBB6_27
	b	.LBB6_26
.LBB6_26:
.Ltmp73:
	.loc	6 346 7 is_stmt 1               @ ../Core/Src/usart.c:346:7
	bl	Error_Handler
	.loc	6 347 5                         @ ../Core/Src/usart.c:347:5
	b	.LBB6_27
.Ltmp74:
.LBB6_27:
	.loc	6 349 5                         @ ../Core/Src/usart.c:349:5
	b	.LBB6_28
.LBB6_28:
.Ltmp75:
	.loc	6 349 5 is_stmt 0               @ ../Core/Src/usart.c:349:5
	ldr	r0, [sp, #180]
	movw	r1, :lower16:hdma_uart5_tx
	movt	r1, :upper16:hdma_uart5_tx
	str	r1, [r0, #52]
	ldr	r0, [sp, #180]
	str	r0, [r1, #56]
	b	.LBB6_29
.Ltmp76:
.LBB6_29:
	.loc	6 0 5                           @ ../Core/Src/usart.c:0:5
	movs	r0, #53
	str	r0, [sp, #60]                   @ 4-byte Spill
	movs	r1, #5
	movs	r2, #0
	.loc	6 352 5 is_stmt 1               @ ../Core/Src/usart.c:352:5
	bl	HAL_NVIC_SetPriority
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	.loc	6 353 5                         @ ../Core/Src/usart.c:353:5
	bl	HAL_NVIC_EnableIRQ
	.loc	6 357 3                         @ ../Core/Src/usart.c:357:3
	b	.LBB6_86
.Ltmp77:
.LBB6_30:
	.loc	6 358 11                        @ ../Core/Src/usart.c:358:11
	ldr	r0, [sp, #180]
	.loc	6 358 23 is_stmt 0              @ ../Core/Src/usart.c:358:23
	ldr	r0, [r0]
	movw	r1, #4096
	movt	r1, #16385
.Ltmp78:
	.loc	6 358 11                        @ ../Core/Src/usart.c:358:11
	cmp	r0, r1
	bne.w	.LBB6_44
	b	.LBB6_31
.LBB6_31:
.Ltmp79:
	.loc	6 364 5 is_stmt 1               @ ../Core/Src/usart.c:364:5
	b	.LBB6_32
.LBB6_32:
	.loc	6 0 5 is_stmt 0                 @ ../Core/Src/usart.c:0:5
	movs	r0, #0
.Ltmp80:
	.loc	6 364 5                         @ ../Core/Src/usart.c:364:5
	str	r0, [sp, #136]
	movw	r0, #14404
	movt	r0, #16386
	ldr	r1, [r0]
	orr	r1, r1, #16
	str	r1, [r0]
	ldr	r0, [r0]
	and	r0, r0, #16
	str	r0, [sp, #136]
	ldr	r0, [sp, #136]
	b	.LBB6_33
.Ltmp81:
.LBB6_33:
	.loc	6 366 5 is_stmt 1               @ ../Core/Src/usart.c:366:5
	b	.LBB6_34
.LBB6_34:
	.loc	6 0 5 is_stmt 0                 @ ../Core/Src/usart.c:0:5
	movs	r0, #0
.Ltmp82:
	.loc	6 366 5                         @ ../Core/Src/usart.c:366:5
	str	r0, [sp, #132]
	movw	r0, #14384
	movt	r0, #16386
	ldr	r1, [r0]
	orr	r1, r1, #1
	str	r1, [r0]
	ldr	r0, [r0]
	and	r0, r0, #1
	str	r0, [sp, #132]
	ldr	r0, [sp, #132]
	b	.LBB6_35
.Ltmp83:
.LBB6_35:
	.loc	6 0 5                           @ ../Core/Src/usart.c:0:5
	mov.w	r0, #1536
	.loc	6 371 25 is_stmt 1              @ ../Core/Src/usart.c:371:25
	str	r0, [sp, #160]
	movs	r0, #2
	.loc	6 372 26                        @ ../Core/Src/usart.c:372:26
	str	r0, [sp, #164]
	movs	r0, #0
	.loc	6 373 26                        @ ../Core/Src/usart.c:373:26
	str	r0, [sp, #52]                   @ 4-byte Spill
	str	r0, [sp, #168]
	movs	r0, #3
	.loc	6 374 27                        @ ../Core/Src/usart.c:374:27
	str	r0, [sp, #172]
	movs	r0, #7
	.loc	6 375 31                        @ ../Core/Src/usart.c:375:31
	str	r0, [sp, #176]
	movs	r0, #0
	movt	r0, #16386
	add	r1, sp, #160
	.loc	6 376 5                         @ ../Core/Src/usart.c:376:5
	bl	HAL_GPIO_Init
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	.loc	6 380 29                        @ ../Core/Src/usart.c:380:29
	movw	r0, :lower16:hdma_usart1_rx
	movt	r0, :upper16:hdma_usart1_rx
	str	r0, [sp, #56]                   @ 4-byte Spill
	movw	r2, #25664
	movt	r2, #16386
	str	r2, [r0]
	mov.w	r2, #134217728
	.loc	6 381 33                        @ ../Core/Src/usart.c:381:33
	str	r2, [r0, #4]
	.loc	6 382 35                        @ ../Core/Src/usart.c:382:35
	str	r1, [r0, #8]
	.loc	6 383 35                        @ ../Core/Src/usart.c:383:35
	str	r1, [r0, #12]
	mov.w	r2, #1024
	.loc	6 384 32                        @ ../Core/Src/usart.c:384:32
	str	r2, [r0, #16]
	.loc	6 385 45                        @ ../Core/Src/usart.c:385:45
	str	r1, [r0, #20]
	.loc	6 386 42                        @ ../Core/Src/usart.c:386:42
	str	r1, [r0, #24]
	mov.w	r2, #256
	.loc	6 387 30                        @ ../Core/Src/usart.c:387:30
	str	r2, [r0, #28]
	.loc	6 388 34                        @ ../Core/Src/usart.c:388:34
	str	r1, [r0, #32]
	.loc	6 389 34                        @ ../Core/Src/usart.c:389:34
	str	r1, [r0, #36]
.Ltmp84:
	.loc	6 390 9                         @ ../Core/Src/usart.c:390:9
	bl	HAL_DMA_Init
.Ltmp85:
	.loc	6 390 9 is_stmt 0               @ ../Core/Src/usart.c:390:9
	cbz	r0, .LBB6_37
	b	.LBB6_36
.LBB6_36:
.Ltmp86:
	.loc	6 392 7 is_stmt 1               @ ../Core/Src/usart.c:392:7
	bl	Error_Handler
	.loc	6 393 5                         @ ../Core/Src/usart.c:393:5
	b	.LBB6_37
.Ltmp87:
.LBB6_37:
	.loc	6 395 5                         @ ../Core/Src/usart.c:395:5
	b	.LBB6_38
.LBB6_38:
.Ltmp88:
	.loc	6 395 5 is_stmt 0               @ ../Core/Src/usart.c:395:5
	ldr	r0, [sp, #180]
	movw	r1, :lower16:hdma_usart1_rx
	movt	r1, :upper16:hdma_usart1_rx
	str	r1, [r0, #56]
	ldr	r0, [sp, #180]
	str	r0, [r1, #56]
	b	.LBB6_39
.Ltmp89:
.LBB6_39:
	.loc	6 398 29 is_stmt 1              @ ../Core/Src/usart.c:398:29
	movw	r0, :lower16:hdma_usart1_tx
	movt	r0, :upper16:hdma_usart1_tx
	str	r0, [sp, #48]                   @ 4-byte Spill
	movw	r1, #25784
	movt	r1, #16386
	str	r1, [r0]
	mov.w	r1, #134217728
	.loc	6 399 33                        @ ../Core/Src/usart.c:399:33
	str	r1, [r0, #4]
	movs	r1, #64
	.loc	6 400 35                        @ ../Core/Src/usart.c:400:35
	str	r1, [r0, #8]
	movs	r1, #0
	.loc	6 401 35                        @ ../Core/Src/usart.c:401:35
	str	r1, [r0, #12]
	mov.w	r2, #1024
	.loc	6 402 32                        @ ../Core/Src/usart.c:402:32
	str	r2, [r0, #16]
	.loc	6 403 45                        @ ../Core/Src/usart.c:403:45
	str	r1, [r0, #20]
	.loc	6 404 42                        @ ../Core/Src/usart.c:404:42
	str	r1, [r0, #24]
	mov.w	r2, #256
	.loc	6 405 30                        @ ../Core/Src/usart.c:405:30
	str	r2, [r0, #28]
	.loc	6 406 34                        @ ../Core/Src/usart.c:406:34
	str	r1, [r0, #32]
	.loc	6 407 34                        @ ../Core/Src/usart.c:407:34
	str	r1, [r0, #36]
.Ltmp90:
	.loc	6 408 9                         @ ../Core/Src/usart.c:408:9
	bl	HAL_DMA_Init
.Ltmp91:
	.loc	6 408 9 is_stmt 0               @ ../Core/Src/usart.c:408:9
	cbz	r0, .LBB6_41
	b	.LBB6_40
.LBB6_40:
.Ltmp92:
	.loc	6 410 7 is_stmt 1               @ ../Core/Src/usart.c:410:7
	bl	Error_Handler
	.loc	6 411 5                         @ ../Core/Src/usart.c:411:5
	b	.LBB6_41
.Ltmp93:
.LBB6_41:
	.loc	6 413 5                         @ ../Core/Src/usart.c:413:5
	b	.LBB6_42
.LBB6_42:
.Ltmp94:
	.loc	6 413 5 is_stmt 0               @ ../Core/Src/usart.c:413:5
	ldr	r0, [sp, #180]
	movw	r1, :lower16:hdma_usart1_tx
	movt	r1, :upper16:hdma_usart1_tx
	str	r1, [r0, #52]
	ldr	r0, [sp, #180]
	str	r0, [r1, #56]
	b	.LBB6_43
.Ltmp95:
.LBB6_43:
	.loc	6 0 5                           @ ../Core/Src/usart.c:0:5
	movs	r0, #37
	str	r0, [sp, #44]                   @ 4-byte Spill
	movs	r1, #5
	movs	r2, #0
	.loc	6 416 5 is_stmt 1               @ ../Core/Src/usart.c:416:5
	bl	HAL_NVIC_SetPriority
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	.loc	6 417 5                         @ ../Core/Src/usart.c:417:5
	bl	HAL_NVIC_EnableIRQ
	.loc	6 421 3                         @ ../Core/Src/usart.c:421:3
	b	.LBB6_85
.Ltmp96:
.LBB6_44:
	.loc	6 422 11                        @ ../Core/Src/usart.c:422:11
	ldr	r0, [sp, #180]
	.loc	6 422 23 is_stmt 0              @ ../Core/Src/usart.c:422:23
	ldr	r0, [r0]
	movw	r1, #17408
	movt	r1, #16384
.Ltmp97:
	.loc	6 422 11                        @ ../Core/Src/usart.c:422:11
	cmp	r0, r1
	bne	.LBB6_54
	b	.LBB6_45
.LBB6_45:
.Ltmp98:
	.loc	6 428 5 is_stmt 1               @ ../Core/Src/usart.c:428:5
	b	.LBB6_46
.LBB6_46:
	.loc	6 0 5 is_stmt 0                 @ ../Core/Src/usart.c:0:5
	movs	r0, #0
.Ltmp99:
	.loc	6 428 5                         @ ../Core/Src/usart.c:428:5
	str	r0, [sp, #128]
	movw	r0, #14400
	movt	r0, #16386
	ldr	r1, [r0]
	orr	r1, r1, #131072
	str	r1, [r0]
	ldr	r0, [r0]
	and	r0, r0, #131072
	str	r0, [sp, #128]
	ldr	r0, [sp, #128]
	b	.LBB6_47
.Ltmp100:
.LBB6_47:
	.loc	6 430 5 is_stmt 1               @ ../Core/Src/usart.c:430:5
	b	.LBB6_48
.LBB6_48:
	.loc	6 0 5 is_stmt 0                 @ ../Core/Src/usart.c:0:5
	movs	r0, #0
.Ltmp101:
	.loc	6 430 5                         @ ../Core/Src/usart.c:430:5
	str	r0, [sp, #124]
	movw	r0, #14384
	movt	r0, #16386
	ldr	r1, [r0]
	orr	r1, r1, #1
	str	r1, [r0]
	ldr	r0, [r0]
	and	r0, r0, #1
	str	r0, [sp, #124]
	ldr	r0, [sp, #124]
	b	.LBB6_49
.Ltmp102:
.LBB6_49:
	.loc	6 0 5                           @ ../Core/Src/usart.c:0:5
	movs	r0, #12
	.loc	6 435 25 is_stmt 1              @ ../Core/Src/usart.c:435:25
	str	r0, [sp, #160]
	movs	r0, #2
	.loc	6 436 26                        @ ../Core/Src/usart.c:436:26
	str	r0, [sp, #164]
	movs	r0, #0
	.loc	6 437 26                        @ ../Core/Src/usart.c:437:26
	str	r0, [sp, #36]                   @ 4-byte Spill
	str	r0, [sp, #168]
	movs	r0, #3
	.loc	6 438 27                        @ ../Core/Src/usart.c:438:27
	str	r0, [sp, #172]
	movs	r0, #7
	.loc	6 439 31                        @ ../Core/Src/usart.c:439:31
	str	r0, [sp, #176]
	movs	r0, #0
	movt	r0, #16386
	add	r1, sp, #160
	.loc	6 440 5                         @ ../Core/Src/usart.c:440:5
	bl	HAL_GPIO_Init
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	.loc	6 444 29                        @ ../Core/Src/usart.c:444:29
	movw	r0, :lower16:hdma_usart2_rx
	movt	r0, :upper16:hdma_usart2_rx
	str	r0, [sp, #40]                   @ 4-byte Spill
	movw	r2, #24712
	movt	r2, #16386
	str	r2, [r0]
	mov.w	r2, #134217728
	.loc	6 445 33                        @ ../Core/Src/usart.c:445:33
	str	r2, [r0, #4]
	.loc	6 446 35                        @ ../Core/Src/usart.c:446:35
	str	r1, [r0, #8]
	.loc	6 447 35                        @ ../Core/Src/usart.c:447:35
	str	r1, [r0, #12]
	mov.w	r2, #1024
	.loc	6 448 32                        @ ../Core/Src/usart.c:448:32
	str	r2, [r0, #16]
	.loc	6 449 45                        @ ../Core/Src/usart.c:449:45
	str	r1, [r0, #20]
	.loc	6 450 42                        @ ../Core/Src/usart.c:450:42
	str	r1, [r0, #24]
	mov.w	r2, #256
	.loc	6 451 30                        @ ../Core/Src/usart.c:451:30
	str	r2, [r0, #28]
	.loc	6 452 34                        @ ../Core/Src/usart.c:452:34
	str	r1, [r0, #32]
	.loc	6 453 34                        @ ../Core/Src/usart.c:453:34
	str	r1, [r0, #36]
.Ltmp103:
	.loc	6 454 9                         @ ../Core/Src/usart.c:454:9
	bl	HAL_DMA_Init
.Ltmp104:
	.loc	6 454 9 is_stmt 0               @ ../Core/Src/usart.c:454:9
	cbz	r0, .LBB6_51
	b	.LBB6_50
.LBB6_50:
.Ltmp105:
	.loc	6 456 7 is_stmt 1               @ ../Core/Src/usart.c:456:7
	bl	Error_Handler
	.loc	6 457 5                         @ ../Core/Src/usart.c:457:5
	b	.LBB6_51
.Ltmp106:
.LBB6_51:
	.loc	6 459 5                         @ ../Core/Src/usart.c:459:5
	b	.LBB6_52
.LBB6_52:
.Ltmp107:
	.loc	6 459 5 is_stmt 0               @ ../Core/Src/usart.c:459:5
	ldr	r0, [sp, #180]
	movw	r1, :lower16:hdma_usart2_rx
	movt	r1, :upper16:hdma_usart2_rx
	str	r1, [r0, #56]
	ldr	r0, [sp, #180]
	str	r0, [r1, #56]
	b	.LBB6_53
.Ltmp108:
.LBB6_53:
	.loc	6 0 5                           @ ../Core/Src/usart.c:0:5
	movs	r0, #38
	str	r0, [sp, #32]                   @ 4-byte Spill
	movs	r1, #5
	movs	r2, #0
	.loc	6 462 5 is_stmt 1               @ ../Core/Src/usart.c:462:5
	bl	HAL_NVIC_SetPriority
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	.loc	6 463 5                         @ ../Core/Src/usart.c:463:5
	bl	HAL_NVIC_EnableIRQ
	.loc	6 467 3                         @ ../Core/Src/usart.c:467:3
	b	.LBB6_84
.Ltmp109:
.LBB6_54:
	.loc	6 468 11                        @ ../Core/Src/usart.c:468:11
	ldr	r0, [sp, #180]
	.loc	6 468 23 is_stmt 0              @ ../Core/Src/usart.c:468:23
	ldr	r0, [r0]
	movw	r1, #18432
	movt	r1, #16384
.Ltmp110:
	.loc	6 468 11                        @ ../Core/Src/usart.c:468:11
	cmp	r0, r1
	bne.w	.LBB6_68
	b	.LBB6_55
.LBB6_55:
.Ltmp111:
	.loc	6 474 5 is_stmt 1               @ ../Core/Src/usart.c:474:5
	b	.LBB6_56
.LBB6_56:
	.loc	6 0 5 is_stmt 0                 @ ../Core/Src/usart.c:0:5
	movs	r0, #0
.Ltmp112:
	.loc	6 474 5                         @ ../Core/Src/usart.c:474:5
	str	r0, [sp, #120]
	movw	r0, #14400
	movt	r0, #16386
	ldr	r1, [r0]
	orr	r1, r1, #262144
	str	r1, [r0]
	ldr	r0, [r0]
	and	r0, r0, #262144
	str	r0, [sp, #120]
	ldr	r0, [sp, #120]
	b	.LBB6_57
.Ltmp113:
.LBB6_57:
	.loc	6 476 5 is_stmt 1               @ ../Core/Src/usart.c:476:5
	b	.LBB6_58
.LBB6_58:
	.loc	6 0 5 is_stmt 0                 @ ../Core/Src/usart.c:0:5
	movs	r0, #0
.Ltmp114:
	.loc	6 476 5                         @ ../Core/Src/usart.c:476:5
	str	r0, [sp, #116]
	movw	r0, #14384
	movt	r0, #16386
	ldr	r1, [r0]
	orr	r1, r1, #8
	str	r1, [r0]
	ldr	r0, [r0]
	and	r0, r0, #8
	str	r0, [sp, #116]
	ldr	r0, [sp, #116]
	b	.LBB6_59
.Ltmp115:
.LBB6_59:
	.loc	6 0 5                           @ ../Core/Src/usart.c:0:5
	mov.w	r0, #768
	.loc	6 481 25 is_stmt 1              @ ../Core/Src/usart.c:481:25
	str	r0, [sp, #160]
	movs	r0, #2
	.loc	6 482 26                        @ ../Core/Src/usart.c:482:26
	str	r0, [sp, #164]
	movs	r0, #0
	.loc	6 483 26                        @ ../Core/Src/usart.c:483:26
	str	r0, [sp, #24]                   @ 4-byte Spill
	str	r0, [sp, #168]
	movs	r0, #3
	.loc	6 484 27                        @ ../Core/Src/usart.c:484:27
	str	r0, [sp, #172]
	movs	r0, #7
	.loc	6 485 31                        @ ../Core/Src/usart.c:485:31
	str	r0, [sp, #176]
	movw	r0, #3072
	movt	r0, #16386
	add	r1, sp, #160
	.loc	6 486 5                         @ ../Core/Src/usart.c:486:5
	bl	HAL_GPIO_Init
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	.loc	6 490 29                        @ ../Core/Src/usart.c:490:29
	movw	r0, :lower16:hdma_usart3_rx
	movt	r0, :upper16:hdma_usart3_rx
	str	r0, [sp, #28]                   @ 4-byte Spill
	movw	r2, #24616
	movt	r2, #16386
	str	r2, [r0]
	mov.w	r2, #134217728
	.loc	6 491 33                        @ ../Core/Src/usart.c:491:33
	str	r2, [r0, #4]
	.loc	6 492 35                        @ ../Core/Src/usart.c:492:35
	str	r1, [r0, #8]
	.loc	6 493 35                        @ ../Core/Src/usart.c:493:35
	str	r1, [r0, #12]
	mov.w	r2, #1024
	.loc	6 494 32                        @ ../Core/Src/usart.c:494:32
	str	r2, [r0, #16]
	.loc	6 495 45                        @ ../Core/Src/usart.c:495:45
	str	r1, [r0, #20]
	.loc	6 496 42                        @ ../Core/Src/usart.c:496:42
	str	r1, [r0, #24]
	mov.w	r2, #256
	.loc	6 497 30                        @ ../Core/Src/usart.c:497:30
	str	r2, [r0, #28]
	.loc	6 498 34                        @ ../Core/Src/usart.c:498:34
	str	r1, [r0, #32]
	.loc	6 499 34                        @ ../Core/Src/usart.c:499:34
	str	r1, [r0, #36]
.Ltmp116:
	.loc	6 500 9                         @ ../Core/Src/usart.c:500:9
	bl	HAL_DMA_Init
.Ltmp117:
	.loc	6 500 9 is_stmt 0               @ ../Core/Src/usart.c:500:9
	cbz	r0, .LBB6_61
	b	.LBB6_60
.LBB6_60:
.Ltmp118:
	.loc	6 502 7 is_stmt 1               @ ../Core/Src/usart.c:502:7
	bl	Error_Handler
	.loc	6 503 5                         @ ../Core/Src/usart.c:503:5
	b	.LBB6_61
.Ltmp119:
.LBB6_61:
	.loc	6 505 5                         @ ../Core/Src/usart.c:505:5
	b	.LBB6_62
.LBB6_62:
.Ltmp120:
	.loc	6 505 5 is_stmt 0               @ ../Core/Src/usart.c:505:5
	ldr	r0, [sp, #180]
	movw	r1, :lower16:hdma_usart3_rx
	movt	r1, :upper16:hdma_usart3_rx
	str	r1, [r0, #56]
	ldr	r0, [sp, #180]
	str	r0, [r1, #56]
	b	.LBB6_63
.Ltmp121:
.LBB6_63:
	.loc	6 508 29 is_stmt 1              @ ../Core/Src/usart.c:508:29
	movw	r0, :lower16:hdma_usart3_tx
	movt	r0, :upper16:hdma_usart3_tx
	str	r0, [sp, #20]                   @ 4-byte Spill
	movw	r1, #24664
	movt	r1, #16386
	str	r1, [r0]
	mov.w	r1, #134217728
	.loc	6 509 33                        @ ../Core/Src/usart.c:509:33
	str	r1, [r0, #4]
	movs	r1, #64
	.loc	6 510 35                        @ ../Core/Src/usart.c:510:35
	str	r1, [r0, #8]
	movs	r1, #0
	.loc	6 511 35                        @ ../Core/Src/usart.c:511:35
	str	r1, [r0, #12]
	mov.w	r2, #1024
	.loc	6 512 32                        @ ../Core/Src/usart.c:512:32
	str	r2, [r0, #16]
	.loc	6 513 45                        @ ../Core/Src/usart.c:513:45
	str	r1, [r0, #20]
	.loc	6 514 42                        @ ../Core/Src/usart.c:514:42
	str	r1, [r0, #24]
	mov.w	r2, #256
	.loc	6 515 30                        @ ../Core/Src/usart.c:515:30
	str	r2, [r0, #28]
	.loc	6 516 34                        @ ../Core/Src/usart.c:516:34
	str	r1, [r0, #32]
	.loc	6 517 34                        @ ../Core/Src/usart.c:517:34
	str	r1, [r0, #36]
.Ltmp122:
	.loc	6 518 9                         @ ../Core/Src/usart.c:518:9
	bl	HAL_DMA_Init
.Ltmp123:
	.loc	6 518 9 is_stmt 0               @ ../Core/Src/usart.c:518:9
	cbz	r0, .LBB6_65
	b	.LBB6_64
.LBB6_64:
.Ltmp124:
	.loc	6 520 7 is_stmt 1               @ ../Core/Src/usart.c:520:7
	bl	Error_Handler
	.loc	6 521 5                         @ ../Core/Src/usart.c:521:5
	b	.LBB6_65
.Ltmp125:
.LBB6_65:
	.loc	6 523 5                         @ ../Core/Src/usart.c:523:5
	b	.LBB6_66
.LBB6_66:
.Ltmp126:
	.loc	6 523 5 is_stmt 0               @ ../Core/Src/usart.c:523:5
	ldr	r0, [sp, #180]
	movw	r1, :lower16:hdma_usart3_tx
	movt	r1, :upper16:hdma_usart3_tx
	str	r1, [r0, #52]
	ldr	r0, [sp, #180]
	str	r0, [r1, #56]
	b	.LBB6_67
.Ltmp127:
.LBB6_67:
	.loc	6 0 5                           @ ../Core/Src/usart.c:0:5
	movs	r0, #39
	str	r0, [sp, #16]                   @ 4-byte Spill
	movs	r1, #5
	movs	r2, #0
	.loc	6 526 5 is_stmt 1               @ ../Core/Src/usart.c:526:5
	bl	HAL_NVIC_SetPriority
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	.loc	6 527 5                         @ ../Core/Src/usart.c:527:5
	bl	HAL_NVIC_EnableIRQ
	.loc	6 531 3                         @ ../Core/Src/usart.c:531:3
	b	.LBB6_83
.Ltmp128:
.LBB6_68:
	.loc	6 532 11                        @ ../Core/Src/usart.c:532:11
	ldr	r0, [sp, #180]
	.loc	6 532 23 is_stmt 0              @ ../Core/Src/usart.c:532:23
	ldr	r0, [r0]
	movw	r1, #5120
	movt	r1, #16385
.Ltmp129:
	.loc	6 532 11                        @ ../Core/Src/usart.c:532:11
	cmp	r0, r1
	bne.w	.LBB6_82
	b	.LBB6_69
.LBB6_69:
.Ltmp130:
	.loc	6 538 5 is_stmt 1               @ ../Core/Src/usart.c:538:5
	b	.LBB6_70
.LBB6_70:
	.loc	6 0 5 is_stmt 0                 @ ../Core/Src/usart.c:0:5
	movs	r0, #0
.Ltmp131:
	.loc	6 538 5                         @ ../Core/Src/usart.c:538:5
	str	r0, [sp, #112]
	movw	r0, #14404
	movt	r0, #16386
	ldr	r1, [r0]
	orr	r1, r1, #32
	str	r1, [r0]
	ldr	r0, [r0]
	and	r0, r0, #32
	str	r0, [sp, #112]
	ldr	r0, [sp, #112]
	b	.LBB6_71
.Ltmp132:
.LBB6_71:
	.loc	6 540 5 is_stmt 1               @ ../Core/Src/usart.c:540:5
	b	.LBB6_72
.LBB6_72:
	.loc	6 0 5 is_stmt 0                 @ ../Core/Src/usart.c:0:5
	movs	r0, #0
.Ltmp133:
	.loc	6 540 5                         @ ../Core/Src/usart.c:540:5
	str	r0, [sp, #108]
	movw	r0, #14384
	movt	r0, #16386
	ldr	r1, [r0]
	orr	r1, r1, #4
	str	r1, [r0]
	ldr	r0, [r0]
	and	r0, r0, #4
	str	r0, [sp, #108]
	ldr	r0, [sp, #108]
	b	.LBB6_73
.Ltmp134:
.LBB6_73:
	.loc	6 0 5                           @ ../Core/Src/usart.c:0:5
	movs	r0, #192
	.loc	6 545 25 is_stmt 1              @ ../Core/Src/usart.c:545:25
	str	r0, [sp, #160]
	movs	r0, #2
	.loc	6 546 26                        @ ../Core/Src/usart.c:546:26
	str	r0, [sp, #164]
	movs	r0, #0
	.loc	6 547 26                        @ ../Core/Src/usart.c:547:26
	str	r0, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #168]
	movs	r0, #3
	.loc	6 548 27                        @ ../Core/Src/usart.c:548:27
	str	r0, [sp, #172]
	movs	r0, #8
	.loc	6 549 31                        @ ../Core/Src/usart.c:549:31
	str	r0, [sp, #176]
	movw	r0, #2048
	movt	r0, #16386
	add	r1, sp, #160
	.loc	6 550 5                         @ ../Core/Src/usart.c:550:5
	bl	HAL_GPIO_Init
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	6 554 29                        @ ../Core/Src/usart.c:554:29
	movw	r0, :lower16:hdma_usart6_rx
	movt	r0, :upper16:hdma_usart6_rx
	str	r0, [sp, #12]                   @ 4-byte Spill
	movw	r2, #25640
	movt	r2, #16386
	str	r2, [r0]
	mov.w	r2, #167772160
	.loc	6 555 33                        @ ../Core/Src/usart.c:555:33
	str	r2, [r0, #4]
	.loc	6 556 35                        @ ../Core/Src/usart.c:556:35
	str	r1, [r0, #8]
	.loc	6 557 35                        @ ../Core/Src/usart.c:557:35
	str	r1, [r0, #12]
	mov.w	r2, #1024
	.loc	6 558 32                        @ ../Core/Src/usart.c:558:32
	str	r2, [r0, #16]
	.loc	6 559 45                        @ ../Core/Src/usart.c:559:45
	str	r1, [r0, #20]
	.loc	6 560 42                        @ ../Core/Src/usart.c:560:42
	str	r1, [r0, #24]
	mov.w	r2, #256
	.loc	6 561 30                        @ ../Core/Src/usart.c:561:30
	str	r2, [r0, #28]
	.loc	6 562 34                        @ ../Core/Src/usart.c:562:34
	str	r1, [r0, #32]
	.loc	6 563 34                        @ ../Core/Src/usart.c:563:34
	str	r1, [r0, #36]
.Ltmp135:
	.loc	6 564 9                         @ ../Core/Src/usart.c:564:9
	bl	HAL_DMA_Init
.Ltmp136:
	.loc	6 564 9 is_stmt 0               @ ../Core/Src/usart.c:564:9
	cbz	r0, .LBB6_75
	b	.LBB6_74
.LBB6_74:
.Ltmp137:
	.loc	6 566 7 is_stmt 1               @ ../Core/Src/usart.c:566:7
	bl	Error_Handler
	.loc	6 567 5                         @ ../Core/Src/usart.c:567:5
	b	.LBB6_75
.Ltmp138:
.LBB6_75:
	.loc	6 569 5                         @ ../Core/Src/usart.c:569:5
	b	.LBB6_76
.LBB6_76:
.Ltmp139:
	.loc	6 569 5 is_stmt 0               @ ../Core/Src/usart.c:569:5
	ldr	r0, [sp, #180]
	movw	r1, :lower16:hdma_usart6_rx
	movt	r1, :upper16:hdma_usart6_rx
	str	r1, [r0, #56]
	ldr	r0, [sp, #180]
	str	r0, [r1, #56]
	b	.LBB6_77
.Ltmp140:
.LBB6_77:
	.loc	6 572 29 is_stmt 1              @ ../Core/Src/usart.c:572:29
	movw	r0, :lower16:hdma_usart6_tx
	movt	r0, :upper16:hdma_usart6_tx
	str	r0, [sp, #4]                    @ 4-byte Spill
	movw	r1, #25760
	movt	r1, #16386
	str	r1, [r0]
	mov.w	r1, #167772160
	.loc	6 573 33                        @ ../Core/Src/usart.c:573:33
	str	r1, [r0, #4]
	movs	r1, #64
	.loc	6 574 35                        @ ../Core/Src/usart.c:574:35
	str	r1, [r0, #8]
	movs	r1, #0
	.loc	6 575 35                        @ ../Core/Src/usart.c:575:35
	str	r1, [r0, #12]
	mov.w	r2, #1024
	.loc	6 576 32                        @ ../Core/Src/usart.c:576:32
	str	r2, [r0, #16]
	.loc	6 577 45                        @ ../Core/Src/usart.c:577:45
	str	r1, [r0, #20]
	.loc	6 578 42                        @ ../Core/Src/usart.c:578:42
	str	r1, [r0, #24]
	mov.w	r2, #256
	.loc	6 579 30                        @ ../Core/Src/usart.c:579:30
	str	r2, [r0, #28]
	.loc	6 580 34                        @ ../Core/Src/usart.c:580:34
	str	r1, [r0, #32]
	.loc	6 581 34                        @ ../Core/Src/usart.c:581:34
	str	r1, [r0, #36]
.Ltmp141:
	.loc	6 582 9                         @ ../Core/Src/usart.c:582:9
	bl	HAL_DMA_Init
.Ltmp142:
	.loc	6 582 9 is_stmt 0               @ ../Core/Src/usart.c:582:9
	cbz	r0, .LBB6_79
	b	.LBB6_78
.LBB6_78:
.Ltmp143:
	.loc	6 584 7 is_stmt 1               @ ../Core/Src/usart.c:584:7
	bl	Error_Handler
	.loc	6 585 5                         @ ../Core/Src/usart.c:585:5
	b	.LBB6_79
.Ltmp144:
.LBB6_79:
	.loc	6 587 5                         @ ../Core/Src/usart.c:587:5
	b	.LBB6_80
.LBB6_80:
.Ltmp145:
	.loc	6 587 5 is_stmt 0               @ ../Core/Src/usart.c:587:5
	ldr	r0, [sp, #180]
	movw	r1, :lower16:hdma_usart6_tx
	movt	r1, :upper16:hdma_usart6_tx
	str	r1, [r0, #52]
	ldr	r0, [sp, #180]
	str	r0, [r1, #56]
	b	.LBB6_81
.Ltmp146:
.LBB6_81:
	.loc	6 0 5                           @ ../Core/Src/usart.c:0:5
	movs	r0, #71
	str	r0, [sp]                        @ 4-byte Spill
	movs	r1, #5
	movs	r2, #0
	.loc	6 590 5 is_stmt 1               @ ../Core/Src/usart.c:590:5
	bl	HAL_NVIC_SetPriority
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	6 591 5                         @ ../Core/Src/usart.c:591:5
	bl	HAL_NVIC_EnableIRQ
	.loc	6 595 3                         @ ../Core/Src/usart.c:595:3
	b	.LBB6_82
.Ltmp147:
.LBB6_82:
	.loc	6 0 3 is_stmt 0                 @ ../Core/Src/usart.c:0:3
	b	.LBB6_83
.LBB6_83:
	b	.LBB6_84
.LBB6_84:
	b	.LBB6_85
.LBB6_85:
	b	.LBB6_86
.LBB6_86:
	b	.LBB6_87
.LBB6_87:
	.loc	6 596 1 is_stmt 1               @ ../Core/Src/usart.c:596:1
	add	sp, #184
	pop	{r7, pc}
.Ltmp148:
.Lfunc_end6:
	.size	HAL_UART_MspInit, .Lfunc_end6-HAL_UART_MspInit
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.HAL_UART_MspDeInit,"ax",%progbits
	.hidden	HAL_UART_MspDeInit              @ -- Begin function HAL_UART_MspDeInit
	.globl	HAL_UART_MspDeInit
	.p2align	2
	.type	HAL_UART_MspDeInit,%function
	.code	16                              @ @HAL_UART_MspDeInit
	.thumb_func
HAL_UART_MspDeInit:
.Lfunc_begin7:
	.loc	6 599 0                         @ ../Core/Src/usart.c:599:0
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
.Ltmp149:
	.loc	6 601 6 prologue_end            @ ../Core/Src/usart.c:601:6
	ldr	r0, [sp, #4]
	.loc	6 601 18 is_stmt 0              @ ../Core/Src/usart.c:601:18
	ldr	r0, [r0]
	movw	r1, #19456
	movt	r1, #16384
.Ltmp150:
	.loc	6 601 6                         @ ../Core/Src/usart.c:601:6
	cmp	r0, r1
	bne	.LBB7_2
	b	.LBB7_1
.LBB7_1:
	.loc	6 0 6                           @ ../Core/Src/usart.c:0:6
	movw	r1, #14400
	movt	r1, #16386
.Ltmp151:
	.loc	6 607 5 is_stmt 1               @ ../Core/Src/usart.c:607:5
	ldr	r0, [r1]
	bic	r0, r0, #524288
	str	r0, [r1]
	movs	r0, #0
	movt	r0, #16386
	movs	r1, #3
	.loc	6 613 5                         @ ../Core/Src/usart.c:613:5
	bl	HAL_GPIO_DeInit
	.loc	6 616 20                        @ ../Core/Src/usart.c:616:20
	ldr	r0, [sp, #4]
	.loc	6 616 32 is_stmt 0              @ ../Core/Src/usart.c:616:32
	ldr	r0, [r0, #56]
	.loc	6 616 5                         @ ../Core/Src/usart.c:616:5
	bl	HAL_DMA_DeInit
	.loc	6 617 20 is_stmt 1              @ ../Core/Src/usart.c:617:20
	ldr	r0, [sp, #4]
	.loc	6 617 32 is_stmt 0              @ ../Core/Src/usart.c:617:32
	ldr	r0, [r0, #52]
	.loc	6 617 5                         @ ../Core/Src/usart.c:617:5
	bl	HAL_DMA_DeInit
	movs	r0, #52
	.loc	6 620 5 is_stmt 1               @ ../Core/Src/usart.c:620:5
	bl	HAL_NVIC_DisableIRQ
	.loc	6 624 3                         @ ../Core/Src/usart.c:624:3
	b	.LBB7_17
.Ltmp152:
.LBB7_2:
	.loc	6 625 11                        @ ../Core/Src/usart.c:625:11
	ldr	r0, [sp, #4]
	.loc	6 625 23 is_stmt 0              @ ../Core/Src/usart.c:625:23
	ldr	r0, [r0]
	movw	r1, #20480
	movt	r1, #16384
.Ltmp153:
	.loc	6 625 11                        @ ../Core/Src/usart.c:625:11
	cmp	r0, r1
	bne	.LBB7_4
	b	.LBB7_3
.LBB7_3:
	.loc	6 0 11                          @ ../Core/Src/usart.c:0:11
	movw	r1, #14400
	movt	r1, #16386
.Ltmp154:
	.loc	6 631 5 is_stmt 1               @ ../Core/Src/usart.c:631:5
	ldr	r0, [r1]
	bic	r0, r0, #1048576
	str	r0, [r1]
	movw	r0, #2048
	movt	r0, #16386
	mov.w	r1, #4096
	.loc	6 637 5                         @ ../Core/Src/usart.c:637:5
	bl	HAL_GPIO_DeInit
	movw	r0, #3072
	movt	r0, #16386
	movs	r1, #4
	.loc	6 639 5                         @ ../Core/Src/usart.c:639:5
	bl	HAL_GPIO_DeInit
	.loc	6 642 20                        @ ../Core/Src/usart.c:642:20
	ldr	r0, [sp, #4]
	.loc	6 642 32 is_stmt 0              @ ../Core/Src/usart.c:642:32
	ldr	r0, [r0, #56]
	.loc	6 642 5                         @ ../Core/Src/usart.c:642:5
	bl	HAL_DMA_DeInit
	.loc	6 643 20 is_stmt 1              @ ../Core/Src/usart.c:643:20
	ldr	r0, [sp, #4]
	.loc	6 643 32 is_stmt 0              @ ../Core/Src/usart.c:643:32
	ldr	r0, [r0, #52]
	.loc	6 643 5                         @ ../Core/Src/usart.c:643:5
	bl	HAL_DMA_DeInit
	movs	r0, #53
	.loc	6 646 5 is_stmt 1               @ ../Core/Src/usart.c:646:5
	bl	HAL_NVIC_DisableIRQ
	.loc	6 650 3                         @ ../Core/Src/usart.c:650:3
	b	.LBB7_16
.Ltmp155:
.LBB7_4:
	.loc	6 651 11                        @ ../Core/Src/usart.c:651:11
	ldr	r0, [sp, #4]
	.loc	6 651 23 is_stmt 0              @ ../Core/Src/usart.c:651:23
	ldr	r0, [r0]
	movw	r1, #4096
	movt	r1, #16385
.Ltmp156:
	.loc	6 651 11                        @ ../Core/Src/usart.c:651:11
	cmp	r0, r1
	bne	.LBB7_6
	b	.LBB7_5
.LBB7_5:
	.loc	6 0 11                          @ ../Core/Src/usart.c:0:11
	movw	r1, #14404
	movt	r1, #16386
.Ltmp157:
	.loc	6 657 5 is_stmt 1               @ ../Core/Src/usart.c:657:5
	ldr	r0, [r1]
	bic	r0, r0, #16
	str	r0, [r1]
	movs	r0, #0
	movt	r0, #16386
	mov.w	r1, #1536
	.loc	6 663 5                         @ ../Core/Src/usart.c:663:5
	bl	HAL_GPIO_DeInit
	.loc	6 666 20                        @ ../Core/Src/usart.c:666:20
	ldr	r0, [sp, #4]
	.loc	6 666 32 is_stmt 0              @ ../Core/Src/usart.c:666:32
	ldr	r0, [r0, #56]
	.loc	6 666 5                         @ ../Core/Src/usart.c:666:5
	bl	HAL_DMA_DeInit
	.loc	6 667 20 is_stmt 1              @ ../Core/Src/usart.c:667:20
	ldr	r0, [sp, #4]
	.loc	6 667 32 is_stmt 0              @ ../Core/Src/usart.c:667:32
	ldr	r0, [r0, #52]
	.loc	6 667 5                         @ ../Core/Src/usart.c:667:5
	bl	HAL_DMA_DeInit
	movs	r0, #37
	.loc	6 670 5 is_stmt 1               @ ../Core/Src/usart.c:670:5
	bl	HAL_NVIC_DisableIRQ
	.loc	6 674 3                         @ ../Core/Src/usart.c:674:3
	b	.LBB7_15
.Ltmp158:
.LBB7_6:
	.loc	6 675 11                        @ ../Core/Src/usart.c:675:11
	ldr	r0, [sp, #4]
	.loc	6 675 23 is_stmt 0              @ ../Core/Src/usart.c:675:23
	ldr	r0, [r0]
	movw	r1, #17408
	movt	r1, #16384
.Ltmp159:
	.loc	6 675 11                        @ ../Core/Src/usart.c:675:11
	cmp	r0, r1
	bne	.LBB7_8
	b	.LBB7_7
.LBB7_7:
	.loc	6 0 11                          @ ../Core/Src/usart.c:0:11
	movw	r1, #14400
	movt	r1, #16386
.Ltmp160:
	.loc	6 681 5 is_stmt 1               @ ../Core/Src/usart.c:681:5
	ldr	r0, [r1]
	bic	r0, r0, #131072
	str	r0, [r1]
	movs	r0, #0
	movt	r0, #16386
	movs	r1, #12
	.loc	6 687 5                         @ ../Core/Src/usart.c:687:5
	bl	HAL_GPIO_DeInit
	.loc	6 690 20                        @ ../Core/Src/usart.c:690:20
	ldr	r0, [sp, #4]
	.loc	6 690 32 is_stmt 0              @ ../Core/Src/usart.c:690:32
	ldr	r0, [r0, #56]
	.loc	6 690 5                         @ ../Core/Src/usart.c:690:5
	bl	HAL_DMA_DeInit
	movs	r0, #38
	.loc	6 693 5 is_stmt 1               @ ../Core/Src/usart.c:693:5
	bl	HAL_NVIC_DisableIRQ
	.loc	6 697 3                         @ ../Core/Src/usart.c:697:3
	b	.LBB7_14
.Ltmp161:
.LBB7_8:
	.loc	6 698 11                        @ ../Core/Src/usart.c:698:11
	ldr	r0, [sp, #4]
	.loc	6 698 23 is_stmt 0              @ ../Core/Src/usart.c:698:23
	ldr	r0, [r0]
	movw	r1, #18432
	movt	r1, #16384
.Ltmp162:
	.loc	6 698 11                        @ ../Core/Src/usart.c:698:11
	cmp	r0, r1
	bne	.LBB7_10
	b	.LBB7_9
.LBB7_9:
	.loc	6 0 11                          @ ../Core/Src/usart.c:0:11
	movw	r1, #14400
	movt	r1, #16386
.Ltmp163:
	.loc	6 704 5 is_stmt 1               @ ../Core/Src/usart.c:704:5
	ldr	r0, [r1]
	bic	r0, r0, #262144
	str	r0, [r1]
	movw	r0, #3072
	movt	r0, #16386
	mov.w	r1, #768
	.loc	6 710 5                         @ ../Core/Src/usart.c:710:5
	bl	HAL_GPIO_DeInit
	.loc	6 713 20                        @ ../Core/Src/usart.c:713:20
	ldr	r0, [sp, #4]
	.loc	6 713 32 is_stmt 0              @ ../Core/Src/usart.c:713:32
	ldr	r0, [r0, #56]
	.loc	6 713 5                         @ ../Core/Src/usart.c:713:5
	bl	HAL_DMA_DeInit
	.loc	6 714 20 is_stmt 1              @ ../Core/Src/usart.c:714:20
	ldr	r0, [sp, #4]
	.loc	6 714 32 is_stmt 0              @ ../Core/Src/usart.c:714:32
	ldr	r0, [r0, #52]
	.loc	6 714 5                         @ ../Core/Src/usart.c:714:5
	bl	HAL_DMA_DeInit
	movs	r0, #39
	.loc	6 717 5 is_stmt 1               @ ../Core/Src/usart.c:717:5
	bl	HAL_NVIC_DisableIRQ
	.loc	6 721 3                         @ ../Core/Src/usart.c:721:3
	b	.LBB7_13
.Ltmp164:
.LBB7_10:
	.loc	6 722 11                        @ ../Core/Src/usart.c:722:11
	ldr	r0, [sp, #4]
	.loc	6 722 23 is_stmt 0              @ ../Core/Src/usart.c:722:23
	ldr	r0, [r0]
	movw	r1, #5120
	movt	r1, #16385
.Ltmp165:
	.loc	6 722 11                        @ ../Core/Src/usart.c:722:11
	cmp	r0, r1
	bne	.LBB7_12
	b	.LBB7_11
.LBB7_11:
	.loc	6 0 11                          @ ../Core/Src/usart.c:0:11
	movw	r1, #14404
	movt	r1, #16386
.Ltmp166:
	.loc	6 728 5 is_stmt 1               @ ../Core/Src/usart.c:728:5
	ldr	r0, [r1]
	bic	r0, r0, #32
	str	r0, [r1]
	movw	r0, #2048
	movt	r0, #16386
	movs	r1, #192
	.loc	6 734 5                         @ ../Core/Src/usart.c:734:5
	bl	HAL_GPIO_DeInit
	.loc	6 737 20                        @ ../Core/Src/usart.c:737:20
	ldr	r0, [sp, #4]
	.loc	6 737 32 is_stmt 0              @ ../Core/Src/usart.c:737:32
	ldr	r0, [r0, #56]
	.loc	6 737 5                         @ ../Core/Src/usart.c:737:5
	bl	HAL_DMA_DeInit
	.loc	6 738 20 is_stmt 1              @ ../Core/Src/usart.c:738:20
	ldr	r0, [sp, #4]
	.loc	6 738 32 is_stmt 0              @ ../Core/Src/usart.c:738:32
	ldr	r0, [r0, #52]
	.loc	6 738 5                         @ ../Core/Src/usart.c:738:5
	bl	HAL_DMA_DeInit
	movs	r0, #71
	.loc	6 741 5 is_stmt 1               @ ../Core/Src/usart.c:741:5
	bl	HAL_NVIC_DisableIRQ
	.loc	6 745 3                         @ ../Core/Src/usart.c:745:3
	b	.LBB7_12
.Ltmp167:
.LBB7_12:
	.loc	6 0 3 is_stmt 0                 @ ../Core/Src/usart.c:0:3
	b	.LBB7_13
.LBB7_13:
	b	.LBB7_14
.LBB7_14:
	b	.LBB7_15
.LBB7_15:
	b	.LBB7_16
.LBB7_16:
	b	.LBB7_17
.LBB7_17:
	.loc	6 746 1 is_stmt 1               @ ../Core/Src/usart.c:746:1
	add	sp, #8
	pop	{r7, pc}
.Ltmp168:
.Lfunc_end7:
	.size	HAL_UART_MspDeInit, .Lfunc_end7-HAL_UART_MspDeInit
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.hidden	huart4                          @ @huart4
	.type	huart4,%object
	.section	.bss.huart4,"aw",%nobits
	.globl	huart4
	.p2align	2, 0x0
huart4:
	.zero	68
	.size	huart4, 68

	.hidden	huart5                          @ @huart5
	.type	huart5,%object
	.section	.bss.huart5,"aw",%nobits
	.globl	huart5
	.p2align	2, 0x0
huart5:
	.zero	68
	.size	huart5, 68

	.hidden	huart1                          @ @huart1
	.type	huart1,%object
	.section	.bss.huart1,"aw",%nobits
	.globl	huart1
	.p2align	2, 0x0
huart1:
	.zero	68
	.size	huart1, 68

	.hidden	huart2                          @ @huart2
	.type	huart2,%object
	.section	.bss.huart2,"aw",%nobits
	.globl	huart2
	.p2align	2, 0x0
huart2:
	.zero	68
	.size	huart2, 68

	.hidden	huart3                          @ @huart3
	.type	huart3,%object
	.section	.bss.huart3,"aw",%nobits
	.globl	huart3
	.p2align	2, 0x0
huart3:
	.zero	68
	.size	huart3, 68

	.hidden	huart6                          @ @huart6
	.type	huart6,%object
	.section	.bss.huart6,"aw",%nobits
	.globl	huart6
	.p2align	2, 0x0
huart6:
	.zero	68
	.size	huart6, 68

	.hidden	hdma_uart4_rx                   @ @hdma_uart4_rx
	.type	hdma_uart4_rx,%object
	.section	.bss.hdma_uart4_rx,"aw",%nobits
	.globl	hdma_uart4_rx
	.p2align	2, 0x0
hdma_uart4_rx:
	.zero	96
	.size	hdma_uart4_rx, 96

	.hidden	hdma_uart4_tx                   @ @hdma_uart4_tx
	.type	hdma_uart4_tx,%object
	.section	.bss.hdma_uart4_tx,"aw",%nobits
	.globl	hdma_uart4_tx
	.p2align	2, 0x0
hdma_uart4_tx:
	.zero	96
	.size	hdma_uart4_tx, 96

	.hidden	hdma_uart5_rx                   @ @hdma_uart5_rx
	.type	hdma_uart5_rx,%object
	.section	.bss.hdma_uart5_rx,"aw",%nobits
	.globl	hdma_uart5_rx
	.p2align	2, 0x0
hdma_uart5_rx:
	.zero	96
	.size	hdma_uart5_rx, 96

	.hidden	hdma_uart5_tx                   @ @hdma_uart5_tx
	.type	hdma_uart5_tx,%object
	.section	.bss.hdma_uart5_tx,"aw",%nobits
	.globl	hdma_uart5_tx
	.p2align	2, 0x0
hdma_uart5_tx:
	.zero	96
	.size	hdma_uart5_tx, 96

	.hidden	hdma_usart1_rx                  @ @hdma_usart1_rx
	.type	hdma_usart1_rx,%object
	.section	.bss.hdma_usart1_rx,"aw",%nobits
	.globl	hdma_usart1_rx
	.p2align	2, 0x0
hdma_usart1_rx:
	.zero	96
	.size	hdma_usart1_rx, 96

	.hidden	hdma_usart1_tx                  @ @hdma_usart1_tx
	.type	hdma_usart1_tx,%object
	.section	.bss.hdma_usart1_tx,"aw",%nobits
	.globl	hdma_usart1_tx
	.p2align	2, 0x0
hdma_usart1_tx:
	.zero	96
	.size	hdma_usart1_tx, 96

	.hidden	hdma_usart2_rx                  @ @hdma_usart2_rx
	.type	hdma_usart2_rx,%object
	.section	.bss.hdma_usart2_rx,"aw",%nobits
	.globl	hdma_usart2_rx
	.p2align	2, 0x0
hdma_usart2_rx:
	.zero	96
	.size	hdma_usart2_rx, 96

	.hidden	hdma_usart3_rx                  @ @hdma_usart3_rx
	.type	hdma_usart3_rx,%object
	.section	.bss.hdma_usart3_rx,"aw",%nobits
	.globl	hdma_usart3_rx
	.p2align	2, 0x0
hdma_usart3_rx:
	.zero	96
	.size	hdma_usart3_rx, 96

	.hidden	hdma_usart3_tx                  @ @hdma_usart3_tx
	.type	hdma_usart3_tx,%object
	.section	.bss.hdma_usart3_tx,"aw",%nobits
	.globl	hdma_usart3_tx
	.p2align	2, 0x0
hdma_usart3_tx:
	.zero	96
	.size	hdma_usart3_tx, 96

	.hidden	hdma_usart6_rx                  @ @hdma_usart6_rx
	.type	hdma_usart6_rx,%object
	.section	.bss.hdma_usart6_rx,"aw",%nobits
	.globl	hdma_usart6_rx
	.p2align	2, 0x0
hdma_usart6_rx:
	.zero	96
	.size	hdma_usart6_rx, 96

	.hidden	hdma_usart6_tx                  @ @hdma_usart6_tx
	.type	hdma_usart6_tx,%object
	.section	.bss.hdma_usart6_tx,"aw",%nobits
	.globl	hdma_usart6_tx
	.p2align	2, 0x0
hdma_usart6_tx:
	.zero	96
	.size	hdma_usart6_tx, 96

	.file	7 "E:\\RP\\CppTemplate\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc\\stm32f4xx_hal_gpio.h"
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
	.byte	38                              @ DW_TAG_const_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	14                              @ Abbreviation Code
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
	.byte	15                              @ Abbreviation Code
	.byte	40                              @ DW_TAG_enumerator
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	28                              @ DW_AT_const_value
	.byte	15                              @ DW_FORM_udata
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	16                              @ Abbreviation Code
	.byte	15                              @ DW_TAG_pointer_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	17                              @ Abbreviation Code
	.byte	21                              @ DW_TAG_subroutine_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	18                              @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	19                              @ Abbreviation Code
	.byte	40                              @ DW_TAG_enumerator
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	28                              @ DW_AT_const_value
	.byte	13                              @ DW_FORM_sdata
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	20                              @ Abbreviation Code
	.byte	1                               @ DW_TAG_array_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	21                              @ Abbreviation Code
	.byte	33                              @ DW_TAG_subrange_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	55                              @ DW_AT_count
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	22                              @ Abbreviation Code
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
	.byte	23                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	0                               @ DW_CHILDREN_no
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
	.byte	24                              @ Abbreviation Code
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
	.byte	25                              @ Abbreviation Code
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
	.byte	26                              @ Abbreviation Code
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
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	29                              @ Abbreviation Code
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
	.byte	5                               @ DW_FORM_data2
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	30                              @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
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
	.byte	1                               @ Abbrev [1] 0xb:0xcb3 DW_TAG_compile_unit
	.long	.Linfo_string0                  @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.long	.Linfo_string1                  @ DW_AT_name
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.long	.Linfo_string2                  @ DW_AT_comp_dir
	.long	0                               @ DW_AT_low_pc
	.long	.Ldebug_ranges0                 @ DW_AT_ranges
	.byte	2                               @ Abbrev [2] 0x26:0x11 DW_TAG_variable
	.long	.Linfo_string3                  @ DW_AT_name
	.long	55                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ DW_AT_decl_file
	.byte	27                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	huart4
	.byte	3                               @ Abbrev [3] 0x37:0xb DW_TAG_typedef
	.long	66                              @ DW_AT_type
	.long	.Linfo_string93                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	200                             @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x42:0xbd DW_TAG_structure_type
	.long	.Linfo_string92                 @ DW_AT_name
	.byte	68                              @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.byte	149                             @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0x4a:0xc DW_TAG_member
	.long	.Linfo_string4                  @ DW_AT_name
	.long	255                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	151                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x56:0xc DW_TAG_member
	.long	.Linfo_string15                 @ DW_AT_name
	.long	392                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	153                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x62:0xc DW_TAG_member
	.long	.Linfo_string24                 @ DW_AT_name
	.long	492                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	155                             @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x6e:0xc DW_TAG_member
	.long	.Linfo_string27                 @ DW_AT_name
	.long	520                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	157                             @ DW_AT_decl_line
	.byte	36                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x7a:0xc DW_TAG_member
	.long	.Linfo_string30                 @ DW_AT_name
	.long	538                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	159                             @ DW_AT_decl_line
	.byte	38                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x86:0xc DW_TAG_member
	.long	.Linfo_string31                 @ DW_AT_name
	.long	543                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	161                             @ DW_AT_decl_line
	.byte	40                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x92:0xc DW_TAG_member
	.long	.Linfo_string32                 @ DW_AT_name
	.long	520                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	163                             @ DW_AT_decl_line
	.byte	44                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x9e:0xc DW_TAG_member
	.long	.Linfo_string33                 @ DW_AT_name
	.long	538                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	165                             @ DW_AT_decl_line
	.byte	46                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xaa:0xc DW_TAG_member
	.long	.Linfo_string34                 @ DW_AT_name
	.long	548                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	167                             @ DW_AT_decl_line
	.byte	48                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xb6:0xc DW_TAG_member
	.long	.Linfo_string36                 @ DW_AT_name
	.long	564                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	169                             @ DW_AT_decl_line
	.byte	52                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xc2:0xc DW_TAG_member
	.long	.Linfo_string80                 @ DW_AT_name
	.long	564                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	171                             @ DW_AT_decl_line
	.byte	56                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xce:0xc DW_TAG_member
	.long	.Linfo_string56                 @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	173                             @ DW_AT_decl_line
	.byte	60                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xda:0xc DW_TAG_member
	.long	.Linfo_string81                 @ DW_AT_name
	.long	1129                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	175                             @ DW_AT_decl_line
	.byte	61                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xe6:0xc DW_TAG_member
	.long	.Linfo_string91                 @ DW_AT_name
	.long	1129                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	179                             @ DW_AT_decl_line
	.byte	62                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xf2:0xc DW_TAG_member
	.long	.Linfo_string75                 @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	182                             @ DW_AT_decl_line
	.byte	64                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0xff:0x5 DW_TAG_pointer_type
	.long	260                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x104:0xc DW_TAG_typedef
	.long	272                             @ DW_AT_type
	.long	.Linfo_string14                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	766                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x110:0x61 DW_TAG_structure_type
	.byte	28                              @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.short	757                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x115:0xd DW_TAG_member
	.long	.Linfo_string5                  @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	759                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x122:0xd DW_TAG_member
	.long	.Linfo_string8                  @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	760                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x12f:0xd DW_TAG_member
	.long	.Linfo_string9                  @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	761                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x13c:0xd DW_TAG_member
	.long	.Linfo_string10                 @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	762                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x149:0xd DW_TAG_member
	.long	.Linfo_string11                 @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	763                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x156:0xd DW_TAG_member
	.long	.Linfo_string12                 @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	764                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x163:0xd DW_TAG_member
	.long	.Linfo_string13                 @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	765                             @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	10                              @ Abbrev [10] 0x171:0x5 DW_TAG_volatile_type
	.long	374                             @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x176:0xb DW_TAG_typedef
	.long	385                             @ DW_AT_type
	.long	.Linfo_string7                  @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	64                              @ DW_AT_decl_line
	.byte	11                              @ Abbrev [11] 0x181:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	3                               @ Abbrev [3] 0x188:0xb DW_TAG_typedef
	.long	403                             @ DW_AT_type
	.long	.Linfo_string23                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	75                              @ DW_AT_decl_line
	.byte	12                              @ Abbrev [12] 0x193:0x59 DW_TAG_structure_type
	.byte	28                              @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0x197:0xc DW_TAG_member
	.long	.Linfo_string16                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	48                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x1a3:0xc DW_TAG_member
	.long	.Linfo_string17                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	54                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x1af:0xc DW_TAG_member
	.long	.Linfo_string18                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	57                              @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x1bb:0xc DW_TAG_member
	.long	.Linfo_string19                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	60                              @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x1c7:0xc DW_TAG_member
	.long	.Linfo_string20                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	67                              @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x1d3:0xc DW_TAG_member
	.long	.Linfo_string21                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	70                              @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x1df:0xc DW_TAG_member
	.long	.Linfo_string22                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	73                              @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0x1ec:0x5 DW_TAG_pointer_type
	.long	497                             @ DW_AT_type
	.byte	13                              @ Abbrev [13] 0x1f1:0x5 DW_TAG_const_type
	.long	502                             @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x1f6:0xb DW_TAG_typedef
	.long	513                             @ DW_AT_type
	.long	.Linfo_string26                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	62                              @ DW_AT_decl_line
	.byte	11                              @ Abbrev [11] 0x201:0x7 DW_TAG_base_type
	.long	.Linfo_string25                 @ DW_AT_name
	.byte	8                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	3                               @ Abbrev [3] 0x208:0xb DW_TAG_typedef
	.long	531                             @ DW_AT_type
	.long	.Linfo_string29                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	11                              @ Abbrev [11] 0x213:0x7 DW_TAG_base_type
	.long	.Linfo_string28                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	10                              @ Abbrev [10] 0x21a:0x5 DW_TAG_volatile_type
	.long	520                             @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x21f:0x5 DW_TAG_pointer_type
	.long	502                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x224:0x5 DW_TAG_volatile_type
	.long	553                             @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x229:0xb DW_TAG_typedef
	.long	374                             @ DW_AT_type
	.long	.Linfo_string35                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	144                             @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x234:0x5 DW_TAG_pointer_type
	.long	569                             @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x239:0xb DW_TAG_typedef
	.long	580                             @ DW_AT_type
	.long	.Linfo_string79                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	168                             @ DW_AT_decl_line
	.byte	4                               @ Abbrev [4] 0x244:0xb1 DW_TAG_structure_type
	.long	.Linfo_string78                 @ DW_AT_name
	.byte	96                              @ DW_AT_byte_size
	.byte	4                               @ DW_AT_decl_file
	.byte	138                             @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0x24c:0xc DW_TAG_member
	.long	.Linfo_string4                  @ DW_AT_name
	.long	757                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	140                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x258:0xc DW_TAG_member
	.long	.Linfo_string15                 @ DW_AT_name
	.long	858                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	142                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x264:0xc DW_TAG_member
	.long	.Linfo_string56                 @ DW_AT_name
	.long	1018                            @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	144                             @ DW_AT_decl_line
	.byte	52                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x270:0xc DW_TAG_member
	.long	.Linfo_string60                 @ DW_AT_name
	.long	1050                            @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	146                             @ DW_AT_decl_line
	.byte	53                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x27c:0xc DW_TAG_member
	.long	.Linfo_string68                 @ DW_AT_name
	.long	1111                            @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	148                             @ DW_AT_decl_line
	.byte	56                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x288:0xc DW_TAG_member
	.long	.Linfo_string69                 @ DW_AT_name
	.long	1112                            @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	150                             @ DW_AT_decl_line
	.byte	60                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x294:0xc DW_TAG_member
	.long	.Linfo_string70                 @ DW_AT_name
	.long	1112                            @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	152                             @ DW_AT_decl_line
	.byte	64                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x2a0:0xc DW_TAG_member
	.long	.Linfo_string71                 @ DW_AT_name
	.long	1112                            @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	154                             @ DW_AT_decl_line
	.byte	68                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x2ac:0xc DW_TAG_member
	.long	.Linfo_string72                 @ DW_AT_name
	.long	1112                            @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	156                             @ DW_AT_decl_line
	.byte	72                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x2b8:0xc DW_TAG_member
	.long	.Linfo_string73                 @ DW_AT_name
	.long	1112                            @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	158                             @ DW_AT_decl_line
	.byte	76                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x2c4:0xc DW_TAG_member
	.long	.Linfo_string74                 @ DW_AT_name
	.long	1112                            @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	160                             @ DW_AT_decl_line
	.byte	80                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x2d0:0xc DW_TAG_member
	.long	.Linfo_string75                 @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	162                             @ DW_AT_decl_line
	.byte	84                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x2dc:0xc DW_TAG_member
	.long	.Linfo_string76                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	164                             @ DW_AT_decl_line
	.byte	88                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x2e8:0xc DW_TAG_member
	.long	.Linfo_string77                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	166                             @ DW_AT_decl_line
	.byte	92                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0x2f5:0x5 DW_TAG_pointer_type
	.long	762                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x2fa:0xc DW_TAG_typedef
	.long	774                             @ DW_AT_type
	.long	.Linfo_string43                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	353                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x306:0x54 DW_TAG_structure_type
	.byte	24                              @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.short	345                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x30b:0xd DW_TAG_member
	.long	.Linfo_string37                 @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	347                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x318:0xd DW_TAG_member
	.long	.Linfo_string38                 @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	348                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x325:0xd DW_TAG_member
	.long	.Linfo_string39                 @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	349                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x332:0xd DW_TAG_member
	.long	.Linfo_string40                 @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	350                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x33f:0xd DW_TAG_member
	.long	.Linfo_string41                 @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	351                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x34c:0xd DW_TAG_member
	.long	.Linfo_string42                 @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	352                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	3                               @ Abbrev [3] 0x35a:0xb DW_TAG_typedef
	.long	869                             @ DW_AT_type
	.long	.Linfo_string55                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	96                              @ DW_AT_decl_line
	.byte	12                              @ Abbrev [12] 0x365:0x95 DW_TAG_structure_type
	.byte	48                              @ DW_AT_byte_size
	.byte	4                               @ DW_AT_decl_file
	.byte	48                              @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0x369:0xc DW_TAG_member
	.long	.Linfo_string44                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	50                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x375:0xc DW_TAG_member
	.long	.Linfo_string45                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	53                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x381:0xc DW_TAG_member
	.long	.Linfo_string46                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	57                              @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x38d:0xc DW_TAG_member
	.long	.Linfo_string47                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	60                              @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x399:0xc DW_TAG_member
	.long	.Linfo_string48                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x3a5:0xc DW_TAG_member
	.long	.Linfo_string49                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	66                              @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x3b1:0xc DW_TAG_member
	.long	.Linfo_string20                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	69                              @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x3bd:0xc DW_TAG_member
	.long	.Linfo_string50                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	74                              @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x3c9:0xc DW_TAG_member
	.long	.Linfo_string51                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	77                              @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x3d5:0xc DW_TAG_member
	.long	.Linfo_string52                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	82                              @ DW_AT_decl_line
	.byte	36                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x3e1:0xc DW_TAG_member
	.long	.Linfo_string53                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	85                              @ DW_AT_decl_line
	.byte	40                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0x3ed:0xc DW_TAG_member
	.long	.Linfo_string54                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.byte	91                              @ DW_AT_decl_line
	.byte	44                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	3                               @ Abbrev [3] 0x3fa:0xb DW_TAG_typedef
	.long	1029                            @ DW_AT_type
	.long	.Linfo_string59                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.byte	53                              @ DW_AT_decl_line
	.byte	14                              @ Abbrev [14] 0x405:0x15 DW_TAG_enumeration_type
	.long	513                             @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	5                               @ DW_AT_decl_file
	.byte	49                              @ DW_AT_decl_line
	.byte	15                              @ Abbrev [15] 0x40d:0x6 DW_TAG_enumerator
	.long	.Linfo_string57                 @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	15                              @ Abbrev [15] 0x413:0x6 DW_TAG_enumerator
	.long	.Linfo_string58                 @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	10                              @ Abbrev [10] 0x41a:0x5 DW_TAG_volatile_type
	.long	1055                            @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x41f:0xb DW_TAG_typedef
	.long	1066                            @ DW_AT_type
	.long	.Linfo_string67                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	110                             @ DW_AT_decl_line
	.byte	14                              @ Abbrev [14] 0x42a:0x2d DW_TAG_enumeration_type
	.long	513                             @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	4                               @ DW_AT_decl_file
	.byte	102                             @ DW_AT_decl_line
	.byte	15                              @ Abbrev [15] 0x432:0x6 DW_TAG_enumerator
	.long	.Linfo_string61                 @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	15                              @ Abbrev [15] 0x438:0x6 DW_TAG_enumerator
	.long	.Linfo_string62                 @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	15                              @ Abbrev [15] 0x43e:0x6 DW_TAG_enumerator
	.long	.Linfo_string63                 @ DW_AT_name
	.byte	2                               @ DW_AT_const_value
	.byte	15                              @ Abbrev [15] 0x444:0x6 DW_TAG_enumerator
	.long	.Linfo_string64                 @ DW_AT_name
	.byte	3                               @ DW_AT_const_value
	.byte	15                              @ Abbrev [15] 0x44a:0x6 DW_TAG_enumerator
	.long	.Linfo_string65                 @ DW_AT_name
	.byte	4                               @ DW_AT_const_value
	.byte	15                              @ Abbrev [15] 0x450:0x6 DW_TAG_enumerator
	.long	.Linfo_string66                 @ DW_AT_name
	.byte	5                               @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	16                              @ Abbrev [16] 0x457:0x1 DW_TAG_pointer_type
	.byte	6                               @ Abbrev [6] 0x458:0x5 DW_TAG_pointer_type
	.long	1117                            @ DW_AT_type
	.byte	17                              @ Abbrev [17] 0x45d:0x7 DW_TAG_subroutine_type
                                        @ DW_AT_prototyped
	.byte	18                              @ Abbrev [18] 0x45e:0x5 DW_TAG_formal_parameter
	.long	1124                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0x464:0x5 DW_TAG_pointer_type
	.long	580                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x469:0x5 DW_TAG_volatile_type
	.long	1134                            @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x46e:0xb DW_TAG_typedef
	.long	1145                            @ DW_AT_type
	.long	.Linfo_string90                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	135                             @ DW_AT_decl_line
	.byte	14                              @ Abbrev [14] 0x479:0x3b DW_TAG_enumeration_type
	.long	513                             @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.byte	116                             @ DW_AT_decl_line
	.byte	15                              @ Abbrev [15] 0x481:0x6 DW_TAG_enumerator
	.long	.Linfo_string82                 @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	15                              @ Abbrev [15] 0x487:0x6 DW_TAG_enumerator
	.long	.Linfo_string83                 @ DW_AT_name
	.byte	32                              @ DW_AT_const_value
	.byte	15                              @ Abbrev [15] 0x48d:0x6 DW_TAG_enumerator
	.long	.Linfo_string84                 @ DW_AT_name
	.byte	36                              @ DW_AT_const_value
	.byte	15                              @ Abbrev [15] 0x493:0x6 DW_TAG_enumerator
	.long	.Linfo_string85                 @ DW_AT_name
	.byte	33                              @ DW_AT_const_value
	.byte	15                              @ Abbrev [15] 0x499:0x6 DW_TAG_enumerator
	.long	.Linfo_string86                 @ DW_AT_name
	.byte	34                              @ DW_AT_const_value
	.byte	15                              @ Abbrev [15] 0x49f:0x6 DW_TAG_enumerator
	.long	.Linfo_string87                 @ DW_AT_name
	.byte	35                              @ DW_AT_const_value
	.byte	15                              @ Abbrev [15] 0x4a5:0x7 DW_TAG_enumerator
	.long	.Linfo_string88                 @ DW_AT_name
	.ascii	"\240\001"                      @ DW_AT_const_value
	.byte	15                              @ Abbrev [15] 0x4ac:0x7 DW_TAG_enumerator
	.long	.Linfo_string89                 @ DW_AT_name
	.ascii	"\340\001"                      @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	2                               @ Abbrev [2] 0x4b4:0x11 DW_TAG_variable
	.long	.Linfo_string94                 @ DW_AT_name
	.long	55                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ DW_AT_decl_file
	.byte	28                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	huart5
	.byte	2                               @ Abbrev [2] 0x4c5:0x11 DW_TAG_variable
	.long	.Linfo_string95                 @ DW_AT_name
	.long	55                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ DW_AT_decl_file
	.byte	29                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	huart1
	.byte	2                               @ Abbrev [2] 0x4d6:0x11 DW_TAG_variable
	.long	.Linfo_string96                 @ DW_AT_name
	.long	55                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ DW_AT_decl_file
	.byte	30                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	huart2
	.byte	2                               @ Abbrev [2] 0x4e7:0x11 DW_TAG_variable
	.long	.Linfo_string97                 @ DW_AT_name
	.long	55                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ DW_AT_decl_file
	.byte	31                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	huart3
	.byte	2                               @ Abbrev [2] 0x4f8:0x11 DW_TAG_variable
	.long	.Linfo_string98                 @ DW_AT_name
	.long	55                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ DW_AT_decl_file
	.byte	32                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	huart6
	.byte	2                               @ Abbrev [2] 0x509:0x11 DW_TAG_variable
	.long	.Linfo_string99                 @ DW_AT_name
	.long	569                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ DW_AT_decl_file
	.byte	33                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	hdma_uart4_rx
	.byte	2                               @ Abbrev [2] 0x51a:0x11 DW_TAG_variable
	.long	.Linfo_string100                @ DW_AT_name
	.long	569                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ DW_AT_decl_file
	.byte	34                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	hdma_uart4_tx
	.byte	2                               @ Abbrev [2] 0x52b:0x11 DW_TAG_variable
	.long	.Linfo_string101                @ DW_AT_name
	.long	569                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ DW_AT_decl_file
	.byte	35                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	hdma_uart5_rx
	.byte	2                               @ Abbrev [2] 0x53c:0x11 DW_TAG_variable
	.long	.Linfo_string102                @ DW_AT_name
	.long	569                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ DW_AT_decl_file
	.byte	36                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	hdma_uart5_tx
	.byte	2                               @ Abbrev [2] 0x54d:0x11 DW_TAG_variable
	.long	.Linfo_string103                @ DW_AT_name
	.long	569                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ DW_AT_decl_file
	.byte	37                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	hdma_usart1_rx
	.byte	2                               @ Abbrev [2] 0x55e:0x11 DW_TAG_variable
	.long	.Linfo_string104                @ DW_AT_name
	.long	569                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ DW_AT_decl_file
	.byte	38                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	hdma_usart1_tx
	.byte	2                               @ Abbrev [2] 0x56f:0x11 DW_TAG_variable
	.long	.Linfo_string105                @ DW_AT_name
	.long	569                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ DW_AT_decl_file
	.byte	39                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	hdma_usart2_rx
	.byte	2                               @ Abbrev [2] 0x580:0x11 DW_TAG_variable
	.long	.Linfo_string106                @ DW_AT_name
	.long	569                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ DW_AT_decl_file
	.byte	40                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	hdma_usart3_rx
	.byte	2                               @ Abbrev [2] 0x591:0x11 DW_TAG_variable
	.long	.Linfo_string107                @ DW_AT_name
	.long	569                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ DW_AT_decl_file
	.byte	41                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	hdma_usart3_tx
	.byte	2                               @ Abbrev [2] 0x5a2:0x11 DW_TAG_variable
	.long	.Linfo_string108                @ DW_AT_name
	.long	569                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ DW_AT_decl_file
	.byte	42                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	hdma_usart6_rx
	.byte	2                               @ Abbrev [2] 0x5b3:0x11 DW_TAG_variable
	.long	.Linfo_string109                @ DW_AT_name
	.long	569                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ DW_AT_decl_file
	.byte	43                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	hdma_usart6_tx
	.byte	14                              @ Abbrev [14] 0x5c4:0x21 DW_TAG_enumeration_type
	.long	513                             @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	5                               @ DW_AT_decl_file
	.byte	38                              @ DW_AT_decl_line
	.byte	15                              @ Abbrev [15] 0x5cc:0x6 DW_TAG_enumerator
	.long	.Linfo_string110                @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	15                              @ Abbrev [15] 0x5d2:0x6 DW_TAG_enumerator
	.long	.Linfo_string111                @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	15                              @ Abbrev [15] 0x5d8:0x6 DW_TAG_enumerator
	.long	.Linfo_string112                @ DW_AT_name
	.byte	2                               @ DW_AT_const_value
	.byte	15                              @ Abbrev [15] 0x5de:0x6 DW_TAG_enumerator
	.long	.Linfo_string113                @ DW_AT_name
	.byte	3                               @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	14                              @ Abbrev [14] 0x5e5:0x230 DW_TAG_enumeration_type
	.long	2069                            @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.byte	65                              @ DW_AT_decl_line
	.byte	19                              @ Abbrev [19] 0x5ed:0x6 DW_TAG_enumerator
	.long	.Linfo_string115                @ DW_AT_name
	.byte	114                             @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x5f3:0x6 DW_TAG_enumerator
	.long	.Linfo_string116                @ DW_AT_name
	.byte	116                             @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x5f9:0x6 DW_TAG_enumerator
	.long	.Linfo_string117                @ DW_AT_name
	.byte	117                             @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x5ff:0x6 DW_TAG_enumerator
	.long	.Linfo_string118                @ DW_AT_name
	.byte	118                             @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x605:0x6 DW_TAG_enumerator
	.long	.Linfo_string119                @ DW_AT_name
	.byte	123                             @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x60b:0x6 DW_TAG_enumerator
	.long	.Linfo_string120                @ DW_AT_name
	.byte	124                             @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x611:0x6 DW_TAG_enumerator
	.long	.Linfo_string121                @ DW_AT_name
	.byte	126                             @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x617:0x6 DW_TAG_enumerator
	.long	.Linfo_string122                @ DW_AT_name
	.byte	127                             @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x61d:0x6 DW_TAG_enumerator
	.long	.Linfo_string123                @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x623:0x6 DW_TAG_enumerator
	.long	.Linfo_string124                @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x629:0x6 DW_TAG_enumerator
	.long	.Linfo_string125                @ DW_AT_name
	.byte	2                               @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x62f:0x6 DW_TAG_enumerator
	.long	.Linfo_string126                @ DW_AT_name
	.byte	3                               @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x635:0x6 DW_TAG_enumerator
	.long	.Linfo_string127                @ DW_AT_name
	.byte	4                               @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x63b:0x6 DW_TAG_enumerator
	.long	.Linfo_string128                @ DW_AT_name
	.byte	5                               @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x641:0x6 DW_TAG_enumerator
	.long	.Linfo_string129                @ DW_AT_name
	.byte	6                               @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x647:0x6 DW_TAG_enumerator
	.long	.Linfo_string130                @ DW_AT_name
	.byte	7                               @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x64d:0x6 DW_TAG_enumerator
	.long	.Linfo_string131                @ DW_AT_name
	.byte	8                               @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x653:0x6 DW_TAG_enumerator
	.long	.Linfo_string132                @ DW_AT_name
	.byte	9                               @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x659:0x6 DW_TAG_enumerator
	.long	.Linfo_string133                @ DW_AT_name
	.byte	10                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x65f:0x6 DW_TAG_enumerator
	.long	.Linfo_string134                @ DW_AT_name
	.byte	11                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x665:0x6 DW_TAG_enumerator
	.long	.Linfo_string135                @ DW_AT_name
	.byte	12                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x66b:0x6 DW_TAG_enumerator
	.long	.Linfo_string136                @ DW_AT_name
	.byte	13                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x671:0x6 DW_TAG_enumerator
	.long	.Linfo_string137                @ DW_AT_name
	.byte	14                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x677:0x6 DW_TAG_enumerator
	.long	.Linfo_string138                @ DW_AT_name
	.byte	15                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x67d:0x6 DW_TAG_enumerator
	.long	.Linfo_string139                @ DW_AT_name
	.byte	16                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x683:0x6 DW_TAG_enumerator
	.long	.Linfo_string140                @ DW_AT_name
	.byte	17                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x689:0x6 DW_TAG_enumerator
	.long	.Linfo_string141                @ DW_AT_name
	.byte	18                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x68f:0x6 DW_TAG_enumerator
	.long	.Linfo_string142                @ DW_AT_name
	.byte	19                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x695:0x6 DW_TAG_enumerator
	.long	.Linfo_string143                @ DW_AT_name
	.byte	20                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x69b:0x6 DW_TAG_enumerator
	.long	.Linfo_string144                @ DW_AT_name
	.byte	21                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x6a1:0x6 DW_TAG_enumerator
	.long	.Linfo_string145                @ DW_AT_name
	.byte	22                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x6a7:0x6 DW_TAG_enumerator
	.long	.Linfo_string146                @ DW_AT_name
	.byte	23                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x6ad:0x6 DW_TAG_enumerator
	.long	.Linfo_string147                @ DW_AT_name
	.byte	24                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x6b3:0x6 DW_TAG_enumerator
	.long	.Linfo_string148                @ DW_AT_name
	.byte	25                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x6b9:0x6 DW_TAG_enumerator
	.long	.Linfo_string149                @ DW_AT_name
	.byte	26                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x6bf:0x6 DW_TAG_enumerator
	.long	.Linfo_string150                @ DW_AT_name
	.byte	27                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x6c5:0x6 DW_TAG_enumerator
	.long	.Linfo_string151                @ DW_AT_name
	.byte	28                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x6cb:0x6 DW_TAG_enumerator
	.long	.Linfo_string152                @ DW_AT_name
	.byte	29                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x6d1:0x6 DW_TAG_enumerator
	.long	.Linfo_string153                @ DW_AT_name
	.byte	30                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x6d7:0x6 DW_TAG_enumerator
	.long	.Linfo_string154                @ DW_AT_name
	.byte	31                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x6dd:0x6 DW_TAG_enumerator
	.long	.Linfo_string155                @ DW_AT_name
	.byte	32                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x6e3:0x6 DW_TAG_enumerator
	.long	.Linfo_string156                @ DW_AT_name
	.byte	33                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x6e9:0x6 DW_TAG_enumerator
	.long	.Linfo_string157                @ DW_AT_name
	.byte	34                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x6ef:0x6 DW_TAG_enumerator
	.long	.Linfo_string158                @ DW_AT_name
	.byte	35                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x6f5:0x6 DW_TAG_enumerator
	.long	.Linfo_string159                @ DW_AT_name
	.byte	36                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x6fb:0x6 DW_TAG_enumerator
	.long	.Linfo_string160                @ DW_AT_name
	.byte	37                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x701:0x6 DW_TAG_enumerator
	.long	.Linfo_string161                @ DW_AT_name
	.byte	38                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x707:0x6 DW_TAG_enumerator
	.long	.Linfo_string162                @ DW_AT_name
	.byte	39                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x70d:0x6 DW_TAG_enumerator
	.long	.Linfo_string163                @ DW_AT_name
	.byte	40                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x713:0x6 DW_TAG_enumerator
	.long	.Linfo_string164                @ DW_AT_name
	.byte	41                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x719:0x6 DW_TAG_enumerator
	.long	.Linfo_string165                @ DW_AT_name
	.byte	42                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x71f:0x6 DW_TAG_enumerator
	.long	.Linfo_string166                @ DW_AT_name
	.byte	43                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x725:0x6 DW_TAG_enumerator
	.long	.Linfo_string167                @ DW_AT_name
	.byte	44                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x72b:0x6 DW_TAG_enumerator
	.long	.Linfo_string168                @ DW_AT_name
	.byte	45                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x731:0x6 DW_TAG_enumerator
	.long	.Linfo_string169                @ DW_AT_name
	.byte	46                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x737:0x6 DW_TAG_enumerator
	.long	.Linfo_string170                @ DW_AT_name
	.byte	47                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x73d:0x6 DW_TAG_enumerator
	.long	.Linfo_string171                @ DW_AT_name
	.byte	48                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x743:0x6 DW_TAG_enumerator
	.long	.Linfo_string172                @ DW_AT_name
	.byte	49                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x749:0x6 DW_TAG_enumerator
	.long	.Linfo_string173                @ DW_AT_name
	.byte	50                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x74f:0x6 DW_TAG_enumerator
	.long	.Linfo_string174                @ DW_AT_name
	.byte	51                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x755:0x6 DW_TAG_enumerator
	.long	.Linfo_string175                @ DW_AT_name
	.byte	52                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x75b:0x6 DW_TAG_enumerator
	.long	.Linfo_string176                @ DW_AT_name
	.byte	53                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x761:0x6 DW_TAG_enumerator
	.long	.Linfo_string177                @ DW_AT_name
	.byte	54                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x767:0x6 DW_TAG_enumerator
	.long	.Linfo_string178                @ DW_AT_name
	.byte	55                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x76d:0x6 DW_TAG_enumerator
	.long	.Linfo_string179                @ DW_AT_name
	.byte	56                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x773:0x6 DW_TAG_enumerator
	.long	.Linfo_string180                @ DW_AT_name
	.byte	57                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x779:0x6 DW_TAG_enumerator
	.long	.Linfo_string181                @ DW_AT_name
	.byte	58                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x77f:0x6 DW_TAG_enumerator
	.long	.Linfo_string182                @ DW_AT_name
	.byte	59                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x785:0x6 DW_TAG_enumerator
	.long	.Linfo_string183                @ DW_AT_name
	.byte	60                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x78b:0x6 DW_TAG_enumerator
	.long	.Linfo_string184                @ DW_AT_name
	.byte	61                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x791:0x6 DW_TAG_enumerator
	.long	.Linfo_string185                @ DW_AT_name
	.byte	62                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x797:0x6 DW_TAG_enumerator
	.long	.Linfo_string186                @ DW_AT_name
	.byte	63                              @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x79d:0x7 DW_TAG_enumerator
	.long	.Linfo_string187                @ DW_AT_name
	.asciz	"\300"                          @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x7a4:0x7 DW_TAG_enumerator
	.long	.Linfo_string188                @ DW_AT_name
	.asciz	"\301"                          @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x7ab:0x7 DW_TAG_enumerator
	.long	.Linfo_string189                @ DW_AT_name
	.asciz	"\302"                          @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x7b2:0x7 DW_TAG_enumerator
	.long	.Linfo_string190                @ DW_AT_name
	.asciz	"\303"                          @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x7b9:0x7 DW_TAG_enumerator
	.long	.Linfo_string191                @ DW_AT_name
	.asciz	"\304"                          @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x7c0:0x7 DW_TAG_enumerator
	.long	.Linfo_string192                @ DW_AT_name
	.asciz	"\305"                          @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x7c7:0x7 DW_TAG_enumerator
	.long	.Linfo_string193                @ DW_AT_name
	.asciz	"\306"                          @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x7ce:0x7 DW_TAG_enumerator
	.long	.Linfo_string194                @ DW_AT_name
	.asciz	"\307"                          @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x7d5:0x7 DW_TAG_enumerator
	.long	.Linfo_string195                @ DW_AT_name
	.asciz	"\310"                          @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x7dc:0x7 DW_TAG_enumerator
	.long	.Linfo_string196                @ DW_AT_name
	.asciz	"\311"                          @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x7e3:0x7 DW_TAG_enumerator
	.long	.Linfo_string197                @ DW_AT_name
	.asciz	"\312"                          @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x7ea:0x7 DW_TAG_enumerator
	.long	.Linfo_string198                @ DW_AT_name
	.asciz	"\313"                          @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x7f1:0x7 DW_TAG_enumerator
	.long	.Linfo_string199                @ DW_AT_name
	.asciz	"\314"                          @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x7f8:0x7 DW_TAG_enumerator
	.long	.Linfo_string200                @ DW_AT_name
	.asciz	"\315"                          @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x7ff:0x7 DW_TAG_enumerator
	.long	.Linfo_string201                @ DW_AT_name
	.asciz	"\316"                          @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x806:0x7 DW_TAG_enumerator
	.long	.Linfo_string202                @ DW_AT_name
	.asciz	"\320"                          @ DW_AT_const_value
	.byte	19                              @ Abbrev [19] 0x80d:0x7 DW_TAG_enumerator
	.long	.Linfo_string203                @ DW_AT_name
	.asciz	"\321"                          @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	11                              @ Abbrev [11] 0x815:0x7 DW_TAG_base_type
	.long	.Linfo_string114                @ DW_AT_name
	.byte	6                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	6                               @ Abbrev [6] 0x81c:0x5 DW_TAG_pointer_type
	.long	2081                            @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x821:0xc DW_TAG_typedef
	.long	2093                            @ DW_AT_type
	.long	.Linfo_string234                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	628                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x82d:0x18c DW_TAG_structure_type
	.byte	136                             @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.short	596                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x832:0xd DW_TAG_member
	.long	.Linfo_string37                 @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	598                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x83f:0xd DW_TAG_member
	.long	.Linfo_string204                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	599                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x84c:0xd DW_TAG_member
	.long	.Linfo_string205                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	600                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x859:0xd DW_TAG_member
	.long	.Linfo_string206                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	601                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x866:0xd DW_TAG_member
	.long	.Linfo_string207                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	602                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x873:0xd DW_TAG_member
	.long	.Linfo_string208                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	603                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x880:0xd DW_TAG_member
	.long	.Linfo_string209                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	604                             @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x88d:0xd DW_TAG_member
	.long	.Linfo_string210                @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	605                             @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x89a:0xd DW_TAG_member
	.long	.Linfo_string211                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	606                             @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x8a7:0xd DW_TAG_member
	.long	.Linfo_string212                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	607                             @ DW_AT_decl_line
	.byte	36                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x8b4:0xd DW_TAG_member
	.long	.Linfo_string213                @ DW_AT_name
	.long	2489                            @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	608                             @ DW_AT_decl_line
	.byte	40                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x8c1:0xd DW_TAG_member
	.long	.Linfo_string215                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	609                             @ DW_AT_decl_line
	.byte	48                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x8ce:0xd DW_TAG_member
	.long	.Linfo_string216                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	610                             @ DW_AT_decl_line
	.byte	52                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x8db:0xd DW_TAG_member
	.long	.Linfo_string217                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	611                             @ DW_AT_decl_line
	.byte	56                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x8e8:0xd DW_TAG_member
	.long	.Linfo_string218                @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	612                             @ DW_AT_decl_line
	.byte	60                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x8f5:0xd DW_TAG_member
	.long	.Linfo_string219                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	613                             @ DW_AT_decl_line
	.byte	64                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x902:0xd DW_TAG_member
	.long	.Linfo_string220                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	614                             @ DW_AT_decl_line
	.byte	68                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x90f:0xd DW_TAG_member
	.long	.Linfo_string221                @ DW_AT_name
	.long	2489                            @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	615                             @ DW_AT_decl_line
	.byte	72                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x91c:0xd DW_TAG_member
	.long	.Linfo_string222                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	616                             @ DW_AT_decl_line
	.byte	80                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x929:0xd DW_TAG_member
	.long	.Linfo_string223                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	617                             @ DW_AT_decl_line
	.byte	84                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x936:0xd DW_TAG_member
	.long	.Linfo_string224                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	618                             @ DW_AT_decl_line
	.byte	88                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x943:0xd DW_TAG_member
	.long	.Linfo_string225                @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	619                             @ DW_AT_decl_line
	.byte	92                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x950:0xd DW_TAG_member
	.long	.Linfo_string226                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	620                             @ DW_AT_decl_line
	.byte	96                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x95d:0xd DW_TAG_member
	.long	.Linfo_string227                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	621                             @ DW_AT_decl_line
	.byte	100                             @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x96a:0xd DW_TAG_member
	.long	.Linfo_string228                @ DW_AT_name
	.long	2489                            @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	622                             @ DW_AT_decl_line
	.byte	104                             @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x977:0xd DW_TAG_member
	.long	.Linfo_string229                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	623                             @ DW_AT_decl_line
	.byte	112                             @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x984:0xd DW_TAG_member
	.long	.Linfo_string230                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	624                             @ DW_AT_decl_line
	.byte	116                             @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x991:0xd DW_TAG_member
	.long	.Linfo_string231                @ DW_AT_name
	.long	2489                            @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	625                             @ DW_AT_decl_line
	.byte	120                             @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x99e:0xd DW_TAG_member
	.long	.Linfo_string232                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	626                             @ DW_AT_decl_line
	.byte	128                             @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x9ab:0xd DW_TAG_member
	.long	.Linfo_string233                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	627                             @ DW_AT_decl_line
	.byte	132                             @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	20                              @ Abbrev [20] 0x9b9:0xc DW_TAG_array_type
	.long	374                             @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0x9be:0x6 DW_TAG_subrange_type
	.long	2501                            @ DW_AT_type
	.byte	2                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	22                              @ Abbrev [22] 0x9c5:0x7 DW_TAG_base_type
	.long	.Linfo_string214                @ DW_AT_name
	.byte	8                               @ DW_AT_byte_size
	.byte	7                               @ DW_AT_encoding
	.byte	6                               @ Abbrev [6] 0x9cc:0x5 DW_TAG_pointer_type
	.long	2513                            @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x9d1:0xc DW_TAG_typedef
	.long	2525                            @ DW_AT_type
	.long	.Linfo_string244                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	537                             @ DW_AT_decl_line
	.byte	8                               @ Abbrev [8] 0x9dd:0x7b DW_TAG_structure_type
	.byte	40                              @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.short	526                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x9e2:0xd DW_TAG_member
	.long	.Linfo_string235                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	528                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x9ef:0xd DW_TAG_member
	.long	.Linfo_string236                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	529                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0x9fc:0xd DW_TAG_member
	.long	.Linfo_string237                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	530                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0xa09:0xd DW_TAG_member
	.long	.Linfo_string238                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	531                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0xa16:0xd DW_TAG_member
	.long	.Linfo_string239                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	532                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0xa23:0xd DW_TAG_member
	.long	.Linfo_string240                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	533                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0xa30:0xd DW_TAG_member
	.long	.Linfo_string241                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	534                             @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0xa3d:0xd DW_TAG_member
	.long	.Linfo_string242                @ DW_AT_name
	.long	369                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	535                             @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	9                               @ Abbrev [9] 0xa4a:0xd DW_TAG_member
	.long	.Linfo_string243                @ DW_AT_name
	.long	2648                            @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	536                             @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	20                              @ Abbrev [20] 0xa58:0xc DW_TAG_array_type
	.long	369                             @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0xa5d:0x6 DW_TAG_subrange_type
	.long	2501                            @ DW_AT_type
	.byte	2                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	23                              @ Abbrev [23] 0xa64:0x11 DW_TAG_subprogram
	.long	.Lfunc_begin0                   @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string245                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	23                              @ Abbrev [23] 0xa75:0x11 DW_TAG_subprogram
	.long	.Lfunc_begin1                   @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string246                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	74                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	23                              @ Abbrev [23] 0xa86:0x11 DW_TAG_subprogram
	.long	.Lfunc_begin2                   @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string247                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	103                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	23                              @ Abbrev [23] 0xa97:0x11 DW_TAG_subprogram
	.long	.Lfunc_begin3                   @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string248                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	132                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	23                              @ Abbrev [23] 0xaa8:0x11 DW_TAG_subprogram
	.long	.Lfunc_begin4                   @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string249                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	161                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	23                              @ Abbrev [23] 0xab9:0x11 DW_TAG_subprogram
	.long	.Lfunc_begin5                   @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string250                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	190                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	24                              @ Abbrev [24] 0xaca:0x180 DW_TAG_subprogram
	.long	.Lfunc_begin6                   @ DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string251                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	218                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	25                              @ Abbrev [25] 0xadb:0xf DW_TAG_formal_parameter
	.byte	3                               @ DW_AT_location
	.byte	145
	.ascii	"\264\001"
	.long	.Linfo_string253                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	218                             @ DW_AT_decl_line
	.long	3180                            @ DW_AT_type
	.byte	26                              @ Abbrev [26] 0xaea:0xf DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	145
	.ascii	"\240\001"
	.long	.Linfo_string254                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	221                             @ DW_AT_decl_line
	.long	3185                            @ DW_AT_type
	.byte	27                              @ Abbrev [27] 0xaf9:0x19 DW_TAG_lexical_block
	.long	.Ltmp40                         @ DW_AT_low_pc
	.long	.Ltmp41-.Ltmp40                 @ DW_AT_high_pc
	.byte	26                              @ Abbrev [26] 0xb02:0xf DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	145
	.ascii	"\234\001"
	.long	.Linfo_string260                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	228                             @ DW_AT_decl_line
	.long	369                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	27                              @ Abbrev [27] 0xb12:0x19 DW_TAG_lexical_block
	.long	.Ltmp42                         @ DW_AT_low_pc
	.long	.Ltmp43-.Ltmp42                 @ DW_AT_high_pc
	.byte	26                              @ Abbrev [26] 0xb1b:0xf DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	145
	.ascii	"\230\001"
	.long	.Linfo_string260                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.byte	230                             @ DW_AT_decl_line
	.long	369                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	27                              @ Abbrev [27] 0xb2b:0x1a DW_TAG_lexical_block
	.long	.Ltmp59                         @ DW_AT_low_pc
	.long	.Ltmp60-.Ltmp59                 @ DW_AT_high_pc
	.byte	28                              @ Abbrev [28] 0xb34:0x10 DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	145
	.ascii	"\224\001"
	.long	.Linfo_string260                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.short	292                             @ DW_AT_decl_line
	.long	369                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	27                              @ Abbrev [27] 0xb45:0x1a DW_TAG_lexical_block
	.long	.Ltmp61                         @ DW_AT_low_pc
	.long	.Ltmp62-.Ltmp61                 @ DW_AT_high_pc
	.byte	28                              @ Abbrev [28] 0xb4e:0x10 DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	145
	.ascii	"\220\001"
	.long	.Linfo_string260                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.short	294                             @ DW_AT_decl_line
	.long	369                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	27                              @ Abbrev [27] 0xb5f:0x1a DW_TAG_lexical_block
	.long	.Ltmp63                         @ DW_AT_low_pc
	.long	.Ltmp64-.Ltmp63                 @ DW_AT_high_pc
	.byte	28                              @ Abbrev [28] 0xb68:0x10 DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	145
	.ascii	"\214\001"
	.long	.Linfo_string260                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.short	295                             @ DW_AT_decl_line
	.long	369                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	27                              @ Abbrev [27] 0xb79:0x1a DW_TAG_lexical_block
	.long	.Ltmp80                         @ DW_AT_low_pc
	.long	.Ltmp81-.Ltmp80                 @ DW_AT_high_pc
	.byte	28                              @ Abbrev [28] 0xb82:0x10 DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	145
	.ascii	"\210\001"
	.long	.Linfo_string260                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.short	364                             @ DW_AT_decl_line
	.long	369                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	27                              @ Abbrev [27] 0xb93:0x1a DW_TAG_lexical_block
	.long	.Ltmp82                         @ DW_AT_low_pc
	.long	.Ltmp83-.Ltmp82                 @ DW_AT_high_pc
	.byte	28                              @ Abbrev [28] 0xb9c:0x10 DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	145
	.ascii	"\204\001"
	.long	.Linfo_string260                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.short	366                             @ DW_AT_decl_line
	.long	369                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	27                              @ Abbrev [27] 0xbad:0x1a DW_TAG_lexical_block
	.long	.Ltmp99                         @ DW_AT_low_pc
	.long	.Ltmp100-.Ltmp99                @ DW_AT_high_pc
	.byte	28                              @ Abbrev [28] 0xbb6:0x10 DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	145
	.ascii	"\200\001"
	.long	.Linfo_string260                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.short	428                             @ DW_AT_decl_line
	.long	369                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	27                              @ Abbrev [27] 0xbc7:0x1a DW_TAG_lexical_block
	.long	.Ltmp101                        @ DW_AT_low_pc
	.long	.Ltmp102-.Ltmp101               @ DW_AT_high_pc
	.byte	28                              @ Abbrev [28] 0xbd0:0x10 DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	145
	.asciz	"\374"
	.long	.Linfo_string260                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.short	430                             @ DW_AT_decl_line
	.long	369                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	27                              @ Abbrev [27] 0xbe1:0x1a DW_TAG_lexical_block
	.long	.Ltmp112                        @ DW_AT_low_pc
	.long	.Ltmp113-.Ltmp112               @ DW_AT_high_pc
	.byte	28                              @ Abbrev [28] 0xbea:0x10 DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	145
	.asciz	"\370"
	.long	.Linfo_string260                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.short	474                             @ DW_AT_decl_line
	.long	369                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	27                              @ Abbrev [27] 0xbfb:0x1a DW_TAG_lexical_block
	.long	.Ltmp114                        @ DW_AT_low_pc
	.long	.Ltmp115-.Ltmp114               @ DW_AT_high_pc
	.byte	28                              @ Abbrev [28] 0xc04:0x10 DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	145
	.asciz	"\364"
	.long	.Linfo_string260                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.short	476                             @ DW_AT_decl_line
	.long	369                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	27                              @ Abbrev [27] 0xc15:0x1a DW_TAG_lexical_block
	.long	.Ltmp131                        @ DW_AT_low_pc
	.long	.Ltmp132-.Ltmp131               @ DW_AT_high_pc
	.byte	28                              @ Abbrev [28] 0xc1e:0x10 DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	145
	.asciz	"\360"
	.long	.Linfo_string260                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.short	538                             @ DW_AT_decl_line
	.long	369                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	27                              @ Abbrev [27] 0xc2f:0x1a DW_TAG_lexical_block
	.long	.Ltmp133                        @ DW_AT_low_pc
	.long	.Ltmp134-.Ltmp133               @ DW_AT_high_pc
	.byte	28                              @ Abbrev [28] 0xc38:0x10 DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	145
	.asciz	"\354"
	.long	.Linfo_string260                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.short	540                             @ DW_AT_decl_line
	.long	369                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
	.byte	29                              @ Abbrev [29] 0xc4a:0x22 DW_TAG_subprogram
	.long	.Lfunc_begin7                   @ DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string252                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.short	598                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	30                              @ Abbrev [30] 0xc5c:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string253                @ DW_AT_name
	.byte	6                               @ DW_AT_decl_file
	.short	598                             @ DW_AT_decl_line
	.long	3180                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0xc6c:0x5 DW_TAG_pointer_type
	.long	55                              @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0xc71:0xb DW_TAG_typedef
	.long	3196                            @ DW_AT_type
	.long	.Linfo_string259                @ DW_AT_name
	.byte	7                               @ DW_AT_decl_file
	.byte	62                              @ DW_AT_decl_line
	.byte	12                              @ Abbrev [12] 0xc7c:0x41 DW_TAG_structure_type
	.byte	20                              @ DW_AT_byte_size
	.byte	7                               @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0xc80:0xc DW_TAG_member
	.long	.Linfo_string255                @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	7                               @ DW_AT_decl_file
	.byte	48                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xc8c:0xc DW_TAG_member
	.long	.Linfo_string20                 @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	7                               @ DW_AT_decl_file
	.byte	51                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xc98:0xc DW_TAG_member
	.long	.Linfo_string256                @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	7                               @ DW_AT_decl_file
	.byte	54                              @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xca4:0xc DW_TAG_member
	.long	.Linfo_string257                @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	7                               @ DW_AT_decl_file
	.byte	57                              @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	5                               @ Abbrev [5] 0xcb0:0xc DW_TAG_member
	.long	.Linfo_string258                @ DW_AT_name
	.long	374                             @ DW_AT_type
	.byte	7                               @ DW_AT_decl_file
	.byte	60                              @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
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
	.long	.Lfunc_begin6
	.long	.Lfunc_end6
	.long	.Lfunc_begin7
	.long	.Lfunc_end7
	.long	0
	.long	0
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]" @ string offset=0
.Linfo_string1:
	.asciz	"../Core/Src\\usart.c"          @ string offset=68
.Linfo_string2:
	.asciz	"E:\\RP\\CppTemplate\\MDK-ARM"  @ string offset=88
.Linfo_string3:
	.asciz	"huart4"                        @ string offset=114
.Linfo_string4:
	.asciz	"Instance"                      @ string offset=121
.Linfo_string5:
	.asciz	"SR"                            @ string offset=130
.Linfo_string6:
	.asciz	"unsigned int"                  @ string offset=133
.Linfo_string7:
	.asciz	"uint32_t"                      @ string offset=146
.Linfo_string8:
	.asciz	"DR"                            @ string offset=155
.Linfo_string9:
	.asciz	"BRR"                           @ string offset=158
.Linfo_string10:
	.asciz	"CR1"                           @ string offset=162
.Linfo_string11:
	.asciz	"CR2"                           @ string offset=166
.Linfo_string12:
	.asciz	"CR3"                           @ string offset=170
.Linfo_string13:
	.asciz	"GTPR"                          @ string offset=174
.Linfo_string14:
	.asciz	"USART_TypeDef"                 @ string offset=179
.Linfo_string15:
	.asciz	"Init"                          @ string offset=193
.Linfo_string16:
	.asciz	"BaudRate"                      @ string offset=198
.Linfo_string17:
	.asciz	"WordLength"                    @ string offset=207
.Linfo_string18:
	.asciz	"StopBits"                      @ string offset=218
.Linfo_string19:
	.asciz	"Parity"                        @ string offset=227
.Linfo_string20:
	.asciz	"Mode"                          @ string offset=234
.Linfo_string21:
	.asciz	"HwFlowCtl"                     @ string offset=239
.Linfo_string22:
	.asciz	"OverSampling"                  @ string offset=249
.Linfo_string23:
	.asciz	"UART_InitTypeDef"              @ string offset=262
.Linfo_string24:
	.asciz	"pTxBuffPtr"                    @ string offset=279
.Linfo_string25:
	.asciz	"unsigned char"                 @ string offset=290
.Linfo_string26:
	.asciz	"uint8_t"                       @ string offset=304
.Linfo_string27:
	.asciz	"TxXferSize"                    @ string offset=312
.Linfo_string28:
	.asciz	"unsigned short"                @ string offset=323
.Linfo_string29:
	.asciz	"uint16_t"                      @ string offset=338
.Linfo_string30:
	.asciz	"TxXferCount"                   @ string offset=347
.Linfo_string31:
	.asciz	"pRxBuffPtr"                    @ string offset=359
.Linfo_string32:
	.asciz	"RxXferSize"                    @ string offset=370
.Linfo_string33:
	.asciz	"RxXferCount"                   @ string offset=381
.Linfo_string34:
	.asciz	"ReceptionType"                 @ string offset=393
.Linfo_string35:
	.asciz	"HAL_UART_RxTypeTypeDef"        @ string offset=407
.Linfo_string36:
	.asciz	"hdmatx"                        @ string offset=430
.Linfo_string37:
	.asciz	"CR"                            @ string offset=437
.Linfo_string38:
	.asciz	"NDTR"                          @ string offset=440
.Linfo_string39:
	.asciz	"PAR"                           @ string offset=445
.Linfo_string40:
	.asciz	"M0AR"                          @ string offset=449
.Linfo_string41:
	.asciz	"M1AR"                          @ string offset=454
.Linfo_string42:
	.asciz	"FCR"                           @ string offset=459
.Linfo_string43:
	.asciz	"DMA_Stream_TypeDef"            @ string offset=463
.Linfo_string44:
	.asciz	"Channel"                       @ string offset=482
.Linfo_string45:
	.asciz	"Direction"                     @ string offset=490
.Linfo_string46:
	.asciz	"PeriphInc"                     @ string offset=500
.Linfo_string47:
	.asciz	"MemInc"                        @ string offset=510
.Linfo_string48:
	.asciz	"PeriphDataAlignment"           @ string offset=517
.Linfo_string49:
	.asciz	"MemDataAlignment"              @ string offset=537
.Linfo_string50:
	.asciz	"Priority"                      @ string offset=554
.Linfo_string51:
	.asciz	"FIFOMode"                      @ string offset=563
.Linfo_string52:
	.asciz	"FIFOThreshold"                 @ string offset=572
.Linfo_string53:
	.asciz	"MemBurst"                      @ string offset=586
.Linfo_string54:
	.asciz	"PeriphBurst"                   @ string offset=595
.Linfo_string55:
	.asciz	"DMA_InitTypeDef"               @ string offset=607
.Linfo_string56:
	.asciz	"Lock"                          @ string offset=623
.Linfo_string57:
	.asciz	"HAL_UNLOCKED"                  @ string offset=628
.Linfo_string58:
	.asciz	"HAL_LOCKED"                    @ string offset=641
.Linfo_string59:
	.asciz	"HAL_LockTypeDef"               @ string offset=652
.Linfo_string60:
	.asciz	"State"                         @ string offset=668
.Linfo_string61:
	.asciz	"HAL_DMA_STATE_RESET"           @ string offset=674
.Linfo_string62:
	.asciz	"HAL_DMA_STATE_READY"           @ string offset=694
.Linfo_string63:
	.asciz	"HAL_DMA_STATE_BUSY"            @ string offset=714
.Linfo_string64:
	.asciz	"HAL_DMA_STATE_TIMEOUT"         @ string offset=733
.Linfo_string65:
	.asciz	"HAL_DMA_STATE_ERROR"           @ string offset=755
.Linfo_string66:
	.asciz	"HAL_DMA_STATE_ABORT"           @ string offset=775
.Linfo_string67:
	.asciz	"HAL_DMA_StateTypeDef"          @ string offset=795
.Linfo_string68:
	.asciz	"Parent"                        @ string offset=816
.Linfo_string69:
	.asciz	"XferCpltCallback"              @ string offset=823
.Linfo_string70:
	.asciz	"XferHalfCpltCallback"          @ string offset=840
.Linfo_string71:
	.asciz	"XferM1CpltCallback"            @ string offset=861
.Linfo_string72:
	.asciz	"XferM1HalfCpltCallback"        @ string offset=880
.Linfo_string73:
	.asciz	"XferErrorCallback"             @ string offset=903
.Linfo_string74:
	.asciz	"XferAbortCallback"             @ string offset=921
.Linfo_string75:
	.asciz	"ErrorCode"                     @ string offset=939
.Linfo_string76:
	.asciz	"StreamBaseAddress"             @ string offset=949
.Linfo_string77:
	.asciz	"StreamIndex"                   @ string offset=967
.Linfo_string78:
	.asciz	"__DMA_HandleTypeDef"           @ string offset=979
.Linfo_string79:
	.asciz	"DMA_HandleTypeDef"             @ string offset=999
.Linfo_string80:
	.asciz	"hdmarx"                        @ string offset=1017
.Linfo_string81:
	.asciz	"gState"                        @ string offset=1024
.Linfo_string82:
	.asciz	"HAL_UART_STATE_RESET"          @ string offset=1031
.Linfo_string83:
	.asciz	"HAL_UART_STATE_READY"          @ string offset=1052
.Linfo_string84:
	.asciz	"HAL_UART_STATE_BUSY"           @ string offset=1073
.Linfo_string85:
	.asciz	"HAL_UART_STATE_BUSY_TX"        @ string offset=1093
.Linfo_string86:
	.asciz	"HAL_UART_STATE_BUSY_RX"        @ string offset=1116
.Linfo_string87:
	.asciz	"HAL_UART_STATE_BUSY_TX_RX"     @ string offset=1139
.Linfo_string88:
	.asciz	"HAL_UART_STATE_TIMEOUT"        @ string offset=1165
.Linfo_string89:
	.asciz	"HAL_UART_STATE_ERROR"          @ string offset=1188
.Linfo_string90:
	.asciz	"HAL_UART_StateTypeDef"         @ string offset=1209
.Linfo_string91:
	.asciz	"RxState"                       @ string offset=1231
.Linfo_string92:
	.asciz	"__UART_HandleTypeDef"          @ string offset=1239
.Linfo_string93:
	.asciz	"UART_HandleTypeDef"            @ string offset=1260
.Linfo_string94:
	.asciz	"huart5"                        @ string offset=1279
.Linfo_string95:
	.asciz	"huart1"                        @ string offset=1286
.Linfo_string96:
	.asciz	"huart2"                        @ string offset=1293
.Linfo_string97:
	.asciz	"huart3"                        @ string offset=1300
.Linfo_string98:
	.asciz	"huart6"                        @ string offset=1307
.Linfo_string99:
	.asciz	"hdma_uart4_rx"                 @ string offset=1314
.Linfo_string100:
	.asciz	"hdma_uart4_tx"                 @ string offset=1328
.Linfo_string101:
	.asciz	"hdma_uart5_rx"                 @ string offset=1342
.Linfo_string102:
	.asciz	"hdma_uart5_tx"                 @ string offset=1356
.Linfo_string103:
	.asciz	"hdma_usart1_rx"                @ string offset=1370
.Linfo_string104:
	.asciz	"hdma_usart1_tx"                @ string offset=1385
.Linfo_string105:
	.asciz	"hdma_usart2_rx"                @ string offset=1400
.Linfo_string106:
	.asciz	"hdma_usart3_rx"                @ string offset=1415
.Linfo_string107:
	.asciz	"hdma_usart3_tx"                @ string offset=1430
.Linfo_string108:
	.asciz	"hdma_usart6_rx"                @ string offset=1445
.Linfo_string109:
	.asciz	"hdma_usart6_tx"                @ string offset=1460
.Linfo_string110:
	.asciz	"HAL_OK"                        @ string offset=1475
.Linfo_string111:
	.asciz	"HAL_ERROR"                     @ string offset=1482
.Linfo_string112:
	.asciz	"HAL_BUSY"                      @ string offset=1492
.Linfo_string113:
	.asciz	"HAL_TIMEOUT"                   @ string offset=1501
.Linfo_string114:
	.asciz	"signed char"                   @ string offset=1513
.Linfo_string115:
	.asciz	"NonMaskableInt_IRQn"           @ string offset=1525
.Linfo_string116:
	.asciz	"MemoryManagement_IRQn"         @ string offset=1545
.Linfo_string117:
	.asciz	"BusFault_IRQn"                 @ string offset=1567
.Linfo_string118:
	.asciz	"UsageFault_IRQn"               @ string offset=1581
.Linfo_string119:
	.asciz	"SVCall_IRQn"                   @ string offset=1597
.Linfo_string120:
	.asciz	"DebugMonitor_IRQn"             @ string offset=1609
.Linfo_string121:
	.asciz	"PendSV_IRQn"                   @ string offset=1627
.Linfo_string122:
	.asciz	"SysTick_IRQn"                  @ string offset=1639
.Linfo_string123:
	.asciz	"WWDG_IRQn"                     @ string offset=1652
.Linfo_string124:
	.asciz	"PVD_IRQn"                      @ string offset=1662
.Linfo_string125:
	.asciz	"TAMP_STAMP_IRQn"               @ string offset=1671
.Linfo_string126:
	.asciz	"RTC_WKUP_IRQn"                 @ string offset=1687
.Linfo_string127:
	.asciz	"FLASH_IRQn"                    @ string offset=1701
.Linfo_string128:
	.asciz	"RCC_IRQn"                      @ string offset=1712
.Linfo_string129:
	.asciz	"EXTI0_IRQn"                    @ string offset=1721
.Linfo_string130:
	.asciz	"EXTI1_IRQn"                    @ string offset=1732
.Linfo_string131:
	.asciz	"EXTI2_IRQn"                    @ string offset=1743
.Linfo_string132:
	.asciz	"EXTI3_IRQn"                    @ string offset=1754
.Linfo_string133:
	.asciz	"EXTI4_IRQn"                    @ string offset=1765
.Linfo_string134:
	.asciz	"DMA1_Stream0_IRQn"             @ string offset=1776
.Linfo_string135:
	.asciz	"DMA1_Stream1_IRQn"             @ string offset=1794
.Linfo_string136:
	.asciz	"DMA1_Stream2_IRQn"             @ string offset=1812
.Linfo_string137:
	.asciz	"DMA1_Stream3_IRQn"             @ string offset=1830
.Linfo_string138:
	.asciz	"DMA1_Stream4_IRQn"             @ string offset=1848
.Linfo_string139:
	.asciz	"DMA1_Stream5_IRQn"             @ string offset=1866
.Linfo_string140:
	.asciz	"DMA1_Stream6_IRQn"             @ string offset=1884
.Linfo_string141:
	.asciz	"ADC_IRQn"                      @ string offset=1902
.Linfo_string142:
	.asciz	"CAN1_TX_IRQn"                  @ string offset=1911
.Linfo_string143:
	.asciz	"CAN1_RX0_IRQn"                 @ string offset=1924
.Linfo_string144:
	.asciz	"CAN1_RX1_IRQn"                 @ string offset=1938
.Linfo_string145:
	.asciz	"CAN1_SCE_IRQn"                 @ string offset=1952
.Linfo_string146:
	.asciz	"EXTI9_5_IRQn"                  @ string offset=1966
.Linfo_string147:
	.asciz	"TIM1_BRK_TIM9_IRQn"            @ string offset=1979
.Linfo_string148:
	.asciz	"TIM1_UP_TIM10_IRQn"            @ string offset=1998
.Linfo_string149:
	.asciz	"TIM1_TRG_COM_TIM11_IRQn"       @ string offset=2017
.Linfo_string150:
	.asciz	"TIM1_CC_IRQn"                  @ string offset=2041
.Linfo_string151:
	.asciz	"TIM2_IRQn"                     @ string offset=2054
.Linfo_string152:
	.asciz	"TIM3_IRQn"                     @ string offset=2064
.Linfo_string153:
	.asciz	"TIM4_IRQn"                     @ string offset=2074
.Linfo_string154:
	.asciz	"I2C1_EV_IRQn"                  @ string offset=2084
.Linfo_string155:
	.asciz	"I2C1_ER_IRQn"                  @ string offset=2097
.Linfo_string156:
	.asciz	"I2C2_EV_IRQn"                  @ string offset=2110
.Linfo_string157:
	.asciz	"I2C2_ER_IRQn"                  @ string offset=2123
.Linfo_string158:
	.asciz	"SPI1_IRQn"                     @ string offset=2136
.Linfo_string159:
	.asciz	"SPI2_IRQn"                     @ string offset=2146
.Linfo_string160:
	.asciz	"USART1_IRQn"                   @ string offset=2156
.Linfo_string161:
	.asciz	"USART2_IRQn"                   @ string offset=2168
.Linfo_string162:
	.asciz	"USART3_IRQn"                   @ string offset=2180
.Linfo_string163:
	.asciz	"EXTI15_10_IRQn"                @ string offset=2192
.Linfo_string164:
	.asciz	"RTC_Alarm_IRQn"                @ string offset=2207
.Linfo_string165:
	.asciz	"OTG_FS_WKUP_IRQn"              @ string offset=2222
.Linfo_string166:
	.asciz	"TIM8_BRK_TIM12_IRQn"           @ string offset=2239
.Linfo_string167:
	.asciz	"TIM8_UP_TIM13_IRQn"            @ string offset=2259
.Linfo_string168:
	.asciz	"TIM8_TRG_COM_TIM14_IRQn"       @ string offset=2278
.Linfo_string169:
	.asciz	"TIM8_CC_IRQn"                  @ string offset=2302
.Linfo_string170:
	.asciz	"DMA1_Stream7_IRQn"             @ string offset=2315
.Linfo_string171:
	.asciz	"FSMC_IRQn"                     @ string offset=2333
.Linfo_string172:
	.asciz	"SDIO_IRQn"                     @ string offset=2343
.Linfo_string173:
	.asciz	"TIM5_IRQn"                     @ string offset=2353
.Linfo_string174:
	.asciz	"SPI3_IRQn"                     @ string offset=2363
.Linfo_string175:
	.asciz	"UART4_IRQn"                    @ string offset=2373
.Linfo_string176:
	.asciz	"UART5_IRQn"                    @ string offset=2384
.Linfo_string177:
	.asciz	"TIM6_DAC_IRQn"                 @ string offset=2395
.Linfo_string178:
	.asciz	"TIM7_IRQn"                     @ string offset=2409
.Linfo_string179:
	.asciz	"DMA2_Stream0_IRQn"             @ string offset=2419
.Linfo_string180:
	.asciz	"DMA2_Stream1_IRQn"             @ string offset=2437
.Linfo_string181:
	.asciz	"DMA2_Stream2_IRQn"             @ string offset=2455
.Linfo_string182:
	.asciz	"DMA2_Stream3_IRQn"             @ string offset=2473
.Linfo_string183:
	.asciz	"DMA2_Stream4_IRQn"             @ string offset=2491
.Linfo_string184:
	.asciz	"ETH_IRQn"                      @ string offset=2509
.Linfo_string185:
	.asciz	"ETH_WKUP_IRQn"                 @ string offset=2518
.Linfo_string186:
	.asciz	"CAN2_TX_IRQn"                  @ string offset=2532
.Linfo_string187:
	.asciz	"CAN2_RX0_IRQn"                 @ string offset=2545
.Linfo_string188:
	.asciz	"CAN2_RX1_IRQn"                 @ string offset=2559
.Linfo_string189:
	.asciz	"CAN2_SCE_IRQn"                 @ string offset=2573
.Linfo_string190:
	.asciz	"OTG_FS_IRQn"                   @ string offset=2587
.Linfo_string191:
	.asciz	"DMA2_Stream5_IRQn"             @ string offset=2599
.Linfo_string192:
	.asciz	"DMA2_Stream6_IRQn"             @ string offset=2617
.Linfo_string193:
	.asciz	"DMA2_Stream7_IRQn"             @ string offset=2635
.Linfo_string194:
	.asciz	"USART6_IRQn"                   @ string offset=2653
.Linfo_string195:
	.asciz	"I2C3_EV_IRQn"                  @ string offset=2665
.Linfo_string196:
	.asciz	"I2C3_ER_IRQn"                  @ string offset=2678
.Linfo_string197:
	.asciz	"OTG_HS_EP1_OUT_IRQn"           @ string offset=2691
.Linfo_string198:
	.asciz	"OTG_HS_EP1_IN_IRQn"            @ string offset=2711
.Linfo_string199:
	.asciz	"OTG_HS_WKUP_IRQn"              @ string offset=2730
.Linfo_string200:
	.asciz	"OTG_HS_IRQn"                   @ string offset=2747
.Linfo_string201:
	.asciz	"DCMI_IRQn"                     @ string offset=2759
.Linfo_string202:
	.asciz	"RNG_IRQn"                      @ string offset=2769
.Linfo_string203:
	.asciz	"FPU_IRQn"                      @ string offset=2778
.Linfo_string204:
	.asciz	"PLLCFGR"                       @ string offset=2787
.Linfo_string205:
	.asciz	"CFGR"                          @ string offset=2795
.Linfo_string206:
	.asciz	"CIR"                           @ string offset=2800
.Linfo_string207:
	.asciz	"AHB1RSTR"                      @ string offset=2804
.Linfo_string208:
	.asciz	"AHB2RSTR"                      @ string offset=2813
.Linfo_string209:
	.asciz	"AHB3RSTR"                      @ string offset=2822
.Linfo_string210:
	.asciz	"RESERVED0"                     @ string offset=2831
.Linfo_string211:
	.asciz	"APB1RSTR"                      @ string offset=2841
.Linfo_string212:
	.asciz	"APB2RSTR"                      @ string offset=2850
.Linfo_string213:
	.asciz	"RESERVED1"                     @ string offset=2859
.Linfo_string214:
	.asciz	"__ARRAY_SIZE_TYPE__"           @ string offset=2869
.Linfo_string215:
	.asciz	"AHB1ENR"                       @ string offset=2889
.Linfo_string216:
	.asciz	"AHB2ENR"                       @ string offset=2897
.Linfo_string217:
	.asciz	"AHB3ENR"                       @ string offset=2905
.Linfo_string218:
	.asciz	"RESERVED2"                     @ string offset=2913
.Linfo_string219:
	.asciz	"APB1ENR"                       @ string offset=2923
.Linfo_string220:
	.asciz	"APB2ENR"                       @ string offset=2931
.Linfo_string221:
	.asciz	"RESERVED3"                     @ string offset=2939
.Linfo_string222:
	.asciz	"AHB1LPENR"                     @ string offset=2949
.Linfo_string223:
	.asciz	"AHB2LPENR"                     @ string offset=2959
.Linfo_string224:
	.asciz	"AHB3LPENR"                     @ string offset=2969
.Linfo_string225:
	.asciz	"RESERVED4"                     @ string offset=2979
.Linfo_string226:
	.asciz	"APB1LPENR"                     @ string offset=2989
.Linfo_string227:
	.asciz	"APB2LPENR"                     @ string offset=2999
.Linfo_string228:
	.asciz	"RESERVED5"                     @ string offset=3009
.Linfo_string229:
	.asciz	"BDCR"                          @ string offset=3019
.Linfo_string230:
	.asciz	"CSR"                           @ string offset=3024
.Linfo_string231:
	.asciz	"RESERVED6"                     @ string offset=3028
.Linfo_string232:
	.asciz	"SSCGR"                         @ string offset=3038
.Linfo_string233:
	.asciz	"PLLI2SCFGR"                    @ string offset=3044
.Linfo_string234:
	.asciz	"RCC_TypeDef"                   @ string offset=3055
.Linfo_string235:
	.asciz	"MODER"                         @ string offset=3067
.Linfo_string236:
	.asciz	"OTYPER"                        @ string offset=3073
.Linfo_string237:
	.asciz	"OSPEEDR"                       @ string offset=3080
.Linfo_string238:
	.asciz	"PUPDR"                         @ string offset=3088
.Linfo_string239:
	.asciz	"IDR"                           @ string offset=3094
.Linfo_string240:
	.asciz	"ODR"                           @ string offset=3098
.Linfo_string241:
	.asciz	"BSRR"                          @ string offset=3102
.Linfo_string242:
	.asciz	"LCKR"                          @ string offset=3107
.Linfo_string243:
	.asciz	"AFR"                           @ string offset=3112
.Linfo_string244:
	.asciz	"GPIO_TypeDef"                  @ string offset=3116
.Linfo_string245:
	.asciz	"MX_UART4_Init"                 @ string offset=3129
.Linfo_string246:
	.asciz	"MX_UART5_Init"                 @ string offset=3143
.Linfo_string247:
	.asciz	"MX_USART1_UART_Init"           @ string offset=3157
.Linfo_string248:
	.asciz	"MX_USART2_UART_Init"           @ string offset=3177
.Linfo_string249:
	.asciz	"MX_USART3_UART_Init"           @ string offset=3197
.Linfo_string250:
	.asciz	"MX_USART6_UART_Init"           @ string offset=3217
.Linfo_string251:
	.asciz	"HAL_UART_MspInit"              @ string offset=3237
.Linfo_string252:
	.asciz	"HAL_UART_MspDeInit"            @ string offset=3254
.Linfo_string253:
	.asciz	"uartHandle"                    @ string offset=3273
.Linfo_string254:
	.asciz	"GPIO_InitStruct"               @ string offset=3284
.Linfo_string255:
	.asciz	"Pin"                           @ string offset=3300
.Linfo_string256:
	.asciz	"Pull"                          @ string offset=3304
.Linfo_string257:
	.asciz	"Speed"                         @ string offset=3309
.Linfo_string258:
	.asciz	"Alternate"                     @ string offset=3315
.Linfo_string259:
	.asciz	"GPIO_InitTypeDef"              @ string offset=3325
.Linfo_string260:
	.asciz	"tmpreg"                        @ string offset=3342
	.ident	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
	.ARM_attribute	16, 1	@ Tag_AV_eba
	.section	.debug_line,"",%progbits
.Lline_table_start0:
