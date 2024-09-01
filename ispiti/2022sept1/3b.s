.intel_syntax noprefix

.text
.global max_num

#unsigned max_num(unsigned *xs, int n)
#eax                rdi         esi

max_num:
    enter 8,0
    mov rdx,0 #maksimalni proizvod
    mov ecx,0 #brojac

    lea r8,[rbp-4] #pokazivac na dno steka
    lea r9,[rbp-8]

for_loop:
    cmp ecx,esi
    je end

        mov r10d,[rdi+4*rcx]

        push rdi #niz
        push rsi #dimenzija
        push rdx #maksimalni proizvod
        push rcx #brojac
        push r8
        push r9
        push r10 #tekuci element niza
        push r10 #upotpunjavanje

        mov edi,r10d
        mov rsi,r8
        mov rdx,r9
        call min_max_digit

        pop r10
        pop r10
        pop r9
        pop r8
        pop rcx
        pop rdx
        pop rsi
        pop rdi

        push rdx

        mov eax,[r8]
        mov r11d,[r9]
        mul r11d

        pop rdx

        cmp eax,edx
        jb cont
       # mov r12d,r10d
            mov edx,eax
    cont:
    inc ecx
    jmp for_loop
end:
    mov eax,edx
    leave
    ret
