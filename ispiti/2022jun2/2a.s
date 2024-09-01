.intel_syntax noprefix

.text
#extern int power(int n, int m);
#       eax         edi    esi
.global power

power:
    enter 0,0

    mov r8d,0
    mov edx,1 #tekuci proizvod
forloop:
    cmp r8d,esi
    je end

        mov eax,edx
        mul edi
        mov edx,eax

    inc r8d
    jmp forloop
end:
    mov eax,edx
    leave
    ret
