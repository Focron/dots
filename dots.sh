#!/bin/bash

USER_HOME=$(xdg-user-dir HOME)

# Set paths for symlinks
LN_ARRAY=(
"$USER_HOME/.dots/lf/bin/lf-cleanup /usr/local/bin/lf-cleanup"
"$USER_HOME/.dots/lf/bin/lf-preview /usr/local/bin/lf-preview"
"$USER_HOME/.dots/lf/bin/lf-run /usr/local/bin/lf-run"
"$USER_HOME/.dots/lf/colors $USER_HOME/.config/lf/colors"
"$USER_HOME/.dots/lf/icons $USER_HOME/.config/lf/icons"
"$USER_HOME/.dots/lf/lfrc $USER_HOME/.config/lf/lfrc"
"$USER_HOME/.dots/alacritty/alacritty.toml $USER_HOME/.config/alacritty/alacritty.toml"
"$USER_HOME/.dots/dunst/dunstrc $USER_HOME/.config/dunst/dunstrc"
"$USER_HOME/.dots/fastfetch/config.jsonc $USER_HOME/.config/fastfetch/config.jsonc"
"$USER_HOME/.dots/hypr/hypridle.conf $USER_HOME/.config/hypr/hypridle.conf"
"$USER_HOME/.dots/hypr/hyprland.conf $USER_HOME/.config/hypr/hyprland.conf"
"$USER_HOME/.dots/hypr/hyprlock.conf $USER_HOME/.config/hypr/hyprlock.conf"
"$USER_HOME/.dots/hypr/hyprpaper.conf $USER_HOME/.config/hypr/hyprpaper.conf"
"$USER_HOME/.dots/hypr/bin/fix-mime /usr/local/bin/fix-mime"
"$USER_HOME/.dots/wofi/config $USER_HOME/.config/wofi/config"
"$USER_HOME/.dots/wofi/style.css $USER_HOME/.config/wofi/style.css"
"$USER_HOME/.dots/waybar/style.css $USER_HOME/.config/waybar/style.css"
"$USER_HOME/.dots/waybar/config $USER_HOME/.config/waybar/config"
"$USER_HOME/.dots/waybar/custom_modules/mediaplayer.py $USER_HOME/.config/waybar/custom_modules/mediaplayer.py"
)

# Set paths for folders
DIR_ARRAY=(
"$USER_HOME/.config/"
"$USER_HOME/.config/lf/"
"$USER_HOME/.config/alacritty/"
"$USER_HOME/.config/dunst/"
"$USER_HOME/.config/fastfetch/"
"$USER_HOME/.config/hypr/"
"$USER_HOME/.config/wofi/"
"$USER_HOME/.config/waybar/"
"$USER_HOME/.config/waybar/custom_modules/"
)

# Check if the user is root, if it is return

if [ "$EUID" -eq 0 ]; then
  echo "Please dont run this script as root!"
  echo "You will be prompted for your password later."
  exit
fi

# Warn the user that this Script will override existing files
warn_user (){
  echo "WARNING: $1"
  read -p "Do you want to Continue? [y/N]" -n 1 -r
  if [[ ! $REPLY =~ ^[Yy]$ ]]
then
   exit
fi
}


if [[ $1 == "install" ]]; then
  # Move dots folder to .dots as its fixed location
  echo "Moving dotfiles..." 
  cd .. && mv dots/ $USER_HOME/.dots/
  
  # Create all nesecerry folders if they dont exist
  echo "Creating folders..."
  for i in ${DIR_ARRAY[@]}; do 
    mkdir -p $i 
  done

  # Symlink every config file into its appropriate folder
  echo "Symlinking dotfiles..."
  warn_user "This might override existing config files. Please Backup any pre-existing files!"
  for i in ${LN_ARRAY[@]}; do 
    sudo ln -s $i 
  done
  echo "dotfiles installed!"


elif [[ $1 == "remove" ]]; then
  
  # Remove all Symlinkinked files
  echo "Removeing symlinks..."
  warn_user "This will remove ALL config files this script installed!"
  for i in ${LN_ARRAY[@]}; do 
    sudo rm $(echo $i | cut -d ' ' -f2)
  done

  # Remove the .dots folder
  echo "Removeing .dots folder..."
  rm -r $USER_HOME/.dots/

  echo "dotfiles removed!"

elif [[ $1 == "update" ]]; then
 
 # Update every simlink and add any new ones
 echo "Updateing symlinks..."
 warn_user "This might override customisations to existing config files!"
 for i in ${LN_ARRAY[@]}; do 
   sudo ln -sf $i 
 done
 
 echo "Update done!"

else
 # Inform the user about the available commands
 echo "Please only use \"install\", \"update\" or \"remove\" as arguments." 
fi
