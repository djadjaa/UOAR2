.intel_syntax noprefix

.text

.global najveca_cifra
#unsigned najveca cifra(unsigned x)
#eax                        edi
najveca_cifra:
    enter 0,0
    mov eax,edi
    mov r10d,10
    mov r9d,0 #maksimum
petlja:
    cmp eax,0
    je kraj

    xor edx,edx
    div r10d #edx=edi%10

    cmp edx,r9d
    jae max

    jmp petlja
max:
    mov r9d,edx
    jmp petlja
kraj:
    mov eax,r9d
    leave
    ret
