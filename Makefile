.PHONY: all clean src/zh-kawaii.po
all: zh-origin zh_CN-kawaii ja-kawaii

build:
	mkdir -p build

%: src/%.po | build
	msgfmt -o build/$*.mo $<

src/zh_CN-kawaii.po: src/zh-origin.po src/zh_CN-kawaii-patch.po
	msgcat -o src/zh_CN-kawaii.po --no-wrap --use-first src/zh_CN-kawaii-patch.po src/zh-origin.po

clean:
	rm src/zh_CN-kawaii.po
	rm -rf build
