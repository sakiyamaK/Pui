run:
	swift run pui generate MVP Dummy
.PHONY: run

setup:
	make clean
	swift package generate-xcodeproj --skip-extra-files
	open ./Pui.xcodeproj
.PHONY: setup

debug:
	swift build -c debug -Xswiftc -target -Xswiftc x86_64-apple-macosx11.2
.PHONY: debug

release:
	swift build -c release -Xswiftc -target -Xswiftc x86_64-apple-macosx11.2
.PHONY: release

clean:
	./script/clean.sh
.PHONY: clean