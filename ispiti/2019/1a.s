.intel_syntax noprefix

.text

.global izraz

#extern unsigned izraz(unsigned x,unsigned y);
#       eax             edi         esi

izraz:
    enter 0,0
    mov ecx,16
    #(rax = rdx:rax / op, rdx = rdx:rax % op
    # (rdx:rax = rax * op)
    #prvo mnozimo x i y a posle delimo sa 16

    mov eax,edi
    mul esi
    xor edx, edx
    div ecx

    leave
    ret
