.intel_syntax noprefix

.text

.global obrni

#extern void obrni(int *a, int n);
#                      rdi,esi

obrni:

    enter 0,0

    mov ecx,0 #levi ind
    mov edx,esi #desni=n-1, cuvamo vrednost
    dec edx

petlja:
    cmp ecx,edx
    jae kraj

        #inace obrcemo elemente
        mov r8d,[rdi+4*rcx]
        mov r9d,[rdi+4*rdx]
        mov [rdi+4*rcx],r9d
        mov [rdi+4*rdx],r8d

        inc ecx
        dec edx
    jmp petlja
kraj:
    leave
    ret
