
#include <stdio.h>

int	nmatch(char *, char *);

int	main(int ac, char **av)
{
  if (ac != 3)
    return (1);
  printf("%d\n", nmatch(av[1], av[2]));
  return (0);
}
