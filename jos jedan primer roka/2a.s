.text

@int broj_ponavljanja(char *s,char c);
@r0                     r0      r1

.global broj_ponavljanja

.align 2

broj_ponavljanja:
    push {fp,lr}
    mov fp,sp

    ldrb r2,[r0]
    mov r3,#0 @brojac karaktera

forloop:
    ldrb r2,[r0]
    cmp r2,#0
    beq end

        cmp r2,r1
        addeq r3,r3,#1

    add r0,r0,#1
    b forloop
end:
    mov r0,r3
    mov sp,fp
    pop {fp,pc}
