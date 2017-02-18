" 禁用Vi兼容模式
set nocompatible

" 自动检测文件类型
filetype plugin indent on

" 设置文件的编码
set encoding=utf-8

" 设置字体
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline

" 针对 windows 的字体和编码做特殊配置
if has('win32') || has('win64')
    " 模仿windows快捷键 Ctrl+A全选、Ctrl+C复制、Ctrl+V粘贴
    source $VIMRUNTIME/vimrc_example.vim
    source $VIMRUNTIME/mswin.vim
    behave mswin

    " 解决信息提示的乱码
    language messages zh_CN.utf-8

    " 解决菜单的乱码
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim 

    " 防止特殊符号无法正常显示
    set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
else
    "设置菜单为中文
    set langmenu=zh_CN.UTF-8
endif

" 显示行号
set number

" 设置缩进
set tabstop=4 
set shiftwidth=4
set expandtab

" 自动缩进
set autoindent 
set smartindent 

" 搜索增强，忽略大小写匹配
set hlsearch incsearch smartcase ignorecase

" ctrlp 搜索太慢，这样忽略掉不需要的目录和权限即可
let g:ctrlp_custom_ignore = {
      \ 'dir':  'vendor/bundle/*\|vendor/cache/*\|public\|spec',
      \ 'file': '\v\.(exe|so|dll|swp|log|jpg|png|json)$',
      \ }

" 不保存备份文件
set nobackup
set noundofile
set noswapfile

" 语法高亮显示
syntax enable

" 设置深色背景
set background=dark

" 设置主题
colorscheme solarized

" NERDTree 配置
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Airline配置
" 总是显示状态行
set laststatus=2
" 防止特殊符号无法正常显示
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Airline中显示tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

" ctags配置
autocmd FileType PHP set omnifunc=phpcomplete#CompletePHP
set completeopt=longest,menu
let g:tagbar_phpctags_memory_limit = '1024M'

" 语法检查
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting=1
let g:syntastic_php_checkers = ['php']
let g:syntastic_javascript_checkers = ['jsl', 'jshint']
let g:syntastic_html_checkers=['tidy', 'jshint']

" superTab 配置
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
