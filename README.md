git clone https://github.com/your-username/your-vim-config.git ~/.vim_runtime
ln -s ~/.vim_runtime/.vimrc ~/.vimrc
cp -r ~/.vim_runtime/plugged ~/.vim/plugged

然后，在 Vim 中运行 :PlugInstall 来安装插件。

安装vim-plug

> curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
