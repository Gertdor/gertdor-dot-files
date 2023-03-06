# /bin/bash

cd ~

# Fix scroll direction

gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true

# Install base programs

sudo apt-get -y install vim
sudo apt-get -y install i3
sudo apt-get -y install curl
sudo apt-get -y install htop

# Copy over dot files

touch ~/.personal-aliases
ln -s gertdor-dot-files/zshrc .zshrc
ln -s gertdor-dot-files/vimrc .vimrc
ln -s gertdor-dot-files/i3 .i3
ln -s gertdor-dot-files/gitconfig .gitconfig

# Vim setup and plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# ZSH setup
sudo apt-get -y install zsh
if !hash zsh 2>/dev/null; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  cp gertdor-dot-files/mh-stig.zsh-theme ~/.oh-my-zsh/themes
fi
