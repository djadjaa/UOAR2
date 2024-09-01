#neposredni operand je konstanta
#memorijski operand - navodi se adresa gde se ta vrednost moze procitati u memoriji, labela se tumaci kao memorijski operand, a ako nemamo labelu, racunamo adresu tako sto u uglastim zagradama radimo sledece [B + S ∗ I + D], gde je B bazna adresa, S je faktor, I je indeks, dok je D pomeraj
#npr a[]={1,2,3} -> mov rax,[rdi+16 ili rdi+2*8  ili rcx*8]

.intel_syntax noprefix

.global f

#int f(int,int,int,int,int,int,int,int)

f:
    push rbp #stavljamo vr rbp na stek i rsp je na adresi gde je rbp za 8 bajta manje
    #posto su od sedmog argumenta pa navise u steku u obrnutom poretku potrebno je uraditi rbp+16(2 arg)-rbp+24(6 arg) za sedmi a za osmi rbp+24(6 arg)-rbp+32(8 arg)
    mov rbp, rsp
    mov rax,[rbp+16]
    mov rsp, rbp
    pop rbp
    ret
