# install_wsl

PowerShellでwslをインストールする際のコマンドをまとめてスクリプト化したものです。

フォルダごとダウンロードもしくはクローンし、

```PowerShell:PowerShell
.\install_wsl_1.ps1
.\install_wsl_2.ps1
```

を実行すればwslとubuntu22.04がインストールされます.

## 使い方

0. このフォルダがある階層でPowerShellを立ち上げてください。

1. Powershellで`install_wsl_1.ps1`を実行

```PowerShell:PowerShell
.\install_wsl_1.ps1
```

> [!CAUTION]
> 警告が出て実行できない場合は以下のコマンドを実行してください。
>
> ```Powershell
> Set-ExecutionPolicy -Scope CurrentUser Unrestricted
> ```

2. 1を実行すると再起動するかのY/N選択が出てくるのでyを入力して再起動

3. 再度Powershellを開き`install_wsl_1.ps1`を実行

```PowerShell:PowerShell
.\install_wsl_2.ps1
```

インストーラが起動するので全部yesでUbuntu22.04までインストールされます.

Ubuntuが立ち上がり、ユーザー名とパスワードを入力する画面が出てくるので入力すれば完了です.

---
できれば1つのスクリプトで完結させたかったけど,再起動後が挟まるから2つに分けました。気が向けば再起動したら２つめのスクリプトが自動実行されるようにするね &hearts;
