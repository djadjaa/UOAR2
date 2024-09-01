.intel_syntax noprefix

.text

.global suma
# unsigned suma(unsigned n)
#   eax           edi
suma:
    enter 0, 0

    xor r8d, r8d   # r8d - trenutna suma
    mov ecx, 1     # ecx - i

for_petlja:
    cmp edi, ecx   # poredimo n i i
    jb  for_petlja_kraj

    mov eax, ecx
    xor edx, edx
    mov esi, 2
    div esi       # eax = i / 2 edx = i % 2
    
    cmp edx, 0
    jne nastavak  # ukoliko i nije deljivo sa 2
                  # preskacemo sabiranje
    add r8d, ecx

nastavak:
    add ecx, 1
    jmp for_petlja
for_petlja_kraj:

    mov eax, r8d # vracamo trenutnu sumu

    leave
    ret
