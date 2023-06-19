# /bin/bash

cd ~

# Fix scroll direction

gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true

# Install base programs

sudo apt-get update
sudo apt-get upgrade
sudo apt-get -y install vim i3 curl htop wget gpg

# Install other useful programs
sudo apt-get -y install flameshot pip blueman tmux scrot imagemick

# Install vs-code
sudo apt-get install gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt-get -y install apt-transport-https
sudo apt-get update
sudo apt-get -y install code


# Other terminal applications
sudo apt-get install tre-command npm ripgrep bat lsb-release cargo golang
curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get # deb-get
deb-get install du-dust # Disk usage
cargo install eva
npm i wikit -g

# Copy over dot files

touch ~/.project-aliases.sh
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
