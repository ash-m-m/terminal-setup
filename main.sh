#!/bin/bash

sh installScripts/brew-install.sh
gh auth login
git clone https://github.com/ash-m-m/terminal-setup 
sh installScripts/setup-ohmyzsh.sh
sh installScripts/k8.sh

