set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Vim插件管理工具
Plugin 'gmarik/Vundle.vim'
" python 代码规范
Plugin 'nvie/vim-flake8'
" 自动代码补齐
Bundle 'Valloric/YouCompleteMe'
" 文件目录树
Plugin 'scrooloose/nerdtree'
" 代码检查
Plugin 'scrooloose/syntastic'
" 符号自动补全
Bundle 'Raimondi/delimitMate'
" 代码缩进线标志线
Plugin 'Yggdroot/indentLine'
" Vim 标签侧边栏（Tagbar）插件
Bundle 'majutsushi/tagbar' 
" 代码隐藏问题修复
Plugin 'tmhedberg/SimpylFold'
" 自动缩进
Plugin 'vim-scripts/indentpython.vim'
" 文件搜索
Plugin 'kien/ctrlp.vim'
" 状态栏
Plugin 'altercation/vim-colors-solarized'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set splitbelow
set splitright

"split navigations 切换快捷键
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding  代码折叠
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar  隐藏函数快捷键 是空格
nnoremap <space> za
" 代码折叠信息预览
let g:SimpylFold_docstring_preview=1

set encoding=utf-8

" Start Nerdtree automatically
let g:nerdtree_tabs_open_on_console_startup=1

"设置nerdtree快捷键 
map <C-n> :NERDTreeToggle<CR>  
let NERDTreeMinimalUI=1 "不显示帮助面板
let NERDTreeShowBookmarks=0
" 文件格式排除
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeChDirMode=1
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=0
let NERDTreeKeepTreeInNewTab=0
let g:nerdtree_tabs_open_on_gui_startup=0

" 显示行号
set nu

" Ensure one line doesn’t go beyond 80 characters 单行最大字符数
set textwidth=100

" Set syntax highlighting for specific file types
autocmd BufRead,BufNewFile Appraisals set filetype=ruby
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd Syntax javascript set syntax=jquery

" Color scheme
"colorscheme molokai
"syntax enable
let g:solarized_termcolors=256
if has('gui_running')
    set background=light
else
    set background=dark
endif
"set background=dark
"set background=light
colorscheme solarized
"highlight NonText guibg=#060606
"highlight Folded  guibg=#0A0A0A guifg=#9090D0

" configure syntastic syntax checking to check on open as well as save
let g:syntastic_check_on_open=0
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
"进行实时检查，如果觉得卡顿，将下面的选项置为1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"自动跳转到发现的第一个错误或警告处
let g:syntastic_auto_jump = 1

"indentLine 代码缩进线标志线
let g:indentLine_char = '¦' 
let g:indentLine_color_term = 239 
"映射到ctrl+i键 
"map <C-i> :IndentLinesToggle<CR>

let g:tagbar_ctags_bin='/usr/bin/ctags'
nmap <C-i> :TagbarToggle<CR>

" 指定cheker
let g:syntastic_python_checkers = ['flake8']

set laststatus=2 "状态栏一直显示

" YouCompleteMe
set runtimepath+=~/.vim/bundle/YouCompleteMe
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0
"let g:ycm_key_list_select_completion = ['<Down>']  " 映射按键, 没有这个会拦截掉tab, 导致其他插件的tab不能用.
"let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
" YCM: close the preview window after completeion automatically
let g:ycm_autoclose_preview_window_after_completion = 1
" YCM: close the preview window after leave insertion mode automatically
let g:ycm_autoclose_preview_window_after_insertion = 1




