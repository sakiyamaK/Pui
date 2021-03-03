run:
	swift run pui generate VIPER DummyVIPER
.PHONY: run

template:
	swift run pui template --viper
.PHONY: setup

yaml:
	swift run pui yaml --viper
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
	swift run pui template --mvc
	swift run pui yaml --mvc

	swift run pui template --mvp
	swift run pui yaml --mvp

	swift run pui template --mvvm
	swift run pui yaml --mvvm

	swift run pui template --viper
	swift run pui yaml --viper

	swift run pui template --view
	swift run pui yaml --view

	# generate boilerplate
	swift run pui component MVC DummyMVC
	swift run pui component MVP DummyMVP
	swift run pui component MVVM DummyMVVM
	swift run pui component VIPER DummyVIPER
	swift run pui component VIEW DummyVIEW
.PHONY: test

clean:
	./script/clean.sh
.PHONY: clean