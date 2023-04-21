
global ft_strlen

	section .text

ft_strlen:
	push	rbx;
	push	rcx;

	mov		rbx, rdi;
	xor		al, al;				;value to compare

	mov		rcx, 0xffffffff

	repne	scasb				;while rdi != al

	sub		rdi, rbx
	sub 	rdi, 1
	mov		rax, rdi

	pop		rcx
	pop		rbx

	ret