# Match hidden files with "*"
shopt -s dotglob

mkdir -p ~/.config

for filename in ~/dotfiles/bash/*; do
    filebase=`basename $filename`
    ln -sf $filename ~/$filebase
done

for filename in ~/dotfiles/tmux/*; do
    filebase=`basename $filename`
    ln -sf $filename ~/$filebase
done

mkdir -p ~/.config/nvim
for filename in ~/dotfiles/neovim/*; do
    filebase=`basename $filename`
    ln -sf $filename ~/.config/nvim/$filebase
done

mkdir -p ~/.config/alacritty
for filename in ~/dotfiles/alacritty/*; do
    filebase=`basename $filename`
    ln -sf $filename ~/.config/alacritty/$filebase
done

# Python linting configs.
ln -sf ~/dotfiles/.pylintrc ~/.config/.pylintrc
ln -sf ~/dotfiles/.pydocstyle ~/.config/.pydocstyle

# Neovim plugins.
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
nvim +PluginInstall +qall
nvim +UpdateRemotePlugins +qall
