
extern	ft_strlen
extern	ft_strcpy
extern	malloc

global	ft_strdup

	section .text

ft_strdup:
	push	rdi
	call	ft_strlen
	add		rax, 1
	mov		rdi, rax
	call	malloc wrt ..plt
	cmp		rax, 0
	je		error
	mov		rdi, rax
	pop		rsi
	call	ft_strcpy
	ret

error:
	pop		rdi
	ret
