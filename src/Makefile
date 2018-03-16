LUA_INCLUDE_DIR = /usr/include

all:
	gcc -Wall -O2 -shared -I$(LUA_INCLUDE_DIR) -o codec.so codec.c -lcrypto -fPIC

clean:
	rm -f codec.so
