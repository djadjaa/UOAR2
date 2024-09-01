.intel_syntax noprefix
.text
.global suma_cifara

#extern unsigned suma_cifara(unsigned n);
#          eax                  edi
suma_cifara:
    enter 0,0
    xor r9d, r9d #inicijalizacija sume cifara
    mov eax,edi
    mov r10d,10
petlja:
    cmp eax,0
    je kraj
    #edx za cifru, r10d za 10
    #(rax = rdx:rax / op, rdx = rdx:rax % op)

    xor edx,edx
    div r10d #edx=edi%10

    add r9d, edx

    jmp petlja
kraj:
    mov eax,r9d
    leave
    ret
