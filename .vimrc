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
set clipboard=unnamedplus " 使用系统剪贴板（macOS）
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
set undofile              " 启用撤销文件
set backup                " 启用备份文件

" macOS 专用配置
set guifont=Menlo:h14     " 设置 macOS 系统字体
set macmeta               " 启用 Option 键作为 Meta 键
set title                 " 在终端窗口中显示文件名
set mouse=a               " 启用鼠标支持

" 显示格式
set ruler                 " 显示标尺
set laststatus=2          " 始终显示状态栏
set scrolloff=8           " 光标上下边界保持8行
set sidescrolloff=8       " 光标左右边界保持8列

" 文件操作
set wildmenu              " 命令行补全增强
set wildmode=longest:full " 补全模式设置
set autoread              " 当文件在外部被修改时自动读取

" 显示匹配搜索结果
nnoremap <silent> <C-n> :cnext<CR>
nnoremap <silent> <C-p> :cprev<CR>
nnoremap <silent> <C-q> :cclose<CR>

" 窗口操作快捷键
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

" 启用文件浏览器
nnoremap <silent> <C-b> :Ex<CR>

" 快速保存和退出
nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> <C-q> :q<CR>

" 可视模式下自动对齐代码
vnoremap < <gv
vnoremap > >gv

" 安装插件的基础配置（如果使用插件管理器）
call plug#begin('~/.vim/plugged')

" 常见插件示例
Plug 'tpope/vim-sensible'             " 一个合理的默认设置插件
Plug 'preservim/nerdtree'             " 文件浏览器插件
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " 模糊搜索插件
Plug 'airblade/vim-gitgutter'         " Git 状态显示
Plug 'itchyny/lightline.vim'          " 轻量级状态栏

call plug#end()

" NERDTree 快捷键
nnoremap <silent> <C-n> :NERDTreeToggle<CR>

" fzf 快捷键
nnoremap <silent> <C-p> :Files<CR>
