.intel_syntax noprefix

.text

.global abs

abs:
    enter 0,0

    cdq
    xor eax,edi
    sub eax,edi

    leave
    ret
