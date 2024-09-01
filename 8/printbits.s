.text

@void printbits(unsigned);
@                   r0

.global printbits

.align 2

printbits:
    push {fp,lr}
    mov fp,sp

    push {r4,r5}
    mov r4,r0 @n
    mov r1,#1
    mov r5,r1,lsl #31 @maska=1<<31

petlja:
    cmp r5,#0 @da li je maska 0
    beq kraj

    tst r5,r4 @da li je resenje konjukcije 1
        moveq r0,#'0'
        movne r0,#'1'

    bl putchar @putchar('0') itd

    mov r5,r5,lsr #1 @maska pomerena u desno

    b petlja
kraj:

    mov sp,fp
    pop {fp,pc}
