	.file	"stub.cpp"
	.section .rdata,"dr"
__ZStL19piecewise_construct:
	.space 1
.lcomm __ZStL8__ioinit,1,1
	.section	shell,"x"
	.globl	@_Z9stubEntryv@0
	.def	@_Z9stubEntryv@0;	.scl	2;	.type	32;	.endef
@_Z9stubEntryv@0:
LFB2002:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	addl	$-128, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	$1147958354, -84(%ebp)
	movl	$1836016485, -80(%ebp)
	movl	$1936028272, -76(%ebp)
	movl	$1718960755, -72(%ebp)
	movl	$7497062, -68(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	@_Z16blindFetchWinAPIPc@4
	movl	%eax, -12(%ebp)
	movl	$1835216947, -89(%ebp)
	movb	$0, -85(%ebp)
	leal	-89(%ebp), %eax
	movl	%eax, %ecx
	call	@_Z19getSectionHdrByNamePc@4
	movl	%eax, -16(%ebp)
	movl	$0, -96(%ebp)
	movl	$48, -28(%ebp)
	movl	-28(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	$48, -36(%ebp)
	movl	-36(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	60(%eax), %eax
	addl	%edx, %eax
	addl	$248, %eax
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	$48, -44(%ebp)
	movl	-44(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	8(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	addl	%ecx, %eax
	movl	%eax, %esi
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	$48, -52(%ebp)
	movl	-52(%ebp), %ecx
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%ecx), %ecx 
 # 0 "" 2
/NO_APP
	movl	%ecx, -56(%ebp)
	movl	-56(%ebp), %ecx
	movl	8(%ecx), %ebx
	movl	-20(%ebp), %ecx
	movl	12(%ecx), %ecx
	addl	%ebx, %ecx
	movl	%ecx, %ebx
	leal	-96(%ebp), %ecx
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	$2, (%esp)
	movl	-12(%ebp), %eax
	call	*%eax
	subl	$24, %esp
	testl	%eax, %eax
	sete	%al
	movb	%al, -21(%ebp)
	call	@_Z6fixIatv@0
	movl	$48, -60(%ebp)
	movl	-60(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	8(%eax), %ebx
	call	@_Z16getPackingRecordv@0
	movl	120(%eax), %eax
	addl	%ebx, %eax
	call	*%eax
	nop
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2002:
	.globl	@_Z8mystrcmpPcS_@8
	.def	@_Z8mystrcmpPcS_@8;	.scl	2;	.type	32;	.endef
@_Z8mystrcmpPcS_@8:
LFB1994:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	%ecx, -4(%ebp)
	movl	%edx, -8(%ebp)
L11:
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L8
	movl	-4(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -4(%ebp)
	movzbl	(%eax), %ecx
	movl	-8(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -8(%ebp)
	movzbl	(%eax), %eax
	cmpb	%al, %cl
	jne	L8
	movl	$1, %eax
	jmp	L9
L8:
	movl	$0, %eax
L9:
	testb	%al, %al
	je	L10
	jmp	L11
L10:
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	sete	%al
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1994:
	.globl	@_Z9getWinAPIjPc@8
	.def	@_Z9getWinAPIjPc@8;	.scl	2;	.type	32;	.endef
@_Z9getWinAPIjPc@8:
LFB1995:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -36(%ebp)
	movl	%edx, -40(%ebp)
	movl	-36(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	addl	$120, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	L14
	movl	$0, %eax
	jmp	L15
L14:
	movl	-16(%ebp), %eax
	movl	32(%eax), %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	movl	36(%eax), %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%ebp)
	movl	-16(%ebp), %eax
	movl	28(%eax), %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -28(%ebp)
	movl	$0, -4(%ebp)
L18:
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, -4(%ebp)
	jnb	L16
	movl	-4(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, %ecx
	call	@_Z8mystrcmpPcS_@8
	testb	%al, %al
	je	L17
	movl	-4(%ebp), %eax
	leal	(%eax,%eax), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	leal	0(,%eax,4), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	jmp	L15
L17:
	addl	$1, -4(%ebp)
	jmp	L18
L16:
	movl	$0, %eax
L15:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1995:
	.globl	@_Z16blindFetchWinAPIPc@4
	.def	@_Z16blindFetchWinAPIPc@4;	.scl	2;	.type	32;	.endef
@_Z16blindFetchWinAPIPc@4:
LFB1996:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$36, %esp
	movl	%ecx, -36(%ebp)
	movl	$48, -20(%ebp)
	movl	-20(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	addl	$20, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
L24:
	movl	-28(%ebp), %eax
	cmpl	%eax, -8(%ebp)
	je	L21
	movl	-28(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	-36(%ebp), %edx
	movl	%eax, %ecx
	call	@_Z9getWinAPIjPc@8
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L22
	movl	-16(%ebp), %eax
	jmp	L25
L22:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	L24
L21:
	movl	$0, %eax
L25:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1996:
	.globl	@_Z19getSectionHdrByNamePc@4
	.def	@_Z19getSectionHdrByNamePc@4;	.scl	2;	.type	32;	.endef
@_Z19getSectionHdrByNamePc@4:
LFB1997:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$52, %esp
	movl	%ecx, -52(%ebp)
	movl	$48, -20(%ebp)
	movl	-20(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	$48, -12(%ebp)
	movl	-12(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	60(%eax), %eax
	addl	%edx, %eax
	addl	$248, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -4(%ebp)
L34:
	movl	$48, -36(%ebp)
	movl	-36(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	8(%eax), %edx
	movl	$48, -28(%ebp)
	movl	-28(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	60(%eax), %eax
	addl	%edx, %eax
	movzwl	6(%eax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, -4(%ebp)
	setb	%al
	testb	%al, %al
	je	L31
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, %ecx
	movl	-52(%ebp), %eax
	movl	%eax, %edx
	call	@_Z8mystrcmpPcS_@8
	testb	%al, %al
	je	L32
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	jmp	L33
L32:
	addl	$1, -4(%ebp)
	jmp	L34
L31:
	movl	$0, %eax
L33:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1997:
	.globl	@_Z8myMemcpyPvS_i@12
	.def	@_Z8myMemcpyPvS_i@12;	.scl	2;	.type	32;	.endef
@_Z8myMemcpyPvS_i@12:
LFB1998:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -36(%ebp)
	movl	%edx, -40(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	shrl	$2, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -12(%ebp)
L37:
	movl	-12(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jge	L36
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
	addl	$4, -4(%ebp)
	addl	$4, -8(%ebp)
	addl	$1, -12(%ebp)
	jmp	L37
L36:
	movl	8(%ebp), %eax
	andl	$3, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
L39:
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jge	L40
	movl	-8(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -4(%ebp)
	addl	$1, -8(%ebp)
	addl	$1, -16(%ebp)
	jmp	L39
L40:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE1998:
	.globl	@_Z16getPackingRecordv@0
	.def	@_Z16getPackingRecordv@0;	.scl	2;	.type	32;	.endef
@_Z16getPackingRecordv@0:
LFB1999:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	movl	$7828526, -20(%ebp)
	leal	-20(%ebp), %eax
	movl	%eax, %ecx
	call	@_Z19getSectionHdrByNamePc@4
	movl	%eax, -4(%ebp)
	movl	$48, -12(%ebp)
	movl	-12(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	addl	%edx, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1999:
	.globl	@_Z14restoreDataDirv@0
	.def	@_Z14restoreDataDirv@0;	.scl	2;	.type	32;	.endef
@_Z14restoreDataDirv@0:
LFB2000:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$104, %esp
	movl	$1953655126, -75(%ebp)
	movl	$1349280117, -71(%ebp)
	movl	$1702129522, -67(%ebp)
	movw	$29795, -63(%ebp)
	movb	$0, -61(%ebp)
	leal	-75(%ebp), %eax
	movl	%eax, %ecx
	call	@_Z16blindFetchWinAPIPc@4
	movl	%eax, -12(%ebp)
	movl	$48, -16(%ebp)
	movl	-16(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%eax), %edx
	movl	$48, -24(%ebp)
	movl	-24(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	60(%eax), %eax
	addl	%edx, %eax
	leal	120(%eax), %edx
	leal	-80(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	$120, 4(%esp)
	movl	%edx, (%esp)
	movl	-12(%ebp), %eax
	call	*%eax
	subl	$16, %esp
	call	@_Z16getPackingRecordv@0
	movl	%eax, %ecx
	movl	$48, -32(%ebp)
	movl	-32(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	8(%eax), %edx
	movl	$48, -40(%ebp)
	movl	-40(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	60(%eax), %eax
	addl	%edx, %eax
	addl	$120, %eax
	movl	$120, (%esp)
	movl	%ecx, %edx
	movl	%eax, %ecx
	call	@_Z8myMemcpyPvS_i@12
	subl	$4, %esp
	movl	-80(%ebp), %eax
	movl	$48, -48(%ebp)
	movl	-48(%ebp), %edx
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%edx), %edx 
 # 0 "" 2
/NO_APP
	movl	%edx, -52(%ebp)
	movl	-52(%ebp), %edx
	movl	8(%edx), %ecx
	movl	$48, -56(%ebp)
	movl	-56(%ebp), %edx
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%edx), %edx 
 # 0 "" 2
/NO_APP
	movl	%edx, -60(%ebp)
	movl	-60(%ebp), %edx
	movl	8(%edx), %edx
	movl	60(%edx), %edx
	addl	%ecx, %edx
	leal	120(%edx), %ecx
	leal	-80(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$120, 4(%esp)
	movl	%ecx, (%esp)
	movl	-12(%ebp), %eax
	call	*%eax
	subl	$16, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2000:
	.globl	@_Z6fixIatv@0
	.def	@_Z6fixIatv@0;	.scl	2;	.type	32;	.endef
@_Z6fixIatv@0:
LFB2001:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$148, %esp
	.cfi_offset 3, -12
	movl	$1684107084, -121(%ebp)
	movl	$1919052108, -117(%ebp)
	movl	$1098478177, -113(%ebp)
	movb	$0, -109(%ebp)
	leal	-121(%ebp), %eax
	movl	%eax, %ecx
	call	@_Z16blindFetchWinAPIPc@4
	movl	%eax, -28(%ebp)
	movl	$1349805383, -136(%ebp)
	movl	$1097035634, -132(%ebp)
	movl	$1701995620, -128(%ebp)
	movw	$29555, -124(%ebp)
	movb	$0, -122(%ebp)
	leal	-136(%ebp), %eax
	movl	%eax, %ecx
	call	@_Z16blindFetchWinAPIPc@4
	movl	%eax, -32(%ebp)
	call	@_Z14restoreDataDirv@0
	call	@_Z16getPackingRecordv@0
	addl	$8, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$48, -72(%ebp)
	movl	-72(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	movl	8(%eax), %edx
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	addl	%edx, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -12(%ebp)
L67:
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L53
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L71
L53:
	movl	$48, -80(%ebp)
	movl	-80(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	addl	%edx, %eax
	movl	%eax, -48(%ebp)
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L56
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
L56:
	movl	$48, -88(%ebp)
	movl	-88(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -92(%ebp)
	movl	-92(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%ebp)
	movl	$48, -96(%ebp)
	movl	-96(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -100(%ebp)
	movl	-100(%ebp), %eax
	movl	8(%eax), %edx
	movl	-52(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%ebp)
L66:
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L72
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	L61
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, %ebx
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	movl	-28(%ebp), %eax
	call	*%eax
	subl	$4, %esp
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	-32(%ebp), %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -56(%ebp)
	movl	-24(%ebp), %eax
	movl	-56(%ebp), %edx
	movl	%edx, (%eax)
L61:
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	L62
	movl	$48, -104(%ebp)
	movl	-104(%ebp), %eax
/APP
 # 1454 "C:/mingw/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -108(%ebp)
	movl	-108(%ebp), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	addl	%edx, %eax
	movl	%eax, -60(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	L64
	movl	$0, %eax
	jmp	L68
L64:
	movl	-60(%ebp), %eax
	addl	$2, %eax
	movl	%eax, -64(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	movl	-28(%ebp), %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	-32(%ebp), %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -68(%ebp)
	movl	-24(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%edx, (%eax)
L62:
	addl	$4, -20(%ebp)
	addl	$4, -24(%ebp)
	jmp	L66
L72:
	nop
	addl	$20, -12(%ebp)
	jmp	L67
L71:
	nop
	movl	$1, %eax
L68:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2001:
	.section	.text$__tcf_0,"x"
	.def	___tcf_0;	.scl	3;	.type	32;	.endef
___tcf_0:
LFB2484:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	$__ZStL8__ioinit, %ecx
	call	__ZNSt8ios_base4InitD1Ev
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2484:
	.section	.text$_Z41__static_initialization_and_destruction_0ii,"x"
	.def	__Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
__Z41__static_initialization_and_destruction_0ii:
LFB2483:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$1, 8(%ebp)
	jne	L76
	cmpl	$65535, 12(%ebp)
	jne	L76
	movl	$__ZStL8__ioinit, %ecx
	call	__ZNSt8ios_base4InitC1Ev
	movl	$___tcf_0, (%esp)
	call	_atexit
L76:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2483:
	.section	.text$_GLOBAL__sub_I___Z8mystrcmpPcS__8,"x"
	.def	__GLOBAL__sub_I___Z8mystrcmpPcS__8;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_I___Z8mystrcmpPcS__8:
LFB2485:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	__Z41__static_initialization_and_destruction_0ii
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2485:
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__sub_I___Z8mystrcmpPcS__8
	.ident	"GCC: (i686-win32-dwarf-rev1, Built by MinGW-W64 project) 7.2.0"
	.def	__ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	_atexit;	.scl	2;	.type	32;	.endef
