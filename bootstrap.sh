#
# Boostrap file
# Use to setup dotfiles on new machine.
#
# Made by: Lukas Lindqvist
#

## Variables

dir=~/dotfiles			# Dotfiles directory
olddir=~/dotfiles_old		# Backup folder for old dotfiles
files=".Xresources"		# List of files to symlink


## Create folders
echo "Createing $olddir for backup of an existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

## Change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

## Move any dotfiles to ~ and move existing dofiles to backup dir.
for file in $files; do
	echo "Moving old $file to $olddir"
	mv ~/$file ~/dotfiles_old/
	echo "Creating symlink for $file"
	ln -s $dir/$file ~/$file
done


