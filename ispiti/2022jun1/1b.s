.text

.global najcesci_karakter

@extern char najcesci_karakter(char *haystack,char *needle);
@       r0                          r0              r1

.align 2

najcesci_karakter:

	push {fp,lr}
	mov fp,sp

	push {r4-r8}

	mov r4,r0 @privremene promenljive (niska)
	mov r5,r1 @isto (podniska)
	mov r7,#0 @najcesci kar
loop:
    ldrb r6,[r5] @trenutni karakter podniske
    cmp r6,#0
    beq end

    mov r0,r4
    mov r1,r6 @trenutni karakter podniske bice kandidat za pretragu najvise ponovljenog karaktera u niski
    bl broj_ponavljanja
    cmp r0,r7
        movgt r7,r0
        movgt r8,r6

    add r5,r5,#1
    b loop
end:
    mov r0,r8
    pop {r4-r8}
	mov sp,fp
	pop {fp,pc}
