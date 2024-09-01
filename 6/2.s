.intel_syntax noprefix

.text

#extern int napravi_niz(int* a,int n);
#       eax             rdi,    esi
.global napravi_niz

napravi_niz:

    enter 0,0

    mov r10d,0 #broj savrsenih
    mov ecx,1 #brojac

    #postoje registri koji se koriste iskljucivo kroz funkcije i informacije se cuvaju pre poziva fje, menjaju se kroz fju, ovo je optimalnije jer ako bismo cuvali info u petlji program bi se izvrsavao znatno duze
for_loop:
    cmp ecx,esi
    jg for_loop_end

        #inace
        push r10 #broj savrsenih
        push rcx #brojac
        push rdi #niz
        push rsi #dimenzija

        mov edi,ecx
        call savrsen #eax=savrsen(i)

        pop rsi
        pop rdi
        pop rcx
        pop r10

        cmp eax,0
        je nije_savrsen
            #inace
            mov [rdi+4*r10],ecx
            inc r10d
    nije_savrsen:

    inc ecx
    jmp for_loop
for_loop_end:
    mov eax,r10d
    leave
    ret
