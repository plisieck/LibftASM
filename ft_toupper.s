# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/20 23:50:42 by plisieck          #+#    #+#              #
#    Updated: 2015/03/22 05:58:38 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_toupper
	extern _ft_islower

_ft_toupper:
	call _ft_islower
	cmp rax, 1
	jne LEAVE
	mov rax, rdi
	sub rax, 32
	ret

LEAVE:
	mov rax, rdi
	ret
