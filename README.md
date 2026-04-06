# BSPWM + Debian

A collection of my personal configuration files for a clean, minimal, and productive Linux environment.
Currently optimized for **Debian** with **bspwm** as the window manager.

---

- **OS:** [Debian](https://www.debian.org/)
- **Window Manager:** [BSPWM](https://github.com/baskerville/bspwm)
- **Bar:** [Polybar](https://github.com/polybar/polybar)
- **Compositor:** [Picom](https://github.com/yshui/picom)
- **Terminal:** [Kitty](https://github.com/kovidgoyal/kitty)
- **Notify Daemon:** [Dunst](https://github.com/dunst-project/dunst)
- **Application Launcher:** [Rofi](https://github.com/davatorium/rofi)
- **File Manager:** [Thunar](https://gitlab.xfce.org/xfce/thunar)
- **Shell:** [Bash](https://www.gnu.org/software/bash/)

---

## Installation

Clone this repository and run the installer:

```bash
git clone https://github.com/kuscadev/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
chmod +x install.sh
./install.sh
```

The script will:

- Install required packages (e.g. bspwm, sxhkd, kitty, polybar, picom, etc.)
- Copy configuration files into ~/.config/
- Apply basic setup for immediate use


## Colors

| Color | Hex |
| --- | --- |
| Background | #212121|
| Background-Alt | #2A2A2A |
| Primary | #1A73E8 |
| Text | #E6E6E6 |
| Disabled| #969696 |

### Theme & Fonts

- **GTK Theme:** [Tokyonight Dark Storm](https://www.gnome-look.org/p/1681315/)
- **Icons:** [Fluent Dark](https://www.gnome-look.org/p/1477945)
- **Font:** [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip)
## Screenshots

![Wallpaper](/Screenshots/debian-bspwm-wallpaper.png)
![Firefox](/Screenshots/debian-bspwm)

## Notes
- These dotfiles are optimized for my workflow, so you may want to adjust keybindings and scripts.
- The install script uses `apt`, make sure you're on a Debian-based distro.
