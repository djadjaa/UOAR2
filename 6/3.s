.intel_syntax noprefix
.text
.global sadrzi

#extern int sadrzi(int* a,int n,int c);
#       eax             rdi     esi    edx

sadrzi:
    enter 0,0
    mov ecx,0 #brojac

for_loop:
    cmp ecx,esi
    je for_loop_end

        #inace
        cmp [rdi+4*rcx],edx
        jne nije_jednako
            #inace
            mov eax,ecx
            leave
            ret
    nije_jednako:

    inc ecx
    jmp for_loop
for_loop_end:
    mov eax,-1
    leave
    ret
