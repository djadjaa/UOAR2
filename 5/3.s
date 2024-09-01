.intel_syntax noprefix
.text
.global savrsen_stepen
#extern uint savrsen_stepen(uint,uint*,uint*);
#       eax                 edi,rsi,rdx
savrsen_stepen:
    enter 0,0
    mov r10,rdx #r10 - pk; rdx se azurira tokom mnozenja jer on sluzi za prekoracenje u mnozenju tako da moramo da ga sacuvamo pre izvrsavanja
    mov ecx,2 #brojac, m

for_petlja:
    cmp ecx,edi
    jae for_loop_end

        #inace
        mov r8d,2 #k
        mov eax,ecx #stepen, smestamo m
        mul ecx #mnozi se sa samim sobom-> (edx:)eax = n^2

    petlja:
        cmp eax,edi
        ja kraj_petlje

            cmp eax,edi
            jne nastavak_petlje
                #inace
                mov [rsi], ecx
                mov [r10], r8d
                mov eax,1
                leave
                ret
            nastavak_petlje:
            inc r8d
            mul ecx #stepen *=m
        jmp petlja
    kraj_petlje:
    inc ecx
    jmp for_petlja
for_loop_end:
    mov eax,0
    leave
    ret
