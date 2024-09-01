.intel_syntax noprefix

.data
	
	zbir: .asciz "zbir: %d;\n"
	razlika: .asciz "razlika: %d;\n"
	proizvod: .asciz "proizvod: %d;\n"
	kolicnik: .asciz "kolicnik: %d;\n"
	ostatak: .asciz "ostatak: %d;\n"
	bitovskaK: .asciz "bitovka konjukcija: %d;\n"
	bitovskaD: .asciz "bitovska disjunkcija: %d;\n"
	bitovskaN1: .asciz "bitovska negacija prvog: %d;\n"
	bitovskaN2: .asciz "bitovska negacija drugog: %d;\n"
	shiftL: .asciz "shift ulevo: %d;\n"
	shiftD: .asciz "sift udesno: %d;\n"
#			rdi			  rsi		

.global aritmetika

aritmetika:

	push rbp
	mov rbp, rsp

	push r12
	push r13
	mov r12, rdi
	mov r13, rsi

	lea rdi, [rip+zbir]
	mov rsi, r12
	add rsi, r13
	call printf
	mov rax, 0

	lea rdi, [rip+razlika]
	mov rsi, r12
	sub rsi, r13
	call printf
	mov rax, 0

	lea rdi, [rip+proizvod]
	mov rax, r12
	imul r13
	mov rsi, rax
	call printf
	mov rax, 0

	xor rdx, rdx

	lea rdi, [rip+kolicnik]
	mov rax, r12
	idiv r13
	mov rsi, rax
	call printf
	mov rax, 0

	lea rdi, [rip+ostatak]
	mov rsi, rdx
	not rsi
	call printf
	mov rax, 0

	lea rdi, [rip+bitovskaD]
	mov rsi, r12
	or rsi, r13
	call printf
	mov rax, 0

	lea rdi, [rip+bitovskaK]
	mov rsi, r12
	and rsi ,r13
	call printf
	mov rax, 0

	lea rdi, [rip+bitovskaN1]
	mov rsi, r12
	not rsi
	call printf
	mov rax, 0

	lea rdi, [rip+bitovskaN2]
	mov rsi, r13
	not rsi
	call printf
	mov rax, 0

	lea rdi, [rip+shiftD]
	mov rsi, r12
	mov rcx, r13
	shr rsi, rcx
	call printf
	mov rax, 0

	lea rdi, [rip+shiftL]
	mov rsi, r12
	mov rcx, r13
	shl rsi, rcx
	call printf
	mov rax, 0

	pop r13
	pop r12
	
	mov rsp, rbp
	pop rbp
	ret

