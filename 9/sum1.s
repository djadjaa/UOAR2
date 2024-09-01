.text
@int sum(int *a,int n);
@r0        r0     r1  pokzivaci su iste vel kao obicni reg

.global sum

.align 2

sum:
    push {fp,lr}
    mov fp,sp
    push {r4,r5}

    mov r2,#0 @suma
    mov r3,#0 @brojac

for_petlja:
    cmp r3,r1
    beq kraj

    @racunamo adresu niza pa je smestamo u sumu
        add r4,r0,r3,lsl #2 @r4 je adresa niza, ima isti efekat kao [r0+4*r3] gde je r0 baza, r3 brojac i pomeramo se za 4 bajta preko siftovanja
        ldr r5,[r4]
        @r5=a[i]
        add r2,r2,r5

        @moze i ldr r5,[r0,r3,lsl #2]

    add r3,r3,#1
    b for_petlja
kraj:
    mov r0,r2
    pop {r4,r5}
    mov sp,fp
    pop {fp,pc}
