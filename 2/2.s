.intel_syntax noprefix

.text

.global negacija
#unsigned negacija(unsigned x)
#   eax             edi
#u c programu navedemo samo deklaraciju fje a u asembleru radimo instrukcije
negacija:
    push rbp
    mov rbp,rsp

    not edi
    mov eax,edi

    mov rsp,rbp
    pop rbp
    ret
