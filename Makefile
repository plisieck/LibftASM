# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/05 14:17:09 by plisieck          #+#    #+#              #
#    Updated: 2015/03/29 12:59:23 by plisieck         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a
NASM = ~/.brew/bin/nasm -f macho64
SRC = ft_isalpha.s ft_isascii.s ft_isalnum.s ft_isdigit.s ft_isprint.s ft_isprint.s ft_islower.s ft_isupper.s ft_toupper.s ft_tolower.s ft_bzero.s ft_strlen.s ft_strcat.s ft_puts.s ft_memcpy.s ft_memset.s ft_puts.s ft_strdup.s ft_cat.s ft_strequ.s ft_strchr.s ft_strjoin.s ft_strclr.s ft_countc.s
OBJ = $(SRC:.s=.o) 

all: $(NAME)

$(NAME): $(OBJ)
	@echo "Compiling ..."
	@ar -rc $(NAME) $(OBJ)
	@echo "\033[33;32mDone !\033[0;0m"

%.o: %.s
	@$(NASM) -s $< -o $@

clean :
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
