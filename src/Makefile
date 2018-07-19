#mingw下编译命令 gcc -I$(LUA_INCLUDE_DIR) -fPIC -Wall -O2 -shared -o codec.dll codec.c lua52.dll -lcrypto
#MacOS 10.11以上编译时，需手工加入openssl(其实是libssl)的头文件路径，如-I/usr/local/Cellar/openssl/1.0.2o_2/include
#注意:lua5.3中没有luaL_checkint，只有luaL_checkinteger
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
