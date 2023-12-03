.PHONY: all
all: merge-zh gcc.mo install
gcc.mo: gcc-zh.po
	msgfmt gcc-zh.po -o gcc.mo

install:
	cp gcc.mo /usr/share/locale/zh_CN/LC_MESSAGES/gcc.mo

merge-zh: src/zh-kawaii.po
	msgcat -o gcc-zh.po --no-wrap --use-first src/zh-kawaii.po src/zh_CN.po

.PHONY: clean
clean: gcc.mo
	rm -rf gcc.mo
