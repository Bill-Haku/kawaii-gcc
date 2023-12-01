gcc.mo: gcc-zh.po
	msgfmt gcc-zh.po -o gcc.mo

clean:
	rm gcc.mo

install:
	cp gcc.mo /usr/share/locale/zh_CN/LC_MESSAGES/gcc.mo
