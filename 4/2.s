.intel_syntax noprefix
.text
.global kolicnik
# void kolicnik(int,int,int*,int*)
#   /            edi,esi,rdx,rcx
kolicnik:
    enter 0,0

    mov r8,rdx #pamtimo vr pokazivaca gde treba da smestimo kolicnik

    mov eax,edi
    cdq
    idiv esi
    #eax=x/y edx=x%y

    mov [r8],eax
    mov [rcx],edx
    leave
    ret
