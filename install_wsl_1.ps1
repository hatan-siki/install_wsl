# 実行できない時は以下のコマンドをPowershellで実行
# Set-ExecutionPolicy -Scope CurrentUser Unrestricted
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole("Administrators")) { Start-Process powershell.exe "-File `"$PSCommandPath`"" -Verb RunAs; exit }

dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:HypervisorPlatform /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all

