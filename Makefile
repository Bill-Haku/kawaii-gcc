.PHONY: all clean
all: zh-origin zh_CN-kawaii zh_TW-kawaii ja-kawaii

build:
	mkdir -p build

%: src/%.po | build
	msgfmt -o build/$*.mo $<

src/zh_CN-kawaii.po: src/zh-origin.po src/zh_CN-kawaii-patch.po
	msgcat -o src/zh_CN-kawaii.po --no-wrap --use-first src/zh_CN-kawaii-patch.po src/zh-origin.po

src/zh_TW-kawaii.po: src/zh-origin.po src/zh_TW-kawaii-patch.po
	msgcat -o src/zh_TW-kawaii.po --no-wrap --use-first src/zh_TW-kawaii-patch.po src/zh-origin.po

clean:
	rm -f src/zh_CN-kawaii.po src/zh_TW-kawaii.po
	rm -rf build