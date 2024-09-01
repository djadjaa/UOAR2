.text

.global secret

.align 2

secret:
    push {fp,lr}
    mov fp,sp
    push {r4,r5}
    mov r4,r0 @temp
petlja:
    cmp r4,#10
    blo kraj

    mov r5,#0 @suma
    unutrasnja_petlja:
        cmp r4,#0
        beq kraj_unutrasnja_petlja

            mov r0,r4
            mov r1,#10
            bl __umodsi3 @r0=n%10
            add r5,r5,r0

            mov r0,r4
            mov r1,#10
            bl __udivsi3 @r0=n/10
            mov r4,r0

        b unutrasnja_petlja
    kraj_unutrasnja_petlja:
        mov r4,r5
    b petlja
kraj:
    mov r0,r4
    pop {r4,r5}
    mov sp,fp
    push {fp,pc}
