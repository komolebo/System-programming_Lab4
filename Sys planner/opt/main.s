	.file	"Main.cpp"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"stoi"
.LC1:
	.string	"Dim-> "
.LC2:
	.string	"Time taken: "
	.text
	.globl	main
	.type	main, @function
main:
.LFB1266:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1266
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	cmpl	$1, %edi
	jle	.L2
	movq	8(%rsi), %rsi
	leaq	14(%rsp), %rdx
	leaq	16(%rsp), %rdi
.LEHB0:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE0:
	movq	16(%rsp), %rbx
	call	__errno_location
	movq	%rax, %rbp
	movl	$0, (%rax)
	movl	$10, %edx
	leaq	24(%rsp), %rsi
	movq	%rbx, %rdi
	call	strtol
	cmpq	24(%rsp), %rbx
	jne	.L3
	movl	$.LC0, %edi
.LEHB1:
	call	_ZSt24__throw_invalid_argumentPKc
.L3:
	cmpl	$34, 0(%rbp)
	je	.L4
	movl	$2147483648, %ecx
	addq	%rax, %rcx
	movl	$4294967295, %edx
	cmpq	%rdx, %rcx
	jbe	.L5
.L4:
	movl	$.LC0, %edi
	call	_ZSt20__throw_out_of_rangePKc
.LEHE1:
.L5:
	movl	%eax, 24(%rsp)
	movq	16(%rsp), %rax
	leaq	-24(%rax), %rdi
	leaq	15(%rsp), %rsi
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
	jmp	.L6
.L2:
	movl	$.LC1, %esi
	movl	$_ZSt4cout, %edi
.LEHB2:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	leaq	24(%rsp), %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSi10_M_extractIjEERSiRT_
	jmp	.L6
.L8:
	movq	%rax, %rbx
	movq	16(%rsp), %rax
	leaq	-24(%rax), %rdi
	leaq	15(%rsp), %rsi
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
	movq	%rbx, %rdi
	call	_Unwind_Resume
.L6:
	movl	24(%rsp), %edi
	call	_Z4initj
	call	clock
	movq	%rax, %rbx
	call	_Z4calcv
	call	clock
	movq	%rax, %rbp
	movl	$.LC2, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	subq	%rbx, %rbp
	cvtsi2sdq	%rbp, %xmm0
	divsd	.LC3(%rip), %xmm0
	movq	%rax, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.LEHE2:
	movl	$0, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1266:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1266:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1266-.LLSDACSB1266
.LLSDACSB1266:
	.uleb128 .LEHB0-.LFB1266
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1266
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L8-.LFB1266
	.uleb128 0
	.uleb128 .LEHB2-.LFB1266
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1266:
	.text
	.size	main, .-main
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB1424:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1424:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	0
	.long	1093567616
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
