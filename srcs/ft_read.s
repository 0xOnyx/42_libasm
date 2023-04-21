
global	ft_read
	section .text

ft_read:
	mov		rax, 0
	syscall
	jc		error
	ret

ft_error:
	mov		r15, rax
	call	__errno_location
	mov		[rax], r15
	mov		rax, -1
	ret
