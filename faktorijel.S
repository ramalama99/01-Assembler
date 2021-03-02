.section .data
.section .text
.globl main

#faktorijel od cetiri

main:
	movl $4, %eax	#n odnosno broj ciji fakt trazimo
	movl %eax, %ebx	#
	subl $1, %ebx	#prvi korak je da pomnozimo n sa n-1 pa nam zato treba b=a-1 
	movl $0, %ecx	#suma, rezultat
	movl %ebx, %edx   #brojac, broj mnozenja prilikom odr fakt je n-1	

uporedi:
	cmpl $1, %edx	
	je kraj
radi:
	addl %eax, %ecx	#c=+a
	subl $1, %ebx	#b--

provera:
	cmpl $0, %ebx
	je sledeci
	ja radi 

sledeci:
	movl %eax, %ebx	#b = 4
	subl $2, %ebx	#b = 2 //ovo nam treba jer sada mnozimo12 sa2	
	movl %ecx, %eax 	#a = 12
	movl $0, %ecx	#c smo zapisali u a, te ga brisemo
	subl $1, %edx	#smanjujemo brojac
	jmp uporedi

kraj:
	movl $1, %eax
	movl $2, %ebx
	int $0x80
