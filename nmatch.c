/*
** nmatch.c for nmatch in /home/baurens/Work/Pool_Projects/CPool_match-nmatch/
**
** Made by Arthur Baurens
** Login   <arthur.baurens@epitech.eu>
**
** Started on  Sun Oct 16 14:57:40 2016 Arthur Baurens
** Last update Mon Dec  5 06:38:14 2016 Arthur Baurens
*/

#include <stdlib.h>
#include <stdio.h>

int	nmatch(char *s1, char *s2)
{
  char	c1;
  char	c2;

  if (s1 == NULL || s2 == NULL)
    return (0);
  c1 = s1[0];
  c2 = s2[0];
  if (((c2 == '*' && !s2[1]) || !c2) && c1 == '\0')
    return (1);
  if (c2 == '*' && c1)
    return (nmatch(s1, &s2[1]) + nmatch(&s1[1], s2));
  if (c2 == '*' && !c1)
    return (nmatch(s1, &s2[1]));
  if (c2 == c1)
    return (nmatch(&s1[1], &s2[1]));
  return (0);
}
