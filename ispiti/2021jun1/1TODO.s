.text

.global transformisi

.align 2


@extern int transformisi(int n)
@       r0                 r0

transformisi:
    push {fp,lr}
    mov fp, sp

    push {r4-r8}
    cmp r0,#0
    blt abs
    b nastavak
abs:
    mov r3,#-1
    mul r0,r3,r0
nastavak:
    mov r1,r0 @temp
    mov r2,#0 @rez
    mov r7,#0 @br sa desetkama
loop:
    cmp r1,#0
    beq end
    bne nastavak1
        @inace
        nastavak1:
        mov r0,r1
        mov r1,#10
        bl __umodsi3 @r0=x%10
        mov r5,r0 @ cifra

        mov r0,r5
        mov r1,#2
        bl __umodsi3
        mov r6,r0 @ ost

        cmp r6,#0
        bne cont
        beq nastavak2

            nastavak2:
            mov r8,#10
            mul
            mul r5,r4,r5 @cif *= 10
            add r2,r2,r5
            b cont
    cont:
    mov r0,r1
    mov r1,#10
    bl __udivsi3 @r0=n/10
    mov r1,r0
    b loop
end:
    mov r0,r2
    pop {r4-r8}

    mov sp, fp
    push {fp,pc}
