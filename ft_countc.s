section .text
		global _ft_countc

_ft_countc:
		push rbp
		mov rbp, rsp
		mov rcx, 0
		mov rbx, 0
		cmp rdi, 0
		je END
		mov al, sil


LOOP:
		cmp byte[rdi + rbx], 0
		je END
		cmp byte[rdi + rbx], al
		je INC
		inc rbx	
		jmp LOOP

INC:
		inc rbx
		inc rcx
		jmp LOOP	

END:	
		mov rax, rcx
		leave
		ret
