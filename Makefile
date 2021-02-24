run:
	swift run pui generate VIPER DummyVIPER
.PHONY: run

template:
	swift run pui setup --viper --template
.PHONY: setup

yaml:
	swift run pui setup --viper --yaml
.PHONY: setup

xcodeproj:
	make clean
	swift package generate-xcodeproj --skip-extra-files
	open ./Pui.xcodeproj
.PHONY: xcodeproj

debug:
	swift build -c debug -Xswiftc -target -Xswiftc x86_64-apple-macosx11.2
.PHONY: debug

release:
	swift build -c release -Xswiftc -target -Xswiftc x86_64-apple-macosx11.2
.PHONY: release

test:
# set template and yaml
swift run pui setup --mvc --template
swift run pui setup --mvc --yaml

swift run pui setup --mvp --template
swift run pui setup --mvp --yaml

swift run pui setup --mvvm --template
swift run pui setup --mvvm --yaml

swift run pui setup --viper --template
swift run pui setup --viper --yaml

# generate boilerplate
swift run pui generate MVC DummyMVC
swift run pui generate MVP DummyMVP
swift run pui generate MVVM DummyMVVM
swift run pui generate VIPER DummyVIPER

.PHONY: release

clean:
	./script/clean.sh
.PHONY: clean