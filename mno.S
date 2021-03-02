.section .data
.section .text
.globl main

#mnozenje sabiranjem

main:
	movl $2, %eax
	movl $3, %ebx
	movl $0, %ecx
provera:
	cmpl $0, %eax
	je kraj
	
mnozi:
	addl %ebx, %ecx
	subl $1, %eax	
	jmp provera
kraj:
	movl $1, %eax
	movl $2, %ebx
	int $0x80
