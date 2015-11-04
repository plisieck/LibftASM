# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/21 14:38:47 by plisieck          #+#    #+#              #
#    Updated: 2015/03/29 06:35:28 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global _ft_isascii

_ft_isascii:
		cmp			rdi, 0
		jl			IS_NOT_ASCII
		cmp 		rdi, 127
		jg 			IS_NOT_ASCII
		mov 		rax, 1
		ret

IS_NOT_ASCII:
		mov 		rax, 0
		ret
