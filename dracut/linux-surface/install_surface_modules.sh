#!/bin/sh
#
# This file should be placed in pre-trigger directory in dracut's initramfs

# initramfs-tools (Debian) API
PREREQS=""
case "$1" in
    prereqs)
        # This runs during initramfs creation
        echo "$PREREQS"
        exit 0
        ;;
esac

if [ -w /etc/dracut.conf.d ]; then
    echo "add_drivers+=\042 surface_hid_core surface_hid surface_aggregator_registry surface_aggregator \042 " > /etc/dracut.conf.d/surface.conf
fi
