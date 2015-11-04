# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/20 16:34:50 by plisieck          #+#    #+#              #
#    Updated: 2015/03/27 04:11:57 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global 	_ft_isalnum
		extern 	_ft_isdigit
		extern 	_ft_isalpha

_ft_isalnum:
		call			_ft_isdigit
		cmp				rax, 1
		jne				CHECK_IF_IS_ALPHA
		mov				rax, 1
		ret

CHECK_IF_IS_ALPHA:
		call 			_ft_isalpha
		cmp 			rax, 1
		je 				IS_ALNUM
		mov 			rax, 0
		ret

IS_ALNUM:
		mov				rax, 1
		ret
