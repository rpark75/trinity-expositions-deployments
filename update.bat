echo Updating Trinity app. Copyright Lunacite.
cd "C:\dev\trinity-expositions-deployments\trinity-expositions-deployments\"

echo Stopping all processes...
::taskkill /IM python.exe /F -> skipped car pas de git follow.
taskkill /IM node.exe /F

echo Updating app...
git reset --hard HEAD
git pull origin master

echo Lauching app...
:: start ng app
echo init ng...
cd "C:\dev\trinity-expositions-deployments\trinity-ycar\"
call npm install -g @angular/cli@15.2.9

echo npm i src...
call npm install

echo ''
echo '' 
echo /****** INSTRUCTION ******/
echo IN THE NEW WINDOW, PLEASE SELECT NO TO GOOGLE ANALYTICS PROMPT BY TYPING N THEN PRESSING ENTER
echo ''
echo ''

start cmd /k "cd /d %cd% && ng serve -o"

:: start ng ws
echo npm i ws...
cd "C:\dev\trinity-expositions-deployments\trinity-ycar\websocket-backend"
call npm install

start cmd /k "cd /d %cd% && node ./server.js"

