#!/usr/bin/env bash

# https://thispointer.com/how-to-get-ip-address-of-running-docker-container-from-host-using-inspect-command/

docker inspect --format='{{.Name}} {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -q)
