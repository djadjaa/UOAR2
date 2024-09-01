.intel_syntax noprefix
.text
.global prost
#extern int prost(int n);
#       eax         edi

prost:
    enter 0,0

    cmp edi,1
    jne nije1
        mov eax,-1
        leave
        ret
nije1:
    mov r8d,2
loop:
    cmp r8d,edi
    je end

        mov eax,edi
        xor edx,edx
        div r8d

        cmp edx,0
        jne notdiv
            mov eax,-1
            leave
            ret
notdiv:
    inc r8d
    jmp loop
end:
    mov eax,1
    leave
    ret
