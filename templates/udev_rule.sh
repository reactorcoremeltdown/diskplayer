#!/usr/bin/env bash

source device_params

cat <<EOF > /etc/udev/rules.d/100-media-mount.rules
ACTION=="change", ATTRS{idVendor}=="${VENDOR}", ATTRS{idProduct}=="${PRODUCT}", ENV{DISK_MEDIA_CHANGE}=="1", RUN+="/usr/local/bin/media_mount \$env{DEVNAME}"
EOF
