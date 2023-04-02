#!/usr/bin/env bash

cd $(dirname "$0")

read -sp "Password: " pwd
echo
rm -rf ~/Library/Application Support/com.nssurge.surge-*
echo "${pwd}" | sudo -S date 010110002018
nohup ./Surge.app/Contents/MacOS/Surge &
sleep 20
echo "${pwd}" | sudo -S sntp -sS time.apple.com.