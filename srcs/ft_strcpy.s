
global ft_strcpy

	section .text

ft_strcpy:
	push	rcx
	push	rdx
	xor		rcx, rcx
	xor		rdx, rdx
	cmp		rsi, 0
	jz		return
	jmp		ft_strcpy_nest
add:
	inc		rcx;
ft_strcpy_nest:
	mov		dl, BYTE [rsi + rcx]
	mov		BYTE [rdi + rcx], dl
	cmp		dl, 0
	jnz		add
return:
	mov		rax, rdi
	pop		rdx
	pop		rcx
	ret
