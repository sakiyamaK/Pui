
# Pui

テンプレートフォルダからコンポーネントを生成するライブラリです

(A library to generate components from template folders)

[Kuri](https://github.com/bannzai/Kuri)を参考にしました

(Based on Kuri)

## Support Default Architecture
デフォルトで対応しているアーキテクチャです。

(This is the architecture that is supported by default.)

### iOS
MVC, MVP, MVVM, VIPER, VIEW

※VIEWはXibとswiftのソースコードが生成されます。

## How To Use

### Setup Template File
```
pui template [--ios] --mvc/--mvp/--mvvm/--viper/--view
```

`./templates/PuiTemplate/ios/`にテンプレートファイルが生成されます

(`. /templates/PuiTemplate/ios/` will generate the template file)

<img src="https://i.gyazo.com/d3673cc0d121e4dc3194e30137e92886.png">


### Setup Yaml File
```
pui yaml [--ios] --mvc/--mvp/--mvvm/--viper/--view
```

`pui template [--ios] --mvc/--mvp/--mvvm/--viper/--view` で生成したテンプレートを利用するための設定ファイルである`./Pui.yml`が生成されます

(`pui template [--ios] --mvc/--mvp/--mvvm/--viper/--view` will generate a configuration file, `. /Pui.yml` will be generated)

<img src="https://i.gyazo.com/a30ca6c7270c4fb7fd3f1338ed675f9f.png">

### Generate Component

#### Use Default Pui.yml

```
pui component <TemplateDirName> <ComponentName>
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
