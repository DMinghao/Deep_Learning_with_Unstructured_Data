#!/bin/bash

function on_exit(){
    if test "running" == $(docker container inspect -f '{{.State.Status}}' Graph-Tool)
    then 
        echo "
        *******************************
        
        PLEASE DONOT CLOSE THE WINDOW

        Stopping Graph-Tool container...

        *******************************
        "
        docker stop Graph-Tool
    fi
}
trap on_exit HUP SIGHUP EXIT

dir="$(dirname "$0")"
source "$dir/.config"
 
img=$(docker images -q tiagopeixoto/graph-tool)
if 
    test -z $img
then
    echo "Graph-Tool docker image not found, pulling image from remote..."
    docker pull tiagopeixoto/graph-tool 
else 
    echo "Graph-Tool docker image found"
fi


ctn=$(docker container inspect -f '{{.Name}}' Graph-Tool)
if 
    test "/Graph-Tool" != "$ctn"
then 
    echo "Graph-Tool docker container not found, creating new container from tiagopeixoto/graph-tool..."
    docker create -p 8888:$port1 -p 6006:$port2 -it -u root --name Graph-Tool tiagopeixoto/graph-tool
    echo "Starting Graph-Tool container..."
    docker container start Graph-Tool
    docker container exec -it Graph-Tool pacman -S --noconfirm python-pip
else
    echo "Graph-Tool container found"
    echo "Starting Graph-Tool container..."
    docker container start Graph-Tool
fi

echo "Starting Jupyter kernel..."
echo "Use this link to access Jupyter:


     http://localhost:$port1/?token=$token
     

     "
docker container exec -it Graph-Tool bash -c "cd home/user ; jupyter notebook --allow-root --ip 0.0.0.0 --no-browser --NotebookApp.token='$token' --NotebookApp.password=''"

read -n 1 -s -r -p "Press Enter to exit"

exit 
