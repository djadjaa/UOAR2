.text
@extern void argmaxes(unsigned **A, int n, int m, int *args);
@                       r0          r1        r2    r3
.global argmaxes
.align 2
argmaxes:
    push {fp,lr}
    mov fp,sp
    push {r4-r7}
    mov r5,#0 @brojac
forloop:
    cmp r5,r1
    beq end

    ldr r6,[r0,r5,lsl #2] @ucitavamo vrednost r6 sa adrese r0+4*r5 (r0 je mat)

        push {r0-r6}

        mov r1,r2
        mov r0,r6
        bl argmax
        mov r7,r0 @rezultat

        pop {r0-r6}

        str r7,[r3,r5,lsl #2] @smestamo rezultat u niz argumenata, dakle cuvamo vrednost r7 na  adresu r3+4*r5 (r3 je niz arg)

    add r5,r5,#1
    b forloop
end:
    pop {r4-r7}
    mov sp,fp
    pop {fp,pc}
