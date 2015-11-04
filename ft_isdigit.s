# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/21 14:38:57 by plisieck          #+#    #+#              #
#    Updated: 2015/03/24 05:26:38 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isdigit

_ft_isdigit:
	cmp rdi, 48
	jl IS_NOT_DIGIT
	cmp rdi, 57
	jg IS_NOT_DIGIT
	mov rax, 1
	ret

IS_NOT_DIGIT:
	mov rax, 0
	ret
