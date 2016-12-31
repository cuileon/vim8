" 禁用Vi兼容模式
set nocompatible

" 自动检测文件类型
filetype plugin indent on

" 模仿windows快捷键 Ctrl+A全选、Ctrl+C复制、Ctrl+V粘贴
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

" 设置文件的编码
set encoding=utf-8

" 解决信息提示的乱码
language messages zh_CN.utf-8

" 解决菜单的乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim 

" 设置字体
set guifont=Consolas\ for\ Powerline\ FixedD

" 显示行号
set number

" 设置缩进
set tabstop=4 
set shiftwidth=4
set expandtab

" 自动缩进
set autoindent 
set smartindent 

" 不保存备份文件
set nobackup
set noundofile
set noswapfile

" 语法高亮显示
syntax enable

" 设置深色背景
set background=dark

" 设置主题
" colorscheme molokai
colorscheme solarized

" 总是显示状态行
set laststatus=2

"防止特殊符号无法正常显示
set ambiwidth=double

" Airline配置
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

" Airline中显示tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔符
let g:airline#extensions#tabline#left_sep = '⮀'
" tabline为激活的buffer的两端字符
let g:airline#extensions#tabline#left_alt_sep = '⮁'
" tabline显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1

" NERDTree配置
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


let Tlist_Ctags_Cmd = 'ctags'
let g:tagbar_ctags_bin = 'C:\Ctags5.8\ctags.exe'
autocmd FileType PHP set omnifunc=phpcomplete#CompletePHP

