.section .data
.section .text
.globl main

main:
	movl $1, %eax
	movl $5, %ebx
	movl $0, %ecx
sabiraj:
	add %eax, %ecx
	cmpl %ebx, %ecx
	je kraj  
sledeci:
	add $1, %eax
	jmp sabiraj 
kraj:
	movl $1, %eax
	movl $2, %ebx
	int $0x80
 
