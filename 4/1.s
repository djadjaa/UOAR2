.intel_syntax noprefix

.text
#extern void zameni(int*,int*);
#                   rdi, rsi //pokazivaci su 8B
.global zameni

zameni:
    enter 0,0
    #upisivanje vrednosti u pokazivac
    mov r8d, [rdi]  #x=*px
    #kompjuter sam zakljucuje koliko bajtova treba da se prenese na osnovu velicine registra u koji se prenosi vrednost
    #da smo koristili registre manje memorije, ispisale bi se informacije van steka
    #posto za adresni operand se ne zna koliko bajtova treba da se zauzme, koriste se prefiksi word,dword,qword  ptr kako bismo dali do znanja koliko bajtova treba da zauzme adresni operand
    mov r9d, [rsi]  #y=*py
    mov [rdi], r9d  #*px=y
    mov [rsi], r8d  #*py=x
    #cdq - prosirenje na jos 4B
    #kada bismo uradili *x=*y, desila bi se greska jer mov moze da ima najvise jedan adresni operand
    leave
    ret
