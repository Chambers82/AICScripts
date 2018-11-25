#!/bin/bash

RED='\033[1;31m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
YELLOW='\033[49;93m'
NC='\033[0m' # No Color

echo -e "${YELLOW}"
echo -e "+---_------------------------------------------------------+"
echo -e "|      Adversarial Informatics Combat Lookup Nix Syscall    |"
echo -e "|                  cygienesolutions.com                     |"
echo -e "|         [Usage]: ./lookup_sys_aic.sh <SYSCALL>            |"
echo -e "+----------------------------------------------------------+"
if [ $# == 0 ] ; then
    echo -e "Supply a syscall to lookup."
    echo -e "Example: lookup_sys_aic.sh write"
    exit 1; fi

SYSCALL="$1"

echo -e "${GREEN}"
echo -e " [+] Looking up supplied syscall..."
cat /usr/include/i386-linux-gnu/asm/unistd_64.h | grep $1
sed -n '/NAME/,/DESCRIPTION/p' mantest
echo -e "${NC}"

