#!/usr/bin/env bash

sudo apt-get update

echo "Installing hg"
sudo apt-get install -y mercurial

echo "Installing Python Tools (pip, virtualenv)"
sudo apt-get install python3-pip
sudo apt-get install python3.4-venv

echo "Installing bower, cause... why not?"
sudo npm install -g bower