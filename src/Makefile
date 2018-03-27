LUA_VERSION = 5.2

CFLAGS  += `pkg-config --cflags lua$(LUA_VERSION)` -Wall -O2 -shared -fPIC
LDFLAGS += `pkg-config --libs lua$(LUA_VERSION)` -lcrypto

all:
        gcc $(CFLAGS) $(LDFLAGS) -o codec.so codec.c

clean:
        rm -f codec.so
