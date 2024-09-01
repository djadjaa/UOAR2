.intel_syntax noprefix

.text

.global filtriraj
.global deljiv

#void filtriraj(unsigned *a,unsigned *b,unsigned n,unsigned *c,unsigned *m);
#                  [rdi]        [rsi]       edx        [rcx]        [r8]
#extern unsigned izraz(unsigned x,unsigned y);
#       eax             edi         esi

deljiv:
    enter 0,0

    #mov eax,edi
    mov esi,4
    xor edx,edx
    div esi
    cmp edx,0
    je end
        mov eax,0
        leave
        ret
end:
    mov eax,1
    leave
    ret


filtriraj:
    enter 0,0
    mov r9d,0 #brojac
    mov r10d,0 #temp m
for_loop:
    cmp r9d,edx
    je end2

        push rdi
        push rsi
        push rdx
        push r9
        #push r9

        mov eax,[rdi+4*r9]
        call deljiv

        #pop r9
        pop r9
        pop rdx
        pop rsi
        pop rdi

        cmp eax,0
        je cont
            push rdi
            push rsi
            push rdx
            push r9
            #push r9

            mov eax,[rsi+4*r9]
            call deljiv

            #pop r9
            pop r9
            pop rdx
            pop rsi
            pop rdi

            cmp eax,0
            je cont
                push rdi
                push rsi
                push rdx
                push rcx
                push r9
                push r10

                mov edi,[rdi+4*r9]
                mov esi,[rsi+4*r9]
                call izraz

                pop r10
                pop r9
                pop rcx
                pop rdx
                pop rsi
                pop rdi

                mov [rcx+4*r10],eax
                inc r10d
                jmp cont
cont:
    inc r9d
    jmp for_loop
end2:
    mov [r8],r10d
    leave
    ret
