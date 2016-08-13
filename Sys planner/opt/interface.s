	.file	"Interface.cpp"
	.section	.text._ZNSt6vectorIjSaIjEED2Ev,"axG",@progbits,_ZNSt6vectorIjSaIjEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIjSaIjEED2Ev
	.type	_ZNSt6vectorIjSaIjEED2Ev, @function
_ZNSt6vectorIjSaIjEED2Ev:
.LFB1725:
	.cfi_startproc
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L5
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	_ZdlPv
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.L5:
	rep ret
	.cfi_endproc
.LFE1725:
	.size	_ZNSt6vectorIjSaIjEED2Ev, .-_ZNSt6vectorIjSaIjEED2Ev
	.weak	_ZNSt6vectorIjSaIjEED1Ev
	.set	_ZNSt6vectorIjSaIjEED1Ev,_ZNSt6vectorIjSaIjEED2Ev
	.section	.text._ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIS_IjSaIjEESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev
	.type	_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev, @function
_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev:
.LFB1710:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %r12
	movq	8(%rdi), %rbp
	movq	(%rdi), %rbx
	cmpq	%rbx, %rbp
	je	.L7
.L9:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L8
	call	_ZdlPv
.L8:
	addq	$24, %rbx
	cmpq	%rbx, %rbp
	jne	.L9
.L7:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L6
	call	_ZdlPv
.L6:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1710:
	.size	_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev, .-_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev
	.weak	_ZNSt6vectorIS_IjSaIjEESaIS1_EED1Ev
	.set	_ZNSt6vectorIS_IjSaIjEESaIS1_EED1Ev,_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev
	.text
	.globl	_Z4initj
	.type	_Z4initj, @function
_Z4initj:
.LFB1629:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	%edi, %r14d
	movl	%edi, %ebp
	testq	%rbp, %rbp
	je	.L35
	leaq	0(%rbp,%rbp,2), %rbx
	salq	$3, %rbx
	movq	%rbx, %rdi
	call	_Znwm
	leaq	(%rax,%rbx), %rsi
	movq	%rbp, %rcx
	movq	%rax, %rdx
.L16:
	testq	%rdx, %rdx
	je	.L15
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
.L15:
	addq	$24, %rdx
	subq	$1, %rcx
	jne	.L16
	jmp	.L13
.L35:
	movl	$0, %eax
	movl	$0, %esi
.L13:
	movq	Matrix(%rip), %r13
	movq	Matrix+8(%rip), %r12
	movq	%rax, Matrix(%rip)
	movq	%rsi, Matrix+8(%rip)
	movq	%rsi, Matrix+16(%rip)
	cmpq	%r12, %r13
	je	.L17
	movq	%r13, %rbx
.L19:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L18
	call	_ZdlPv
.L18:
	addq	$24, %rbx
	cmpq	%rbx, %r12
	jne	.L19
.L17:
	testq	%r13, %r13
	je	.L20
	movq	%r13, %rdi
	call	_ZdlPv
.L20:
	testl	%r14d, %r14d
	je	.L21
	leaq	0(,%rbp,4), %rax
	movq	%rax, 16(%rsp)
	movq	%rax, 24(%rsp)
	leal	-1(%r14), %eax
	movq	%rax, 8(%rsp)
	movq	$0, (%rsp)
.L29:
	testq	%rbp, %rbp
	je	.L36
	movq	16(%rsp), %rbx
	movq	%rbx, %rdi
	call	_Znwm
	leaq	(%rax,%rbx), %rcx
	movl	$0, %edx
