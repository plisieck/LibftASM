# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strequ.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/27 06:25:50 by plisieck          #+#    #+#              #
#    Updated: 2015/03/29 08:00:40 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


section .text
		global _ft_strequ

_ft_strequ:
		cmp			rdi, 0
		je			end
		cmp			rsi, 0
		je			end
		mov			rcx, 0

LOOP:
		cmp			byte[rdi + rcx], 0
		je			CHECK_RSI
		cmp			byte[rsi + rcx], 0
		je			CHECK_RDI
		mov			al, byte[rsi + rcx]
		cmp			byte[rdi + rcx], al
		jne 		IS_NOT_EQUAL
		inc			rcx
		jmp			LOOP

CHECK_RDI:
		cmp			byte[rdi + rcx], 0
		je			IS_EQUAL
		jmp			IS_NOT_EQUAL

CHECK_RSI:
		cmp			byte[rsi + rcx], 0
		je			IS_EQUAL
		jmp			IS_NOT_EQUAL

IS_EQUAL:
		mov			rax, 1
		jmp			end

IS_NOT_EQUAL:
		mov			rax, 0
		jmp			end

end:
		ret
