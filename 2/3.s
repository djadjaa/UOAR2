#flags registar ima vise informacija za neke registre, ima 4 slucaja: zf(kada je vr u registru jednaka 0), sf(da li je rez negativan), cf(da li imamo prenos prilikom racunavanja binarnih brojeva) i of

.intel_syntax noprefix

.text

.global max
max:
    push rbp
    mov rbp,rsp

    #bezuslovni skok je jmp koji ide na odredjenu instrukciju, u ovom slucaju oni idu posle izvrsavanja uslovnog skoka
    #uslovni skok je cmp, on poredi dva broja ima ih dosta:^))))))))
    #j{uslov} op1 op2

    cmp edi, esi #poredi; ona zapravo oduzima ova dva broja i u zavisnosti od znaka razlike i flagova proverava da li treba da skocimo na narednu instrukciju
    jle else_grana #skacemo kada je manje jednako, instrukcija ima informaciju da li je ispunjen uslov
    mov eax, edi #inace
    jmp kraj #skacemo na kraj

else_grana:
    mov eax,esi

kraj:
    mov rsp,rbp
    pop rbp
    ret
