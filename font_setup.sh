#!/bin/bash

if [[ $EUID -eq 0 ]]; then
   echo "This script must NOT be run as root." 1>&2
   exit 1
fi

URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraCode.zip"
ZIP=/tmp/FiraCode.zip
DIR=/tmp/FiraCode

wget -O $ZIP $URL
mkdir -p $DIR
unzip -o $ZIP -d $DIR
mkdir -p ~/.fonts
cp -frv $DIR/*.ttf ~/.fonts
fc-cache -f -v
