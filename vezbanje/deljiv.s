.intel_syntax noprefix
.text
.global deljiv
#int deljiv(int a, int b)
#eax         edi    esi

deljiv:
    enter 0,0

    #(rax = rdx:rax / op, rdx = rdx:rax % op)
    mov r8d,esi #delilac
    mov eax,edi #deljenik
    cdq
    idiv r8d

    cmp edx,0
    je da

    mov eax,0
    jmp kraj
da:
    mov eax,1
kraj:
    leave
    ret
