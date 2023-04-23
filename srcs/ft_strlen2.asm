

global ft_strlen

	section .text

ft_strlen:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 8
	mov		byte [rsp], 0

ft_strlen_next:
	cmp		[rdi], byte 0x0
	jz		ft_strlen_null
	mov		rcx,[rsp]
	inc		rcx
	mov		[rsp], rcx
	inc		rdi
	jmp		ft_strlen_next

ft_strlen_null:
	mov		rax, [rsp]
	mov		rsp, rbp
	pop		rbp
	ret