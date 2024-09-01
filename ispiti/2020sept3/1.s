.text
@int izraz(int a,int b,int c);
@r0         r0  r1  r2
.align 2

.global izraz
izraz:
    push {fp,lr}
    mov fp, sp
    push {r4}

    mov r3,r0
    add r3,r3,r1
    add r3,r3,r2

    mov r4,r3
    mul r3,r4,r4

    mov r4,r0
    add r4,r4,r4
    add r3,r3,r4

    mov r4,r1
    add r4,r4,r4
    add r4,r4,r4
    add r3,r3,r4

    mov r4,r2
    add r4,r4,r4
    add r4,r4,r4
    add r4,r4,r4
    add r3,r3,r4

    mov r0,r3
    pop {r4}
    mov sp, fp
    pop {fp,pc}
