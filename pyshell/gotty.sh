#!/bin/sh
echo "starting docker"

sh /usr/local/bin/dockerd-entrypoint.sh

echo "starting install of python"

docker pull python:3.10.0-slim-buster

echo "now starting gotty"

exec ./gotty -p 9596 -w --close-signal 9 --close-timeout 10 docker run --rm -it --cpus 0.2 --memory 512MB --memory-swap 512MB --stop-timeout 14400 --network none --read-only --cap-drop=ALL python:3.10.0-slim-buster
