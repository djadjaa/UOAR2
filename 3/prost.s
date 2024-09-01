.intel_syntax noprefix

.text

.global prost

prost:
    enter 0,0
    mov ecx,2 #brojac
    mov ebx,edi
for_petlja:
    cmp ecx,edi
    je kraj

    mov esi,ecx #delilac
    mov eax,ebx #deljenik
    xor edx, edx
    idiv esi
    #edx = edi%4

    inc ecx
    cmp edx,0
    je nije_prost

    jmp prost_je

nije_prost:
    mov eax,0
    jmp for_petlja
prost_je:
    mov eax,1
    jmp for_petlja
kraj:
    leave
    ret
