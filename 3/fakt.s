.intel_syntax noprefix

.text

.global faktorijel

faktorijel:
    enter 0,0
    mov eax,1 #proizvod inicijalizovan na 1
    mov ecx,edi #ecx je brojac

for_petlja:
    cmp ecx,0
    je kraj

    mul ecx

    dec ecx

    jmp for_petlja
kraj:
    leave
    ret
