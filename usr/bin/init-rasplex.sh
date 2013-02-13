#!/bin/bash

useradd -m -G wheel plexuser

passwd plexuser << EOF
rasplex
rasplex
EOF

eselect python set python2.7
eselect editor set /usr/bin/vi


rc-update add wicd sysinit
rc-update add wicd boot
rc-update add wicd default
rc-update add sshd boot
rc-update add sshd default
rc-update add avahi-daemon default
