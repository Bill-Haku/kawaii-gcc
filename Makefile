.PHONY: all clean src/zh-kawaii.po
all: zh-origin zh-kawaii ja-kawaii

build:
	mkdir -p build

%: src/%.po | build
	msgfmt -o build/$*.mo $<

src/zh-kawaii.po: src/zh-origin.po src/zh-kawaii-patch.po
	msgcat -o src/zh-kawaii.po --no-wrap --use-first src/zh-kawaii-patch.po src/zh-origin.po

clean:
	rm src/zh-kawaii.po
	rm -rf build
