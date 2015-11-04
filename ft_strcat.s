# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/22 05:54:48 by plisieck          #+#    #+#              #
#    Updated: 2015/03/29 05:25:17 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global _ft_strcat
		extern _ft_strlen

_ft_strcat:
		call 			_ft_strlen
		mov				 rcx, 0
	
CAT:
		mov				bl, byte[rsi + rcx]
		cmp				bl, 0
		je 				END
		mov 			byte[rdi + rax], bl
		inc				rcx
		inc 			rax
		jmp 			CAT

END:
		mov 			byte[rdi + rax], 0
		mov 			rax, rdi
		ret
