.intel_syntax noprefix

.text

.global prost
#extern unsigned prost(unsigned a);
#         eax               edi

prost:
    enter 0,0
    cmp edi,1
    jne nije1 #ako nije 1 u pitanju idemo dalje
        mov eax, 0 #a inace dolazimo do toga da 1 nije prost broj pa je povr vr 0
        leave
        ret
nije1:
    mov r8d, 2
for_loop:
    cmp r8d,edi
    je end

        #(rax = rdx:rax / op, rdx = rdx:rax % op
        mov eax,edi #deljenik
        xor edx,edx
        div r8d

        cmp edx,0
        jne notdiv #ako nije deljiv idemo dalje sa petljom ako se ispostavi do kraja da je broj zapravo prost vracamo 1 kao povr vrednost
            mov eax,0 #a inace ako je deljiv, on u tom slucaju nije prost
            leave
            ret

notdiv:
    inc r8d
    jmp for_loop

end:
    mov eax,1
    leave
    ret

#rdi, rsi, rdx, rcx, r8, r9...
