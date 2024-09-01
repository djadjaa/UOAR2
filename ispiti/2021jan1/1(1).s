.text

.global izracunaj

@extern int izracunaj(unsigned n,int a,int b);
@       r0              r0          r1  r2

.align 2

izracunaj:
    push {fp,lr}
    mov fp, sp

    push {r4-r7}

    mov r3,#31
    mov r4,#4
    mul r1,r3,r1
    sub r1,r1,r2
    sub r1,r1,r4

    mov r5,#0 @ brojac
    mov r6,#1 @ temp rez
    mov r7,#-2
forloop:
    cmp r5,r0
    beq cont

        mul r6,r7,r6

    add r5,r5,#1
    b forloop
cont:
    mul r6,r1,r6
    mov r0,r6

    pop {r4-r7}

    mov sp, fp
    pop {fp,pc}
