.intel_syntax noprefix

.text

.global izbaci_proste
#unsigned izbaci_proste(unsigned a[],unsigned n);
#eax                       [rdi]        esi

izbaci_proste:
    enter 0,0

    mov r8d,0 #brojac
    mov edx,0 #nova duzina
forloop:
    cmp r8d,esi
    je end

        mov ecx,[rdi+4*r8]

        push rdi
        push rsi
        push rdx
        push rcx
        push r8
        push r8

        mov edi,ecx
        call prost

        pop r8
        pop r8
        pop rcx
        pop rdx
        pop rsi
        pop rdi

        cmp eax,1
        je cont
            mov [rdi+4*rdx],ecx
            inc edx
cont:
    inc r8d
    jmp forloop
end:
    mov eax,edx
    leave
    ret
#rdi, rsi, rdx, rcx, r8, r9...
