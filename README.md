# dots

## Index
- [Overview](#overview)
- [Requirements](#requirements)
- [Installation Instructions](#installation-instructions)
- [Updating Instructions](#updating-instructions)
- [Uninstallation Instructions](#uninstallation-instructions)
- [Any Problems?](#any-problems)




## Overview

My personal dotfiles for my ArchLinux + Hyprland install.

Includes configs for:
- Hyprland
- Hyprlock
- Hypridle
- Hyprpaper
- Waybar
- Alacritty
- Dunst
- Lf
- Fastfetch
- Wofi
- My Scripts Folder

## Requirements

This is the list of programms that are **recomended** to have installed, in order to have the best experience with the dotfiles. This **includes** the optional ones, however they are not strictly required for a functional desktop.

*Most of them should already be installed. *Any Program with a "\*" next to them can be replaced with a similar one, but some config changes may be required*

## Recomended

- **Hyprland**
- **Hyprlock\***
- **Hyprpaper\***
- **git**
- **Waybar\***
- **Alacritty\***
- **Dunst\***
- **JetbrainsMono Nerd Font**
- **NotoSansM Nerd Font Mono**
-  **Wofi\***
- **xdg-desktop-portal-hyprland\***
- **pipewire**
- **qt5-wayland**
- **qt6-wayland**
- **polkit-kde-agnt\***
- **cliphist\***
- **wl-clipboard**
- **brave\***
- **dolphin\***
- **pactl\***
- **kate\***
- **gwenview\***
- **celluloid\***
- **gtk3**
- **gtk4**
- **hyprshot**\*


## Optional

- yay (Arch-only)\*
- nvim\*
- pacseek (Arch-only)\*
- Hypridle
- Lf\*
- Fastfetch\*
- ueberzugpp\*
- ydotoold\*
- rofi-rbw
- Hyprpicker\*
- timedatectl
- grep
- sed
- awk
- systemd
- loginctl
- 7zip
- tar
- unzip
- mpv
- mpg123
- lame
- fzf\*
- trash-cli
- vscodeium\*
- python3
- playerctl
- checkupdates (Arch-only)\*


## Installation Instructions

1. Install **at least** the [recomended](#recomended) dependencies from [Requirements](#requirements).

2. **Backup any relevent configuration files that you may want to keep**

3. Clone the repository to your maschine using git from the terminal:

```bash

git clone https://github.com/Focron/dots

```

4. Navigate into the cloned Folder:

```bash

cd dots

```
5. Run the following command to install the dotfiles into the appropriate folders **or move them manually**:


```bash

chmod +x dots.sh && ./dots.sh install

```
6. Accept the warning by typing in **Y** or **y**.

## Updating Instructions

There are 2 diffrent ways to update:

1. [**Only updates existing config files**](#1-update-existing-config-files)
2. [**Download and install any new config files**](#2-download-and-install-any-new-config-files)

If you dont care for, or already have config files for any new programms I might add config files to this repo for, you can follow number 1. 

**If not follow number 1 and then number 2**

-----

### 1. Update existing config files:

**WARNING: This will erase any changes you may have made to the config files so be sure to back those up!**

 1. **Backup any relevent configuration files that you may want to keep**

2. Navigate into your .dots Folder:

```bash

cd ~/.dots

```
3. Run the following command to download the latest changes from Github:


```bash

git pull

```

--------


### 2. Download and install any new config files:

**WARNING: This might erase some changes you may have made to the config files so be sure to back those up!**

1. **Backup any relevent configuration files that you may want to keep**

2. Navigate into your .dots Folder:

```bash

cd ~/.dots

```
3. Run the following command to install any new dotfiles into the appropriate folders **or move them manually**:


```bash

./dots.sh update

```

4. Accept the warning by typing in **Y** or **y**.


## Uninstallation Instructions


**WARNING: This will erase ALL config files that are managed by this repo. Including any changes or new files that may exist in the same path and have the same name. So be sure to back your config files up!**

 1. **Backup any relevent configuration files that you may want to keep**


2. Navigate into your .dots Folder:

```bash

cd ~/.dots

```
3. Run the following command to **Remove** all new dotfiles this repo manages **or remove them manually**:


```bash

./dots.sh remove

```

4. Accept the warning by typing in **Y** or **y**.

## Any Problems?

If you have any problems or want to contribute, please feel free to:

- [**Open an Issue**](https://github.com/Focron/dots/issues/new)
or
- [**Open a Pull-Request**](https://github.com/Focron/dots/pulls)


