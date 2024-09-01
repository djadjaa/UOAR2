.text

@int nzd(int,int);
@r0       r0,r1

.global nzd

.align 2

nzd:
    push {fp,lr} @stavimo na stek dno steka i link registra
    mov fp,sp @pomerimo na vrh steka dno steka

    push {r4,r5}

    mov r4,r0
    @r4=x
    mov r5,r1
    @r5=y
petlja:
    cmp r5,#0
    beq kraj_petlje

        @inace
        mov r0,r4
        mov r1,r5
        bl __umodsi3 @r0=x%y

        mov r4,r5
        mov r5,r0

    b petlja
kraj_petlje:
    mov r0,r4
    pop {r4,r5}
    mov sp,fp @pomerimo na dno steka vrh steka
    pop {fp,pc} @lr stavimo u pc, uklonimo dno steka
