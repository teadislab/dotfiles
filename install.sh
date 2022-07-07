#!/bin/sh
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

echo 'Installing Lazygit'
add-apt-repository ppa:lazygit-team/daily
apt-get update
apt-get install lazygit

echo 'Installing tt'
sudo curl -L https://github.com/lemnos/tt/releases/download/v0.4.2/tt-linux -o /usr/local/bin/tt && sudo chmod +x /usr/local/bin/tt

sudo curl -o /usr/share/man/man1/tt.1.gz -L https://github.com/lemnos/tt/releases/download/v0.4.2/tt.1.gz

echo 'Installing Atuin'
bash <(curl https://raw.githubusercontent.com/ellie/atuin/main/install.sh)

echo 'Installing Dev-stuff'
echo 'creating Dev dir'
mkdir dev
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

