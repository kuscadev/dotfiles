#!/bin/bash

echo "🚀 Starting dotfiles installation..."

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET_DIR="$HOME/.config"

DEBIAN_PACKAGES=("bspwm" "btop" "dunst" "fastfetch" "kitty" "picom" "polybar" "rofi" "sxhkd" "starship" "feh" "brightnessctl")

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

echo "🔤 Installing Hack Nerd Font..."

FONT_DIR="$HOME/.local/share/fonts"
mkdir -p "$FONT_DIR"

HACK_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip"
TEMP_ZIP="/tmp/Hack.zip"

curl -L "$HACK_URL" -o "$TEMP_ZIP"
unzip -o "$TEMP_ZIP" -d "$FONT_DIR"
rm "$TEMP_ZIP"

echo "🗂️ Refreshing font cache..."
fc-cache -fv

echo "✅ Hack Nerd Font installed successfully!"

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
