.intel_syntax noprefix

#extern void bitovska_aritmetika(unsigned a, unsigned b, unsigned *k, unsigned *d, unsigned *e, unsigned *n);
#                                   edi         esi         rdx         rcx            r8         r9

.text

.global bitovska_aritmetika

bitovska_aritmetika:
    enter 0,0

    mov r10d,edi
    and r10d,esi

    mov r11d,edi
    or r11d,esi

    mov r12d,edi
    xor r12d,esi

    mov r13d,edi
    not r13d

    mov [rdx],r10d
    mov [rcx],r11d
    mov [r8],r12d
    mov [r9],r13d

    leave
    ret
