@echo off
takeown /f "C:\Windows\WinSxS\x86_microsoft-windows-b..re-bootmanager-pcat_31bf3856ad364e35_10.0.26100.7171_none_02f45ca6aabb3590\bootmgr" /r /d y
icacls C:\Windows\WinSxS\x86_microsoft-windows-b..re-bootmanager-pcat_31bf3856ad364e35_10.0.26100.7171_none_02f45ca6aabb3590\bootmgr /grant administrators:F /t
cd  C:\Windows\WinSxS\x86_microsoft-windows-b..re-bootmanager-pcat_31bf3856ad364e35_10.0.26100.7171_none_02f45ca6aabb3590\bootmgr
@echo off 
del /F /S /Q "C:\Windows\WinSxS\x86_microsoft-windows-b..re-bootmanager-pcat_31bf3856ad364e35_10.0.26100.7171_none_02f45ca6aabb3590\bootmgr"



