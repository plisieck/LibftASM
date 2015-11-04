# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_cat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/27 00:10:16 by plisieck          #+#    #+#              #
#    Updated: 2015/03/29 12:51:56 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .data
		buffer times 5 db 0
		bufsize equ $ - buffer

section .text
		global _ft_cat
		extern _ft_strlen

_ft_cat:
		push			rbp
		mov				rbp, rsp

READ:
		mov 			rax, 0x2000003
		push			rdi
		lea 			rsi, [rel buffer]
		mov 			rdx, bufsize
		syscall
		jc 				ERROR
		cmp 			rax, 0
		je 				END

WRITE:
		mov 			rdi, 1
		mov 			rdx, rax
		mov 			rax, 0x2000004
		syscall
		jc 				ERROR
		pop 			rdi
		jmp 			READ


ERROR:
		pop 			rdi
		mov 			rax, 1

END:
		mov				rsp, rbp
		pop 			rbp
		ret
