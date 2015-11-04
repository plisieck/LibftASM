# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strchr.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/29 04:52:17 by plisieck          #+#    #+#              #
#    Updated: 2015/03/29 04:52:19 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global	_ft_strchr

_ft_strchr:
		push		rdi
		mov 		bl, sil

CHR:
		cmp			byte[rdi], 0
		je 			LEAVE_WITH_NULL
		cmp			byte[rdi], bl
		je			LEAVE
		inc			rdi
		jmp 		CHR
		
LEAVE_WITH_NULL:
		mov			rax, 0
		pop			rdi
		ret
		
LEAVE:
		mov 		rax, rdi
		pop			rdi
		ret
