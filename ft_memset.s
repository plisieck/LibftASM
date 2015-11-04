# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/23 01:56:45 by plisieck          #+#    #+#              #
#    Updated: 2015/03/27 04:37:29 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_memset


_ft_memset:
	push rdi
	mov rax, rsi
	mov rcx, rdx
	cld
	rep stosb
	pop rax
	ret
