dir=~/dotfiles                    	# dotfiles directory
files="vim vimrc tmux.conf gdbinit"    	# list of files/folders to symlink in homedir

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# Create symlinks in the user's home directory
for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
