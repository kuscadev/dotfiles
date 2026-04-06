#!/bin/bash

echo "🚀 Starting dotfiles installation..."

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET_DIR="$HOME/.config"
FONT_DIR="$HOME/.local/share/fonts"

DEBIAN_PACKAGES=("bspwm" "btop" "dunst" "fastfetch" "kitty" "picom" "polybar" "rofi" "sxhkd" "starship" "feh" "brightnessctl" "unzip" "curl" "ddcutil")

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

mkdir -p "$TARGET_DIR"
mkdir -p "$FONT_DIR"

HACK_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip"
TEMP_ZIP="/tmp/Hack.zip"

if fc-list | grep -qi "Hack Nerd Font"; then
    echo "✅ Hack Nerd Font already installed, skipping."
else
    curl -L "$HACK_URL" -o "$TEMP_ZIP"
    unzip -o "$TEMP_ZIP" -d "$FONT_DIR"
    rm "$TEMP_ZIP"
    
    echo "🗂️ Refreshing font cache..."
    fc-cache -fv
    
    echo "✅ Hack Nerd Font installed successfully!"
fi


for file in "${FILES[@]}"; do
	src="$DOTFILES_DIR/$file"
	dest="$TARGET_DIR/$file"
	if [ -e "$src" ]; then
		if [ -e "$dest" ]|| [ -L "$dest" ]; then
			echo "The old configuration is being removed: $file"
			rm -rf "$dest"
		fi
		echo "Linking: $file -> $dest"
		ln -s "$src" "$dest"
	else
		echo "Source not found. Skipping: $src"
	fi
done

echo "✅ Dotfiles installation completed successfully!"
echo "NOTE: Don't forget to restart bspwm (Alt+Shift+r) for the changes to take effect."
