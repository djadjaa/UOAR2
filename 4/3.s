.intel_syntax noprefix

.text

.global suma
#extern int suma(int *a, int n);
#       eax         rdi     esi
suma:
    enter 0,0
    mov eax,0 #suma
    mov ecx,0 #brojac
for_petlja:
    cmp esi,ecx
    je for_petlja_kraj
        #inace radimo telo
        add eax,[rdi+4*rcx] #baza+i*4; ono sto se nalazi na datoj adresi
        #ne smemo 4*ecx jer ispisujemo osmobitni rezultat, brojac je neoznacenog tipa
    inc ecx
    jmp for_petlja
for_petlja_kraj:
    leave
    ret
