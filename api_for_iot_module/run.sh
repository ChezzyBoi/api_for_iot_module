#!/usr/bin/env bash

docker run -d --restart=always \
  --device /dev/vchiq \
  -p 8000:8000 \
  -e AUTH_USERNAME=mphareng \
  -e AUTH_PASSWORD=@Kryptonite21 \
  mphareng/picamera
