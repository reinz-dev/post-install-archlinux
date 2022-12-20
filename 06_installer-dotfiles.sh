#!/bin/bash

## installing package paru
echo "installing package paru"
paru -S extension-manager
paru -S gnome-shell-extension-blur-my-shell
paru -S gnome-shell-extension-dash-to-dock
paru -S gnome-shell-extension-compiz-alike-magic-lamp-effect
paru -S gnome-shell-extension-gtk-title-bar
paru -S gnome-shell-extension-no-overview-at-start-up
paru -S ntfs-3g

## installing terminal 
echo "installing terminal"
sudo pacman -S kitty fish neofetch ranger tmux exa
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
chsh -s /usr/bin/fish

## installing starship shell
echo "installing startship"
curl -sS https://starship.rs/install.sh | sh

## clonning my dotfiles
echo "installing dotfiles"
cd $HOME
git clone http://github.com/reinzcity/dotfiles.git
cd dotfiles
yes | cp -rf . ~

## installing font
cd $HOME/dotfiles/.fonts
cp -rf . /usr/share/fonts/TTF/
cd $HOME

## installing homebrew-linux
echo "installing homebrew-linux"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
brew -v
brew update
brew install gcc
cd $HOME

## installing neovim 
echo "installing Neovim"
brew install neovim --HEAD
git clone http://github.com/reinzcity/nvim-2.0
git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim
mkdir $HOME/.config/nvim
cd nvim-2.0
cp -rf . $HOME/.config/nvim/

cd $HOME
rm -rf $HOME/nvim-2.0

cd $HOME
rm -rf $HOME/.local/share/nvim/site/pack/packer/start/tokyonight.nvim/lua/
mkdir $HOME/.local/share/nvim/site/pack/packer/start/tokyonight.nvim/lua/
cd $HOME/dotfiles/.repo/lua
cp -rf . $HOME/.local/share/nvim/site/pack/packer/start/tokyonight.nvim/lua/
cd $HOME

echo " "
echo "<<----======== ALL DONE SUCCESS INSTALL ========---->>"
echo " "
echo "you need restart terminal"
echo " "
echo " "
