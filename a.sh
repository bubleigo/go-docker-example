#!/bin/sh

id=$(uuidgen)
app=app-${id}

function clear {
	docker rm ${app}
	docker rmi ${app}
}

docker build -t ${app} .
docker run --name ${app} ${app} go test || clear
clear

echo "nice!"
