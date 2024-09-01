.intel_syntax noprefix

.text

.global izdvoji_deljive

#void izdvoji deljive(int ∗A, int na, int ∗ B, int ∗ nb)
#                       rdi     esi     rdx     rcx

izdvoji_deljive:
    enter 0,0
    mov r8d,0 #i
    mov r9d,0 #cuvamo vr nb da menjamo
    mov r10d,7 #sedmica
for_loop:
    cmp r8d,esi #i==n
    je kraj

        mov r11d,[rdi+4*r8]
        #inace
        push rdi #a
        push rsi #n
        push rdx #b
        push r8 #brojac
        push r9 #brojac za b
        push r10 #7
        push r11 #vr
        push r11 #poravnanje

        #deljiv(a,b)
        mov edi,r11d #a[i]
        mov esi,r10d #7
        call deljiv

        pop r11
        pop r11
        pop r10
        pop r9
        pop r8
        pop rdx
        pop rsi
        pop rdi

        cmp eax,0 #ako nije deljiv tj ako je return 0
        je nastavak
            #inace
            mov [rdx+4*r9], r11d #b[j]=tmp
            inc r9d
    nastavak:
    inc r8d
    jmp for_loop
kraj:
    mov [rcx],r9d
    leave
    ret
