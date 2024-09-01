.intel_syntax noprefix

.text

.global max
#extern int max(int *a, int n);
#       eax         rdi     esi
max:
    enter 0,0

    mov r8d,[rdi] #trenutni max=a[0]
    mov ecx,1 #brojac
for_petlja:
    cmp ecx,esi
    je kraj

    mov edx,[rdi+4*rcx] #smestamo clan niza u registar da bismo ga zapamtili i kako bi poredjenje brze islo

    cmp edx,r8d
    jle nastavak
        #inace
        mov r8d,edx
nastavak:
    inc ecx
    jmp for_petlja
kraj:
    mov eax,r8d
    leave
    ret
