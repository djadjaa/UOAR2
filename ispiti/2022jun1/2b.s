.intel_syntax noprefix

.text

.global najduzi_vektor
#int najduzi_vektor(int **a, int n, int m);
#eax                  rdi       esi   edx

najduzi_vektor:
    enter 0,0

    mov ecx,0 #max indeks
    mov r8d,0
    mov r9d,0 #najduzi proizvod trenutno
forloop:
    cmp r8d,esi
    je end

        push rdi
        push rsi
        push rdx
        push rcx
        push r8
        push r9

        #extern int skalarni_proizvod(int* a, int* b, int n);
        #       eax                     rdi     rsi     edx

        mov rsi,[rdi+8*r8]
        mov rdi,rsi
        call skalarni_proizvod

        pop r9
        pop r8
        pop rcx
        pop rdx
        pop rsi
        pop rdi

        cmp eax,r9d
        jge max
    max:
        mov r9d,eax
        mov ecx,r8d
cont:
    inc r8d
    jmp forloop
end:
    mov eax,ecx
    leave
    ret
