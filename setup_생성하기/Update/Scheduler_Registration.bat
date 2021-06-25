
pushd %~dp0
set CURPATH=%cd%

schtasks /create /tn "Setup_Update" /tr %CURPATH%\setup_exe.bat /sc weekly /d MON,TUE,WED,THU,FRI /st 10:00

