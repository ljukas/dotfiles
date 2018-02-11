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
dirs_to_make=".config .config/i3 .config/termite .config/nvim .config/rofi old_dotfiles"

for dir in $dirs_to_make; do
    echo "Creating $dir"
    mkdir -p $HOME/$dir
    mkdir -p $old_dot_dir/$dir
done


# Move old dot files to backup folder
echo "Moving old dot files to backup.."
mv $config_dir/i3/config $old_dot_dir/i3/config
mv $config_dir/i3/compton.conf $old_dot_dir/i3/compton.confg
mv $config_dir/termite/config $old_dot_dir/termite/config
mv $config_dir/rofi/config $old_dot_dir/rofi/config
mv $config_dir/nvim/init.vim $old_dot_dir/nvim/init.vim

# Setup symlinks
echo "Setting up symlinks"
ln -s $dot_dir/i3/config $config_dir/i3/config
ln -s $dot_dir/i3/compton.conf $config_dir/i3/compton.conf
ln -s $dot_dir/termite/config $config_dir/termite/config
ln -s $dot_dir/rofi/config $config_dir/rofi/config
ln -s $dot_dir/nvim/init.vim $config_dir/nvim/init.vim


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



