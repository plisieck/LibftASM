# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/21 14:39:06 by plisieck          #+#    #+#              #
#    Updated: 2015/03/24 05:28:37 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isprint

_ft_isprint:
	cmp rdi, 32
	jl IS_NOT_PRINT
	cmp rdi, 126
	jg IS_NOT_PRINT
	mov rax, 1
	ret

IS_NOT_PRINT:
	mov rax, 0
	ret
