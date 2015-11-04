# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/23 01:53:55 by plisieck          #+#    #+#              #
#    Updated: 2015/03/27 04:33:03 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


section .text
	global _ft_memcpy

_ft_memcpy:
	push rdi
	mov rcx, rdx
	cld
	rep movsb
	pop rax
	ret
