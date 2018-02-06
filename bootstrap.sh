#
# Boostrap file
# Use to setup dotfiles on new machine.
#
# Made by: Lukas Lindqvist
#

## Variables
dot_dir=$HOME/dotfiles
old_dot_dir=$HOME/old_dotfiles
config_dir=$HOME/.config

## Dirs to create
dirs_to_make=".config .config/i3 .config/termite .config/rofi old_dotfiles"

for dir in $dirs_to_make; do
    echo "Creating $dir"
    mkdir -p $HOME/$dir
done


# Setup symlinks for config files
config_dirs="i3 termite rofi"

for folder in $config_dirs; do
    echo "Creating backup dir in $old_dot_dir for $folder"
    mkdir -p $old_dot_dir/$folder
    echo "Move any existing config file to it.."
    mv $config_dir/$folder/config $old_dot_dir/$folder/config
    echo "Creating symlink for $folder.."
    ln -s $dot_dir/$folder/config $config_dir/$folder/config
done

# Setup symlinks for standard dotfiles
dot_files=".Xresources"

for file in $dot_files; do
    echo "Move any dotfile to $old_dot_dir.."
    mv $HOME/$file $old_dot_dir/$file
    echo "Creating symlink for $file"
    ln -s $dot_dir/$file $HOME/$file
done

# Specials
# Backup old compton.conf file.
mv $config_dir/i3/compton.conf $old_dot_dir/$i3/compton.conf
# Setup Symlink
ln -s $dot_dir/i3/compton.conf $config_dir/i3/compton.conf



