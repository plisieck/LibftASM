/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: plisieck <plisieck@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/20 14:47:08 by plisieck          #+#    #+#             */
/*   Updated: 2015/03/29 12:55:58 by plisieck         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <stdio.h>
#include <fcntl.h>
#include <string.h>
#define GREEN ft_puts("\033[32m");
#define WHITE ft_puts("\033[0m");

void	test_isalpha(void)
{
	GREEN
	printf("-----------------------\n");
	printf("     FT_ISALPHA        \n");
	printf("-----------------------\n");
	WHITE
	printf("/ => %d\n", ft_isalpha('/'));
	printf("a => %d\n", ft_isalpha('a'));
	printf("A => %d\n", ft_isalpha('A'));
	printf("z => %d\n", ft_isalpha('z'));
	printf("Z => %d\n", ft_isalpha('Z'));
	printf("0 => %d\n", ft_isalpha('0'));
	printf("9 => %d\n", ft_isalpha('9'));
	printf("[ => %d\n", ft_isalpha('['));
	printf("~ => %d\n", ft_isalpha('~'));
}

void	test_isdigit(void)
{
	GREEN
	printf("-----------------------\n");
	printf("     FT_ISDIGIT        \n");
	printf("-----------------------\n");
	WHITE
	printf("/ => %d\n", ft_isdigit('/'));
	printf("a => %d\n", ft_isdigit('a'));
	printf("A => %d\n", ft_isdigit('A'));
	printf("z => %d\n", ft_isdigit('z'));
	printf("Z => %d\n", ft_isdigit('Z'));
	printf("0 => %d\n", ft_isdigit('0'));
	printf("9 => %d\n", ft_isdigit('9'));
	printf("[ => %d\n", ft_isdigit('['));
	printf("~ => %d\n", ft_isdigit('~'));
}

void	test_isalnum(void)
{
	GREEN
	printf("-----------------------\n");
	printf("     FT_ISALNUM        \n");
	printf("-----------------------\n");
	WHITE
	printf("/ => %d\n", ft_isalnum('/'));
	printf("a => %d\n", ft_isalnum('a'));
	printf("A => %d\n", ft_isalnum('A'));
	printf("z => %d\n", ft_isalnum('z'));
	printf("Z => %d\n", ft_isalnum('Z'));
	printf("0 => %d\n", ft_isalnum('0'));
	printf("9 => %d\n", ft_isalnum('9'));
	printf("[ => %d\n", ft_isalnum('['));
	printf("~ => %d\n", ft_isalnum('~'));
}

void	test_isascii(void)
{
	GREEN
	printf("-----------------------\n");
	printf("     FT_ISASCII        \n");
	printf("-----------------------\n");
	WHITE
	printf("/ => %d\n", ft_isascii('/'));
	printf("a => %d\n", ft_isascii('a'));
	printf("A => %d\n", ft_isascii('A'));
	printf("z => %d\n", ft_isascii('z'));
	printf("Z => %d\n", ft_isascii('Z'));
	printf("0 => %d\n", ft_isascii('0'));
	printf("9 => %d\n", ft_isascii('9'));
	printf("[ => %d\n", ft_isascii('['));
	printf("~ => %d\n", ft_isascii('~'));
}

void	test_isprint(void)
{
	GREEN
	printf("-----------------------\n");
	printf("     FT_ISPRINT        \n");
	printf("-----------------------\n");
	WHITE
	printf("/ => %d\n", ft_isprint('/'));
	printf("a => %d\n", ft_isprint('a'));
	printf("A => %d\n", ft_isprint('A'));
	printf("z => %d\n", ft_isprint('z'));
	printf("\\n => %d\n", ft_isprint('\n'));
	printf("Z => %d\n", ft_isprint('Z'));
	printf("0 => %d\n", ft_isprint('0'));
	printf("9 => %d\n", ft_isprint('9'));
	printf("[ => %d\n", ft_isprint('['));
	printf("~ => %d\n", ft_isprint('~'));
	printf("tab => %d\n", ft_isprint('\t'));
}

void	test_toupper(void)
{
	GREEN
	printf("-----------------------\n");
	printf("     FT_TOUPPER        \n");
	printf("-----------------------\n");
	WHITE
	printf("a => %c\n", ft_toupper('a'));
	printf("6 => %c\n", ft_toupper('6'));
	printf("/ => %c\n", ft_toupper('/'));
	printf("Z => %c\n", ft_toupper('Z'));
	printf("2 => %c\n", ft_toupper('2'));
	printf("m => %c\n", ft_toupper('m'));
	printf("A => %c\n", ft_toupper('A'));
	printf("z => %c\n", ft_toupper('z'));
	printf("~ => %c\n", ft_toupper('~'));
}

void	test_tolower(void)
{
	GREEN
	printf("-----------------------\n");
	printf("     FT_TOLOWER        \n");
	printf("-----------------------\n");
	WHITE
	printf("a => %c\n", ft_tolower('a'));
	printf("6 => %c\n", ft_tolower('6'));
	printf("/ => %c\n", ft_tolower('/'));
	printf("Z => %c\n", ft_tolower('Z'));
	printf("2 => %c\n", ft_tolower('2'));
	printf("M => %c\n", ft_tolower('M'));
	printf("A => %c\n", ft_tolower('A'));
	printf("z => %c\n", ft_tolower('z'));
	printf("~ => %c\n", ft_tolower('~'));
}

void	test_bzero(void)
{
	char str[] = "coucou c'est moi";

	GREEN
	printf("-----------------------\n");
	printf("     FT_BZERO          \n");
	printf("-----------------------\n");
	WHITE
	printf("Avant ft_bzero:      => str = %s\n", str);
	ft_bzero(str, 7);
	printf("Apres ft_bzero:      => str = %s\n", str);
	printf("test chaine apres 7: => str = %s\n", str + 7);
	printf("test charactere 3:   => str = %c\n", str[3]);
	printf("test charactere 6:   => str = %c\n", str[6]);
	printf("test charactere 7:   => str = %c\n", str[7]);
	printf("test charactere 15:  => str = %c\n", str[15]);
}

void	test_strlen(void)
{
	GREEN
	printf("-----------------------\n");
	printf("     FT_STRLEN         \n");
	printf("-----------------------\n");
	WHITE
	printf("taille: coucou => taille = %zu\n", ft_strlen("coucou"));
	printf("taille: test   => taille = %zu\n", ft_strlen("test"));
	printf("taille: a      => taille = %zu\n", ft_strlen("a"));
	printf("taille:        => taille = %zu\n", ft_strlen(""));
}

void	test_memcpy(void)
{
	char	src[] = "coucou c'est moi";
	char	str[50];

	ft_bzero(str, 50);
	GREEN
	printf("-----------------------\n");
	printf("     FT_MEMCPY         \n");
	printf("-----------------------\n");
	WHITE
	printf("chaine original: => str = %s\n", src);
	ft_memcpy(str, src, 1);
	printf("copy de 1:       => str = %s\n", str);
	ft_memcpy(str, src, 6);
	printf("copy de 6:       => str = %s\n", str);
	ft_memcpy(str, src, 10);
	printf("copy de 10:      => str = %s\n", str);
	ft_memcpy(str, src, 20);
	printf("copy de 20:      => str = %s\n", str);
}
void	test_strdup(void)
{
	char	src[] = "coucou c'est moi";
	char	*str;

	str = NULL;
	GREEN
	printf("-----------------------\n");
	printf("     FT_STRDUP         \n");
	printf("-----------------------\n");
	WHITE
	printf("chaine source:      => src = %s\n", src);
	printf("chaine destination: => str = %s\n", str);
	str = ft_strdup(src);
	printf("str = ft_strdup(src)\n");
	printf("chaine source:      => src = %s\n", src);
	printf("chaine destination: => str = %s\n", str);
}
void	test_memset(void)
{
	char	str[] = "aaaaaaaaaaaaaaaaa";

	GREEN
	printf("-----------------------\n");
	printf("     FT_MEMSET         \n");
	printf("-----------------------\n");
	WHITE
	printf("chaine original: => str = %s\n", str);
	ft_memset(str, 's', 3);
	printf("memset s 3:      => str = %s\n", str);
	ft_memset(str, ' ', 5);
	printf("memset space 5:  => str = %s\n", str);
	ft_memset(str, 'r', 2);
	printf("memset r 2:      => str = %s\n", str);
}

void	test_puts(void)
{
	GREEN
	printf("-----------------------\n");
	printf("     FT_PUTS           \n");
	printf("-----------------------\n");
	WHITE
	//ft_puts(NULL);
	ft_puts("cette phrase est ecrite avec ft_puts");
	ft_puts("CeLLe ci EGaLeMeNT");
}
void	test_strcat(void)
{
	char	str[10] = "0";

	GREEN
	printf("-----------------------\n");
	printf("     FT_STRCAT         \n");
	printf("-----------------------\n");
	WHITE
	printf("ajout de 1:    => str = %s\n", ft_strcat(str, "1"));
	printf("ajout de 2:    => str = %s\n", ft_strcat(str, "2"));
	printf("ajout de 3:    => str = %s\n", ft_strcat(str, "3"));
	printf("ajout de 4:    => str = %s\n", ft_strcat(str, "4"));
	printf("ajout de test: => str = %s\n", ft_strcat(str, "test"));
}

void	test_strequ(void)
{
	GREEN
	printf("-----------------------\n");
	printf("     FT_STREQU         \n");
	printf("-----------------------\n");
	WHITE
	printf("test hello == hello     => %d\n", ft_strequ("hello", "hello"));
	printf("test helloo == hello    => %d\n", ft_strequ("helloo", "hello"));
	printf("test hello == helloo    => %d\n", ft_strequ("hello", "helloo"));
	printf("test vide == vide       => %d\n", ft_strequ("", ""));
	printf("test vide == space      => %d\n", ft_strequ("", " "));
	printf("test vide == hello      => %d\n", ft_strequ("", "hello"));
	printf("test space == space     => %d\n", ft_strequ(" ", " "));
}

void	test_strjoin(void)
{
	GREEN
	printf("-----------------------\n");
	printf("     FT_STRJOIN        \n");
	printf("-----------------------\n");
	WHITE
	printf("coucou + blabla => %s\n", ft_strjoin("coucou", "blabla"));
	printf("vide + coucou   => %s\n", ft_strjoin("", "coucou"));
	printf("coucou + vide   => %s\n", ft_strjoin("coucou", ""));
	printf("vide + vide     => %s\n", ft_strjoin("", ""));
}

void	test_strchr(void)
{
	char str[] = "coucou c'est moi";

	GREEN
	printf("-----------------------\n");
	printf("     FT_STRCHR         \n");
	printf("-----------------------\n");
	WHITE
	printf("chaine original: => %s\n", str);
	printf("strchr de ':     => %s\n", ft_strchr(str, '\''));
	printf("strchr de e:     => %s\n", ft_strchr(str, 'e'));
	printf("strchr de c:     => %s\n", ft_strchr(str, 'c'));
	printf("strchr de space: => %s\n", ft_strchr(str, ' '));
	printf("strchr de t:     => %s\n", ft_strchr(str, 't'));
	printf("strchr de z:     => %s\n", ft_strchr(str, 'z'));
}
/*
void	test_cat(int argc, char **argv)
{
	int fd;

	fd = 0;
	GREEN
	printf("-----------------------\n");
	printf("     FT_CAT            \n");
	printf("-----------------------\n");
	WHITE
	if(argc == 2)
		fd = open(argv[1], O_RDONLY);
	ft_cat(fd);
}*/

