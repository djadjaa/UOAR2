#registri opste namene(16)
#rax - povratna vrednost, mnozenje
#rsp - pokazivac na vrh steka
#rbp - pokazivac na tekuci okvir steka (ugl i dno steka)
#rbx
#rcx - petlje
#rdx - mnozenje
#rsi - stringovi
#rdi - stringovi
#r8 i r9
#ovo su registri koji se koriste kao argumenti nekih funkcija
#r10 do 15
#+8 pomocnih registara koji odrzavaju program
#moramo da znamo gde je pocetak i kraj stek okvira
#labele su kao imena fje, tacnije imenovana adresa u memoriji; Labele zamenjuju adrese podataka i instrukcija. One se prilikom prevodenja programa prevode u memorijske adrese
#instrukciju cine ime instrukcije i dva+ operanada
#direktive objasnjavaju sta sve treba da stoji; definišu strukturu programa i simbole i generišu kod koji se ne izvršava (podatke, poruke i sl.)
#operandi mogu da budu adrese memorije ili registri(brze memorije gde se privremeno cuvaju podaci)
#push stavlja na vrh steka
#pop brise sa vrha steka, a podatak sa vrha ide na mesto nize, skine se odredjeni broj bajtova
#svaki registar je velicine 8 bajta
#rip je registar za narednu instrukciju, nastavak izvrsavanja neke fje/instrukcije 'register instruction pointer', pokazuje na sledecu instrukciju koja treba da se izvrsi, pokazuje na memoriju gde se izvrsava ta naredna fja/instr
#____________________________________________________________________________________________________________________________________________________________________

.intel_syntax noprefix #intelova sintaksa bez $; tip pisanja instrukcija
#u rdi treba da stavimo adresu podatka
.data #zapoˇcinje sekciju inicijalizovanih podataka

poruka: .asciz "Hello world\n" #niz ascii karaktera

#'poruka' treba da upisemo u rdi
.text #zapoˇcinje sekciju koda

#'undefine reference to `main', stoga moramo da stavimo .global kao globalnu promenljivu
.global main
main:
    #pomeramo ih, prebacujemo podatke tako da ono sto je bilo u rsp da bude u rbp
    #pravimo stek okvir za fju koju budemo implementirali
    #cuvamo staru vrednost registra kako bismo posle pravljenja stek okvira vratili sve u prvobitan izgled
    #treba da skinemo stek okvire i da ih vratimo u prvobitan stek,problem je sto nismo zapamtili dno fje main, zato koristimo push i pop
    push rbp #pamtimo njegovu vrednost na stek, upisemo na vrh steka vrednost rbpa, pre nego sto smo ga sredili, a rsp se automatski pomeri na drugu vr adrese (za 1 bajt vise npr)
    mov rbp, rsp #premesta iz rsp u rbp, oni sada imaju istu vr, u rbp treba da pise ono sto je pisalo u rsp (tipa x=y)
    #rsp treba da pomerimo za nekoliko bajtova, onoliko koliko nam je potreban za stek okvir, za to koristimo sub
    #sub oduzima: sub  rsp, 16 #odvajamo 16 bajta na steku (tipa rsp -= 16), koristimo ako nam je odredjena memorija vazna
    lea rdi, poruka #uˇcitavanje adrese drugog operanda u prvi operand, pri ˇcemu je drugi operand memorijski operand
    call printf #poziv fje
    mov rax,0 #tj return 0 fje
    mov rsp, rbp #vratimo  se na 'prvobitan' izgled steka iz rbpa u rsp vracamo vrednosti
    pop rbp #skidamo prednju vrednost rbpa,skine 8 bajtova sa steka i upise u rbp, a rsp se smanji za toliko

    #push cuva informacije o registru, a pop vraca tu informaciju nazad

    ret #return
