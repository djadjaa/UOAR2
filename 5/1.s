.intel_syntax noprefix

.text

.global fibonaci
#void fibonaci(int *a, int n);
#               rdi     esi
fibonaci:
    enter 0,0

    cmp esi,0
    je kraj

    mov dword ptr[rdi],1 #a[0]=1, odredjujemo odredjen br bajtova adresnom operandu
    cmp esi,1
    je kraj

    mov dword ptr [rdi+4],1 #a[1]=1

    mov ecx,2 #brojac

for_petlja:
    cmp ecx,esi
    je kraj

        #inace
        mov eax,[rdi+4*rcx-4] #pamtimo vrednost eax=a[i-1], stavljamo na sumu taj elem
        add eax,[rdi+4*rcx-8] #eax += a[i-2]
        mov [rdi+4*rcx],eax #a[i]=suma

    inc ecx
    jmp for_petlja
kraj:
    leave
    ret
