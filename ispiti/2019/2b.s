.intel_syntax noprefix

.text

.global filtriraj
#void filtriraj(unsigned *a,unsigned *b,unsigned n,unsigned *c,unsigned *m);
#                  [rdi]        [rsi]       edx        [rcx]        [r8]

filtriraj:
    enter 0,0
    mov r9d,0 #brojac
    mov r10d,0 #temp m

for_loop:
    cmp r9d,edx
    je end

        push rdi
        push rsi
        push rdx
        push rcx
        push r9
        push r10

        mov edi,[rdi+4*r9]
        call polukvadrat

        pop r10
        pop r9
        pop rcx
        pop rdx
        pop rsi
        pop rdi

        mov r11d,[rsi+4*r9]
        cmp r11d,0
        je cont
            mov [rcx+4*r10],eax
            inc r10d
            jmp cont
cont:
    inc r9d
    jmp for_loop
end:
    mov [r8],r10d
    leave
    ret
