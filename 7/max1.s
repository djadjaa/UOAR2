.text

.global max
@int max(int,int);
@r0      r0,r1
.align 2

max:
    push {fp,lr}
    mov fp,sp

    cmp r0,r1
    bge x_je_vece
        @inace
        mov r0,r1
x_je_vece:
    @r0 je uveliko rezultat pa nema upisivanja dodatna
    mov sp,fp
    pop {fp,pc}
