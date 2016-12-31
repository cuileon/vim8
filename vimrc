set nocompatible
let Tlist_Ctags_Cmd = 'ctags'
let g:tagbar_ctags_bin = 'C:\Ctags5.8\ctags.exe'
filetype plugin on
autocmd FileType PHP set omnifunc=phpcomplete#CompletePHP
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin


set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"设置文件的编码
set encoding=utf-8

"解决信息提示的乱码
language messages zh_CN.utf-8

"解决菜单的乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim 

"设置字体
set guifont=Consolas

"显示行号
set number

"设置缩进
set tabstop=4 
set shiftwidth=4
set expandtab

"自动缩进
set autoindent 
set smartindent 

"不保存备份文件
set nobackup
set noundofile
set noswapfile

"语法高亮显示
syntax enable

"设置深色背景
set background=dark

"设置主题
"colorscheme molokai
colorscheme solarized

let g:airline_powerline_fonts = 1
let g:airline_left_sep = '⮀'
  let g:airline_left_alt_sep = '⮁'
  let g:airline_right_sep = '⮂'
  let g:airline_right_alt_sep = '⮃'
  let g:airline_symbols.branch = '⭠'
  let g:airline_symbols.readonly = '⭤'
  let g:airline_symbols.linenr = '⭡'
let g:airline_theme='simple'
