run:
	swift run pui --setup --mvc

.PHONY: run

setup:
	swift package generate-xcodeproj --skip-extra-files

.PHONY: setup

build:
	swift build

.PHONY: build