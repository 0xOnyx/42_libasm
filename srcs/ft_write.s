
extern errno_location

global	ft_write
	section	.text

ft_write:
	mov		rax, 1
	syscall
	jc		error
	ret
ft_error:
	mov		r15, rax
	call	__errno_location
	mov		[rax], r15
	mov		rax, -1
	ret