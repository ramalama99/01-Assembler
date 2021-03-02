.section .data
.section .text
.globl main

main:
	movl $1, %eax		
	movl $1, %ebx
	movl $2, %ecx 		
	movl $6, %edx 		
uporedi:
	cmpl %ecx, %edx
	je kraj
sledeci:
	addl %ebx, %eax
	xchgl %eax, %ebx
	incl %ecx
	jmp uporedi	
kraj:
	movl $1, %eax
	movl $2, %ebx
	int $0x80
