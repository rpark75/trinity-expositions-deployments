echo Manually starting app. Copyright Lunacite.
cd "C:\dev\trinity-expositions-deployments\trinity-expositions-deployments\"

echo Stopping all processes...
taskkill /IM python.exe /F -> skipped car pas de git follow.
taskkill /IM node.exe /F

echo DEBUG STEP 1
echo Open a new terminal console (windows+R) 
echo Type and press enter: cd "C:\dev\trinity-expositions-deployments\trinity-ycar\" 
echo Type and press enter: npm install -g @angular/cli@15.2.9
echo Type and press enter: npm install
echo Type and press enter (if necessary say no to any asked question): ng serve -o


echo DEBUG STEP 2
echo Open a new terminal console (windows+R) 
echo Type and press enter: cd "C:\dev\trinity-expositions-deployments\trinity-ycar\websocket-backend"
echo Type and press enter: npm install
echo Type and press enter: node ./server.js


echo DEBUG STEP 3
echo Open a new terminal console (windows+R) 
echo Type and press enter: cd "C:\dev\trinity-expositions-deployments\yolov5"
echo Type and press enter: pip install -r requirements.txt 
echo Type and press enter: pip install websocket-client
echo Type and press enter: python detect.py --weights yolov5n.pt --nosave --class 0 --source 1

echo DEBUG IS OVER.
pause