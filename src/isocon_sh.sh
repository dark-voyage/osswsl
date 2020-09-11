#!/bin/bash

cd .
export PATH=$(echo $PATH | sed 's#/usr/.bin:##g')

INIT_WSL_UID=$1
INIT_WSL_USER=$(id -u -n ${INIT_WSL_UID})

EXEC_BIN=$(echo $2 | sed 's#^-#/bin/#g')
exec /sbin/runuser -u "${INIT_WSL_USER}" --  "$EXEC_BIN" "${@:3}"
