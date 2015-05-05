#!/bin/sh -i

( ( sleep 5 ; /sbin/reboot --force --reboot ) & ) &
[ "$0" == "/tmp/reboot-soon.sh" ] && rm -f /tmp/reboot-soon.sh


