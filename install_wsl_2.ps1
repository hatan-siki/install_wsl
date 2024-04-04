# 必ずinstall_wsl_1を実行し再起動したことを確認して実行してください.
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole("Administrators")) { Start-Process powershell.exe "-File `"$PSCommandPath`"" -Verb RunAs; exit }
# linuxkernelのインストール
$outputPath = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path
$outputFile = Join-Path -Path $outputPath -ChildPath "linuxKernel.msi"
Invoke-WebRequest "https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi" -OutFile $outputFile

cmd /c "msiexec.exe /i $outputFile"
# wslのデフォルトをwsl2に指定
cmd /c "wsl --set-default-version 2"
cmd /c "wsl --install -d Ubuntu-22.04"
