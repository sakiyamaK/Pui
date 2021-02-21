
# Pui

テンプレートフォルダからコンポーネントを生成するライブラリです
(A library to generate components from template folders)

[Kuri](https://github.com/bannzai/Kuri)を参考にしました
(Based on Kuri)

## How To Use

### Setup

#### Setup Template File
```
pui setup [--ios] --mvc/--mvp/--mvvm --template
```

`./templates/PuiTemplate/ios/MVC`にテンプレートファイルが生成されます
(`. /templates/PuiTemplate/ios/MVC` will generate the template file)

<img src="https://i.gyazo.com/dd1ae300b27db456bf02e96f0bcf9f1b.png">


#### Setup Yaml File
```
pui setup [--ios] --mvc/--mvp/--mvvm --yaml
```

`pui setup [--ios] --mvc/--mvp/--mvvm --template` で生成したテンプレートを利用するための設定ファイルである`./Pui.yml`が生成されます
(`pui setup [--ios] --mvc/--mvp/--mvvm --template` will generate a configuration file, `. /Pui.yml` will be generated)

<img src="https://i.gyazo.com/8201119b88d8cec37d6a182431cba76b.png">

### Generate

#### Use Default Pui.yml

```
pui generate <TemplateDirName> <ComponentName>
```

`Pui.yml`内の`<TemplateDirName>`キーの設定を読み込み`<ComponentName>`としてファイルが生成されます
(The file will be generated as `<ComponentName>` reading the settings of the `<TemplateDirName>` key in `Pui.yml`.
)
## Customize

自作のテンプレートファイルを用意して`Pui.yml`を編集することで自作のテンプレートファイルからコンポーネントを生成できます
(Prepare your own template file and edit `Pui.yml` to generate components from your own template file.)

## Installation

## Mint (Recommended)
[Mint](https://github.com/yonaskolb/Mint) is a package manager for created by swift package manager executable libraries. 

`$ mint install sakiyamaK/Pui`
