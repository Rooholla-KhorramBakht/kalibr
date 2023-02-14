if [ -z "$1" ]; then echo "No names was provided for the image. Usage: ./docker_start_gui.sh image_name:tag" && exit 1;fi

xhost + #Allow Xserver connections from the docker machine
sudo docker run --network=host --name kalibr --rm -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro -v /media/rooholla/4814feef-374c-4a9b-9536-c67442170676/aras-cam-dataset:/root/data $1 &&
xhost - #Disable the Xserver remote connection for safety reasons
