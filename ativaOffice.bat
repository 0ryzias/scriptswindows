@echo off

cd "\Program Files\Common Files\microsoft shared\ClickToRun"
OfficeC2rclient.exe /update user updatetoversion=16.0.1380120266

choice /c 12 /n /m "O office eh? "
echo 1. 64 Bits
echo 2. 32 Bits
if errorlevel 1 goto 64Bits
if errorlevel 2 goto 32Bits

:64Bits
cd /d %ProgramFiles%\Microsoft Office\Office16
goto Fim

:32Bits
cd /d %ProgramFiles(x86)%\Microsoft Office\Office16
goto Fim

:Fim
for /f %x in ('dir /b ..\root\Licenses16\ProPlus2019VL*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%x"

cscript ospp.vbs /setprt:1688
cscript ospp.vbs /unpkey:6MWKP>nul
cscript ospp.vbs /inpkey:NMKJ-6RK4F-KMJVX-8D9MJ-6MWKP
cscript ospp.vbs /sethst:e8.us.to 
cscript ospp.vbs /act
