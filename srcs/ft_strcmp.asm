
global	ft_strcmp
	section .text

ft_strcmp:
	push	rbx
	push	rcx
	xor		rbx, rbx
	xor		rcx, rcx
ft_strcmp_loop:
	mov		bl, BYTE [rdi]
	mov		cl, BYTE [rsi]
	cmp		bl, 0
	je		return
	cmp		cl, 0
	je		return
	cmp		cl, bl
	jne		return
	inc		rdi
	inc		rsi
	jmp		ft_strcmp_loop
return:
	movzx	rax, bl
	movzx	rcx, cl
	sub		rax, rcx
	pop		rcx
	pop		rbx
	ret

