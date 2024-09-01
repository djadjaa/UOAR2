.intel_syntax noprefix

.text

.global savrsen
#extern int savrsen(int);
#       eax         edi
savrsen:
    enter 0,0

    mov r10d,0 #suma
    mov ecx,1 #brojac

for_petlja:
    cmp ecx,edi
    je for_petlja_kraj

        #inace
        mov eax,edi
        cdq
        idiv ecx #edx=n%i

        cmp edx,0
        jne nije_deljivo

            #inace
            add r10d,ecx
    nije_deljivo:
    inc ecx
    jmp for_petlja
for_petlja_kraj:
    cmp r10d,edi #poredimo sumu sa brojem
    je savrsen_je

    mov eax,0
    leave
    ret

savrsen_je:

    mov eax,1
    leave
    ret
