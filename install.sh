#!/bin/sh
mv /etc/zsh/zlogin /etc/zsh/zlogin.bak
apt-get install -y fonts-powerline zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "/root/.oh-my-zsh/themes/spaceship-prompt" --depth=1
ln -s "/root/.oh-my-zsh/themes/spaceship-prompt/spaceship.zsh-theme" "/root/.oh-my-zsh/themes/spaceship.zsh-theme"

echo 'export ZSH_THEME="spaceship"' >> /root/.zshrc

echo 'export SPACESHIP_PACKAGE_SHOW=false' >> /root/.zshrc
echo 'export SPACESHIP_NODE_SHOW=false' >> /root/.zshrc
echo 'export SPACESHIP_DOCKER_SHOW=false' >> /root/.zshrc


git config --global alias.co checkout
git config --global alias.st status
git config --global alias.hack "commit --amend --no-edit"

