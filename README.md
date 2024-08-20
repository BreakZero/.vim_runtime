### How to start
1. Clone repos into local
   > git clone https://github.com/BreakZero/.vim_runtime.git ~/.vim_runtime

2. Setup vim 

    > ln -s ~/.vim_runtime/.vimrc ~/.vimrc
    > cp -r ~/.vim_runtime/plugged ~/.vim/plugged

3. Install vim-plug

    > curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

4. Install plugins
    Run `"PluginUpdate` in vim

5. Create dir
    > mkdir -p ~/.vim/backup ~/.vim/swap ~/.vim/undo
