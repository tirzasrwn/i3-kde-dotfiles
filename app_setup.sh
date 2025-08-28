#!/bin/bash

if [[ $EUID -eq 0 ]]; then
	echo "This script must NOT be run as root." 1>&2
	exit 1
fi

sudo apt update
sudo apt install -y \
	arandr \
	blueman \
	dunst \
	feh \
	ffmpeg \
	flameshot \
	fzf \
	git \
	i3lock \
	i3-wm \
	libdbus-1-dev \
	libnotify-bin \
	mate-polkit \
	mpv \
	netcat-openbsd \
	nmap \
	openjdk-21-jdk \
	pavucontrol \
	picom \
	pkg-config \
	polybar \
	rofi \
	ripgrep \
	screenkey \
	tmux \
	wget \
	xdotool \
	zathura \
	zip \
	zsh

cp -frv ./_config/* ~/.config
cp -frv ./_local/* ~/.local
cp -frv .profile .bookmark .directory_list .p10k.zsh .zshrc ~/
