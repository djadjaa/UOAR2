.text
.global argmax
@extern int argmax(unsigned *a,int n);
@       r0              r0       r1
.align 2
argmax:
    push {fp,lr}
    mov fp,sp
    push {r4,r5}
    ldr r3,[r0],#4 @tekuci max
    sub r1,r1,#1
    mov r4,#0 @maksimalni indeks
    mov r5,#1 @brojac
forloop:
    cmp r1,#0
    beq end

    ldr r2,[r0],#4 @pomeramo se
    cmp r2,r3
        movgt r3,r2 @menjamo tekuci max
        movgt r4,r5 @menjamo max ind
    sub r1,r1,#1

    add r5,r5,#1
    b forloop
end:
    mov r0,r4
    pop {r4,r5}
    mov sp,fp
    pop {fp,pc}
