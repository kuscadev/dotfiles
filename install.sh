#!/bin/bash

echo "🚀 Starting dotfiles installation..."

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET_DIR="$HOME/.config"

DEBIAN_PACKAGES=("bspwm" "btop" "dunst" "fastfetch" "kitty" "picom" "polybar" "rofi" "sxhkd" "starship")

FILES=("bspwm" "btop" "dunst" "fastfetch" "kitty" "picom" "polybar" "rofi" "sxhkd" "starship.toml")

if [ -f "/etc/debian_version" ]; then
    echo "📦 Updating package index..."
    sudo apt update

    for pkg in "${DEBIAN_PACKAGES[@]}"; do
        echo "🔧 Installing: $pkg"
        sudo apt install -y "$pkg"
    done
else
    echo "⚠️ This is not a Debian-based system. Skipping package installation."
fi

for file in "${FILES[@]}"; do
    src="$DOTFILES_DIR/$file"
    dest="$TARGET_DIR/$file"

    if [ -d "$src" ]; then
        echo "📁 Copying directory: $file"
        cp -r "$src" "$dest"
    else
        echo "📄 Copying file: $file"
        cp "$src" "$dest"
    fi
done

echo "✅ Dotfiles installation completed successfully!"
