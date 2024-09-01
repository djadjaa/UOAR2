.intel_syntax noprefix

.text

.global zbir_apsolutnih

#int zbir apsolutnih(int ∗ A, int n)
#eax                    rdi     esi

zbir_apsolutnih:
    enter 0,0
    mov eax,0 #suma
    mov ecx,0 #brojac

for_petlja:
    cmp ecx,esi
    je for_petlja_kraj

    push rdi
    push rsi
    push rcx
    push rcx

    mov rsi,[rdi+4*rcx]
    mov rdi,rsi
    call abs

    pop rcx
    pop rcx
    pop rsi
    pop rdi

    add eax,edi
    inc ecx
    jmp for_petlja
for_petlja_kraj:
    leave
    ret
