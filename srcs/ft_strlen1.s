
global ft_strlen

	section .text

ft_strlen:
	push	rcx
	xor		rcx, rcx	; reset rcx
ft_strlen_next:
	cmp		[rdi], byte 0x0
	jz		ft_strlen_null
	inc		rcx;
	inc		rdi;
	jmp		ft_strlen_next
ft_strlen_null:
	mov		rax, rcx
	pop		rcx
	ret
