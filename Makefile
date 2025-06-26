CC = gcc
CFLAGS = -Wall
OBJS = main.o big.o fact.o
TARGET = ABC.exe

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

big.o: big.c
	$(CC) $(CFLAGS) -c big.c

fact.o: fact.c
	$(CC) $(CFLAGS) -c fact.c

clean:
	rm -f *.o $(TARGET)

