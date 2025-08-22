#!/bin/bash

if [[ $EUID -eq 0 ]]; then
   echo "This script must NOT be run as root." 1>&2
   exit 1
fi

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
sudo apt install cmake g++ pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 -y
~/.cargo/bin/cargo install alacritty
~/.cargo/bin/cargo install tree-sitter-cli
~/.cargo/bin/cargo install bluetui
~/.cargo/bin/cargo install exa
