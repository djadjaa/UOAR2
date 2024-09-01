.intel_syntax noprefix

.text

.global izdvoj_proste
#extern int izdvoj_proste(int *a, int *b, int n);
#       eax                 rdi     rdx     esi
prost:
    enter 0,0

    cmp edi,1 #ako je promenljiva jedinica
    jne nastavak
        #inace
        mov eax,0
        leave
        ret
nastavak:
    mov ecx,2 #brojac

for_loop:
    cmp ecx,edi
    jge kraj

        #inace
        mov eax,edi
        cdq
        idiv ecx #delimo sa brojacem
        #eax=a/i edx=a%i

        cmp edx,0
        jne nije_deljivo
            #inace
            mov eax,0
            leave
            ret

    nije_deljivo:
    inc ecx
    jmp for_loop
kraj:
    mov eax,1
    leave
    ret
izdvoj_proste:
    enter 0,0
    mov r10d,0 #ovde cuvamo n_b=0
    mov ecx,0 #brojac

for_petlja:
    cmp ecx,esi
    je for_petlja_kraj

        #inace
        mov r8d,[rdi+4*rcx] #r8d=a[i]

        #poziv labele
        push rdi #a
        push rsi #n
        push rdx #b
        push r10 #n_b
        push rcx #indeks
        push r8 #privremena promenljiva

        #paran br registara dakle ne moramo da poravnamo stek do 16B

        mov edi,r8d #a[i] je promenljiva koja se poziva u labeli prost
        call prost #eax=prost(a[i])

        pop r8
        pop rcx
        pop r10
        pop rdx
        pop rsi
        pop rdi

        cmp eax,0
        je nije_prost
            #inace
            mov [rdx+4*r10],r8d #BUG
            inc r10d
    nije_prost:
    inc ecx
    jmp for_petlja
for_petlja_kraj:
    mov eax,r10d
    leave
    ret
