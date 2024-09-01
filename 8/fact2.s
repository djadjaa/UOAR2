.text
.global fact
.align 2
@rekurzivno
fact:
    push {fp,lr}
    mov fp,sp

    cmp r0,#0 @bazni korak
        moveq r0,#1 @ret 1
        beq kraj

    push {r0}
    sub r0,r0,#1
    bl fact @r0=faktorijel(n-1)
    pop {r1}
    mul r0,r1,r0 @r0=n*faktorijel(n-1)
kraj:
    mov sp,fp
    pop {fp,pc}
