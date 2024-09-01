.intel_syntax noprefix
.global transformisi
.text

#extern void transformisi(char *s);
#                           rdi
transformisi:
    enter 0,0
    mov ecx,0 #brojac

for_loop:
    mov sil,[rdi+rcx] #jednobajtni podaci, ide se karakter po karakter, sil=s[i]
    cmp sil,0
    je for_loop_end

    cmp sil,'a' #c<='z'
    jl nije_malo_slovo
        #inace
        cmp sil,'z'
        jl nije_malo_slovo
            #inace
            sub sil,'a'
            add sil,'A'
            mov [rdi+rcx],sil
nije_malo_slovo:
    inc ecx
    jmp for_loop
for_loop_end:
    leave
    ret
