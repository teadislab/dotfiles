#!/bin/sh

echo 'Installing Lazygit'
add-apt-repository ppa:lazygit-team/daily
apt-get update
apt-get install lazygit

sh -c "$(curl -fsSL https://starship.rs/install.sh)"