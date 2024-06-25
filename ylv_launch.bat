echo Starting pattern interaction script. Copyright Lunacite.
cd "C:\dev\trinity-expositions-deployments\yolov5"
pip install -r requirements.txt 
pip install websocket-client
python detect.py --weights yolov5n.pt --nosave --class 0 --source 1