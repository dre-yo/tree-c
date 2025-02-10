CC = gcc
CFLAGS = -Wall -Wextra -pedantic -std=c99
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)
EXEC = tree

test: $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(EXEC)
	./$(EXEC)

clean:
	rm -f $(OBJ) $(EXEC)
