.intel_syntax noprefix

.text

.global najveci_3
#int deljiv(int x)
#eax         edi
#int najveci_3(int *a, int n);
#eax            rdi     esi

najveci_3:
    enter 0,0
    mov r8d,[rdi] #max je a[0]
    mov ecx,1 #brojac

for_petlja:
    cmp ecx,esi
    je for_kraj

    cmp [rdi+4*rcx],r8d
    jle idi_dalje
        #inace
        #deljenjeeee
        mov r9d,[rdi+4*rcx]; #pamtimo vr

        mov r10d,3 #smestamo 3
        mov r11d,r9d #smestamo deljenik
        cdq #prosirenje
        idiv r10d #deljenje sa 3

        cmp edx,0 #edx je ostatak
        jnz idi_dalje
            #inace
            mov r8d,r9d
    idi_dalje:
    inc ecx
    jmp for_petlja
for_kraj:
    mov eax,r8d
    leave
    ret
