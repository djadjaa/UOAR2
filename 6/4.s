.intel_syntax noprefix

.text

#extern void napravi_niz(int* a,int *b,int *c, int nc,int n);
#                          rdi      rsi rcx     r8      edx
.global napravi_niz

napravi_niz:
    enter 0,0

    mov r10d,0 #brojac
for_loop:
    cmp r10d,r8d
    je for_loop_end

        #inace
        push rdi #niz a
        push rsi #niz b
        push rdx #dimenzija
        push rcx #niz c
        push r8 #dimenzija c
        push r10 #brojac

        #prenosimo argumente u fju
        mov esi,edx
        mov edx,[rcx+4*r10]
        call sadrzi #eax=j

        pop r10
        pop r8
        pop rcx
        pop rdx
        pop rsi
        pop rdi

        cmp eax,0
        jl nije_u_nizu

            #inace
            mov r11d,[rsi+4*rax]
            mov [rcx+4*r10],r11d
            #c[i]=b[j]
    nije_u_nizu:

    inc r10d
    jmp for_loop

for_loop_end:
    leave
    ret
