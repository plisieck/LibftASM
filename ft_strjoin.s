# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strjoin.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/29 08:02:17 by plisieck          #+#    #+#              #
#    Updated: 2015/03/29 10:01:30 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global	_ft_strjoin
		extern	_ft_strcat
		extern	_ft_strlen
		extern	_malloc

_ft_strjoin:
		push rbp
		mov rbp, rsp
		push rsi
		push rdi
		mov rdi, rsi
		call _ft_strlen
		mov rbx, rax
		pop rdi
		call _ft_strlen
		add rbx, rax
		push rdi
		mov rdi, rbx
		call _malloc
		mov rdi, rax
		pop rsi
		call _ft_strcat
		mov rdi, rax
		pop rsi
		call _ft_strcat
		leave
		ret
