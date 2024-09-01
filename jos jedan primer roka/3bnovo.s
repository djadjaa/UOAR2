.intel_syntax noprefix

.text

.global filter_power
# int filter_power(unsigned *xs, int n, unsigned m, unsigned upper_bound);
#	eax		             [rdi]	    esi	  edx		   ecx

filter_power:
    enter 0,0

    mov r8d,0
    mov r9d,0
for:
    cmp r8d,esi
    je end

        mov r10d,[rdi+4*r8d]

        push rdi
        push rsi
        push rdx
        push rcx
        push r8
        push r9
        push r10
        push r10

        mov edi,r10d
        mov esi,edx
        call power

        pop r10
        pop r10
        pop r9
        pop r8
        pop rcx
        pop rdx
        pop rsi
        pop rdi

        cmp eax,ecx
        jge nastavi
            mov [rdi+4*r9],eax
            inc r9d
            jmp nastavi
    nastavi:
    inc r8d
    jmp for
kraj:
    mov eax,r9d
    leave
    ret
