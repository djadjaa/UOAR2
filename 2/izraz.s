.intel_syntax noprefix

.text

.global izraz
izraz:
    #pocetak
    push rbp
    mov rbp,rsp

    #(4a − b + 1)/2 + c/4
    #extern int izraz(int,int,int);
    #global eax        edi esi r8d
    #r9d ce biti konstanta

    #promenljivu c koja se nalazi u registru edx premestamo u registar r8d kako bismo sacuvali vrednost promenljive c
    mov r8d,edx

    #4a
    mov eax,edi
    mov r9d,4
    imul r9d
    mov edi,eax

    #4a-b+1
    sub edi,esi
    add edi,1

    #deljenje rezultata sa 2
    mov eax,edi
    cdq
    mov r9d,2
    idiv r9d
    mov edi,eax

    #c/4
    mov eax,r8d
    cdq
    mov r9d,4
    idiv r9d
    mov r8d,eax

    #sabiranje
    add edi,r8d

    #rezultat
    mov eax,edi

    #kraj
    mov rsp,rbp
    pop rbp
    ret
