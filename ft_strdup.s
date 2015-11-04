# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/25 07:42:41 by plisieck          #+#    #+#              #
#    Updated: 2015/03/29 12:36:01 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global	_ft_strdup
		extern	_ft_strlen
		extern	_ft_memcpy
		extern	_malloc

_ft_strdup:
		cmp			rdi, 0
		je			END
		mov			rbx, rdi
		call		_ft_strlen
		mov			rcx, rax
		push 		rax
		inc			rax
		mov			rdi, rax
		call		_malloc
		pop			rdx
		mov			rsi, rbx
		mov			rdi, rax
		call		_ft_memcpy
		mov			byte[rdi + rcx], 0
		ret
		
END:
		mov			rax, 0
		ret
