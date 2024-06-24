@echo off
setlocal

:: Folder d'install
cd /D "C:\dev\trinity-expositions-deployments"

:: langages
:: java
:: python 3.8.10
msiexec /i "microsoft-jdk-11.0.23-windows-x64.msi" INSTALLDIR="C:\Java\OpenJDK" ADDLOCAL="FeatureMain,FeatureEnvironment" /quiet
start /wait "" "python-3.8.10-amd64.exe" /quiet /simple

set PATH=%PATH%;C:\Java\OpenJDK\bin
setx PATH "%PATH%;C:\Java\OpenJDK\bin"

:: apps
:: git
start /wait "" "Git-2.45.1-64-bit.exe" /VERYSILENT

:: Sources
set ZIPFILE="C:\dev\trinity-expositions-deployments\files\trinity-ycar.zip"
set DESTDIR="C:\dev\trinity-expositions-deployments\"

powershell -command "Expand-Archive -Path %ZIPFILE% -DestinationPath %DESTDIR%"

cd "C:\dev\trinity-expositions-deployments\trinity-ycar\src\"
npm install

cd "C:\dev\trinity-expositions-deployments\trinity-ycar\src\websocket-backend"
npm install

:: npm install etc
:: verif que soft java n'a pas besoin de lckcle

:: start
:: mvn
:: ng serve
:: node backend/server.js

