" let $VIMRUNTIME="~/vim/runtime"
" set runtimepath=~/vim/runtime

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
inoremap jj <ESC>
" 定义快捷键的前缀，即<Leader>
let mapleader=";"
" nnoremap <leader>1 yypVr=
"" 设置快捷键将选中文本块复制至系统剪贴板
"vnoremap <Leader>y "+y
"" 设置快捷键将系统剪贴板内容粘贴至 vim
"nmap <Leader>p "+p
"" 定义快捷键关闭当前分割窗口
"nmap <Leader>q :q<CR>
"" 定义快捷键保存当前窗口内容
"nmap <Leader>w :w<CR

set mouse=a
"set fileformats=unix,dos
set fileformat=unix

" 基于语法进行代码折叠
" set foldmethod=syntax
" 基于缩进进行代码折叠
" set foldmethod=indent
" 基于标记进行代码折叠
set foldmethod=marker
" 启动 vim 时折叠代码
" set foldenable
" 用空格键来开关折叠  
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>  

" backscape不能使用的配置
set backspace=indent,eol,start
set guifont=Courier_New:h14:cANSI

" 定义快捷键到行首和行尾
" nmap lb 0
" nmap le $
" 开启实时搜索功能
set incsearch
" 关闭兼容模式
set nocompatible
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
" set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
" set cursorline
" set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 禁止折行
set nowrap
" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'

"全屏打开
autocmd GUIEnter * simalt ~x
"自动加载  跳转时有改动自动保存
set autoread
set autowriteall

" set showmode
" set hidden
" set wildmenu
" set wildmode=list:longest
" set visualbell
" set ttyfast
" set relativenumber
" set undofile
" set ignorecase
set smartcase
set gdefault
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %


set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,chinese,latin-1
"if has("win32")
"set fileencoding=chinese
"else
"set fileencoding=utf-8
"endif
"解决菜单乱码
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
"解决consle输出乱码
language messages zh_CN.utf-8 

" colo darkblue
" history文件中需要记录的行数 
set history=100 
" 在处理未保存或只读文件的时候，弹出确认 
set confirm 

" 侦测文件类型 
filetype off
filetype plugin indent on
set modelines=0

" 保存全局变量 
set viminfo+=! 
" 带有如下符号的单词不要被换行分割 
set iskeyword+=_,$,@,%,#,- 

" 语法高亮 
 syntax enable 
 set background=light
 " set background=light
color delek 
" colorscheme Tomorrow-Night-Bright 

" syntax on 
" 高亮字符，让其不受100列限制 
" :highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white 
" :match OverLength '\%101v.*' 

" 状态行颜色 
highlight StatusLine guifg=SlateBlue guibg=Yellow 
highlight StatusLineNC guifg=Gray guibg=White 
" 自动设置目录为正在编辑的文件所在的目录 
"set autochdir 
"set ffs=unix,dos,mac " favor unix ff, which behaves good under bot Winz & Linux  
"set clipboard=unnamed,autoselect,exclude:cons\|linux "set clipboard 
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" 文件设置  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 不要备份文件（根据自己需要取舍） 
set nobackup 
" 不要生成swap文件，当buffer被丢弃的时候隐藏它 
set noswapfile 
set bufhidden=hide 
"set noundofile
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
"显示设置  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  

" 字符间插入的像素行数目  
set linespace=0  
" 我的状态行显示的内容（包括文件类型和解码）  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l/%L,%v][%p%%]\ %{strftime(\"%y.%m.%d\ -\ %H:%M\")}  
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)  
"显示命令  
set showcmd  
" 命令行（在状态行下）的高度，默认为1，这里是2  
set cmdheight=1  
" 允许backspace和光标键跨越行边界  
set whichwrap+=<,>,h,l  
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）  
"set mouse=a  
set selection=exclusive  
set selectmode=mouse,key  
" 启动的时候不显示那个援助索马里儿童的提示  
set shortmess=atI  
" 通过使用: commands命令，告诉我们文件的哪一行被改变过  
set report=0  
" 不让vim发出讨厌的滴滴声  
"set noerrorbells  
" 在被分割的窗口间显示空白，便于阅读  
set fillchars=vert:\ ,stl:\ ,stlnc:\  
  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 搜索和匹配 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" 高亮显示匹配的括号  
set showmatch  
" 匹配括号高亮的时间（单位是十分之一秒）  
set matchtime=5  
" 输入:set list命令是应该显示些啥？  
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$  
" 光标移动到buffer的顶部和底部时保持3行距离  
set scrolloff=3  
" 不要闪烁  
set novisualbell  
  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文本格式和排版 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
"set formatoptions=qrn1
"set colorcolumn=85

" 继承前一行的缩进方式，特别适用于多行注释  
" set autoindent  
" 制表符为4  
set tabstop=4  
set softtabstop=4  
set shiftwidth=4  
" 用空格代替制表符  
set expandtab  
" 在行和段开始处使用制表符  
set smarttab  
  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 其它设定 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" 高亮显示普通txt文件（需要txt.vim脚本）  
au BufRead,BufNewFile * setfiletype txt  

" PHP语法提示
autocmd FileType php set omnifunc=phpcomplete


""""""""""""""""""""""""""""""
" NERDTree 
""""""""""""""""""""""""""""""
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <F1> :NERDTree /usr/local/src/php/src<CR>

" 设置NERDTree子窗口宽度
let NERDTreeWinSize=30
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
" let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" 按下 F2 调出/隐藏 NERDTree
nmap <F2> :silent! NERDTreeToggle<CR>
"— 使用箭头代替’+’, ‘-‘符号
let NERDChristmasTree=1

" vim全屏
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 
imap <F11> :call libcallnr(“gvimfullscreen.dll”, “ToggleFullScreen”, 0)<CR>

set guioptions-=L " 隐藏左侧滚动条
" set guioptions-=r " 隐藏右侧滚动条
set guioptions-=b " 隐藏底部滚动条
" set showtabline=0 " 隐藏Tab栏
" 隐藏工具栏\菜单栏
" set guioptions-=T
" set guioptions-=m
