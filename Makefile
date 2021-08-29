NAME = ircserv
CC = clang++
FLAGS = -Wall -Wextra -Werror -std=c++98

SRCS =		main.cpp \
			sources/Start.cpp \
			sources/Channel.cpp \
			sources/User.cpp \

HEADER =	includes/headers.hpp \
			includes/Start.hpp \
			includes/Channel.hpp \
			includes/User.hpp \

OBJS = $(SRCS:.cpp=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(FLAGS) $(OBJS) -o $@

%.o: %.cpp $(HEADER)
	$(CC) $(FLAGS) -c -o $@ $<

clean:
	rm $(OBJS)

fclean: clean
	rm $(NAME)

re: fclean all

.PHONY: all clean fclean re test