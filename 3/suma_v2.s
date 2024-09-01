.intel_syntax noprefix

.text

.global suma

# unsigned suma(unsigned n)
#   eax            edi
suma:
    enter 0, 0

    xor eax, eax

    mov ecx, edi

for_loop:
    
    test ecx, 1
    jnz nastavak
    add eax, ecx

nastavak:
    loop for_loop

    leave
    ret
