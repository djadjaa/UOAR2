.intel_syntax noprefix

.text
#extern int najcesca_cifra(unsigned);
#       eax                 edi
.global najcesca_cifra

najcesca_cifra:
    enter 40,0 #zauzeli smo 40B na steku da bismo ustedeli na broju registra(inace bismo koristili 10 registara za svaku cifru) 4B*10cifre
    #1)pristupamo promenljivama preko [rbp-4*i], svaka promenljiva opisuje pojedinacnu cifru
    #2)mozemo registar r10 da tretiramo kao niz cifara i pristupamo elementima kao [r10+4*i], pamtimo adresu pocetka niza

    lea r10,[rbp-40] #r10 su brojaci cifara u nizu
    mov ecx,0
init_petlja:
    cmp ecx,10
    je init_petlja_kraj
        #inace
        mov dword ptr [r10+4*rcx],0
    inc ecx
    jmp init_petlja
init_petlja_kraj:

petlja:
    mov eax,edi
    xor edx,edx
    mov esi,10
    div esi
    #edx=n%10,eax=n/10

    add dword ptr [r10+4*rdx],1
    mov edi,eax

    cmp edi,0
    jne petlja

    mov edx,-1 #maksimum
    mov eax,0 #brojac za maksimum (max_br)
    mov ecx,0 #brojac

trazenje_maks_petlja:
    cmp ecx,10
    je trazenje_maks_petlja_kraj

        #inace
        mov r9d,[r10+4*rcx]
        cmp r9d,edx
        jle manje_ili_jednako
            mov edx,r9d
            mov eax,ecx
    manje_ili_jednako:

    inc ecx
    jmp trazenje_maks_petlja
trazenje_maks_petlja_kraj:
    leave
    ret
