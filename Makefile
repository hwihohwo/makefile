CC = gcc
TARGET = app.out
OBJT = main.o kor.o usa.o

CFLAGS = -Wall
LDFLAGS = -lc

all : $(TARGET)

$(TARGET) : $(OBJT)
	$(CC) $(LDFLAGS) -o $@ $^ 

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $< 

clean :
	rm -f $(TARGET) $(OBJT)
