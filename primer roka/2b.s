# Implementacija funkcije 
# extern void transformisi(unsigned *a, int n);
#                               rdi       esi
.intel_syntax noprefix

.text

.global transformisi

transformisi:
    enter 0,0
    mov r8d,0
forloop:
    cmp r8d,esi
    je end

        # extern unsigned broj_pravih_delioca(unsigned n)
        #         eax                           edi

        mov edx,[rdi+4*r8]

        push rdi
        push rsi
        push rdx
        push r8

        mov edi,edx
        call broj_pravih_delioca

        pop r8
        pop rdx
        pop rsi
        pop rdi

        cmp eax,0
        jne edit
        jmp cont
edit:
    mov [rdi+4*r8],eax
cont:
    inc r8d
    jmp forloop
end:
    leave
    ret
