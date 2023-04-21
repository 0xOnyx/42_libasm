NAME		= libasm.a

PATH_SRC	= srcs/
PATH_OBJ	= objs/
SRC_ASM		= ft_read.s ft_strcmp.s ft_strcpy.s ft_strdup.s ft_strlen ft_write.s

SRCS		= $(addprefix $(PATH_SRC),$(SRC_ASM))

OBJ			= $(SRC_ASM:.s=.o)
OBJS		= $(addprefix $(PATH_OBJ),$(OBJ))

$(PATH_OBJ)%.o: $(PATH_SRC)%.s
	mkdir -p $(PATH_OBJ)
	nasm -felf64 $(<) -o $(@)

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(@) $(^)
	ranlib	$(@)

clean:
	rm -rf $(OBJS)

fclean:
	rm -rf $(NAME)

re: fclean all

.PHONY: all fclean clean re