void	test_strclr(void)
{

	GREEN
	printf("-----------------------\n");
	printf("     FT_STRCLR         \n");
	printf("-----------------------\n");
	WHITE
	char str[] = "";
	char str1[] = "coucou";
	char str2[] = "ceci est une phrase";
	printf("chaine original: => %s\n", str1);
	ft_strclr(str1);
	printf("apres clear: => %s\n", str1);
	printf("chaine original: => %s\n", str2);
	ft_strclr(str2);
	printf("apres clear: => %s\n", str2);	
	printf("chaine vide: => %s\n", str);
	ft_strclr(str);
	printf("apres clear: => %s\n", str);	
}

void	test_countc(void)
{
	GREEN
	printf("-----------------------\n");
	printf("     FT_COUNTC         \n");
	printf("-----------------------\n");
	WHITE
	printf("Nombre de b dans \"bonjour\"           => %d\n", ft_countc("bonjour", 'b'));
	printf("Nombre de c dans \"coucou\"            => %d\n", ft_countc("coucou", 'c'));
	printf("Nombre de a dans \"blablablablabla\"   => %d\n", ft_countc("blablablablabla", 'b'));
	printf("Nombre de z dans \"\"                  => %d\n", ft_countc("", 'z'));
}


int		main(void)
{
	test_bzero();
	test_strcat();
	test_isalpha();
	test_isdigit();
	test_isalnum();
	test_isascii();
	test_isprint();
	test_toupper();
	test_tolower();
	test_puts();
	test_strlen();
	test_memset();
	test_memcpy();
	test_strdup();
	test_strequ();
	test_strjoin();
	test_strchr();
	test_strclr();
	test_countc();
	return (0);
}

