.intel_syntax noprefix

.global smesti

.text
#extern void smesti(int* a, int n, int* b);
                    #edi,esi,rdx
#int vrednost(int x)
#eax           eid
vrednost:
    enter 0,0

        mov eax,edi
        imul edi #eax=x*x
        cmp eax,24
        jl kraj
            mov eax,24
kraj:
    leave
    ret

smesti:
    enter 0,0

    mov r10d,0 #nb
    mov ecx,0 #brojac
for_loop:
    cmp ecx,esi
    je for_loop_end

        #inace
        mov r8d,[rdi+4*rcx] #r9d=a[i]
        test r8d,1 #proveravamo deljivost preko konjukcije
        jnz nije_parno
            #inace
            push rdi
            push rsi
            push rdx
            push r10
            push rcx
            push rcx #poravnanje

            mov edi,r8d
            call vrednost #eax-vrednost

            pop rcx
            pop rcx
            pop r10
            pop rdx
            pop rsi
            pop rdi

            mov [rdx+4*r10],eax
            inc r10d
    nije_parno:
    inc ecx
    jmp for_loop
for_loop_end:
    mov eax,r10d
    leave
    ret
