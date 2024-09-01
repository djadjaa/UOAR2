.text

.global max
@int max(int,int);
@r0      r0,r1
.align 2

max:
    push {fp,lr}
    mov fp,sp

    cmp r0,r1
    movlt r0,r1 @uslovna instrukcija ako je y maksimalni, brze su jer se rezultati smestaju u kes, a inace desi se cache miss
x_je_vece:

    mov sp,fp
    pop {fp,pc}
