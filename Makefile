run:
	swift run pui --generate MVC Login

.PHONY: run

setup:
	swift package generate-xcodeproj --skip-extra-files
	open ./Pui.xcodeproj

.PHONY: setup

build:
	swift build

.PHONY: build