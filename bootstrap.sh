#
# Boostrap file
# Use to setup dotfiles on new machine.
#
# Made by: Lukas Lindqvist
#

############
## GLOBAL ##
############

dot_dir=$HOME/.dotfiles
backup=$HOME/.backup_dotfiles

######################
## .config-dotfiles ##
######################


echo "---------------------------"
echo "-> Setup .config dotfiles."
echo "---------------------------"

config_dir=$HOME/.config

## Dirs to create
dirs_to_make="i3 nvim rofi polybar termite dunst"

## File paths for config files (dotfiles residing in .config)
nvim="nvim/init.vim"
i3="i3/config"
compton="i3/compton.conf"
rofi="rofi/config"
polybar="polybar/config"
termite="termite/config"
dunst="dunst/dunstrc"

## List of file paths
config_files="$nvim $i3 $compton $rofi $polybar $termite $dunst"

## Create the required directories
mkdir -p $config_dir
for dir in $dirs_to_make; do
    echo "Creating: '${config_dir}/${dir}'"
    mkdir -p $config_dir/$dir
    echo "Creating: '${backup}/${dir}'"
    mkdir -p $backup/$dir
done

## Backup and setup symlink for config file
for file in $config_files; do
    if [ -f "$config_dir/$file" ]
    then
        echo "Backing up '${file}'."
        mv $config_dir/$file $backup/$file
    fi
    echo "Setting up symlink for '${file}'."
    ln -s $dot_dir/$file $config_dir/$file -f
done


#################
## ~/ dotfiles ##
#################

echo "----------------------"
echo "-> Setup ~/ dotfiles."
echo "----------------------"

# Setup symlinks for standard dotfiles
dot_files=".Xresources"

for file in $dot_files; do
    echo "Backing up '${file}'."
    mv $HOME/$file $backup/$file
    echo "Setting up symlink for $file"
    ln -s $dot_dir/$file $HOME/$file
done
