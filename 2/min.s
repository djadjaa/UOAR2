.intel_syntax noprefix

.text

.global min
min:
    push rbp
    mov rbp,rsp

    cmp edi,esi
    jge else
    mov eax,edi
    jmp kraj

else:
    mov eax,esi

kraj:
    mov rsp,rbp
    pop rbp
    ret
