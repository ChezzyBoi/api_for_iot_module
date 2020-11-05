FROM resin/raspberry-pi-python:3

LABEL maintainer "Petersen Phihlela <pmphareng@gmail.com>"

RUN READTHEDOCS=True pip install picamera

COPY ../api_for_iot_module.py /api_for_iot_module.py

ENV AUTH_USERNAME=mphareng AUTH_PASSWORD=@Kryptonite21 RESOLUTION=800x600 FRAMERATE=24

ENTRYPOINT ["/usr/local/bin/python3", "/api_for_iot_module.py"]
