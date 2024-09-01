.intel_syntax noprefix

.text

.global transformisi_niz
#extern void transformisi_niz(unsigned *niz,unsigned n,unsigned a);
#                               [rdi]       esi         edx
#extern unsigned stepen(unsigned n, unsigned a);
#          eax              edi         esi

transformisi_niz:
    enter 0,0
    mov r8d, 0 #brojac
for_loop:
    cmp r8d,esi
    je end

        push rdi
        push rsi
        push rdx
        push r8

        mov edi,[rdi+4*r8]
        mov esi,edx
        call stepen #eax=stepen(a[i])

        pop r8
        pop rdx
        pop rsi
        pop rdi

        mov [rdi+4*r8],eax

    inc r8d
    jmp for_loop
end:
    leave
    ret
#rdi, rsi, rdx, rcx, r8, r9
