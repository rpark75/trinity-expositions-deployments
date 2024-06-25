@echo off
setlocal

echo Trinity deployment script. Copyright Lunacite.

:: Folder d'install
cd /D "C:\dev\trinity-expositions-deployments\files"

:: langages & packages
:: python 3.8.10
echo Deploying python...
start /wait "" "python-3.8.10-amd64.exe" /quiet /simple

::ylv
echo Dezip ylv...
set "ZIPFILE=C:\dev\trinity-expositions-deployments\files\ylv.zip"
set "DESTDIR=C:\dev\trinity-expositions-deployments"

powershell -command "Expand-Archive -Path %ZIPFILE% -DestinationPath %DESTDIR%"

:: Sources package
echo Dezip trinity-ycar...
set ZIPFILE="C:\dev\trinity-expositions-deployments\files\trinity-ycar.zip"
set DESTDIR="C:\dev\trinity-expositions-deployments"

powershell -command "Expand-Archive -Path %ZIPFILE% -DestinationPath %DESTDIR%"

:: start ng app
echo init ng...
cd "C:\dev\trinity-expositions-deployments\trinity-ycar\"
call npm install -g @angular/cli@15.2.9

echo npm i src...
call npm install

echo ''
echo '' 
echo /****** INSTRUCTION ******/
echo IN THE NEW WINDOW, PLEASE SELECT NO BY TYPING N
echo ''
echo ''

start cmd /k "cd /d %cd% && ng serve -o"

:: start ng ws
echo npm i ws...
cd "C:\dev\trinity-expositions-deployments\trinity-ycar\websocket-backend"
call npm install

start cmd /k "cd /d %cd% && node ./server.js"

:: launch ylv depuis dossier yolov5
echo ylv launch ready.

echo Trinity Lunacite deployed.

endlocal
pause

