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
| Green | #8ec07c|
| Blue | #458588 |
| Yellow | #d79921 |
| Red | #cc241d |
| Background| #3c3836 |
| Foreground | #e0def4 |

### Theme & Fonts

- **GTK Theme:** [Gruvbox GTK Theme](https://www.gnome-look.org/p/1681313)
- **Icons:** [Gruvbox Plus Icon Pack](https://www.gnome-look.org/p/1961046)
- **Font:** [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip)
## Screenshots

![Wallpaper](/Screenshots/Screenshot%202025-08-22%2015:05:36.png)
![Terminal](/Screenshots/Screenshot%202025-08-22%2015:07:39.png)
![Firefox](/Screenshots/Screenshot%202025-08-22%2015:10:30.png)

## Notes
- These dotfiles are optimized for my workflow, so you may want to adjust keybindings and scripts.
- The install script uses `apt`, make sure you're on a Debian-based distro.
