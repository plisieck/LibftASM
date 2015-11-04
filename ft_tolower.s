# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/20 23:50:42 by plisieck          #+#    #+#              #
#    Updated: 2015/03/21 14:27:04 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_tolower
	extern _ft_isupper

_ft_tolower:
	call _ft_isupper
	cmp rax, 1
	jne LEAVE
	mov rax, rdi
	add rax, 32
	ret

LEAVE:
	mov	rax, rdi
	ret
