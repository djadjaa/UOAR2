.text

.global izracunaj

@extern int izracunaj(unsigned n,int a,int b);
@       r0              r0          r1  r2

.align 2

izracunaj:
    push {fp,lr}
    mov fp, sp

    push {r4-r7}

    mov r3,#1 @tekuci proiz
    mov r4,#0 @brojac
    mov r5,#-2
    mov r6,#32
    mov r7,#0
forloop:
    cmp r4,r0
    beq cont

        mul r3,r5,r3

    add r4,r4,#1
    b forloop
cont:
    mul r1,r6,r1
    add r7,r7,r1
    sub r7,r7,r2
    sub r7,r7,#4
    mul r7,r3,r7
    b end
end:
    mov r0,r7
    pop {r4-r7}

    mov sp, fp
    pop {fp,pc}
