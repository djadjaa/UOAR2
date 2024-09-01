.intel_syntax noprefix

.text

.global skalarni_proizvod
#extern int skalarni_proizvod(int* a, int* b, int n);
#       eax                     rdi     rsi     edx

skalarni_proizvod:
    enter 0,0

    mov r8d,0 #brojac
    mov r9d,0 #tempsuma
forloop:
    cmp r8d,edx
    je end

        mov eax,[rdi+4*r8]
        mul dword ptr [rsi + 4*r8]
        add r9d,eax

    inc r8d
    jmp forloop
end:
    mov eax,r9d
    leave
    ret
