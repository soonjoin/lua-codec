LUA_VERSION = 5.2

CFLAGS  += `pkg-config --cflags lua$(LUA_VERSION)` -Wall -O2 -shared -fPIC
LDFLAGS += `pkg-config --libs lua$(LUA_VERSION)` -lcrypto

all:
	gcc $(CFLAGS) $(LDFLAGS) -o codec.so codec.c

install:
	mkdir -p $(DESTDIR)/$(LUA_CMODULE_DIR)
	cp codec.so $(DESTDIR)/$(LUA_CMODULE_DIR)

clean:
	rm -f codec.so
