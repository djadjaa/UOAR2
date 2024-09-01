.text

.global broj_ponavljanja

.align 2

@ int broj_ponavljanja(char *s,char c)
@             r0         r0      r1

broj_ponavljanja:

	push {fp,lr}
	mov fp,sp
	
	push {r4,r5}

	ldrb r5,[r0]
	
	mov r4,#0
	
petlja:
	ldrb r5,[r0]
	cmp r5,#0
	beq kraj
	
	cmp r5,r1
	    addeq r4,r4,#1
	
	add r0,r0,#1
	
	b petlja
	
	
kraj:	
	mov r0,r4
	pop {r4,r5}
	mov sp,fp
	pop {fp,pc}
	
