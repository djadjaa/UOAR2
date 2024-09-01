.intel_syntax noprefix

.global napravi_niz

.text

# void napravi_niz(int* a, int* b,
#  -                rdi      rsi
# int n, int* c, int nc)
# edx    rcx       r8d
napravi_niz:
    enter 0, 0

    mov r10d, 0        # r10d - i
for_loop:
    cmp r10d, r8d
    je for_loop_end

    push r10
    push r8
    push rcx
    push rdx
    push rsi
    push rdi

    mov esi, edx #esi=n
    mov edx, [rcx+4*r10] # edx = c[i]
    call sadrzi          # eax - j = sadrzi(a, n, c[i])

    pop rdi
    pop rsi
    pop rdx
    pop rcx
    pop r8
    pop r10

    cmp eax, 0
    jl nije_u_nizu
        mov r9d, [rsi+4*rax]  # r9d = b[j]
        mov [rcx+4*r10], r9d  # c[i] = r9d

    nije_u_nizu:

    inc r10d
    jmp for_loop
for_loop_end:

    leave
    ret
