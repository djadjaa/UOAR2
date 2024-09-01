# Implementacija funkcije
# extern unsigned broj_pravih_delioca(unsigned n)
#         eax                           edi
.intel_syntax noprefix
.text
.global broj_pravih_delioca

broj_pravih_delioca:
    enter 0,0

    cmp edi,1
    jne nijekec
        mov eax,0
        leave
        ret
nijekec:
    mov r8d, 2 #i
    mov r9d, 0 #br
for_loop:
    cmp r8d,edi
    je end

       #deljenik je n a delilac je i
        mov eax,edi
        xor edx,edx
        div r8d

        cmp edx,0
        je cont0
        jmp cont1
    cont0:
    inc r9d

    cont1:
    inc r8d
    jmp for_loop
end:
    mov eax,r9d
    leave
    ret
