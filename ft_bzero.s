# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/21 14:40:36 by plisieck          #+#    #+#              #
#    Updated: 2015/03/29 12:57:30 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global _ft_bzero

_ft_bzero:
		cmp			rdi, 0
		je 			END
		mov 		rax, rdi
		mov 		rbx, rsi

CLEAN_STR:
		cmp 		rbx, 0
		jle 		END
		mov			byte[rax], 0
		inc			rax
		dec			rbx
		jmp 		CLEAN_STR

END:
		ret
