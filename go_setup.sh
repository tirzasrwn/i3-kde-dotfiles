#!/bin/bash

#!/bin/bash

if [[ $EUID -eq 0 ]]; then
	echo "This script must NOT be run as root." 1>&2
	exit 1
fi

URL="https://go.dev/dl/go1.25.0.linux-amd64.tar.gz"
TAR=/tmp/go1.25.0.linux-amd64.tar.gz

wget -O $TAR $URL
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf $TAR
export PATH=$PATH:/usr/local/go/bin
go version
