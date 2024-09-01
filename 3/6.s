.intel_syntax noprefix

.text

.global ojler
#extern unsigned ojler(unsigned);
#          eax          edi
ojler:
    enter 0,0

    xor r10d,r10d #broj uzajamno prostih
    mov ecx,1 #brojac
    #brojac nakon poziva nzd fje mora ostati konstantan
for_petlja:
    cmp ecx, edi
    je for_petlja_kraj

    #telo

    #poravnanje steka i poziv fje
    #cuvamo im infomacije zarad poziva nzd fje
    push r10 #smanjili prostor za 8
    push rcx #smanjili prostor za 8
    push rdi #ponovo smanjili za 8
    #pri pozivu fje ocekuje se da nam je stek poravnan sa 16 npr rsp i rbp moraju biti 'deljivi' sa 16
    #kako bi rsp i rbp bili zvanicno deljivi sa 16, poravnacemo stek za 8 kako bismo upotpunili prostor koji praznimo
    sub rsp,8
    #push rdi #poravnavanje steka sa 16

    mov esi,edi
    mov edi,ecx
    call nzd #eax = nzd(i,n)

    #vracanje starih vrednosti
    add rsp,8
    pop rdi
    pop rcx
    pop r10

    cmp eax,1
    jne nisu_uzajamno_prosti
    #inace
    inc r10d

nisu_uzajamno_prosti:

    inc ecx
    jmp for_petlja

for_petlja_kraj:
    mov eax, r10d
    leave
    ret
