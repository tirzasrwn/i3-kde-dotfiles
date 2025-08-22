#!/bin/bash

if [[ $EUID -eq 0 ]]; then
	echo "This script must NOT be run as root." 1>&2
	exit 1
fi

sudo apt update
sudo apt install -y \
	dunst \
	feh \
	ffmpeg \
	flameshot \
	fzf \
	git \
	i3lock \
	i3-wm \
	libnotify-bin \
	mate-polkit \
	mpv \
	openjdk-25-jdk \
	polybar \
	rofi \
	ripgrep \
	screenkey \
	tmux \
	wget \
	xdotool \
	zip \
	zsh

cp -frv ./_config/* ~/.config
cp -frv ./_local/* ~/.local
cp -frv .profile .bookmark .directory_list .p10k.zsh .zshrc ~/
