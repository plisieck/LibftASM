# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/21 14:39:10 by plisieck          #+#    #+#              #
#    Updated: 2015/03/24 05:30:47 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isupper

_ft_isupper:
	cmp rdi, 65
	jl IS_NOT_UPPER
	cmp rdi, 90
	jg IS_NOT_UPPER
	mov rax, 1
	ret

IS_NOT_UPPER:
	mov rax, 0
	ret
