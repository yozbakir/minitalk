NAME = minitalk

CC = gcc

CCFLAGS = -Wall -Wextra -Werror

SRC = client.c server.c 

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
    $(CC) $(CCFLAGS) -o $(NAME) $(OBJ)

%.o: %.c
    $(CC) $(CCFLAGS) -c $< -o $@

clean:
    rm -f $(OBJ)

fclean: clean
    rm -f $(NAME)

re: fclean all