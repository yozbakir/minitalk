NAME1 = client
NAME2 = server

CC = gcc

CCFLAGS = -Wall -Wextra -Werror

SRC1 = client.c
SRC2 = server.c

OBJ1 = $(SRC1:.c=.o)
OBJ2 = $(SRC2:.c=.o)

GREEN = \033[0;32m
NC = \033[0m

all: $(NAME1) $(NAME2)

$(NAME1): $(OBJ1)
	@$(CC) $(CCFLAGS) -o $(NAME1) $(OBJ1)
	@echo "Executable $(NAME1) created $(GREEN)successfully.$(NC)"

$(NAME2): $(OBJ2)
	@$(CC) $(CCFLAGS) -o $(NAME2) $(OBJ2)
	@echo "Executable $(NAME2) created $(GREEN)successfully.$(NC)"

%.o: %.c
	@$(CC) $(CCFLAGS) -c $< -o $@
	@echo "Compiled $< $(GREEN)successfully.$(NC)"

clean:
	@rm -f $(OBJ1) $(OBJ2) a.out
	@echo "Object files cleaned $(GREEN)successfully.$(NC)"

fclean: clean
	@rm -f $(NAME1) $(NAME2)
	@echo "Executables cleaned $(GREEN)successfully.$(NC)"

re: fclean all
	@echo "Recompiled $(GREEN)successfully.$(NC)"
