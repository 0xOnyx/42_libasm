NAME		= libasm.a

PATH_SRC	= srcs/
PATH_OBJ	= objs/
SRC_ASM		= ft_read.asm ft_strcmp.asm ft_strcpy.asm ft_strdup.asm ft_strlen.asm ft_write.asm

SRCS		= $(addprefix $(PATH_SRC),$(SRC_ASM))

OBJ			= $(SRC_ASM:.asm=.o)
OBJS		= $(addprefix $(PATH_OBJ),$(OBJ))

$(PATH_OBJ)%.o: $(PATH_SRC)%.asm
	mkdir -p $(PATH_OBJ)
	nasm -felf64 $(<) -o $(@)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(@) $(^)

testCase: $(NAME)
	gcc -I./inc testCase.c -o testCase -z noexecstack -L./ -lasm -g3

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)
	rm -rf testCase

re: fclean all

.PHONY: all fclean clean re