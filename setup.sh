#!/usr/bin/env bash

stow git

# Initialize all submodules
git submodule update --init --recursive

stow nvim
nvim +PlugInstall +qall

# zsh settings
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
rm $home/.zshrc
ln -s $cwd/zshrc $home/.zshrc
ln -s $cwd/zsh/oh-my-zsh/themes/chaosteil.zsh-theme $home/.oh-my-zsh/themes/chaosteil.zsh-theme
ln -s $cwd/zsh/oh-my-zsh/custom/plugins/zsh-autosuggestions $home/.oh-my-zsh/custom/plugins/zsh-autosuggestions
ln -s $cwd/zsh/oh-my-zsh/custom/plugins/zsh-syntax-highlighting $home/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
touch $home/.local_paths

stow i3
stow termite
stow ranger
stow dunst
ln -s $cwd/Xresources $home/.Xresources
ln -s $cwd/xinitrc $home/.xinitrc
ln -s $cwd/gtkrc-2.0 $home/.gtkrc-2.0
ln -s $cws/tmux.conf $home/.tmux.conf
ln -s $cws/menu-calc/= /usr/bin/=
