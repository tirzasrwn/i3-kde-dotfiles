#!/bin/bash

file_path="/etc/udev/rules.d/backlight.rules"

content='ACTION=="add", SUBSYSTEM=="backlight", RUN+="/bin/chgrp video $sys$devpath/brightness", RUN+="/bin/chmod g+w $sys$devpath/brightness"'

if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as root."
	exit 1
fi

echo "$content" | tee "$file_path" >/dev/null

echo "Content successfully written to $file_path"
