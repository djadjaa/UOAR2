.text

.global najcesci_karakter

.align 2

@ char najcesci_karakter(char *haystack,char *needle)
@         r0                  r0             r1

najcesci_karakter:

	push {fp,lr}
	mov fp,sp

	push {r4-r7}
	
    mov r3,#0 @max karakter
  	mov r4,r0 @temp niska
  	mov r5,r1 @temp podniska
    mov r7,#0 @max poj karaktera
  
petlja:
  ldrb r6,[r5] @ trenutni karakter od podniske
  cmp r6,#0
  beq kraj
  
  mov r0,r4
  mov r1,r6
  
  bl broj_ponavljanja
  cmp r0,r7
    movgt r7,r0
    movgt r3,r6

  add r5,r5,#1

  b petlja

kraj:
	mov r0,r3
	pop {r4-r7}
	mov sp,fp
	pop {fp,pc}