.L24:
	movl	$0, (%rax,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, %rbp
	jne	.L24
	jmp	.L22
.L36:
	movq	24(%rsp), %rcx
	movl	$0, %eax
.L22:
	movq	(%rsp), %rsi
	leaq	(%rsi,%rsi,2), %rdx
	salq	$3, %rdx
	movq	%rdx, %r12
	addq	Matrix(%rip), %rdx
	movq	(%rdx), %rdi
	movq	%rax, (%rdx)
	movq	%rcx, 8(%rdx)
	movq	%rcx, 16(%rdx)
	testq	%rdi, %rdi
	je	.L25
	call	_ZdlPv
.L25:
	movq	(%rsp), %rax
	leal	1(%rax), %ebx
	movq	8(%rsp), %rsi
	cmpq	%rsi, %rax
	je	.L21
	movl	$1374389535, %r13d
.L30:
	call	rand
	movl	%eax, %ecx
	imull	%r13d
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	imull	$100, %edx, %edx
	subl	%edx, %ecx
	cmpl	setting(%rip), %ecx
	jg	.L26
	movl	%ebx, %edx
	movq	Matrix(%rip), %rax
	movq	(%rax,%r12), %rax
	leaq	(%rax,%rdx,4), %r15
	call	rand
	cltd
	idivl	setting+4(%rip)
	addl	$1, %edx
	movl	%edx, (%r15)
	jmp	.L27
.L26:
	movl	%ebx, %edx
	movq	Matrix(%rip), %rax
	movq	(%rax,%r12), %rax
	movl	$0, (%rax,%rdx,4)
.L27:
	addl	$1, %ebx
	cmpl	%ebx, %r14d
	ja	.L30
	addq	$1, (%rsp)
	jmp	.L29
.L21:
	testq	%rbp, %rbp
	je	.L37
	leaq	0(,%rbp,4), %rbx
	movq	%rbx, %rdi
	call	_Znwm
	leaq	(%rax,%rbx), %rcx
	movl	$0, %edx
.L33:
	movl	$0, (%rax,%rdx,4)
	addq	$1, %rdx
	cmpq	%rbp, %rdx
	jne	.L33
	jmp	.L31
.L37:
	movl	$0, %eax
	movl	$0, %ecx
.L31:
	movq	Vertices(%rip), %rdi
	movq	%rax, Vertices(%rip)
	movq	%rcx, Vertices+8(%rip)
	movq	%rcx, Vertices+16(%rip)
	testq	%rdi, %rdi
	je	.L12
	call	_ZdlPv
.L12:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1629:
	.size	_Z4initj, .-_Z4initj
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Matrix: "
.LC1:
	.string	"Nodes"
.LC2:
	.string	"%4d"
.LC3:
	.string	"\n %4d"
.LC4:
	.string	"~"
.LC5:
	.string	"%4s"
.LC6:
	.string	"\n"
	.text
	.globl	_Z11output_matrv
	.type	_Z11output_matrv, @function
_Z11output_matrv:
.LFB1637:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	$8, %edx
	movl	$.LC0, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L40
	call	_ZSt16__throw_bad_castv
.L40:
	cmpb	$0, 56(%rbx)
	je	.L41
	movzbl	67(%rbx), %eax
	jmp	.L42
.L41:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	call	*48(%rax)
.L42:
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	jne	.L43
	call	_ZSt16__throw_bad_castv
.L43:
	cmpb	$0, 56(%rbx)
	je	.L44
	movzbl	67(%rbx), %eax
	jmp	.L45
.L44:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	call	*48(%rax)
.L45:
	movsbl	%al, %esi
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$5, %edx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	Matrix+8(%rip), %rax
	subq	Matrix(%rip), %rax
	sarq	$3, %rax
	movabsq	$-6148914691236517205, %rdx
	imulq	%rdx, %rax
	testq	%rax, %rax
	je	.L46
	movl	$0, %ebx
	movq	%rdx, %rbp
.L48:
	movl	%ebx, %edx
	movl	$.LC2, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	addl	$1, %ebx
	movq	Matrix+8(%rip), %rdx
	movq	Matrix(%rip), %rax
	movl	%ebx, %esi
	movq	%rdx, %rcx
	subq	%rax, %rcx
	sarq	$3, %rcx
	imulq	%rbp, %rcx
	cmpq	%rcx, %rsi
	jb	.L48
	subq	%rax, %rdx
	sarq	$3, %rdx
	movabsq	$-6148914691236517205, %rcx
	movq	%rdx, %rax
	imulq	%rcx, %rax
	testq	%rax, %rax
	je	.L46
	movl	$0, %ebx
	movl	$0, %ebp
	movq	%rcx, %r12
.L53:
	movl	%ebp, %edx
	movl	$.LC3, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	movq	Matrix(%rip), %rax
	movq	Matrix+8(%rip), %rdx
	subq	%rax, %rdx
	sarq	$3, %rdx
	imulq	%r12, %rdx
	testq	%rdx, %rdx
	je	.L46
	leaq	(%rbx,%rbx,2), %r13
	salq	$3, %r13
	movl	$0, %ecx
	movl	$0, %ebx
.L52:
	cmpl	%ebx, %ebp
	je	.L49
	movq	(%rax,%r13), %rax
	movl	(%rax,%rcx,4), %edx
	movl	$.LC2, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	jmp	.L50
.L49:
	movl	$.LC4, %edx
	movl	$.LC5, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.L50:
	addl	$1, %ebx
	movl	%ebx, %ecx
	movq	Matrix+8(%rip), %rdx
	movq	Matrix(%rip), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	sarq	$3, %rsi
	imulq	%r12, %rsi
	cmpq	%rsi, %rcx
	jb	.L52
	addl	$1, %ebp
	movl	%ebp, %ebx
	cmpq	%rsi, %rbx
	jb	.L53
.L46:
	movl	$.LC6, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1637:
	.size	_Z11output_matrv, .-_Z11output_matrv
	.section	.rodata.str1.1
.LC7:
	.string	"No critical vertices found"
.LC8:
	.string	"Critical vertices:\n"
.LC9:
	.string	"%3d"
	.text
	.globl	_Z9print_resv
	.type	_Z9print_resv, @function
_Z9print_resv:
.LFB1638:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	Result+8(%rip), %rax
	subq	Result(%rip), %rax
	sarq	$2, %rax
	testq	%rax, %rax
	jne	.L56
	movl	$.LC7, %esi
	movl	$1, %edi
	call	__printf_chk
	jmp	.L55
.L56:
	movl	$.LC8, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	movq	Result+8(%rip), %rbx
	subq	Result(%rip), %rbx
	sarq	$2, %rbx
	subl	$1, %ebx
	js	.L55
.L58:
	movslq	%ebx, %rdx
	movq	Result(%rip), %rax
	movl	(%rax,%rdx,4), %edx
	movl	$.LC9, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	subl	$1, %ebx
	jns	.L58
.L55:
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1638:
	.size	_Z9print_resv, .-_Z9print_resv
	.section	.rodata.str1.1
.LC10:
	.string	"vector::_M_emplace_back_aux"
	.section	.text._ZNSt6vectorIjSaIjEE19_M_emplace_back_auxIIjEEEvDpOT_,"axG",@progbits,_ZNSt6vectorIjSaIjEE19_M_emplace_back_auxIIjEEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorIjSaIjEE19_M_emplace_back_auxIIjEEEvDpOT_
	.type	_ZNSt6vectorIjSaIjEE19_M_emplace_back_auxIIjEEEvDpOT_, @function
_ZNSt6vectorIjSaIjEE19_M_emplace_back_auxIIjEEEvDpOT_:
.LFB1892:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %rbx
	movq	%rsi, %r12
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$2, %rax
	testq	%rax, %rax
	je	.L67
	leaq	(%rax,%rax), %rdx
	cmpq	%rdx, %rax
	ja	.L68
	movabsq	$4611686018427387903, %r13
	cmpq	%r13, %rdx
	cmovbe	%rdx, %r13
	movl	$0, %ebp
	testq	%r13, %r13
	je	.L63
	jmp	.L62
.L67:
	movl	$1, %r13d
	jmp	.L62
.L68:
	movabsq	$4611686018427387903, %r13
.L62:
	leaq	0(,%r13,4), %rdi
	call	_Znwm
	movq	%rax, %rbp
.L63:
	movq	8(%rbx), %rax
	subq	(%rbx), %rax
	andq	$-4, %rax
	movl	(%r12), %edx
	addq	%rbp, %rax
	je	.L64
	movl	%edx, (%rax)
.L64:
	movq	(%rbx), %rsi
	movq	8(%rbx), %r12
	subq	%rsi, %r12
	sarq	$2, %r12
	testq	%r12, %r12
	je	.L65
	leaq	0(,%r12,4), %rdx
	movq	%rbp, %rdi
	call	memmove
.L65:
	leaq	4(%rbp,%r12,4), %r12
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L66
	call	_ZdlPv
.L66:
	movq	%rbp, (%rbx)
	movq	%r12, 8(%rbx)
	leaq	0(%rbp,%r13,4), %rax
	movq	%rax, 16(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1892:
	.size	_ZNSt6vectorIjSaIjEE19_M_emplace_back_auxIIjEEEvDpOT_, .-_ZNSt6vectorIjSaIjEE19_M_emplace_back_auxIIjEEEvDpOT_
	.weak	_ZNSt6vectorIjSaIjEE19_M_emplace_back_auxIJjEEEvDpOT_
	.set	_ZNSt6vectorIjSaIjEE19_M_emplace_back_auxIJjEEEvDpOT_,_ZNSt6vectorIjSaIjEE19_M_emplace_back_auxIIjEEEvDpOT_
	.section	.text._ZNSt6vectorIjSaIjEE12emplace_backIIjEEEvDpOT_,"axG",@progbits,_ZNSt6vectorIjSaIjEE12emplace_backIIjEEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorIjSaIjEE12emplace_backIIjEEEvDpOT_
	.type	_ZNSt6vectorIjSaIjEE12emplace_backIIjEEEvDpOT_, @function
_ZNSt6vectorIjSaIjEE12emplace_backIIjEEEvDpOT_:
.LFB1825:
	.cfi_startproc
	movq	8(%rdi), %rax
	cmpq	16(%rdi), %rax
	je	.L72
	movl	(%rsi), %edx
	testq	%rax, %rax
	je	.L73
	movl	%edx, (%rax)
.L73:
	addq	$4, 8(%rdi)
	ret
.L72:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	_ZNSt6vectorIjSaIjEE19_M_emplace_back_auxIIjEEEvDpOT_
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1825:
	.size	_ZNSt6vectorIjSaIjEE12emplace_backIIjEEEvDpOT_, .-_ZNSt6vectorIjSaIjEE12emplace_backIIjEEEvDpOT_
	.weak	_ZNSt6vectorIjSaIjEE12emplace_backIJjEEEvDpOT_
	.set	_ZNSt6vectorIjSaIjEE12emplace_backIJjEEEvDpOT_,_ZNSt6vectorIjSaIjEE12emplace_backIIjEEEvDpOT_
	.text
	.globl	_Z4calcv
	.type	_Z4calcv, @function
_Z4calcv:
.LFB1636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	Vertices(%rip), %rax
	movq	Vertices+8(%rip), %rdx
	subq	%rax, %rdx
	sarq	$2, %rdx
	testq	%rdx, %rdx
	je	.L77
	movl	$0, %ecx
	movl	$0, %edx
.L78:
	movl	$0, (%rax,%rcx,4)
	addl	$1, %edx
	movl	%edx, %ecx
	movq	Vertices(%rip), %rax
	movq	Vertices+8(%rip), %rsi
	subq	%rax, %rsi
	sarq	$2, %rsi
	cmpq	%rsi, %rcx
	jb	.L78
.L77:
	movq	Matrix(%rip), %r8
	movq	Matrix+8(%rip), %rax
	subq	%r8, %rax
	sarq	$3, %rax
	movabsq	$-6148914691236517205, %rdx
	imulq	%rdx, %rax
	testq	%rax, %rax
	je	.L79
	movl	$0, %r11d
	movl	$0, %eax
	movl	$0, %esi
	movq	%rdx, %rbp
	jmp	.L80
.L84:
	movq	(%rdx), %rcx
	movl	(%rcx,%r9), %ecx
	testl	%ecx, %ecx
	je	.L81
	addl	(%r10,%rax), %ecx
	cmpl	%ecx, %esi
	cmovb	%ecx, %esi
.L81:
	addq	$24, %rdx
	addq	$4, %rax
	cmpq	%rdi, %rax
	jne	.L84
	jmp	.L83
.L99:
	movl	$0, %esi
.L83:
	movl	%ebx, %eax
.L80:
	movq	Vertices(%rip), %rdx
	movl	%esi, (%rdx,%r11,4)
	leal	1(%rax), %ebx
	movl	%ebx, %r11d
	movq	Matrix(%rip), %r8
	movq	Matrix+8(%rip), %rdx
	subq	%r8, %rdx
	sarq	$3, %rdx
	imulq	%rbp, %rdx
	cmpq	%rdx, %r11
	jnb	.L79
	testl	%ebx, %ebx
	je	.L99
	leaq	0(,%r11,4), %r9
	movq	Vertices(%rip), %r10
	movq	%r8, %rdx
	movl	%eax, %eax
	leaq	4(,%rax,4), %rdi
	movl	$0, %eax
	movl	$0, %esi
	jmp	.L84
.L79:
	movq	Vertices(%rip), %rsi
	movq	Vertices+8(%rip), %rax
	subq	%rsi, %rax
	sarq	$2, %rax
	leaq	-1(%rax), %rbx
	leaq	-4(,%rax,4), %rax
.L89:
	leal	-1(%rbx), %edx
.L94:
	testl	%edx, %edx
	js	.L85
	movslq	%edx, %rcx
	leaq	(%rcx,%rcx,2), %rdi
	movq	(%r8,%rdi,8), %rdi
	movl	(%rdi,%rax), %edi
	movl	%edi, %r11d
	addl	(%rsi,%rcx,4), %r11d
	cmpl	%r11d, (%rsi,%rax)
	jne	.L86
	testl	%edi, %edi
	je	.L86
	jmp	.L85
.L95:
	movl	%ebx, %ebp
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L76
	.p2align 4,,7
	jmp	.L100
.L101:
	subq	$1, %rbx
	.p2align 4,,3
	jmp	.L89
.L100:
	movl	%ebx, 12(%rsp)
	leaq	12(%rsp), %rsi
	movl	$Result, %edi
	call	_ZNSt6vectorIjSaIjEE12emplace_backIIjEEEvDpOT_
	testl	%ebx, %ebx
	jle	.L76
.L93:
	leal	-1(%rbp), %ebx
	movq	Vertices(%rip), %rsi
	movslq	%ebp, %rcx
	salq	$2, %rcx
	leaq	(%rsi,%rcx), %r8
	movq	Matrix(%rip), %rdi
.L97:
	testl	%ebx, %ebx
	js	.L90
	movslq	%ebx, %rax
	leaq	(%rax,%rax,2), %rdx
	movq	(%rdi,%rdx,8), %rdx
	movl	(%rdx,%rcx), %edx
	movl	%edx, %r10d
	addl	(%rsi,%rax,4), %r10d
	cmpl	%r10d, (%r8)
	jne	.L91
	testl	%edx, %edx
	je	.L91
	movl	%ebx, %ebp
	movl	%ebx, 12(%rsp)
	leaq	12(%rsp), %rsi
	movl	$Result, %edi
	call	_ZNSt6vectorIjSaIjEE12emplace_backIIjEEEvDpOT_
.L98:
	testl	%ebp, %ebp
	jle	.L76
	movl	%ebx, %ebp
	jmp	.L93
.L86:
	subl	$1, %edx
	.p2align 4,,4
	jmp	.L94
.L85:
	movl	(%rsi,%rax), %ecx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx,2), %rdi
	movq	(%r8,%rdi,8), %rdi
	movl	(%rsi,%rdx,4), %edx
	addl	(%rdi,%rax), %edx
	subq	$4, %rax
	cmpl	%edx, %ecx
	jne	.L101
	jmp	.L95
.L91:
	subl	$1, %ebx
	jmp	.L97
.L90:
	movl	%ebx, %ebp
	.p2align 4,,6
	jmp	.L98
.L76:
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1636:
	.size	_Z4calcv, .-_Z4calcv
	.type	_GLOBAL__sub_I_Matrix, @function
_GLOBAL__sub_I_Matrix:
.LFB1992:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
	movq	$0, Matrix(%rip)
	movq	$0, Matrix+8(%rip)
	movq	$0, Matrix+16(%rip)
	movl	$__dso_handle, %edx
	movl	$Matrix, %esi
	movl	$_ZNSt6vectorIS_IjSaIjEESaIS1_EED1Ev, %edi
	call	__cxa_atexit
	movq	$0, Vertices(%rip)
	movq	$0, Vertices+8(%rip)
	movq	$0, Vertices+16(%rip)
	movl	$__dso_handle, %edx
	movl	$Vertices, %esi
	movl	$_ZNSt6vectorIjSaIjEED1Ev, %edi
	call	__cxa_atexit
	movq	$0, Result(%rip)
	movq	$0, Result+8(%rip)
	movq	$0, Result+16(%rip)
	movl	$__dso_handle, %edx
	movl	$Result, %esi
	movl	$_ZNSt6vectorIjSaIjEED1Ev, %edi
	call	__cxa_atexit
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1992:
	.size	_GLOBAL__sub_I_Matrix, .-_GLOBAL__sub_I_Matrix
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_Matrix
	.globl	setting
	.data
	.align 4
	.type	setting, @object
	.size	setting, 8
setting:
	.long	50
	.long	20
	.globl	Result
	.bss
	.align 16
	.type	Result, @object
	.size	Result, 24
Result:
	.zero	24
	.globl	Vertices
	.align 16
	.type	Vertices, @object
	.size	Vertices, 24
Vertices:
	.zero	24
	.globl	Matrix
	.align 16
	.type	Matrix, @object
	.size	Matrix, 24
Matrix:
	.zero	24
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
