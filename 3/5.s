.intel_syntax noprefix

.text

.global nzd
#extern unsigned nzd(unsigned,unsigned);
#           eax         edi,esi
nzd:
    enter 0,0

petlja:
    cmp esi,0 #radimo telo dokle god je b=0
    je kraj_petlje

    mov eax,edi
    xor edx,edx
    div esi #edx = a%b, edx je temp => temp=a%b

    mov edi,esi #a=b
    mov esi,edx #b=a%b

    jmp petlja
kraj_petlje:
    mov eax,edi
    leave
    ret
