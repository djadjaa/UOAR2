.intel_syntax noprefix

.text

.global polukvadrat

polukvadrat:
    enter 0,0

    #x^2/2
    #(rax = rdx:rax / op, rdx = rdx:rax % op
    # (rdx:rax = rax * op)
    mov eax,edi
    mul edi
    mov esi,2
    xor edx, edx
    div esi

    leave
    ret
