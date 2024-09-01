.intel_syntax noprefix

.text

.global min
#unsigned min(unsigned a, unsigned b, unsigned c)
#eax            edi            esi         ecx

min:
    enter 0,0

    cmp edi,esi #a<=b
    jbe prvi

    cmp esi,edi #b<=a
    jbe drugi

    jmp min_c

prvi:
    cmp edi,ecx #a<=c
    jbe min_a

    jmp min_c

drugi:
    cmp esi,ecx #b<=c
    jbe min_b

    jmp min_c

min_a:
    mov edx,edi
    jmp kraj
min_b:
    mov edx,esi
    jmp kraj
min_c:
    mov edx,ecx
    jmp kraj
kraj:
    mov eax,edx #edx je registar za minimum
    leave
    ret
