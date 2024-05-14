# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rlabbiz <rlabbiz@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/29 08:56:14 by rlabbiz           #+#    #+#              #
#    Updated: 2024/05/13 20:41:47 by rlabbiz          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CFLAGES = -Wall -Wextra -Werror
OBJECTS = mandatory/ft_strlen.o mandatory/ft_isalpha.o mandatory/ft_isdigit.o mandatory/ft_isalnum.o mandatory/ft_isascii.o mandatory/ft_isprint.o mandatory/ft_memset.o mandatory/ft_bzero.o mandatory/ft_strncmp.o mandatory/ft_memchr.o mandatory/ft_atoi.o mandatory/ft_calloc.o mandatory/ft_memcmp.o mandatory/ft_memcpy.o mandatory/ft_strchr.o mandatory/ft_strdup.o mandatory/ft_strjoin.o mandatory/ft_strlcat.o mandatory/ft_strlcpy.o mandatory/ft_strnstr.o mandatory/ft_substr.o mandatory/ft_tolower.o mandatory/ft_toupper.o mandatory/ft_strtrim.o mandatory/ft_putchar_fd.o mandatory/ft_putstr_fd.o mandatory/ft_putendl_fd.o mandatory/ft_putnbr_fd.o mandatory/ft_split.o mandatory/ft_strrchr.o mandatory/ft_memmove.o mandatory/ft_split.o mandatory/ft_strmapi.o mandatory/ft_striteri.o mandatory/ft_itoa.o
OBJECTS_BONUS = ft_lstnew_bonus.o ft_lstadd_back_bonus.o ft_lstadd_front_bonus.o ft_lstclear_bonus.o ft_lstdelone_bonus.o ft_lstiter_bonus.o ft_lstlast_bonus.o ft_lstsize_bonus.o
DEPS = libft.h
CC = CC

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGES)

all: $(NAME)

$(NAME) : $(OBJECTS)
	ar rsc $(NAME) $(OBJECTS)

.PHONY: clean fclean all re bonus

bonus: all $(NAME) $(OBJECTS_BONUS)
	ar rsc $(NAME) $(OBJECTS_BONUS)

clean:
	rm -rf *.o

fclean:
	rm -rf mandatory/*.o bonus/*.o
	rm -rf $(NAME)

re : fclean $(NAME)
	
