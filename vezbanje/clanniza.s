.intel_syntax noprefix
.text
.global clan_niza

#extern int clan_niza(int);
#       eax            edi
clan_niza:

    enter 0,0

    mov ecx,1 #brojac
    mov esi,1 #tmp
    mov edx,1 #rez

for_petlja:
    cmp ecx,edi
    jg kraj

        mov r8d,4
        mov r9d,3

        mov eax,esi
        cdq
        imul r8d

        mov edx,eax
        add edx,r9d

        mov esi,edx

    inc ecx
    jmp for_petlja
kraj:
    mov eax,edx
    leave
    ret
