#!/bin/bash
# set -euo pipefail

export DEBIAN_FRONTEND=noninteractive

apt update -y
apt upgrade -y
apt autoremove -y
apt install -y build-essential zsh direnv fzf git
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
