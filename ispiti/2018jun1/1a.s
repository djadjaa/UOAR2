.intel_syntax noprefix

.text

.global stepen
#extern unsigned stepen(unsigned n, unsigned a);
#          eax              edi         esi

stepen:
    enter 0,0
    mov ecx,1 #proizvod
    mov r8d,0 #brojac

for_loop:
    cmp r8d,esi
    je end

        # (rdx:rax = rax * op)
        mov eax,ecx
        mul edi

        mov ecx,eax

    inc r8d
    jmp for_loop
end:
    mov eax,ecx
    leave
    ret
#rdi, rsi, rdx, rcx, r8, r9...
