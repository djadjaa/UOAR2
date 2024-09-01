.intel_syntax noprefix

.text

.global sumarazlika

#int suma razlika(int ∗ a, int n)
#eax                rdi     esi

sumarazlika:
    enter 0,0
    mov eax,0
    mov ecx,0
    mov edx,esi
    sub edx,2
for_petlja:
    cmp ecx,edx
    ja kraj
        #inace
        mov r8d,[rdi+4*rcx+4]
        sub r8d,[rdi+4*rcx]
        add eax,r8d
    inc ecx
    jmp for_petlja
kraj:
    leave
    ret

#int suma=0;
#for(i=0; i<=n-2; i++){
#     suma = a[i+1]-a[i]
#}
