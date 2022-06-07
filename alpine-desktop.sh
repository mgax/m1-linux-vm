#!/bin/bash
set -euo pipefail

echo | setup-alpine -q
echo | setup-ntp
echo 'http://dl-cdn.alpinelinux.org/alpine/v3.16/community' >> /etc/apk/repositories
setup-xorg-base
apk add xfce4 xfce4-terminal dbus
rc-service dbus start
apk add firefox
startx &
