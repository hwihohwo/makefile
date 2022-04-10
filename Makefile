CC = gcc
TARGET = app.out
OBJS = main.o kor.o usa.o

CFLAGS = -Wall
LDFLAGS = -lc

all : $(TARGET)

$(TARGET) : $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $^ 

%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@ 

.PHONY: clean

clean :
	rm -f $(TARGET) $(OBJS)
