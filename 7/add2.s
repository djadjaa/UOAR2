.text

.global add

.align 2
@int add(int,int);
@r0      r0,r1
add:
    add r0,r0,r1
    mov pc,lr
    @drugi nacin bez pravljenja stek okvira za fju
    @fja lista -> program ima takvu fju gde zahvaljujuci njoj kompajler pravi stek okvir za njega
    @dakle ako su jednostavne operacije u pitanju nije neophodno praviti stek okvir za njih zbog optimizacije
