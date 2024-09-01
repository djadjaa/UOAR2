.intel_syntax noprefix

.text
.global min_max_digit
#void min_max_digit(unsigned x, unsigned *p_min, unsigned *p_max)
#                       edi            rsi          rdx

min_max_digit:
    enter 0,0
    mov ecx,10 #delilac
    mov r8d,9 #minimum
    mov r9d,0 #maksimum
    mov eax,edi #'brojac'

loop:
    cmp eax,0
    je end

        push rdx
        xor edx,edx #neoznaceno deljenje, prosirenje nulom
        div ecx
        mov r10d,edx  #u registar r10d smestamo ostatak
        pop rdx

        cmp r10d,r8d
        ja cont #cifra<minimum
            mov r8d,r10d #azuriramo minimum
        cont:
            cmp r10d,r9d
            jb loop #cifa>maksimum
                mov r9d,r10d #azuriramo maksimum
    jmp loop
end:
    mov [rsi],r8d
    mov [rdx],r9d
    leave
    ret
