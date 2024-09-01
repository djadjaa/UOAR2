.intel_syntax noprefix

.global transformisi

.text

# void mala_u_velika(char *s)
#  -                 rdi
transformisi:
    enter 0, 0

    mov ecx, 0
for_loop:
    mov sil, [rdi+rcx]   # sil = s[i]
    cmp sil, 0
    je for_loop_end

    # mozemo koristiti karakterske literale u kodu
    cmp sil, 'a'
    jl nije_malo_slovo
        cmp sil, 'z'
        jg nije_malo_slovo
            sub sil, 'a'
            add sil, 'A'
            mov [rdi+rcx], sil

nije_malo_slovo:

    inc ecx
    jmp for_loop
for_loop_end:

    leave
    ret
