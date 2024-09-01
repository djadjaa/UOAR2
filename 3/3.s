.intel_syntax noprefix
.text
.global suma

#unsigned suma(unsigned)
#eax            edi

suma:
    enter 0,0
    mov eax, edi
    inc edi #add edi,1
    mul edi #edx:eax=n*(n+1)

    #mozemo da podelimo broj tako sto cemo br da siftujemo aritmeticki u desno
    shr eax, 1
   # mov esi,2
   # xor edx,edx
    #div esi #eax = n*(n+1)/2
    leave
    ret
