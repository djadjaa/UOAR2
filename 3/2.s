.intel_syntax noprefix
.text
.global suma

#unsigned suma(unsigned)
#eax            edi

suma:
    enter 0,0
    #suma ce biti u eax

    xor eax,eax #inicijalizacije sume na nulu, trenutna suma u pitanju
    mov ecx,1 #ecx je brojac

for_loop:
    #uslov
    cmp edi,ecx
    jb for_loop_end

    #telo petlje
    add eax,ecx

    #inkrementiranje
    add ecx,1
    jmp for_loop

for_loop_end:
    leave
    ret
