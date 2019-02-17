#注意:	1.依赖于openssl（需要openssl的头文件和库文件在系统的头文件和库文件目录，否则需手工指定路径）
#		2. make前请确认pkg-config --cflags lua$(LUA_VERSION)和pkg-config --libs lua$(LUA_VERSION)能正常输出，否则请调整pkg-config或手动编译
#mingw:	make -e TARGET=codec.dll	# 注意，需要将lua52.dll拷贝到系统库文件目录
#		手动编译：gcc -I$(LUA_INCLUDE_DIR) -fPIC -Wall -O2 -shared -o codec.dll codec.c lua52.dll -lcrypto #需将lua52.dll拷贝到codec.c同级目录

LUA_VERSION = 
TARGET 		= codec.so

CFLAGS  += `pkg-config --cflags lua$(LUA_VERSION)` -Wall -O2 -shared -fPIC
LDFLAGS += `pkg-config --libs lua$(LUA_VERSION)` -lcrypto

all:
	gcc $(CFLAGS) -o $(TARGET) codec.c $(LDFLAGS)
	
clean:
	rm -f $(TARGET)
