# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jhaukile < jhaukile@student.hive.fi>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/07 09:35:33 by jhaukile          #+#    #+#              #
#    Updated: 2022/06/14 12:23:34 by jhaukile         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fdf

SRCS = libft/libft.a src/main.c src/keyboard_keys.c src/fdf.c src/validation.c \
src/menu.c

OBJ = $(SRC:.c=.o)

CCFL = gcc -g -Wall -Wextra -Werror -L /usr/local/lib -lmlx -I /minilibx/ -framework OpenGL -framework AppKit

LIBFT = libft/

all: $(NAME)

$(NAME): $(OBJ)
	@make -C $(LIBFT)
	@$(CCFL) -o $(NAME) $(OBJ) $(SRCS)

clean:
	@/bin/rm -f $(OBJ)5
	@make -C $(LIBFT) clean

fclean: clean
	@/bin/rm -f $(NAME)
	@make -C $(LIBFT) fclean

re: fclean all

.PHONY = all $(NAME) clean fclean re
