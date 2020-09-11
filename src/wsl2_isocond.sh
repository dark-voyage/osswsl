#!/usr/.bin/bash

# Mount only for container
/usr/.bin/mount --make-private --bind /usr/.bin /usr/bin
/usr/.bin/mount binfmt_misc -t binfmt_misc /proc/sys/fs/binfmt_misc 

exec /lib/systemd/systemd --system-unit=multi-user.target