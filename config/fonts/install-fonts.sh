#!/bin/bash
# Font Installation Script
# Arch Linux dotfiles setup

set -e

echo "Installing fonts for dotfiles setup..."

# Create fonts directory if it doesn't exist
mkdir -p ~/.local/share/fonts

# Install fonts using pacman
echo "Installing system fonts..."
sudo pacman -S --noconfirm \
    ttf-jetbrains-mono \
    ttf-nerd-fonts-symbols \
    ttf-nerd-fonts-symbols-mono \
    noto-fonts \
    noto-fonts-emoji \
    noto-fonts-cjk \
    adobe-source-code-pro-fonts \
    ttf-dejavu \
    ttf-liberation \
    ttf-ubuntu-font-family

# Install fonts using yay (if available)
if command -v yay &> /dev/null; then
    echo "Installing additional fonts with yay..."
    yay -S --noconfirm \
        ttf-nerd-fonts-victor-mono \
        ttf-nerd-fonts-hack \
        ttf-nerd-fonts-fira-code \
        ttf-nerd-fonts-meslo
fi

# Update font cache
echo "Updating font cache..."
fc-cache -fv

echo "Font installation complete!"
echo "You may need to restart your applications for font changes to take effect."
