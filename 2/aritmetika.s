.intel_syntax noprefix

.data
    zbir: .asciz "zbir: %d;\n"
	razlika: .asciz "razlika: %d;\n"
	proizvod: .asciz "proizvod: %d;\n"
	kolicnik: .asciz "kolicnik: %d;\n"
    suprotnavr: .asciz "suprotna vr: %d;\n"
	konjukcija: .asciz "bitovka konjukcija: %d;\n"
	disjunkcija: .asciz "bitovska disjunkcija: %d;\n"
	negacija: .asciz "bitovska negacija: %d;\n"
	levo: .asciz "shift u levo: %d;\n"
	desno: .asciz "shift u desno: %d;\n"
.text
.global aritmetika
#extern void aritmetika(int,int);
#global
#       eax             edi esi
aritmetika:
    #pocetak
    push rbp
    mov rbp,rsp
    #sub rsp, 32

    #pamcenje informacija
    mov r12d, edi
    mov r13d, esi

    #sabiranje
    lea rdi, zbir
    mov esi, r12d
    add esi, r13d
    call printf
    mov rax, 0

    #oduzimanje
    lea rdi, razlika
    mov edx, r12d
    sub edx, r13d
    call printf
    mov rax, 0

    #proizvod
    lea rdi, proizvod
    mov eax, r12d
    imul r13d
    mov ecx, eax
    call printf
    mov rax, 0

    #kolicnik
    lea rdi, kolicnik
    mov eax, r12d
    cdq
    idiv r13d
    mov r8d, eax
    call printf
    mov rax, 0

    #suprotna vrednost
    lea rdi, suprotnavr
    mov r14d, r12d
    neg r14d
    call printf
    mov rax, 0

    #konjukcija
    lea rdi, konjukcija
    mov r15d, r12d
    and r15d, r13d
    call printf
    mov rax, 0

    #disjunkcija
    lea rdi,disjunkcija
    mov r15d, r12d
    or r15d, r13d
    call printf
    mov rax, 0

    #negacija
    lea rdi, negacija
    mov r15d, r12d
    not r15d
    call printf
    mov rax, 0

    #shift levo
    lea rdi, levo
    mov r15d, r12d
    mov r14d, r13d
    shl r15d, r14d
    call printf
    mov rax, 0

    #shift desno
    lea rdi, desno
    mov r15d, r12d
    mov r14d, r13d
    sar r15d, r14d
    call printf
    mov rax, 0

    #kraj
    mov rsp,rbp
    pop rbp
    ret
