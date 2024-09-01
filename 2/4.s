#(rax = rdx:rax / op, rdx = rdx:rax % op) kolicnik je u rax, a ostatak rdx
#ako imamo edi i esi, prvo premestamo vrednost esi u eax jer je to deljenik, zatim edx popunjavamo nulama zbog prekoracenja ako je neoznacen, a jedinicama ako je oznacen, i na kraju rezultat deljenja smestamo u edi, iliti delimo eax sa edi i u edi smestamo rez
#bice eax=esi/edi ili u eax bice esi%edi
.intel_syntax noprefix

.text

.global deljiv_4
#extern int deljiv_4(int);
#       eax          edi
deljiv_4:
    push rbp
    mov rbp,rsp

    #edi%4

    mov esi,4 #esi je delilac
    mov eax,edi #edi je deljenik
    cdq             #edx popunjavamo tako da edx:eax = edi
                    # kako radimo sa OZNACENIM brojevima
                    # koristimo cdq
    idiv esi #u esi smestamo rezultat
    #eax = edi/4 ili edx=edi%4
    cmp edx,0 #proveravamo ostatak
    jne deljiv_je
    mov eax,0 #povratna vrednost
    jmp kraj:

deljiv_je:
    mov eax,1

kraj:
    mov rsp,rbp
    pop rbp
    ret
