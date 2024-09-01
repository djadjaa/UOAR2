.intel_syntax noprefix

.text
#extern int find_power(int n, int k, int *ms, int nm);
#       eax             edi     esi     rdx     ecx
# k=n^a[i]+1
.global find_power

find_power:
    enter 0,0

    mov r8d,0
    mov r9d,0 #rez

forloop:
    cmp r8d,ecx
    je end

        mov r10d,[rdx+4*r8]

        push rdi
        push rsi
        push rdx
        push rcx
        push r8
        push r9
        push r10
        push r10

        #extern int power(int n, int m);
        #       eax         edi    esi

        mov edi,edi
        mov esi,r10d
        call power

        pop r10
        pop r10
        pop r9
        pop r8
        pop rcx
        pop rdx
        pop rsi
        pop rdi

        inc eax

        cmp esi,eax
        je cont
    cont:
        mov r9d,r8d

    inc r8d
    jmp forloop
end:
    mov eax,r9d
    leave
    ret
