@echo off
cls
echo Escolha uma versao do Windows:
echo 1. Home/Core
echo 2. Home/Core (Regiao Especifica)
echo 3. Home/Core (Single Language)
echo 4. Home/Core N
echo 5. Professional
echo 6. Professional N
echo 7. Enterprise
echo 8. Enterprise N

choice /c 12345678 /n /m "Insira o numero correspondente da versao desejada: "

if errorlevel 8 goto EnterpriseN
if errorlevel 7 goto Enterprise
if errorlevel 6 goto ProfessionalN
if errorlevel 5 goto Professional
if errorlevel 4 goto HomeN
if errorlevel 3 goto HomeSingleLanguage
if errorlevel 2 goto HomeRegiao
if errorlevel 1 goto Home

:Home
echo Ativando o Windows, aguarde...
slmgr.vbs //b /upk
slmgr //b /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
slmgr //b /skms kms8.msguides.com
slmgr //b /ato
goto Fim

:HomeRegiao
echo Ativando o Windows, aguarde...
slmgr.vbs //b /upk
slmgr //b /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
slmgr //b /skms kms8.msguides.com
slmgr //b /ato
goto Fim


:HomeSingleLanguage
echo Ativando o Windows, aguarde...
slmgr.vbs //b /upk
slmgr //b /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
slmgr //b /skms kms8.msguides.com
slmgr //b /ato
goto Fim

:HomeN
echo Ativando o Windows, aguarde...
slmgr.vbs //b /upk
slmgr //b /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM
slmgr //b /skms kms8.msguides.com
slmgr //b /ato
goto Fim

:Professional
echo Ativando o Windows, aguarde...
slmgr.vbs //b /upk
slmgr //b /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr //b /skms kms8.msguides.com
slmgr //b /ato
goto Fim

:ProfessionalN
echo Ativando o Windows, aguarde...
slmgr.vbs //b /upk
slmgr //b /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
slmgr //b /skms kms8.msguides.com
slmgr //b /ato
goto Fim

:Enterprise
echo Ativando o Windows, aguarde...
slmgr.vbs //b /upk
slmgr //b /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
slmgr //b /skms kms8.msguides.com
slmgr //b /ato
goto Fim

:EnterpriseN
echo Ativando o Windows, aguarde...
slmgr.vbs //b /upk
slmgr //b /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
slmgr //b /skms kms8.msguides.com
slmgr //b /ato
goto Fim

:Fim
echo Windows ativado com sucesso!