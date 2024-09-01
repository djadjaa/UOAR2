.text
@unsigned ojler(unsigned);
@r0             r0
.global ojler

.align 2

ojler:
    push {fp,lr}
    mov fp,sp
    push {r4,r5,r6}

    mov r4,r0 @x
    mov r5,#1 @r5 je brojac
    mov r6,#0 @br uzajamno prostih

for_loop:
    cmp r5,r4
    beq for_loop_end

        @inace
        mov r0,r5
        mov r1,r4
        bl nzd
        @r0=nzd(i,n)

        cmp r0,#1
            addeq r6,r6,#1

    add r5,r5,#1
    b for_loop
for_loop_end:

    mov r0,r6

    pop {r4,r5,r6}
    mov sp,fp
    pop {fp,pc}
