# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_islower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/21 14:39:02 by plisieck          #+#    #+#              #
#    Updated: 2015/03/24 05:27:30 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_islower

_ft_islower:
	cmp rdi, 97
	jl IS_NOT_LOWER
	cmp rdi, 122
	jg IS_NOT_LOWER
	mov rax, 1
	ret

IS_NOT_LOWER:
	mov rax, 0
	ret
