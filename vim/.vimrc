" function 获取当前目录
func! GetPWD()
return substitute(getcwd(), "", "", "g")
endf

" function 返回当前时间
"func! GetTimeInfo()
"    return strftime('%Y-%m-%d %A %H:%M:%S')
"endfunction

" 全选
func! SelectAll()
    let s:current = line('.')
    exe "norm gg" . (&slm == "" ? "VG" : "gH\<C-O>G")
endfunc

set history=1000

" colorScheme
set background=dark
colorscheme zenburn

" 行控制
set wrap
set linebreak
set nocompatible
set textwidth=80
set colorcolumn=81

" 标签页
set tabpagemax=9
set showtabline=4

" 控制台响铃

set noerrorbells
set novisualbell
set t_vb= "close visual bell

" 行号和标尺

set number
set ruler
set rulerformat=%15(%c%V\ %p%%%)

" 状态栏配置

set ch=1
set stl=\ [File]\ %F%m%r%h%y[%{&fileformat},%{&fileencoding}]\ %w\ \ [PWD]\ %r%{GetPWD()}%h\ %=\ [Line]%l/%L\ %=\[%P]
set ls=2 " 始终显示状态行
set showmatch
" 配置命令切换的效果，可以使用左右键切换
set wildmenu
set wildmode=longest,full
set wildignore=*.bak,*.o,*.e,*~,*.pyn,*.svn

" 搜索配置
set incsearch		" do incremental searching
set hlsearch
set ignorecase

" 制表符
set tabstop=2
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2

" 状态栏显示目前所执行的指令
set showcmd

" 缩进
set autoindent
set smartindent

" 自动重新读入
set autoread

" 插入模式下使用 <BS>、<Del> <C-W> <C-U>
set backspace=indent,eol,start

" 设定在任何模式下鼠标都可用
set mouse=a

" 代码折叠
set foldmethod=syntax

if has ("folding")
    set nofoldenable
endif

" 编码转换
nmap <leader>eg :set fenc=gbk<cr>
nmap <leader>ee :set fenc=utf-8<cr>

filetype plugin on

" tab控制
nmap <C-t> :tabnew<cr>
nmap <C-p> :tabprevious<cr>
nmap <C-n> :tabnext<cr>
nmap <C-k> :tabclose<cr>

" NERDTree
nmap <C-d> :NERDTreeToggle<cr>
nmap <C-e> :NERDTree 


syntax on

" These lines setup the environment to show graphics and colors correctly.
set nocompatible
set t_Co=256
 
"let g:minBufExplForceSyntaxEnable = 1

" powerline
set rtp+=/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/powerline/bindings/vim
  
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif
                                  
set laststatus=2 " Always display the statusline in all windows
set guifont=Inconsolata\ for\ Powerline:h13
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

let wiki_1 = {}
let wiki_1.path_html = $HOME.'/vimwiki_html'
let wiki_1.template_path= wiki_1.path_html . '/template'
let wiki_1.template_default = 'default'
let wiki_1.template_ext = '.htm'

let g:vimwiki_list = [wiki_1]

highlight ColorColumn ctermbg=235 guibg=#2c2d27
let g:colorizer_auto_filetype='css,html,vue'

execute pathogen#infect()
call pathogen#helptags()
set encoding=utf-8
