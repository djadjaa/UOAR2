.intel_syntax noprefix

.text

.global izbaci_neparne
#void izbaci_neparne(int* a, int *n);
#                       rdi     rsi
izbaci_neparne:
    enter 0,0
    mov r10d, [rsi] #r10d-n=*pn rsi je n na adresi pn
    mov r8d,0 #novo n
    mov ecx,0 #brojac
for_loop:
    cmp ecx,r10d
    je for_loop_end

        #inace
        mov r9d,[rdi+4*rcx] #r9d=a[i]
        test r9d,1 #provera parnosti
        jnz neparan_je
            #inace
            mov [rdi+4*r8],r9d
            inc r8d
    neparan_je:

    inc ecx
    jmp for_loop
for_loop_end:
    mov [rsi],r8d
kraj:
    leave
    ret
