" let $VIMRUNTIME="~/vim/runtime"
" set runtimepath=~/vim/runtime

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
inoremap jj <ESC>
" �����ݼ���ǰ׺����<Leader>
let mapleader=";"
" nnoremap <leader>1 yypVr=
"" ���ÿ�ݼ���ѡ���ı��鸴����ϵͳ������
"vnoremap <Leader>y "+y
"" ���ÿ�ݼ���ϵͳ����������ճ���� vim
"nmap <Leader>p "+p
"" �����ݼ��رյ�ǰ�ָ��
"nmap <Leader>q :q<CR>
"" �����ݼ����浱ǰ��������
"nmap <Leader>w :w<CR

set mouse=a
"set fileformats=unix,dos
set fileformat=unix

" �����﷨���д����۵�
" set foldmethod=syntax
" �����������д����۵�
" set foldmethod=indent
" ���ڱ�ǽ��д����۵�
set foldmethod=marker
" ���� vim ʱ�۵�����
" set foldenable
" �ÿո���������۵�  
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>  

" backscape����ʹ�õ�����
set backspace=indent,eol,start
set guifont=Courier_New:h14:cANSI

" �����ݼ������׺���β
" nmap lb 0
" nmap le $
" ����ʵʱ��������
set incsearch
" �رռ���ģʽ
set nocompatible
" ������ʾ״̬��
set laststatus=2
" ��ʾ��굱ǰλ��
" set ruler
" �����к���ʾ
set number
" ������ʾ��ǰ��/��
" set cursorline
" set cursorcolumn
" ������ʾ�������
set hlsearch
" ��ֹ����
set nowrap
" ����״̬��������
let g:Powerline_colorscheme='solarized256'

"ȫ����
autocmd GUIEnter * simalt ~x
"�Զ�����  ��תʱ�иĶ��Զ�����
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
"����˵�����
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
"���consle�������
language messages zh_CN.utf-8 

" colo darkblue
" history�ļ�����Ҫ��¼������ 
set history=100 
" �ڴ���δ�����ֻ���ļ���ʱ�򣬵���ȷ�� 
set confirm 

" ����ļ����� 
filetype off
filetype plugin indent on
set modelines=0

" ����ȫ�ֱ��� 
set viminfo+=! 
" �������·��ŵĵ��ʲ�Ҫ�����зָ� 
set iskeyword+=_,$,@,%,#,- 

" �﷨���� 
 syntax enable 
 set background=light
 " set background=light
color delek 
" colorscheme Tomorrow-Night-Bright 

" syntax on 
" �����ַ������䲻��100������ 
" :highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white 
" :match OverLength '\%101v.*' 

" ״̬����ɫ 
highlight StatusLine guifg=SlateBlue guibg=Yellow 
highlight StatusLineNC guifg=Gray guibg=White 
" �Զ�����Ŀ¼Ϊ���ڱ༭���ļ����ڵ�Ŀ¼ 
"set autochdir 
"set ffs=unix,dos,mac " favor unix ff, which behaves good under bot Winz & Linux  
"set clipboard=unnamed,autoselect,exclude:cons\|linux "set clipboard 
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" �ļ�����  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" ��Ҫ�����ļ��������Լ���Ҫȡ�ᣩ 
set nobackup 
" ��Ҫ����swap�ļ�����buffer��������ʱ�������� 
set noswapfile 
set bufhidden=hide 
"set noundofile
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
"��ʾ����  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  

" �ַ���������������Ŀ  
set linespace=0  
" �ҵ�״̬����ʾ�����ݣ������ļ����ͺͽ��룩  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l/%L,%v][%p%%]\ %{strftime(\"%y.%m.%d\ -\ %H:%M\")}  
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)  
"��ʾ����  
set showcmd  
" �����У���״̬���£��ĸ߶ȣ�Ĭ��Ϊ1��������2  
set cmdheight=1  
" ����backspace�͹�����Խ�б߽�  
set whichwrap+=<,>,h,l  
" ������buffer���κεط�ʹ����꣨����office���ڹ�����˫����궨λ��  
"set mouse=a  
set selection=exclusive  
set selectmode=mouse,key  
" ������ʱ����ʾ�Ǹ�Ԯ���������ͯ����ʾ  
set shortmess=atI  
" ͨ��ʹ��: commands������������ļ�����һ�б��ı��  
set report=0  
" ����vim��������ĵε���  
"set noerrorbells  
" �ڱ��ָ�Ĵ��ڼ���ʾ�հף������Ķ�  
set fillchars=vert:\ ,stl:\ ,stlnc:\  
  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" ������ƥ�� 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" ������ʾƥ�������  
set showmatch  
" ƥ�����Ÿ�����ʱ�䣨��λ��ʮ��֮һ�룩  
set matchtime=5  
" ����:set list������Ӧ����ʾЩɶ��  
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$  
" ����ƶ���buffer�Ķ����͵ײ�ʱ����3�о���  
set scrolloff=3  
" ��Ҫ��˸  
set novisualbell  
  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" �ı���ʽ���Ű� 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
"set formatoptions=qrn1
"set colorcolumn=85

" �̳�ǰһ�е�������ʽ���ر������ڶ���ע��  
" set autoindent  
" �Ʊ��Ϊ4  
set tabstop=4  
set softtabstop=4  
set shiftwidth=4  
" �ÿո�����Ʊ��  
set expandtab  
" ���кͶο�ʼ��ʹ���Ʊ��  
set smarttab  
  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" �����趨 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" ������ʾ��ͨtxt�ļ�����Ҫtxt.vim�ű���  
au BufRead,BufNewFile * setfiletype txt  

" PHP�﷨��ʾ
autocmd FileType php set omnifunc=phpcomplete


""""""""""""""""""""""""""""""
" NERDTree 
""""""""""""""""""""""""""""""
" ʹ�� NERDTree ����鿴�����ļ������ÿ�ݼ����ټǣ�file list
nmap <F1> :NERDTree /usr/local/src/php/src<CR>

" ����NERDTree�Ӵ��ڿ��
let NERDTreeWinSize=30
" ����NERDTree�Ӵ���λ��
let NERDTreeWinPos="left"
" ��ʾ�����ļ�
" let NERDTreeShowHidden=1
" NERDTree �Ӵ����в���ʾ���������Ϣ
let NERDTreeMinimalUI=1
" ɾ���ļ�ʱ�Զ�ɾ���ļ���Ӧ buffer
let NERDTreeAutoDeleteBuffer=1
" ���� F2 ����/���� NERDTree
nmap <F2> :silent! NERDTreeToggle<CR>
"�� ʹ�ü�ͷ���桯+��, ��-������
let NERDChristmasTree=1

" vimȫ��
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 
imap <F11> :call libcallnr(��gvimfullscreen.dll��, ��ToggleFullScreen��, 0)<CR>

set guioptions-=L " ������������
" set guioptions-=r " �����Ҳ������
set guioptions-=b " ���صײ�������
" set showtabline=0 " ����Tab��
" ���ع�����\�˵���
" set guioptions-=T
" set guioptions-=m
