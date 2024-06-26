#!/bin/bash

apt-get update
apt-get install sudo
sudo apt-get install gnome-terminal
sudo apt install python3
apt-get install pip
pip install grpcio
pip install grpcio-tools
pip install grpcio-testing


echo "Start Media Library"
gnome-terminal --window -- --title="Server" bash -c "python3 server.py; exec bash" \
               --tab -- --title="Client" bash -c "python3 client.py; exec bash" \
               --tab -- --title="Provider" bash -c "python3 provider.py; exec bash" \