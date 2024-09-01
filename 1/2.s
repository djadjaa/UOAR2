#posto rax ima 8 bajta, ako nam treba tip manje velicine, koristicemo eax, za manje ax aH ah
#isto i za rdx: edx dx dH dh
#r8 r8d r8w r8b

.intel_syntax noprefix

.text

.global suma

#extern int suma(int,int)
#       rax     rdi,rsi
#       eax     edi,esi
suma:

    push rbp
    mov rbp, rsp
    add edi, esi #edi = edi+esi
    mov eax, edi #eax je return (4B)
    mov rsp, rbp
    pop rbp

    ret
