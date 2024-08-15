#!/bin/bash

# Check if sudo is available
if command -v sudo >/dev/null 2>&1; then
	SUDO="sudo"
else
	SUDO=""
fi

# Install necessary packages (adjust for your package manager)
$SUDO apt update

$SUDO apt install -y tzdata neovim tmux zsh ripgrep git curl neofetch wget unzip fontconfig build-essential xclip nodejs npm clangd

npm install -g pyright
npm install -g bash-language-server


# Clone your configuration repositories
#git clone https://github.com/drlipton/dotfiles

# Copy configuration files
mkdir -p ~/.config/nvim

cp -r nvim ~/.config/
cp tmux/tmux.conf ~/.tmux.conf
cp tmux/tmux.conf.local ~/.tmux.conf.local
cp zsh/zshrc ~/.zshrc

# Install Nerd Font (replace with your desired font)
FONT_NAME="FiraCode Nerd Font"                                                           # Or another Nerd Font name
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip" # Update URL if needed

wget -O /tmp/nerdfont.zip $FONT_URL
unzip /tmp/nerdfont.zip -d /tmp/nerdfont
mkdir -p ~/.local/share/fonts
cp /tmp/nerdfont/*.ttf ~/.local/share/fonts/
cp /tmp/nerdfont/FiraCode-Regular Nerd Font Complete.ttf ~/.local/share/fonts/
fc-cache -fv

# Install Oh My Zsh (optional)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Set Zsh as default shell (optional)
chsh -s $(which zsh)

echo "Installation complete! Remember to source your Zsh configuration if you made changes."
