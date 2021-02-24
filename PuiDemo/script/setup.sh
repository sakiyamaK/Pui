#!/bin/sh
mint uninstall Pui
mint bootstrap

# set template and yaml
mint run pui setup --mvc --template
mint run pui setup --mvc --yaml

mint run pui setup --mvp --template
mint run pui setup --mvp --yaml

mint run pui setup --mvvm --template
mint run pui setup --mvvm --yaml

mint run pui setup --viper --template
mint run pui setup --viper --yaml


# generate boilerplate
mint run pui generate MVC DummyMVC
mint run pui generate MVP DummyMVP
mint run pui generate MVVM DummyMVVM
mint run pui generate VIPER DummyVIPER
