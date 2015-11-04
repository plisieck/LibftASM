# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/22 00:09:54 by plisieck          #+#    #+#              #
#    Updated: 2015/03/25 05:31:11 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strlen

_ft_strlen:
	push rdi
	mov rcx, -1
	mov al, 0
	cld
	repnz scasb
	neg rcx
	sub rcx, 2
	mov rax, rcx
	pop rdi
	ret
