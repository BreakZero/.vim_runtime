" 基础配置
set nocompatible          " 禁用 vi 兼容模式
set encoding=utf-8        " 设置编码为 UTF-8
set fileencoding=utf-8    " 文件编码为 UTF-8
syntax on                 " 启用语法高亮
set number                " 显示行号
set relativenumber        " 相对行号
set cursorline            " 高亮当前行
set showcmd               " 显示命令
set showmatch             " 显示匹配括号
set clipboard=unnamedplus " 使用系统剪贴板
set hidden                " 切换缓冲区时不保存
set ignorecase            " 搜索时忽略大小写
set smartcase             " 启用智能大小写
set hlsearch              " 搜索时高亮匹配项
set incsearch             " 实时搜索
set tabstop=4             " 设置 Tab 宽度为 4
set shiftwidth=4          " 自动缩进为 4
set expandtab             " 将 Tab 替换为空格
set autoindent            " 自动缩进
set smartindent           " 启用智能缩进
set wrap                  " 自动换行
set backupdir=~/.vim/backup//  " 设置备份文件目录
set undodir=~/.vim/undo//      " 设置撤销文件目录
set directory^=$HOME/.vim/swap// "  .swp 文件的存储位置
set undofile              " 启用撤销文件
set backup                " 启用备份文件

" 显示格式
set ruler                 " 显示标尺
set laststatus=2          " 始终显示状态栏
set scrolloff=8           " 光标上下边界保持8行
set sidescrolloff=8       " 光标左右边界保持8列

" 设置 leader 键为空格键
let mapleader = " "

" 快速进入normal模式
imap jj <Esc>
imap jk <Esc>

" NERDTree 插件配置
autocmd vimenter * if !argc() | NERDTree | endif   " 自动打开 NERDTree
autocmd bufenter * if (winnr("$") == 1 && &filetype == 'nerdtree') | q | endif " NERDTree 是唯一窗口时自动退出 Vim
let NERDTreeShowHidden = 1        " 显示隐藏文件
let NERDTreeWinPos = "left"       " NERDTree 窗口位置为左侧
let NERDTreeWinSize = 31          " NERDTree 窗口宽度
let g:NERDTreeShowIcons = 1       " 启用文件图标（需要 nerd-fonts 字体支持）

" 文件操作快捷键
nnoremap <leader>w :w<CR>                      " 保存文件
nnoremap <leader>q :q<CR>                      " 退出 Vim
nnoremap <leader>x :wq<CR>                     " 保存并退出
nnoremap <leader>h :nohlsearch<CR>             " 清除搜索高亮
nnoremap <leader>e :e ~/.vimrc<CR>             " 打开 Vim 配置文件
nnoremap <leader>r :source ~/.vimrc<CR>        " 重新加载配置文件

" 可视模式下自动对齐代码
vnoremap < <gv
vnoremap > >gv

" 窗口操作快捷键
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

" Splitting Windows
nmap <Leader>v :vsplit<CR>
nmap <Leader>h :split<CR>

nmap <Leader>l :action NextTab<CR>

" Shortcut for copying to/from System Clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>P "+P

" 快速保存和退出
nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> <C-q> :q<CR>

" 安装插件管理器 vim-plug
call plug#begin('~/.vim/plugged')

" 插件列表
Plug 'tpope/vim-sensible'               " 一个合理的默认设置插件
Plug 'preservim/nerdtree'               " 文件浏览器插件
Plug 'airblade/vim-gitgutter'           " Git 状态显示
Plug 'itchyny/lightline.vim'            " 轻量级状态栏
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " 模糊搜索插件
Plug 'junegunn/fzf.vim'

" JavaScript and TypeScript syntax highlighting
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Linting and formatting
Plug 'dense-analysis/ale'

Plug 'tpope/vim-dispatch'

call plug#end()


" Coc.nvim configuration
autocmd BufWritePre *.js,*.ts,*.jsx,*.tsx :CocCommand eslint.executeAutofix
autocmd BufWritePre *.js,*.ts,*.jsx,*.tsx :CocCommand prettier.formatFile

" ALE configuration
let g:ale_fix_on_save = 1
let g:ale_fixers = {
    \ 'javascript': ['eslint', 'prettier'],
    \ 'typescript': ['eslint', 'prettier'],
\ }

" Node.js 配置
nnoremap <C-s> :!npm run start<CR>

" fzf 快捷键
nnoremap <leader>p :Files<CR>  

" Lightline 状态栏配置
set laststatus=2                        " 启用状态栏

" NERDTree 快捷键
nnoremap <leader>n :NERDTreeToggle<CR>         " 切换 NERDTree
nnoremap <leader>f :NERDTreeFind<CR>           " 定位当前文件
nnoremap <Leader>nn :NERDTreeFocus<CR>
