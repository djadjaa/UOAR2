.intel_syntax noprefix

.text
.global skalarni_proizvod
skalarni_proizvod:
    enter 0, 0

    # rdi - a
    # rsi - b
    # rdx - n
    # r8  - i
    # r9  - s
    # r10 - rdx
    # rax - rez

    xor r8, r8
    xor r9, r9
    mov r10, rdx
    sp_for:
        cmp r8, r10
        jge sp_for_end

        mov eax, [rdi + 4*r8]
        mul dword ptr [rsi + 4*r8]
        add r9d, eax

        inc r8
        jmp sp_for
    sp_for_end:

    mov rax, r9

    leave
    ret
