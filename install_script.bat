@echo off
setlocal

:: Folder d'install
cd /D "C:\dev\trinity-expositions-deployments\files"

:: langages
:: python 3.8.10
echo Deploying python...
start /wait "" "python-3.8.10-amd64.exe" /quiet /simple

::ylv
echo Dezip ylv...
set ZIPFILE="C:\dev\trinity-expositions-deployments\files\ylv.zip"
set DESTDIR="C:\dev\trinity-expositions-deployments\"

powershell -command "Expand-Archive -Path %ZIPFILE% -DestinationPath %DESTDIR%"

:: Sources package
echo Dezip trinity-ycar...
set ZIPFILE="C:\dev\trinity-expositions-deployments\files\trinity-ycar.zip"
set DESTDIR="C:\dev\trinity-expositions-deployments\"

powershell -command "Expand-Archive -Path %ZIPFILE% -DestinationPath %DESTDIR%"

:: start ng app
echo npm i src...
cd "C:\dev\trinity-expositions-deployments\trinity-ycar\"
npm install

start cmd /k "cd /d %cd% && ng serve -o"

:: start ng ws
echo npm i ws...
cd "C:\dev\trinity-expositions-deployments\trinity-ycar\websocket-backend"
npm install

start cmd /k "cd /d %cd% && node ./server.js"

:: launch ylv depuis dossier yolov5

endlocal
pause

