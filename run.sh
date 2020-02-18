#!/bin/bash
xhost +
docker run -v /tmp/.X11-unix:/tmp/.X11-unix \
           -e DISPLAY \
           -v $PWD:/tmp/pwd \
           -e XAUTHORITY \
           --privileged \
           -it qt_test
xhost -
#docker run -v /tmp/.X11-unix:/tmp/.X11-unix \
#           -e DISPLAY \
#           -e XAUTHORITY \
#           --privileged \
#           -e NVIDIA_DRIVER_CAPABILITIES=all
#           -it ubuntu