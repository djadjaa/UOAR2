.intel_syntax noprefix

.text

.global obrni

#extern void obrni(int *a, int n);
#                      rdi,esi
#verzija sa dva pokazivaca
obrni:

    enter 0,0

    #levom dodeljujemo vrednost pocetka niza
    #mov rcx,rdi #levi = &a[0] ovo je podrazumevano, jer je pokazivac svakako pocetak na prvi niz
    #smestanje adrese:
    lea rsi,[rdi+4*rsi-4] #rsi = desni &a[n-1]
petlja:
    cmp rdi,rsi
    #adrese su neoznaceni celi brojevi
    jae kraj

    mov r8d, [rdi]
    mov r9d, [rsi]
    mov [rdi], r9d
    mov [rsi], r8d

    add rdi,4
    sub rsi,4

    jmp petlja
kraj:
    leave
    ret

#funfact: pristup strukturi: [a+i*8+4]
#structure padding -> najmanje zauzeta memorija u strukturi(zbir tipova unutar fje)
#svaka promenljiva mora da bude na adresi cija je vr deljiva sa 4
