# Start

## Install Software

``` PowerShell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install googlechrome -y
choco install firefox -y
choco install notepadplusplus.install -y
choco install winrar -y
choco install microsoft-teams.install -y
choco install git.install -y
choco install sysinternals -y
choco install foxitreader -y
choco install paint.net -y
choco install vscode -y
choco install nodejs -y
choco install microsoft-windows-terminal -y
choco install wireshark -y
choco install yarn -y
choco install gh -y
choco install fiddler -y
```

## Registery Settings

```
Windows Registry Editor Version 5.00

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]
"Start_SearchFiles"=dword:00000002
"ServerAdminUI"=dword:00000000
"Hidden"=dword:00000002
"ShowCompColor"=dword:00000001
"HideFileExt"=dword:00000000
"DontPrettyPath"=dword:00000000
"ShowInfoTip"=dword:00000001
"HideIcons"=dword:00000000
"MapNetDrvBtn"=dword:00000000
"WebView"=dword:00000001
"Filter"=dword:00000000
"ShowSuperHidden"=dword:00000000
"SeparateProcess"=dword:00000000
"AutoCheckSelect"=dword:00000001
"IconsOnly"=dword:00000000
"ShowTypeOverlay"=dword:00000001
"ShowStatusBar"=dword:00000001
"ListviewAlphaSelect"=dword:00000001
"ListviewShadow"=dword:00000001
"TaskbarAnimations"=dword:00000001
"TaskbarSizeMove"=dword:00000000
"DisablePreviewDesktop"=dword:00000001
"TaskbarSmallIcons"=dword:00000000
"TaskbarGlomLevel"=dword:00000000
"MMTaskbarGlomLevel"=dword:00000000
"TaskbarAutoHideInTabletMode"=dword:00000000
"ShellMigrationLevel"=dword:00000003
"TaskbarMn"=dword:00000001
"StartMigratedBrowserPin"=dword:00000001
"StartShownOnUpgrade"=dword:00000001
"ReindexedProfile"=dword:00000001
"StartMenuInit"=dword:0000000d
"TaskbarStateLastRun"=hex:e6,f3,e0,61,00,00,00,00
"LaunchTo"=dword:00000001
[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize]
"ColorPrevalence"=dword:00000000
"EnableTransparency"=dword:00000001
"AppsUseLightTheme"=dword:00000000
"SystemUsesLightTheme"=dword:00000000
```

## PowerShell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

