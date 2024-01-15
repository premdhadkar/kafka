#!/usr/bin/env bash
echo "===="
echo "= Removing all docker containers"
echo "===="
sudo docker rm -f $(docker ps -aq)

echo "===="
echo "= Removing unused containers, networks, dangling images"
echo "===="
sudo docker system prune --volumes