.text

.global add

.align 2
@int add(int,int);
@r0      r0,r1
add:
    push {fp,lr}
    mov fp,sp

    add r0,r0,r1 @prvi arg gde smestamo rez, preostala dva su operandi

    mov sp,fp
    pop {fp,pc}
