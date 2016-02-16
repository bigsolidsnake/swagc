	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_printSent
	.align	4, 0x90
_printSent:                             ## @printSent
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp2:
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	call	_rand
	lea	rcx, [rip + _printSent.subs]
	mov	edx, 5
	mov	dword ptr [rbp - 28], edx ## 4-byte Spill
	cdq
	mov	esi, dword ptr [rbp - 28] ## 4-byte Reload
	idiv	esi
	movsxd	rdi, edx
	mov	rcx, qword ptr [rcx + 8*rdi]
	mov	qword ptr [rbp - 8], rcx
	call	_rand
	lea	rcx, [rip + _printSent.adjs]
	mov	edx, 3
	mov	dword ptr [rbp - 32], edx ## 4-byte Spill
	cdq
	mov	esi, dword ptr [rbp - 32] ## 4-byte Reload
	idiv	esi
	movsxd	rdi, edx
	mov	rcx, qword ptr [rcx + 8*rdi]
	mov	qword ptr [rbp - 16], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rip + _printSent.subs]
	call	_strcmp
	cmp	eax, 0
	je	LBB0_2
## BB#1:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rip + _printSent.subs+16]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_3
LBB0_2:
	lea	rax, [rip + L_.str8]
	mov	qword ptr [rbp - 24], rax
	jmp	LBB0_7
LBB0_3:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rip + _printSent.subs+8]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_5
## BB#4:
	lea	rax, [rip + L_.str9]
	mov	qword ptr [rbp - 24], rax
	jmp	LBB0_6
LBB0_5:
	lea	rax, [rip + L_.str10]
	mov	qword ptr [rbp - 24], rax
LBB0_6:
	jmp	LBB0_7
LBB0_7:
	lea	rdi, [rip + L_.str11]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 16]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp5:
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	xor	eax, eax
	mov	edi, eax
	mov	dword ptr [rbp - 4], 0
	call	_time
	mov	ecx, eax
	mov	edi, ecx
	call	_srand
	mov	dword ptr [rbp - 8], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8], 100
	jge	LBB1_4
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	call	_printSent
## BB#3:                                ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	LBB1_1
LBB1_4:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc

	.section	__DATA,__data
	.align	4                       ## @printSent.subs
_printSent.subs:
	.quad	L_.str
	.quad	L_.str1
	.quad	L_.str2
	.quad	L_.str3
	.quad	L_.str4

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"You"

L_.str1:                                ## @.str1
	.asciz	"I"

L_.str2:                                ## @.str2
	.asciz	"They"

L_.str3:                                ## @.str3
	.asciz	"He"

L_.str4:                                ## @.str4
	.asciz	"She"

	.section	__DATA,__data
	.align	4                       ## @printSent.adjs
_printSent.adjs:
	.quad	L_.str5
	.quad	L_.str6
	.quad	L_.str7

	.section	__TEXT,__cstring,cstring_literals
L_.str5:                                ## @.str5
	.asciz	"Cool"

L_.str6:                                ## @.str6
	.asciz	"Nice"

L_.str7:                                ## @.str7
	.asciz	"Stupid"

L_.str8:                                ## @.str8
	.asciz	"are"

L_.str9:                                ## @.str9
	.asciz	"am"

L_.str10:                               ## @.str10
	.asciz	"is"

L_.str11:                               ## @.str11
	.asciz	"%s %s %s\n"


.subsections_via_symbols
