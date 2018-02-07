#!/bin/bash

fail() {
	echo $@
	exit 1
}

echo "deb http://ftp.debian.org/debian/ stretch-backports main contrib" > /etc/apt/sources.list.d/debian_contrib.list || fail "Coulnd't add contrib source"
apt update || fail "Couldn't update package list"
apt -y install build-essential module-assistant || fail "Couldn't intall packages"
m-a -i prepare || fail "Couldn't prepare module compilation"
apt -y install virtualbox-guest-x11 virtualbox-guest-utils || fail "Couldn't intall packages"
