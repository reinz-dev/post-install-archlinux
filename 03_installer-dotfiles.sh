#!/bin/bash

sudo pacman -Syu && sudo pacman -Syyu
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
sudo rm -rf $HOME/paru

paru -Syu && paru -Sua

echo "##-------| installing |-------##"
sudo pacman -S kitty fish neofetch ranger tmux exa
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
chsh -s /usr/bin/fish
echo " ##-------| all done |-------##"
echo " "

echo "##-------| installing starhip-shell |-------##"
curl -sS https://starship.rs/install.sh | sh
echo "##-------| starhip done |-------##"
echo " "

echo "##-------| clone dotfiles |-------##"
cd $HOME
git clone http://github.com/reinzcity/dotfiles.git
cd dotfiles
yes | cp -rf . ~
echo "##-------| dotfiles done |-------##"
echo " "

echo "##-------| installing homebrew linux |-------##"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
echo "##-------| homebrew done |-------##"

brew -v
brew install neovim --HEAD

cd $HOME

echo "installing extension paru"
paru -S nerd-fonts-complete
paru -S extension-manager
pari -S ntfs-3g

echo "installing Neovim"
git clone http://github.com/reinzcity/nvim-2.0
git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim
mkdir $HOME/.config/nvim
cd nvim-2.0
cp -rf . ~/.config/nvim/

cd $HOME
rm -rf $HOME/.local/share/nvim/site/pack/packer/start/tokyonight.nvim/lua/
mkdir $HOME/.local/share/nvim/site/pack/packer/start/tokyonight.nvim/lua/
cd $HOME/dotfiles/.repo/lua
cp -rf . $HOME/.local/share/nvim/site/pack/packer/start/tokyonight.nvim/lua/
