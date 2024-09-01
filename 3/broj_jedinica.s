.intel_syntax noprefix

.text

.global broj_jedinica

#extern int broj_jedinica(unsigned);
#global eax                 edi

broj_jedinica:
    enter 0,0
    xor r8d,r8d #za cuvanje broja bitova

petlja:
    cmp edi,0
    je kraj

    inc r8d
    shr edi

    jmp petlja

kraj:
    mov eax,r8d
    leave
    ret
