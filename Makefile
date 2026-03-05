STATIC=index.html \
	avatar.png \
	clouds.jpg \
	CNAME

TARGET=target

all:
	mkdir -p $(TARGET)
	cp $(STATIC) $(TARGET)

