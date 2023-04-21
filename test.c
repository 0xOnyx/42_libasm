#include <stdio.h>
#include <signal.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>

size_t	ft_strlen(const char *s);
char	*ft_strcpy(char *dest, const char *src);
int 	ft_strcmp(const char *s1, const char *s2);
ssize_t	ft_write(int fd, const void *buf, size_t count);
ssize_t	ft_read(int fd, const void *buf, size_t count);

int	main(int argc, char **argv)
{
	int a;
	int b;
	char buff[255];

	printf("len => %zu\n", ft_strlen(argv[1]));
	ft_strcpy(buff, argv[1]);
	printf("value of new str => %s\n", buff);

	char *test = "aaaa";
	a = strcmp(buff, test);
	b = ft_strcmp(buff, test);
	printf("real -> %d\tmy -> %d\n", a, b);

	a = ft_write(STDOUT_FILENO, "write\n", 6);
	b = write(STDOUT_FILENO, "write\n", 6);
	printf("real -> %d\tmy -> %d\n", a, b);
	bzero(buff, 255);
	ft_read(STDIN_FILENO, buff, 2);
	printf("value -> %s\n", buff);

	return (0);
}