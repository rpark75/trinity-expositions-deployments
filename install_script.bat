@echo off
setlocal

:: Folder d'install
cd /D "C:\dev\trinity-expositions-deployments"

:: langages
:: java - plus besoin
:: python 3.8.10
start /wait "" "python-3.8.10-amd64.exe" /quiet /simple

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
:: mvn - plus besoin
:: ng serve
:: node backend/server.js

:: yolo à dezip de ylv.zup

