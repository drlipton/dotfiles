#!/bin/bash

# Check if sudo is available
if command -v sudo >/dev/null 2>&1; then
	SUDO="sudo"
else
	SUDO=""
fi

# Install necessary packages (adjust for your package manager)
$SUDO apt update
$SUDO DEBIAN_FRONTEND=noninteractive apt install -y tzdata neovim tmux zsh ripgrep git curl neofetch

# Install Oh My Zsh (optional)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Clone your configuration repositories
#git clone https://github.com/drlipton/dotfiles

# Copy configuration files
cp nvim ~/.config/nvim
cp tmux/tmux.conf ~/.tmux.conf
cp zsh/zshrc ~/.zshrc

# Set Zsh as default shell (optional)
chsh -s $(which zsh)

echo "Installation complete! Remember to source your Zsh configuration if you made changes."
