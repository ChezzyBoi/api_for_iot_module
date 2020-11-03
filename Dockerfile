FROM resin/raspberry-pi-python:3

LABEL maintainer "Cheslyn Williams <cheslynwilliams318@gmail.com>"

RUN READTHEDOCS=True pip install picamera

COPY api_for_iot_module.py /api_for_iot_module.py

ENV AUTH_USERNAME=pi AUTH_PASSWORD=picamera RESOLUTION=800x600 FRAMERATE=24

ENTRYPOINT ["/usr/local/bin/python", "/api_for_iot_module.py"]