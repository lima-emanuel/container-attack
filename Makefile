CC=gcc

CFLAGS=-Wall -Wextra

SRC=$(wildcard src/*.c)
OBJ=$(SRC:.c=.o)
HEAD=$(wildcard include/*.h)

EXEC=main.out

all: $(EXEC)

$(EXEC): $(OBJ) $(HEAD)
	$(CC) $(CFLAGS) -o $@ $(OBJ)

.PHONY: clean
clean:
	rm $(OBJ) $(EXEC)
