CC = gcc
CFLAGS = -Wall -Wextra -pedantic -std=c99
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)
EXEC = tree

test: $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(EXEC)
	./$(EXEC)
	$(MAKE) clean

clean:
	rm -f $(OBJ) $(EXEC)
