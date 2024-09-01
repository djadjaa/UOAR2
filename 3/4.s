.intel_syntax noprefix
.text
.global suma

#unsigned suma(unsigned)
#eax            edi

suma:
    enter 0,0

    xor r9d, r9d #inicijalizacija sume
    mov ecx, edi #brojac odozdo ka gore

for_loop:
    #telo
    mov eax,ecx
    and eax,1
    cmp eax,0
    #od poslednjeg bita mozemo proveriti da li je broj paran: x&1=0 ako je paran =1 ako je neparan
    #radi isto sto i ovo

    #mov eax,ecx
    #xor edx,edx
    #mov esi,2
    #div esi #edx = i%2
    #cmp edx,0 #da li je parno

    #ili mozemo test ecx,1 koji proverava koja vr je konjukcija, proveravamo u tom slucaju samo flegove

    jne nije_parno
    #inace
    add r9d,ecx #u sumu dodajemo vr brojaca

    #inkrement brojaca
    #dec ecx
    #jmp for_loop

nije_parno:
    #u tom slucaju samo uvecavamo brojac i idemo na petlju
    dec ecx
    #uslov
    #cmp ecx,0
    #jne for_loop_end
    jmp for_loop

#for_loop_end:
    mov eax,r9d #povratna vrednost
    leave
    ret
