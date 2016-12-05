##
## Makefile for match in /home/baurens/Work/Pool_Projects/CPool_match-nmatch/
##
## Made by Arthur Baurens
## Login   <arthur.baurens@epitech.eu>
##
## Started on  Sun Oct 16 12:30:27 2016 Arthur Baurens
## Last update Mon Dec  5 06:38:04 2016 Arthur Baurens
##

NAME			=	match nmatch

MATCH_SRC		=	match.c			\
					main_match.c

MATCH_OBJ		=	$(MATCH_SRC:.c=.o)

NMATCH_SRC		=	nmatch.c		\
					main_nmatch.c

NMATCH_OBJ		=	$(NMATCH_SRC:.c=.o)

MATCH	=	match

NMATCH	=	nmatch

INCLUDE	=	-I./include

LIBPATH		=

LIB			=

CFLAGS	+= $(INCLUDE)

$(NAME):	$(MATCH_OBJ) $(NMATCH_OBJ)
	gcc -o $(MATCH) $(LIBPATH) $(MATCH_OBJ) $(LIB)
	gcc -o $(NMATCH) $(LIBPATH) $(NMATCH_OBJ) $(LIB)

all:	$(NAME)

clean:
	rm -rf $(MATCH_OBJ) $(NMATCH_OBJ)

fclean:		clean
	rm -rf $(MATCH) $(NMATCH)

re:		fclean $(NAME)

.PHONY:	all clean fclean re
