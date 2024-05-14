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
OBJECTS_BONUS = bonus/ft_lstnew_bonus.o bonus/ft_lstadd_back_bonus.o bonus/ft_lstadd_front_bonus.o bonus/ft_lstclear_bonus.o bonus/ft_lstdelone_bonus.o bonus/ft_lstiter_bonus.o bonus/ft_lstlast_bonus.o bonus/ft_lstsize_bonus.o
DEPS = includes/libft.h
CC = cc

# color difinition
RED = "\033[0;31m"
GREEN = "\033[0;32m"
YELLOW = "\033[0;33m"
BLUE = "\033[0;34m"
MAGENTA = "\033[0;35m"
CYAN = "\033[0;36m"
RESET = "\033[0m"


%.o: %.c $(DEPS)
	@$(CC) -c -o $@ $< $(CFLAGES)
	@echo $(YELLOW) "[+] Compiling $<" $(RESET)

all: $(NAME)

$(NAME) : $(OBJECTS)
	@ar rsc $(NAME) $(OBJECTS)
	@echo $(GREEN) "[+] Library created" $(RESET)


.PHONY: clean fclean all re bonus

bonus: all $(NAME) $(OBJECTS_BONUS)
	@ar rsc $(NAME) $(OBJECTS_BONUS)
	@echo $(GREEN) "[+] Bonus Library created" $(RESET)

clean:
	@rm -rf mandatory/*.o bonus/*.o
	@echo $(RED) "[-] Objects removed" $(RESET)	

fclean: clean
	@rm -rf $(NAME)
	@echo $(RED) "[-] Library removed" $(RESET)

re : fclean $(NAME)
	
