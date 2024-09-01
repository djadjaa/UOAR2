.text
.global fact
.align 2
@extern unsigned fact(unsigned);
@           r0          r0
fact:
    push {fp,lr}
    mov fp,sp

    mov r1,#1 @proizvod
    mov r2,#2 @brojac

for_loop:
    cmp r2,r0
    bgt for_loop_end

    mul r3,r2,r1 @privremeni rezultat je r3 koji smestamo potom u r1
    mov r1,r3

    add r2,r2,#1
    b for_loop
for_loop_end:
    mov r0,r1
    mov sp,fp
    pop {fp,pc}
