#!/bin/bash
USERNAME=windows10
HOSTNAME=192.168.159.130
SCRIPT="dir"
sshpass -p "123" ssh -l  ${USERNAME} ${HOSTNAME} "${SCRIPT}"
#linuxhint@192.168.1.103
#ssh -l ${USERNAME} ${HOSTNAME} "${SCRIPT}"
