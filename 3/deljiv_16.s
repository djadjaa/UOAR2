.intel_syntax noprefix

.text

.global deljiv_16
# int deljiv 16(int n)
#   eax         edi

deljiv_16:
    enter 0,0

    mov esi,16
    mov eax,edi
    cdq
    idiv esi
    #edx = edi%4

    cmp edx,0
    je deljiv_je

    mov eax,0
    jmp kraj

deljiv_je:
    mov eax,1
kraj:
    leave
    ret
