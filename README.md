# Dotfiles

# Installation
This repository was set up to be cloned and then installed using GNU stow. Stow will create symlinks to the .dotfiles directory to sync your settings. Follow the instructions below:
1. Install GNU stow if it is not already installed. For example, if you are using brew or a Debian distribution you might run:
```zsh
brew install stow
```
```zsh
sudo apt install stow
```
2. Once stow is installed, run the following commands from your home directory
```h
cd ~
git clone https://github.com/sidshetkar/.dotfiles.git
cd .dotfiles
```
3. Now run stow on whatever configuration files you want synced. For example, if you want to sync vim settings you would run:
```zsh
stow vim
```

# Vim
Plugins in Vim are handled using submodules. Before starting, note that I am using the native vim 8 plugin manager. If you want to add another plugin do the following steps.
1. Navigate to the submodule directory ('.dotfiles/submodules') 
2. Add your plugins git repository as a submodule
3. Navigate to the vim plugin folder ('.dotfiles/vim/.vim/pack/plugins/start')
4. Make a symlink to the corresponding submodule folder entry for the plugin
The provided example below if if I wanted to add the vim-commentary plugin
```zsh
cd ~/.dotfiles/submodules
git submodule add https://github.com/tpope/vim-commentary.git
cd ~/.dotfiles/vim/.vim/pack/plugins/start
ln -s ../../../../../submodules/vim-commentary vim-commentary
```
To update plugins just run
```zsh
git submodule update --remote
```
