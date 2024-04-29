# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aeberius <aeberius@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/15 12:52:29 by aeberius          #+#    #+#              #
#    Updated: 2024/04/27 18:09:42 by aeberius         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

################################################################################
#                                 Makefile rules                             #
################################################################################

NAME=libft.a

C.FILES=ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
	ft_strlen.c ft_memset.c ft_toupper.c ft_tolower.c ft_atoi.c \
	ft_bzero.c ft_strchr.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
	ft_putnbr_fd.c ft_strrchr.c ft_strncmp.c ft_memcmp.c ft_memcpy.c \
	ft_strlcpy.c ft_memchr.c ft_strnstr.c ft_memmove.c ft_strlcat.c \
	ft_strdup.c ft_calloc.c ft_substr.c ft_strtrim.c ft_strjoin.c \
	ft_strmapi.c ft_striteri.c ft_itoa.c\

C.FILES_BONUS=ft_lstnew_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c \
	ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c ft_lstdelone_bonus.c \
	ft_lstclear_bonus.c ft_lstiter_bonus.c *ft_lstmap_bonus.c

OBJECTS=$(C.FILES:.c=.o)
OBJECTS_BONUS=$(C.FILES_BONUS:.c=.o)

CC=cc

FLAGS=-Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJECTS)
	clear
	@printf "\033[37m"
	@echo
	@echo " ███    ███  █████  ██   ██ ███████ ███████ ██ ██      ███████ "
	@echo " ████  ████ ██   ██ ██  ██  ██      ██      ██ ██      ██      "
	@echo " ██ ████ ██ ███████ █████   █████   █████   ██ ██      █████   "
	@echo " ██  ██  ██ ██   ██ ██  ██  ██      ██      ██ ██      ██      "
	@echo " ██      ██ ██   ██ ██   ██ ███████ ██      ██ ███████ ███████ "
	@echo
	@printf "\033[37m"

	@printf         "                        █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█\n"
	@printf         "                        █░▒▒▒▒▒▒▓▒▓▒▒▒▒▒▒▒░█\n"
	@printf         "                        █░▒▒▓▒▒▒▒▒▒▒▄▄▒▓▒▒░█ ▄▄\n"
	@printf         "                   ▄▀▀▄▄█░▒▒▒▒▒▒▓▒▒█░░▀▄▄▄▄▄▀░░█\n"
	@printf         "                   █░░░░█░▒▒▒▒▒▒▒▒▒█░░░░░░░░░░░█\n"
	@printf         "                   ▀▀▄▄█░▒▒▒▓▒▒▓▒█░░░█▒░░░░█▒░░█\n"
	@printf         "                       █░▒▓▒▒▒▓▒▒█░░░░░░░▀░░░░░█\n"
	@printf         "                     ▄▄█░▒▒▒▓▒▒▒▒▒█░░█▄▄█▄▄█░░█\n"
	@printf         "                    █░░░█▄▄▄▄▄▄▄▄█░█▄▄▄▄▄▄▄▄▄█\n"
	@printf         "                     █▄▄█  █▄▄█    █▄▄█  █▄▄█\n\n\n"
	@printf "\033[0m"
	@ar rcs $(NAME) $(OBJECTS)
	@echo "Thats all Folks, LIBFT.a is done \o/"

$(OBJECTS): $(C.FILES)
	@$(CC) $(FLAGS) -c $(C.FILES)

bonus: $(OBJECTS) $(OBJECTS_BONUS)
	@ar rcs $(NAME) $(OBJECTS) $(OBJECTS_BONUS)
	@echo "Thats all Folks, Bonus Created ;P"
clean:
	@$(RM) $(OBJECTS)
	@$(RM) $(OBJECTS_BONUS)
	@echo "All Objects Cleaned :)"

fclean: clean
	@$(RM) $(NAME)
	@echo "All mess Cleaned xD"

re: fclean all
