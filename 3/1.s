.intel_syntax noprefix
.text
.global prestupna
#extern int prestupna(unsigned);
#       eax             edi
prestupna:
    enter 0,0 #zapocinjemo fju, prvi argument je br bajtova koji nam treba za stek okvir, drugi je poravnanje
    #enter radi isto ovo:
    #push rbp
    #mov rbp rsp

    mov esi,4
    mov eax,edi
    xor edx,edx #popunjavanje nulama ostatak, ona prethodna instrukcija radi sa oznacenim; mov edx 0
    div esi #deljenje neoznacenih
    #eax = g/4;edx = g%4

    cmp edx,0
    jne nije_prestupna
    #inace
        mov esi,100
        mov eax,edi
        xor edx,edx
        div esi #edx=g%100

        cmp edx,0
        jne jeste_prestupna
        #inace
            mov esi,400
            mov eax,edi
            xor edx,edx
            div esi #edx=g%400

            cmp edx,0
            je jeste_prestupna
            jne nije_prestupna


jeste_prestupna:
    mov eax,1
    jmp kraj

nije_prestupna:
    mov eax,0

kraj:
    #mov rsp,rbp
    #pop rbp
    leave #izlazak; leave radi isto ovo iznad
    ret
