#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include "./inc/libasm.h"


int	main(int argc, char **argv)
{
	int a;
	int b;
	char buff[255];

	printf("len => %zu\n", ft_strlen(argv[1]));
	ft_strcpy(buff, argv[1]);
	printf("value of new str => %s\n", buff);

	char *test = "bon";
	a = strcmp(buff, test);
	b = ft_strcmp(buff, test);
	printf("real -> %d\tmy -> %d\n", a, b);


	a = ft_write(STDOUT_FILENO, "write\n", 6);
	b = write(STDOUT_FILENO, "write\n", 6);
	printf("real -> %d\tmy -> %d\n", a, b);
	bzero(buff, 255);
	ft_read(STDIN_FILENO, buff, 2);
	printf("value -> %s\n", buff);

	char *new = ft_strdup(buff);
	printf("value new => %s\n", new);

	return (0);
}