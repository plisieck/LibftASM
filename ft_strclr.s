# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strjoin.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/29 08:02:17 by plisieck          #+#    #+#              #
#    Updated: 2015/03/29 10:57:03 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global	_ft_strclr
		extern	_ft_strlen

_ft_strclr:
		push		rdi
		cmp			rdi, 0
		je			END
		call		_ft_strlen
		mov			rcx, rax
		mov			al, 0
		cld
		rep			stosb

END:
		pop			rdi
		ret
