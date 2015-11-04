# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/24 06:02:09 by plisieck          #+#    #+#              #
#    Updated: 2015/03/25 08:33:43 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .data
		NULL db "(null)", 10

section .text
		global	_ft_puts
		extern	_ft_strlen

_ft_puts:
		cmp			rdi, 0
		je 			WRITE_NULL
		call 		_ft_strlen
		mov 		rdx, rax
		mov	 		rsi, rdi
		mov 		rdi, 1
		mov 		rax, 0x2000004
		syscall
		mov 		rdx, 1
		lea 		rsi, [rel NULL + 6] 
		mov 		rdi, 1
		mov 		rax, 0x2000004
		syscall
		mov 		rax, 10
		ret

WRITE_NULL:
		mov 		rdx, 7
		lea	 		rsi, [rel NULL]
		mov 		rdi, 1
		mov 		rax, 0x2000004
		syscall
		mov			rax, 10
		ret
