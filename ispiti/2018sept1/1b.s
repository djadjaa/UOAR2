.intel_syntax noprefix

.text

.global transformisi_niz
#extern unsigned transformisi_niz(unsigned *niz,unsigned n);
#          eax                      [rdi]           esi

transformisi_niz:
    enter 0,0
    mov r8d,0 #brojac
    mov r9d,0 #dimenzija niza
for_loop:
    cmp r8d,esi
    je end

        mov r10d,[rdi+4*r8]

        push rdi
        push rsi
        push r8
        push r10

            mov edi, r10d
            call prost
            #ako je prost vraca 1 inace 0 i smanjujemo dim niza

        pop r10
        pop r8
        pop rsi
        pop rdi

        cmp eax,0
        je cont
            mov [rdi+4*r9],r10d
            inc r9d
cont:
    inc r8d
    jmp for_loop
end:
    mov eax,r9d
    leave
    ret
#rdi, rsi, rdx, rcx, r8, r9...
