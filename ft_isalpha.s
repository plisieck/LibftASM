# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/20 22:21:03 by plisieck          #+#    #+#              #
#    Updated: 2015/03/27 04:12:53 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global _ft_isalpha

_ft_isalpha:
		cmp 			rdi, 65
		jl 				IS_NOT_ALPHA
		cmp				rdi, 90
		jg 				CHECK_LOWERS
		mov 			rax, 1
		ret

CHECK_LOWERS:
		cmp				rdi, 97
		jl				IS_NOT_ALPHA
		cmp				rdi, 122
		jg				IS_NOT_ALPHA
		mov				rax, 1
		ret

IS_NOT_ALPHA:
		mov				rax, 0
		ret
