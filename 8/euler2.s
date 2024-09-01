.text

@preko rekurzije

.global nzd

.align 2

nzd:
    push {fp,lr} @stavimo na stek dno steka i link registra
    mov fp,sp @pomerimo na vrh steka dno steka

    cmp r1,#0
    beq kraj

    push {r1}
    bl __umodsi3
    @r0=x%y
    mov r1,r0 @r1=x%y
    pop {r0} @r0 = 'staro' y
    bl nzd @r0=nzd(y,x%y)
kraj:
    mov sp,fp @pomerimo na dno steka vrh steka
    pop {fp,pc} @lr stavimo u pc, uklonimo dno steka
@implementacija fje koja izracunava ostatak
mod:
    cmp r0,r1
    blo kraj_mod

    sub r0,r0,r1
    b mod
kraj_mod:
    mov pc,lr
